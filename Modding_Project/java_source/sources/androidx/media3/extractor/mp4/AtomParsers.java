package androidx.media3.extractor.mp4;

import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.media3.common.ColorInfo;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.container.MdtaMetadataEntry;
import androidx.media3.container.Mp4LocationData;
import androidx.media3.container.Mp4TimestampData;
import androidx.media3.extractor.AvcConfig;
import androidx.media3.extractor.DolbyVisionConfig;
import androidx.media3.extractor.ExtractorUtil;
import androidx.media3.extractor.GaplessInfoHolder;
import androidx.media3.extractor.HevcConfig;
import androidx.media3.extractor.mp4.Atom;
import androidx.media3.extractor.mp4.FixedSampleSizeRechunker;
import com.google.common.base.Function;
import com.google.common.collect.ImmutableList;
import com.google.common.primitives.Ints;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes.dex */
public final class AtomParsers {
    private static final int MAX_GAPLESS_TRIM_SIZE_SAMPLES = 4;
    private static final String TAG = "AtomParsers";
    private static final int TYPE_clcp = 1668047728;
    private static final int TYPE_mdta = 1835299937;
    private static final int TYPE_meta = 1835365473;
    private static final int TYPE_nclc = 1852009571;
    private static final int TYPE_nclx = 1852009592;
    private static final int TYPE_sbtl = 1935832172;
    private static final int TYPE_soun = 1936684398;
    private static final int TYPE_subt = 1937072756;
    private static final int TYPE_text = 1952807028;
    private static final int TYPE_vide = 1986618469;
    private static final byte[] opusMagic = Util.getUtf8Bytes("OpusHead");

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static final class ChunkIterator {
        private final ParsableByteArray chunkOffsets;
        private final boolean chunkOffsetsAreLongs;
        public int index;
        public final int length;
        private int nextSamplesPerChunkChangeIndex;
        public int numSamples;
        public long offset;
        private int remainingSamplesPerChunkChanges;
        private final ParsableByteArray stsc;

        public ChunkIterator(ParsableByteArray parsableByteArray, ParsableByteArray parsableByteArray2, boolean z) throws ParserException {
            this.stsc = parsableByteArray;
            this.chunkOffsets = parsableByteArray2;
            this.chunkOffsetsAreLongs = z;
            parsableByteArray2.setPosition(12);
            this.length = parsableByteArray2.readUnsignedIntToInt();
            parsableByteArray.setPosition(12);
            this.remainingSamplesPerChunkChanges = parsableByteArray.readUnsignedIntToInt();
            ExtractorUtil.checkContainerInput(parsableByteArray.readInt() == 1, "first_chunk must be 1");
            this.index = -1;
        }

        public boolean moveNext() {
            long readUnsignedInt;
            int i;
            int i2 = this.index + 1;
            this.index = i2;
            if (i2 == this.length) {
                return false;
            }
            if (this.chunkOffsetsAreLongs) {
                readUnsignedInt = this.chunkOffsets.readUnsignedLongToLong();
            } else {
                readUnsignedInt = this.chunkOffsets.readUnsignedInt();
            }
            this.offset = readUnsignedInt;
            if (this.index == this.nextSamplesPerChunkChangeIndex) {
                this.numSamples = this.stsc.readUnsignedIntToInt();
                this.stsc.skipBytes(4);
                int i3 = this.remainingSamplesPerChunkChanges - 1;
                this.remainingSamplesPerChunkChanges = i3;
                if (i3 > 0) {
                    i = this.stsc.readUnsignedIntToInt() - 1;
                } else {
                    i = -1;
                }
                this.nextSamplesPerChunkChangeIndex = i;
            }
            return true;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static final class EsdsData {
        private final long bitrate;
        private final byte[] initializationData;
        private final String mimeType;
        private final long peakBitrate;

        public EsdsData(String str, byte[] bArr, long j, long j2) {
            this.mimeType = str;
            this.initializationData = bArr;
            this.bitrate = j;
            this.peakBitrate = j2;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public interface SampleSizeBox {
        int getFixedSampleSize();

        int getSampleCount();

        int readNextSampleSize();
    }

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static final class StsdData {
        public static final int STSD_HEADER_SIZE = 8;
        @Nullable
        public Format format;
        public int nalUnitLengthFieldLength;
        public int requiredSampleTransformation = 0;
        public final TrackEncryptionBox[] trackEncryptionBoxes;

        public StsdData(int i) {
            this.trackEncryptionBoxes = new TrackEncryptionBox[i];
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static final class StszSampleSizeBox implements SampleSizeBox {
        private final ParsableByteArray data;
        private final int fixedSampleSize;
        private final int sampleCount;

        public StszSampleSizeBox(Atom.LeafAtom leafAtom, Format format) {
            ParsableByteArray parsableByteArray = leafAtom.data;
            this.data = parsableByteArray;
            parsableByteArray.setPosition(12);
            int readUnsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
            if ("audio/raw".equals(format.sampleMimeType)) {
                int pcmFrameSize = Util.getPcmFrameSize(format.pcmEncoding, format.channelCount);
                if (readUnsignedIntToInt == 0 || readUnsignedIntToInt % pcmFrameSize != 0) {
                    Log.w(AtomParsers.TAG, "Audio sample size mismatch. stsd sample size: " + pcmFrameSize + ", stsz sample size: " + readUnsignedIntToInt);
                    readUnsignedIntToInt = pcmFrameSize;
                }
            }
            this.fixedSampleSize = readUnsignedIntToInt == 0 ? -1 : readUnsignedIntToInt;
            this.sampleCount = parsableByteArray.readUnsignedIntToInt();
        }

        @Override // androidx.media3.extractor.mp4.AtomParsers.SampleSizeBox
        public int getFixedSampleSize() {
            return this.fixedSampleSize;
        }

        @Override // androidx.media3.extractor.mp4.AtomParsers.SampleSizeBox
        public int getSampleCount() {
            return this.sampleCount;
        }

        @Override // androidx.media3.extractor.mp4.AtomParsers.SampleSizeBox
        public int readNextSampleSize() {
            int i = this.fixedSampleSize;
            if (i == -1) {
                return this.data.readUnsignedIntToInt();
            }
            return i;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static final class Stz2SampleSizeBox implements SampleSizeBox {
        private int currentByte;
        private final ParsableByteArray data;
        private final int fieldSize;
        private final int sampleCount;
        private int sampleIndex;

        public Stz2SampleSizeBox(Atom.LeafAtom leafAtom) {
            ParsableByteArray parsableByteArray = leafAtom.data;
            this.data = parsableByteArray;
            parsableByteArray.setPosition(12);
            this.fieldSize = parsableByteArray.readUnsignedIntToInt() & 255;
            this.sampleCount = parsableByteArray.readUnsignedIntToInt();
        }

        @Override // androidx.media3.extractor.mp4.AtomParsers.SampleSizeBox
        public int getFixedSampleSize() {
            return -1;
        }

        @Override // androidx.media3.extractor.mp4.AtomParsers.SampleSizeBox
        public int getSampleCount() {
            return this.sampleCount;
        }

        @Override // androidx.media3.extractor.mp4.AtomParsers.SampleSizeBox
        public int readNextSampleSize() {
            int i = this.fieldSize;
            if (i == 8) {
                return this.data.readUnsignedByte();
            }
            if (i == 16) {
                return this.data.readUnsignedShort();
            }
            int i2 = this.sampleIndex;
            this.sampleIndex = i2 + 1;
            if (i2 % 2 == 0) {
                int readUnsignedByte = this.data.readUnsignedByte();
                this.currentByte = readUnsignedByte;
                return (readUnsignedByte & 240) >> 4;
            }
            return this.currentByte & 15;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static final class TkhdData {
        private final long duration;
        private final int id;
        private final int rotationDegrees;

        public TkhdData(int i, long j, int i2) {
            this.id = i;
            this.duration = j;
            this.rotationDegrees = i2;
        }
    }

    private AtomParsers() {
    }

    private static ByteBuffer allocateHdrStaticInfo() {
        return ByteBuffer.allocate(25).order(ByteOrder.LITTLE_ENDIAN);
    }

    private static boolean canApplyEditWithGaplessInfo(long[] jArr, long j, long j2, long j3) {
        int length = jArr.length - 1;
        int constrainValue = Util.constrainValue(4, 0, length);
        int constrainValue2 = Util.constrainValue(jArr.length - 4, 0, length);
        if (jArr[0] <= j2 && j2 < jArr[constrainValue] && jArr[constrainValue2] < j3 && j3 <= j) {
            return true;
        }
        return false;
    }

    private static boolean canTrimSamplesWithTimestampChange(int i) {
        if (i != 1) {
            return true;
        }
        return false;
    }

    private static int findBoxPosition(ParsableByteArray parsableByteArray, int i, int i2, int i3) throws ParserException {
        boolean z;
        boolean z2;
        int position = parsableByteArray.getPosition();
        if (position >= i2) {
            z = true;
        } else {
            z = false;
        }
        ExtractorUtil.checkContainerInput(z, null);
        while (position - i2 < i3) {
            parsableByteArray.setPosition(position);
            int readInt = parsableByteArray.readInt();
            if (readInt > 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            ExtractorUtil.checkContainerInput(z2, "childAtomSize must be positive");
            if (parsableByteArray.readInt() == i) {
                return position;
            }
            position += readInt;
        }
        return -1;
    }

    private static int getTrackTypeForHdlr(int i) {
        if (i == TYPE_soun) {
            return 1;
        }
        if (i == TYPE_vide) {
            return 2;
        }
        if (i != TYPE_text && i != TYPE_sbtl && i != TYPE_subt && i != TYPE_clcp) {
            if (i == 1835365473) {
                return 5;
            }
            return -1;
        }
        return 3;
    }

    public static void maybeSkipRemainingMetaAtomHeaderBytes(ParsableByteArray parsableByteArray) {
        int position = parsableByteArray.getPosition();
        parsableByteArray.skipBytes(4);
        if (parsableByteArray.readInt() != 1751411826) {
            position += 4;
        }
        parsableByteArray.setPosition(position);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:132:0x01c5  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x0409 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:232:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void parseAudioSampleEntry(androidx.media3.common.util.ParsableByteArray r23, int r24, int r25, int r26, int r27, java.lang.String r28, boolean r29, @androidx.annotation.Nullable androidx.media3.common.DrmInitData r30, androidx.media3.extractor.mp4.AtomParsers.StsdData r31, int r32) throws androidx.media3.common.ParserException {
        /*
            Method dump skipped, instructions count: 1110
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.extractor.mp4.AtomParsers.parseAudioSampleEntry(androidx.media3.common.util.ParsableByteArray, int, int, int, int, java.lang.String, boolean, androidx.media3.common.DrmInitData, androidx.media3.extractor.mp4.AtomParsers$StsdData, int):void");
    }

    private static ColorInfo parseAv1c(ParsableByteArray parsableByteArray) {
        int i;
        int readBits;
        int readBits2;
        int i2;
        ColorInfo.Builder builder = new ColorInfo.Builder();
        ParsableBitArray parsableBitArray = new ParsableBitArray(parsableByteArray.getData());
        parsableBitArray.setPosition(parsableByteArray.getPosition() * 8);
        int i3 = 1;
        parsableBitArray.skipBytes(1);
        int readBits3 = parsableBitArray.readBits(3);
        parsableBitArray.skipBits(6);
        boolean readBit = parsableBitArray.readBit();
        boolean readBit2 = parsableBitArray.readBit();
        int i4 = 10;
        if (readBits3 == 2 && readBit) {
            if (readBit2) {
                i2 = 12;
            } else {
                i2 = 10;
            }
            builder.setLumaBitdepth(i2);
            if (readBit2) {
                i4 = 12;
            }
            builder.setChromaBitdepth(i4);
        } else if (readBits3 <= 2) {
            if (readBit) {
                i = 10;
            } else {
                i = 8;
            }
            builder.setLumaBitdepth(i);
            if (!readBit) {
                i4 = 8;
            }
            builder.setChromaBitdepth(i4);
        }
        parsableBitArray.skipBits(13);
        parsableBitArray.skipBit();
        int readBits4 = parsableBitArray.readBits(4);
        if (readBits4 != 1) {
            Log.i(TAG, "Unsupported obu_type: " + readBits4);
            return builder.build();
        } else if (parsableBitArray.readBit()) {
            Log.i(TAG, "Unsupported obu_extension_flag");
            return builder.build();
        } else {
            boolean readBit3 = parsableBitArray.readBit();
            parsableBitArray.skipBit();
            if (readBit3 && parsableBitArray.readBits(8) > 127) {
                Log.i(TAG, "Excessive obu_size");
                return builder.build();
            }
            int readBits5 = parsableBitArray.readBits(3);
            parsableBitArray.skipBit();
            if (parsableBitArray.readBit()) {
                Log.i(TAG, "Unsupported reduced_still_picture_header");
                return builder.build();
            } else if (parsableBitArray.readBit()) {
                Log.i(TAG, "Unsupported timing_info_present_flag");
                return builder.build();
            } else if (parsableBitArray.readBit()) {
                Log.i(TAG, "Unsupported initial_display_delay_present_flag");
                return builder.build();
            } else {
                int readBits6 = parsableBitArray.readBits(5);
                boolean z = false;
                for (int i5 = 0; i5 <= readBits6; i5++) {
                    parsableBitArray.skipBits(12);
                    if (parsableBitArray.readBits(5) > 7) {
                        parsableBitArray.skipBit();
                    }
                }
                int readBits7 = parsableBitArray.readBits(4);
                int readBits8 = parsableBitArray.readBits(4);
                parsableBitArray.skipBits(readBits7 + 1);
                parsableBitArray.skipBits(readBits8 + 1);
                if (parsableBitArray.readBit()) {
                    parsableBitArray.skipBits(7);
                }
                parsableBitArray.skipBits(7);
                boolean readBit4 = parsableBitArray.readBit();
                if (readBit4) {
                    parsableBitArray.skipBits(2);
                }
                if (parsableBitArray.readBit()) {
                    readBits = 2;
                } else {
                    readBits = parsableBitArray.readBits(1);
                }
                if (readBits > 0 && !parsableBitArray.readBit()) {
                    parsableBitArray.skipBits(1);
                }
                if (readBit4) {
                    parsableBitArray.skipBits(3);
                }
                parsableBitArray.skipBits(3);
                boolean readBit5 = parsableBitArray.readBit();
                if (readBits5 == 2 && readBit5) {
                    parsableBitArray.skipBit();
                }
                if (readBits5 != 1 && parsableBitArray.readBit()) {
                    z = true;
                }
                if (parsableBitArray.readBit()) {
                    int readBits9 = parsableBitArray.readBits(8);
                    int readBits10 = parsableBitArray.readBits(8);
                    int readBits11 = parsableBitArray.readBits(8);
                    if (!z && readBits9 == 1 && readBits10 == 13 && readBits11 == 0) {
                        readBits2 = 1;
                    } else {
                        readBits2 = parsableBitArray.readBits(1);
                    }
                    ColorInfo.Builder colorSpace = builder.setColorSpace(ColorInfo.isoColorPrimariesToColorSpace(readBits9));
                    if (readBits2 != 1) {
                        i3 = 2;
                    }
                    colorSpace.setColorRange(i3).setColorTransfer(ColorInfo.isoTransferCharacteristicsToColorTransfer(readBits10));
                }
                return builder.build();
            }
        }
    }

    @Nullable
    public static Pair<Integer, TrackEncryptionBox> parseCommonEncryptionSinfFromParent(ParsableByteArray parsableByteArray, int i, int i2) throws ParserException {
        boolean z;
        boolean z2;
        int i3 = i + 8;
        boolean z3 = false;
        int i4 = -1;
        int i5 = 0;
        String str = null;
        Integer num = null;
        while (i3 - i < i2) {
            parsableByteArray.setPosition(i3);
            int readInt = parsableByteArray.readInt();
            int readInt2 = parsableByteArray.readInt();
            if (readInt2 == 1718775137) {
                num = Integer.valueOf(parsableByteArray.readInt());
            } else if (readInt2 == 1935894637) {
                parsableByteArray.skipBytes(4);
                str = parsableByteArray.readString(4);
            } else if (readInt2 == 1935894633) {
                i4 = i3;
                i5 = readInt;
            }
            i3 += readInt;
        }
        if (!"cenc".equals(str) && !"cbc1".equals(str) && !"cens".equals(str) && !"cbcs".equals(str)) {
            return null;
        }
        if (num != null) {
            z = true;
        } else {
            z = false;
        }
        ExtractorUtil.checkContainerInput(z, "frma atom is mandatory");
        if (i4 != -1) {
            z2 = true;
        } else {
            z2 = false;
        }
        ExtractorUtil.checkContainerInput(z2, "schi atom is mandatory");
        TrackEncryptionBox parseSchiFromParent = parseSchiFromParent(parsableByteArray, i4, i5, str);
        if (parseSchiFromParent != null) {
            z3 = true;
        }
        ExtractorUtil.checkContainerInput(z3, "tenc atom is mandatory");
        return Pair.create(num, (TrackEncryptionBox) Util.castNonNull(parseSchiFromParent));
    }

    @Nullable
    private static Pair<long[], long[]> parseEdts(Atom.ContainerAtom containerAtom) {
        long readUnsignedInt;
        long readInt;
        Atom.LeafAtom leafAtomOfType = containerAtom.getLeafAtomOfType(Atom.TYPE_elst);
        if (leafAtomOfType == null) {
            return null;
        }
        ParsableByteArray parsableByteArray = leafAtomOfType.data;
        parsableByteArray.setPosition(8);
        int parseFullAtomVersion = Atom.parseFullAtomVersion(parsableByteArray.readInt());
        int readUnsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
        long[] jArr = new long[readUnsignedIntToInt];
        long[] jArr2 = new long[readUnsignedIntToInt];
        for (int i = 0; i < readUnsignedIntToInt; i++) {
            if (parseFullAtomVersion == 1) {
                readUnsignedInt = parsableByteArray.readUnsignedLongToLong();
            } else {
                readUnsignedInt = parsableByteArray.readUnsignedInt();
            }
            jArr[i] = readUnsignedInt;
            if (parseFullAtomVersion == 1) {
                readInt = parsableByteArray.readLong();
            } else {
                readInt = parsableByteArray.readInt();
            }
            jArr2[i] = readInt;
            if (parsableByteArray.readShort() == 1) {
                parsableByteArray.skipBytes(2);
            } else {
                throw new IllegalArgumentException("Unsupported media rate.");
            }
        }
        return Pair.create(jArr, jArr2);
    }

    private static EsdsData parseEsdsFromParent(ParsableByteArray parsableByteArray, int i) {
        long j;
        parsableByteArray.setPosition(i + 12);
        parsableByteArray.skipBytes(1);
        parseExpandableClassSize(parsableByteArray);
        parsableByteArray.skipBytes(2);
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        if ((readUnsignedByte & 128) != 0) {
            parsableByteArray.skipBytes(2);
        }
        if ((readUnsignedByte & 64) != 0) {
            parsableByteArray.skipBytes(parsableByteArray.readUnsignedByte());
        }
        if ((readUnsignedByte & 32) != 0) {
            parsableByteArray.skipBytes(2);
        }
        parsableByteArray.skipBytes(1);
        parseExpandableClassSize(parsableByteArray);
        String mimeTypeFromMp4ObjectType = MimeTypes.getMimeTypeFromMp4ObjectType(parsableByteArray.readUnsignedByte());
        if (!"audio/mpeg".equals(mimeTypeFromMp4ObjectType) && !"audio/vnd.dts".equals(mimeTypeFromMp4ObjectType) && !"audio/vnd.dts.hd".equals(mimeTypeFromMp4ObjectType)) {
            parsableByteArray.skipBytes(4);
            long readUnsignedInt = parsableByteArray.readUnsignedInt();
            long readUnsignedInt2 = parsableByteArray.readUnsignedInt();
            parsableByteArray.skipBytes(1);
            int parseExpandableClassSize = parseExpandableClassSize(parsableByteArray);
            long j2 = readUnsignedInt2;
            byte[] bArr = new byte[parseExpandableClassSize];
            parsableByteArray.readBytes(bArr, 0, parseExpandableClassSize);
            if (j2 <= 0) {
                j2 = -1;
            }
            if (readUnsignedInt > 0) {
                j = readUnsignedInt;
            } else {
                j = -1;
            }
            return new EsdsData(mimeTypeFromMp4ObjectType, bArr, j2, j);
        }
        return new EsdsData(mimeTypeFromMp4ObjectType, null, -1L, -1L);
    }

    private static int parseExpandableClassSize(ParsableByteArray parsableByteArray) {
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        int i = readUnsignedByte & 127;
        while ((readUnsignedByte & 128) == 128) {
            readUnsignedByte = parsableByteArray.readUnsignedByte();
            i = (i << 7) | (readUnsignedByte & 127);
        }
        return i;
    }

    private static int parseHdlr(ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(16);
        return parsableByteArray.readInt();
    }

    @Nullable
    private static Metadata parseIlst(ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.skipBytes(8);
        ArrayList arrayList = new ArrayList();
        while (parsableByteArray.getPosition() < i) {
            Metadata.Entry parseIlstElement = MetadataUtil.parseIlstElement(parsableByteArray);
            if (parseIlstElement != null) {
                arrayList.add(parseIlstElement);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    private static Pair<Long, String> parseMdhd(ParsableByteArray parsableByteArray) {
        int i;
        int i2 = 8;
        parsableByteArray.setPosition(8);
        int parseFullAtomVersion = Atom.parseFullAtomVersion(parsableByteArray.readInt());
        if (parseFullAtomVersion == 0) {
            i = 8;
        } else {
            i = 16;
        }
        parsableByteArray.skipBytes(i);
        long readUnsignedInt = parsableByteArray.readUnsignedInt();
        if (parseFullAtomVersion == 0) {
            i2 = 4;
        }
        parsableByteArray.skipBytes(i2);
        int readUnsignedShort = parsableByteArray.readUnsignedShort();
        return Pair.create(Long.valueOf(readUnsignedInt), "" + ((char) (((readUnsignedShort >> 10) & 31) + 96)) + ((char) (((readUnsignedShort >> 5) & 31) + 96)) + ((char) ((readUnsignedShort & 31) + 96)));
    }

    @Nullable
    public static Metadata parseMdtaFromMeta(Atom.ContainerAtom containerAtom) {
        Atom.LeafAtom leafAtomOfType = containerAtom.getLeafAtomOfType(Atom.TYPE_hdlr);
        Atom.LeafAtom leafAtomOfType2 = containerAtom.getLeafAtomOfType(Atom.TYPE_keys);
        Atom.LeafAtom leafAtomOfType3 = containerAtom.getLeafAtomOfType(Atom.TYPE_ilst);
        if (leafAtomOfType == null || leafAtomOfType2 == null || leafAtomOfType3 == null || parseHdlr(leafAtomOfType.data) != TYPE_mdta) {
            return null;
        }
        ParsableByteArray parsableByteArray = leafAtomOfType2.data;
        parsableByteArray.setPosition(12);
        int readInt = parsableByteArray.readInt();
        String[] strArr = new String[readInt];
        for (int i = 0; i < readInt; i++) {
            int readInt2 = parsableByteArray.readInt();
            parsableByteArray.skipBytes(4);
            strArr[i] = parsableByteArray.readString(readInt2 - 8);
        }
        ParsableByteArray parsableByteArray2 = leafAtomOfType3.data;
        parsableByteArray2.setPosition(8);
        ArrayList arrayList = new ArrayList();
        while (parsableByteArray2.bytesLeft() > 8) {
            int position = parsableByteArray2.getPosition();
            int readInt3 = parsableByteArray2.readInt();
            int readInt4 = parsableByteArray2.readInt() - 1;
            if (readInt4 >= 0 && readInt4 < readInt) {
                MdtaMetadataEntry parseMdtaMetadataEntryFromIlst = MetadataUtil.parseMdtaMetadataEntryFromIlst(parsableByteArray2, position + readInt3, strArr[readInt4]);
                if (parseMdtaMetadataEntryFromIlst != null) {
                    arrayList.add(parseMdtaMetadataEntryFromIlst);
                }
            } else {
                Log.w(TAG, "Skipped metadata with unknown key index: " + readInt4);
            }
            parsableByteArray2.setPosition(position + readInt3);
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    private static void parseMetaDataSampleEntry(ParsableByteArray parsableByteArray, int i, int i2, int i3, StsdData stsdData) {
        parsableByteArray.setPosition(i2 + 16);
        if (i == 1835365492) {
            parsableByteArray.readNullTerminatedString();
            String readNullTerminatedString = parsableByteArray.readNullTerminatedString();
            if (readNullTerminatedString != null) {
                stsdData.format = new Format.Builder().setId(i3).setSampleMimeType(readNullTerminatedString).build();
            }
        }
    }

    public static Mp4TimestampData parseMvhd(ParsableByteArray parsableByteArray) {
        long readLong;
        long readLong2;
        parsableByteArray.setPosition(8);
        if (Atom.parseFullAtomVersion(parsableByteArray.readInt()) == 0) {
            readLong = parsableByteArray.readUnsignedInt();
            readLong2 = parsableByteArray.readUnsignedInt();
        } else {
            readLong = parsableByteArray.readLong();
            readLong2 = parsableByteArray.readLong();
        }
        return new Mp4TimestampData(readLong, readLong2, parsableByteArray.readUnsignedInt());
    }

    private static float parsePaspFromParent(ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.setPosition(i + 8);
        return parsableByteArray.readUnsignedIntToInt() / parsableByteArray.readUnsignedIntToInt();
    }

    @Nullable
    private static byte[] parseProjFromParent(ParsableByteArray parsableByteArray, int i, int i2) {
        int i3 = i + 8;
        while (i3 - i < i2) {
            parsableByteArray.setPosition(i3);
            int readInt = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == 1886547818) {
                return Arrays.copyOfRange(parsableByteArray.getData(), i3, readInt + i3);
            }
            i3 += readInt;
        }
        return null;
    }

    @Nullable
    private static Pair<Integer, TrackEncryptionBox> parseSampleEntryEncryptionData(ParsableByteArray parsableByteArray, int i, int i2) throws ParserException {
        boolean z;
        Pair<Integer, TrackEncryptionBox> parseCommonEncryptionSinfFromParent;
        int position = parsableByteArray.getPosition();
        while (position - i < i2) {
            parsableByteArray.setPosition(position);
            int readInt = parsableByteArray.readInt();
            if (readInt > 0) {
                z = true;
            } else {
                z = false;
            }
            ExtractorUtil.checkContainerInput(z, "childAtomSize must be positive");
            if (parsableByteArray.readInt() == 1936289382 && (parseCommonEncryptionSinfFromParent = parseCommonEncryptionSinfFromParent(parsableByteArray, position, readInt)) != null) {
                return parseCommonEncryptionSinfFromParent;
            }
            position += readInt;
        }
        return null;
    }

    @Nullable
    private static TrackEncryptionBox parseSchiFromParent(ParsableByteArray parsableByteArray, int i, int i2, String str) {
        int i3;
        int i4;
        boolean z;
        int i5 = i + 8;
        while (true) {
            byte[] bArr = null;
            if (i5 - i >= i2) {
                return null;
            }
            parsableByteArray.setPosition(i5);
            int readInt = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == 1952804451) {
                int parseFullAtomVersion = Atom.parseFullAtomVersion(parsableByteArray.readInt());
                parsableByteArray.skipBytes(1);
                if (parseFullAtomVersion == 0) {
                    parsableByteArray.skipBytes(1);
                    i4 = 0;
                    i3 = 0;
                } else {
                    int readUnsignedByte = parsableByteArray.readUnsignedByte();
                    i3 = readUnsignedByte & 15;
                    i4 = (readUnsignedByte & 240) >> 4;
                }
                if (parsableByteArray.readUnsignedByte() == 1) {
                    z = true;
                } else {
                    z = false;
                }
                int readUnsignedByte2 = parsableByteArray.readUnsignedByte();
                byte[] bArr2 = new byte[16];
                parsableByteArray.readBytes(bArr2, 0, 16);
                if (z && readUnsignedByte2 == 0) {
                    int readUnsignedByte3 = parsableByteArray.readUnsignedByte();
                    bArr = new byte[readUnsignedByte3];
                    parsableByteArray.readBytes(bArr, 0, readUnsignedByte3);
                }
                return new TrackEncryptionBox(z, str, readUnsignedByte2, bArr2, i4, i3, bArr);
            }
            i5 += readInt;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v15 */
    /* JADX WARN: Type inference failed for: r10v16, types: [boolean] */
    /* JADX WARN: Type inference failed for: r10v18 */
    /* JADX WARN: Type inference failed for: r11v17 */
    /* JADX WARN: Type inference failed for: r11v18 */
    /* JADX WARN: Type inference failed for: r11v23, types: [boolean] */
    private static TrackSampleTable parseStbl(Track track, Atom.ContainerAtom containerAtom, GaplessInfoHolder gaplessInfoHolder) throws ParserException {
        SampleSizeBox stz2SampleSizeBox;
        boolean z;
        int i;
        int i2;
        int i3;
        int i4;
        long j;
        long[] jArr;
        int i5;
        int i6;
        long j2;
        int i7;
        int[] iArr;
        long[] jArr2;
        int i8;
        int[] iArr2;
        int[] iArr3;
        int[] iArr4;
        long j3;
        int[] iArr5;
        int i9;
        ?? r11;
        int i10;
        int i11;
        Atom.LeafAtom leafAtomOfType = containerAtom.getLeafAtomOfType(Atom.TYPE_stsz);
        if (leafAtomOfType != null) {
            stz2SampleSizeBox = new StszSampleSizeBox(leafAtomOfType, track.format);
        } else {
            Atom.LeafAtom leafAtomOfType2 = containerAtom.getLeafAtomOfType(Atom.TYPE_stz2);
            if (leafAtomOfType2 != null) {
                stz2SampleSizeBox = new Stz2SampleSizeBox(leafAtomOfType2);
            } else {
                throw ParserException.createForMalformedContainer("Track has no sample table size information", null);
            }
        }
        int sampleCount = stz2SampleSizeBox.getSampleCount();
        if (sampleCount == 0) {
            return new TrackSampleTable(track, new long[0], new int[0], 0, new long[0], new int[0], 0L);
        }
        Atom.LeafAtom leafAtomOfType3 = containerAtom.getLeafAtomOfType(Atom.TYPE_stco);
        if (leafAtomOfType3 == null) {
            leafAtomOfType3 = (Atom.LeafAtom) Assertions.checkNotNull(containerAtom.getLeafAtomOfType(Atom.TYPE_co64));
            z = true;
        } else {
            z = false;
        }
        ParsableByteArray parsableByteArray = leafAtomOfType3.data;
        ParsableByteArray parsableByteArray2 = ((Atom.LeafAtom) Assertions.checkNotNull(containerAtom.getLeafAtomOfType(Atom.TYPE_stsc))).data;
        ParsableByteArray parsableByteArray3 = ((Atom.LeafAtom) Assertions.checkNotNull(containerAtom.getLeafAtomOfType(Atom.TYPE_stts))).data;
        Atom.LeafAtom leafAtomOfType4 = containerAtom.getLeafAtomOfType(Atom.TYPE_stss);
        ParsableByteArray parsableByteArray4 = leafAtomOfType4 != null ? leafAtomOfType4.data : null;
        Atom.LeafAtom leafAtomOfType5 = containerAtom.getLeafAtomOfType(Atom.TYPE_ctts);
        ParsableByteArray parsableByteArray5 = leafAtomOfType5 != null ? leafAtomOfType5.data : null;
        ChunkIterator chunkIterator = new ChunkIterator(parsableByteArray2, parsableByteArray, z);
        parsableByteArray3.setPosition(12);
        int readUnsignedIntToInt = parsableByteArray3.readUnsignedIntToInt() - 1;
        int readUnsignedIntToInt2 = parsableByteArray3.readUnsignedIntToInt();
        int readUnsignedIntToInt3 = parsableByteArray3.readUnsignedIntToInt();
        if (parsableByteArray5 != null) {
            parsableByteArray5.setPosition(12);
            i = parsableByteArray5.readUnsignedIntToInt();
        } else {
            i = 0;
        }
        if (parsableByteArray4 != null) {
            parsableByteArray4.setPosition(12);
            i3 = parsableByteArray4.readUnsignedIntToInt();
            if (i3 > 0) {
                i2 = parsableByteArray4.readUnsignedIntToInt() - 1;
                i4 = 0;
            } else {
                i2 = -1;
                i4 = 0;
                parsableByteArray4 = null;
            }
        } else {
            i2 = -1;
            i3 = 0;
            i4 = 0;
        }
        int fixedSampleSize = stz2SampleSizeBox.getFixedSampleSize();
        String str = track.format.sampleMimeType;
        int i12 = (fixedSampleSize == -1 || !(("audio/raw".equals(str) || "audio/g711-mlaw".equals(str) || "audio/g711-alaw".equals(str)) && readUnsignedIntToInt == 0 && i == 0 && i3 == 0)) ? i4 : 1;
        SampleSizeBox sampleSizeBox = stz2SampleSizeBox;
        if (i12 != 0) {
            int i13 = chunkIterator.length;
            long[] jArr3 = new long[i13];
            int[] iArr6 = new int[i13];
            while (chunkIterator.moveNext()) {
                int i14 = chunkIterator.index;
                jArr3[i14] = chunkIterator.offset;
                iArr6[i14] = chunkIterator.numSamples;
            }
            FixedSampleSizeRechunker.Results rechunk = FixedSampleSizeRechunker.rechunk(fixedSampleSize, jArr3, iArr6, readUnsignedIntToInt3);
            long[] jArr4 = rechunk.offsets;
            iArr = rechunk.sizes;
            int i15 = rechunk.maximumSize;
            long[] jArr5 = rechunk.timestamps;
            int[] iArr7 = rechunk.flags;
            j2 = rechunk.duration;
            jArr2 = jArr4;
            i8 = i15;
            jArr = jArr5;
            iArr2 = iArr7;
            j = 0;
        } else {
            long[] jArr6 = new long[sampleCount];
            j = 0;
            int[] iArr8 = new int[sampleCount];
            jArr = new long[sampleCount];
            ParsableByteArray parsableByteArray6 = parsableByteArray5;
            int[] iArr9 = new int[sampleCount];
            ParsableByteArray parsableByteArray7 = parsableByteArray4;
            int i16 = i2;
            int i17 = i4;
            int i18 = i17;
            int i19 = i18;
            int i20 = i19;
            long j4 = 0;
            long j5 = 0;
            int i21 = i;
            int i22 = readUnsignedIntToInt3;
            int i23 = readUnsignedIntToInt2;
            int i24 = readUnsignedIntToInt;
            int i25 = i20;
            while (true) {
                if (i17 >= sampleCount) {
                    i5 = i23;
                    i6 = i19;
                    break;
                }
                long j6 = j5;
                int i26 = i19;
                boolean z2 = true;
                while (i26 == 0) {
                    z2 = chunkIterator.moveNext();
                    if (!z2) {
                        break;
                    }
                    int i27 = i23;
                    long j7 = chunkIterator.offset;
                    i26 = chunkIterator.numSamples;
                    j6 = j7;
                    i23 = i27;
                    i22 = i22;
                    sampleCount = sampleCount;
                }
                int i28 = sampleCount;
                i5 = i23;
                int i29 = i22;
                if (!z2) {
                    Log.w(TAG, "Unexpected end of chunk data");
                    long[] copyOf = Arrays.copyOf(jArr6, i17);
                    iArr8 = Arrays.copyOf(iArr8, i17);
                    jArr = Arrays.copyOf(jArr, i17);
                    iArr9 = Arrays.copyOf(iArr9, i17);
                    jArr6 = copyOf;
                    sampleCount = i17;
                    i6 = i26;
                    break;
                }
                if (parsableByteArray6 != null) {
                    int i30 = i20;
                    while (i30 == 0 && i21 > 0) {
                        i30 = parsableByteArray6.readUnsignedIntToInt();
                        i18 = parsableByteArray6.readInt();
                        i21--;
                    }
                    i20 = i30 - 1;
                }
                jArr6[i17] = j6;
                int readNextSampleSize = sampleSizeBox.readNextSampleSize();
                iArr8[i17] = readNextSampleSize;
                if (readNextSampleSize > i25) {
                    i25 = readNextSampleSize;
                }
                jArr[i17] = j4 + i18;
                iArr9[i17] = parsableByteArray7 == null ? 1 : i4;
                if (i17 == i16) {
                    iArr9[i17] = 1;
                    i3--;
                    if (i3 > 0) {
                        i16 = ((ParsableByteArray) Assertions.checkNotNull(parsableByteArray7)).readUnsignedIntToInt() - 1;
                    }
                }
                j4 += i29;
                int i31 = i5 - 1;
                if (i31 != 0 || i24 <= 0) {
                    i22 = i29;
                } else {
                    i31 = parsableByteArray3.readUnsignedIntToInt();
                    i24--;
                    i22 = parsableByteArray3.readInt();
                }
                i23 = i31;
                i19 = i26 - 1;
                i17++;
                j5 = j6 + iArr8[i17];
                sampleCount = i28;
            }
            j2 = j4 + i18;
            if (parsableByteArray6 != null) {
                while (i21 > 0) {
                    if (parsableByteArray6.readUnsignedIntToInt() != 0) {
                        i7 = i4;
                        break;
                    }
                    parsableByteArray6.readInt();
                    i21--;
                }
            }
            i7 = 1;
            if (i3 != 0 || i5 != 0 || i6 != 0 || i24 != 0 || i20 != 0 || i7 == 0) {
                StringBuilder sb = new StringBuilder();
                sb.append("Inconsistent stbl box for track ");
                sb.append(track.id);
                sb.append(": remainingSynchronizationSamples ");
                sb.append(i3);
                sb.append(", remainingSamplesAtTimestampDelta ");
                sb.append(i5);
                sb.append(", remainingSamplesInChunk ");
                sb.append(i6);
                sb.append(", remainingTimestampDeltaChanges ");
                sb.append(i24);
                sb.append(", remainingSamplesAtTimestampOffset ");
                sb.append(i20);
                sb.append(i7 == 0 ? ", ctts invalid" : "");
                Log.w(TAG, sb.toString());
            }
            iArr = iArr8;
            jArr2 = jArr6;
            i8 = i25;
            iArr2 = iArr9;
        }
        long j8 = j2;
        long scaleLargeTimestamp = Util.scaleLargeTimestamp(j8, 1000000L, track.timescale);
        long[] jArr7 = track.editListDurations;
        if (jArr7 == null) {
            Util.scaleLargeTimestampsInPlace(jArr, 1000000L, track.timescale);
            return new TrackSampleTable(track, jArr2, iArr, i8, jArr, iArr2, scaleLargeTimestamp);
        }
        int[] iArr10 = iArr;
        int i32 = sampleCount;
        int[] iArr11 = iArr10;
        if (jArr7.length == 1 && track.type == 1 && jArr.length >= 2) {
            long j9 = ((long[]) Assertions.checkNotNull(track.editListMediaTimes))[i4];
            long scaleLargeTimestamp2 = Util.scaleLargeTimestamp(track.editListDurations[i4], track.timescale, track.movieTimescale) + j9;
            long[] jArr8 = jArr2;
            long[] jArr9 = jArr;
            boolean canApplyEditWithGaplessInfo = canApplyEditWithGaplessInfo(jArr9, j8, j9, scaleLargeTimestamp2);
            jArr = jArr9;
            j8 = j8;
            if (canApplyEditWithGaplessInfo) {
                long scaleLargeTimestamp3 = Util.scaleLargeTimestamp(j9 - jArr[i4], track.format.sampleRate, track.timescale);
                long scaleLargeTimestamp4 = Util.scaleLargeTimestamp(j8 - scaleLargeTimestamp2, track.format.sampleRate, track.timescale);
                if ((scaleLargeTimestamp3 != j || scaleLargeTimestamp4 != j) && scaleLargeTimestamp3 <= 2147483647L && scaleLargeTimestamp4 <= 2147483647L) {
                    gaplessInfoHolder.encoderDelay = (int) scaleLargeTimestamp3;
                    gaplessInfoHolder.encoderPadding = (int) scaleLargeTimestamp4;
                    Util.scaleLargeTimestampsInPlace(jArr, 1000000L, track.timescale);
                    return new TrackSampleTable(track, jArr8, iArr11, i8, jArr, iArr2, Util.scaleLargeTimestamp(track.editListDurations[i4], 1000000L, track.movieTimescale));
                }
            }
            jArr2 = jArr8;
            iArr11 = iArr11;
        }
        long[] jArr10 = track.editListDurations;
        if (jArr10.length == 1 && jArr10[i4] == j) {
            long j10 = ((long[]) Assertions.checkNotNull(track.editListMediaTimes))[i4];
            for (int i33 = i4; i33 < jArr.length; i33++) {
                jArr[i33] = Util.scaleLargeTimestamp(jArr[i33] - j10, 1000000L, track.timescale);
            }
            return new TrackSampleTable(track, jArr2, iArr11, i8, jArr, iArr2, Util.scaleLargeTimestamp(j8 - j10, 1000000L, track.timescale));
        }
        ?? r10 = track.type == 1 ? 1 : i4;
        int[] iArr12 = new int[jArr10.length];
        int[] iArr13 = new int[jArr10.length];
        long[] jArr11 = (long[]) Assertions.checkNotNull(track.editListMediaTimes);
        int i34 = i4;
        int i35 = i34;
        int i36 = i35;
        int i37 = i36;
        while (true) {
            long[] jArr12 = track.editListDurations;
            iArr3 = iArr13;
            if (i34 >= jArr12.length) {
                break;
            }
            int[] iArr14 = iArr12;
            long[] jArr13 = jArr11;
            long j11 = jArr13[i34];
            if (j11 != -1) {
                long j12 = jArr12[i34];
                i9 = i34;
                int i38 = i35;
                long scaleLargeTimestamp5 = Util.scaleLargeTimestamp(j12, track.timescale, track.movieTimescale);
                iArr5 = iArr14;
                iArr5[i9] = Util.binarySearchFloor(jArr, j11, true, true);
                long j13 = j11 + scaleLargeTimestamp5;
                r11 = i4;
                iArr3[i9] = Util.binarySearchCeil(jArr, j13, (boolean) r10, (boolean) r11);
                while (true) {
                    i10 = iArr5[i9];
                    i11 = iArr3[i9];
                    if (i10 >= i11 || (iArr2[i10] & 1) != 0) {
                        break;
                    }
                    iArr5[i9] = i10 + 1;
                }
                i36 += i11 - i10;
                i35 = i38 | (i37 != i10 ? 1 : r11 == true ? 1 : 0);
                i37 = i11;
            } else {
                iArr5 = iArr14;
                i9 = i34;
                r11 = i4;
            }
            jArr11 = jArr13;
            i4 = r11;
            iArr13 = iArr3;
            i34 = i9 + 1;
            iArr12 = iArr5;
        }
        int[] iArr15 = iArr12;
        int i39 = i4;
        int i40 = i35 | (i36 != i32 ? 1 : i39);
        long[] jArr14 = i40 != 0 ? new long[i36] : jArr2;
        int[] iArr16 = i40 != 0 ? new int[i36] : iArr11;
        if (i40 != 0) {
            i8 = i39;
        }
        int[] iArr17 = i40 != 0 ? new int[i36] : iArr2;
        long[] jArr15 = new long[i36];
        int i41 = i39;
        long j14 = j;
        while (i39 < track.editListDurations.length) {
            long j15 = track.editListMediaTimes[i39];
            int i42 = iArr15[i39];
            int i43 = i40;
            int i44 = iArr3[i39];
            int i45 = i8;
            if (i43 != 0) {
                int i46 = i44 - i42;
                System.arraycopy(jArr2, i42, jArr14, i41, i46);
                System.arraycopy(iArr11, i42, iArr16, i41, i46);
                System.arraycopy(iArr2, i42, iArr17, i41, i46);
            }
            i8 = i45;
            while (i42 < i44) {
                long[] jArr16 = jArr2;
                int[] iArr18 = iArr11;
                long scaleLargeTimestamp6 = Util.scaleLargeTimestamp(j14, 1000000L, track.movieTimescale);
                long scaleLargeTimestamp7 = Util.scaleLargeTimestamp(jArr[i42] - j15, 1000000L, track.timescale);
                int i47 = i44;
                long[] jArr17 = jArr;
                if (canTrimSamplesWithTimestampChange(track.type)) {
                    iArr4 = iArr2;
                    j3 = j;
                    scaleLargeTimestamp7 = Math.max(j3, scaleLargeTimestamp7);
                } else {
                    iArr4 = iArr2;
                    j3 = j;
                }
                jArr15[i41] = scaleLargeTimestamp6 + scaleLargeTimestamp7;
                if (i43 != 0 && iArr16[i41] > i8) {
                    i8 = iArr18[i42];
                }
                i41++;
                i42++;
                j = j3;
                jArr2 = jArr16;
                iArr11 = iArr18;
                jArr = jArr17;
                iArr2 = iArr4;
                i44 = i47;
            }
            j14 += track.editListDurations[i39];
            i39++;
            jArr2 = jArr2;
            jArr = jArr;
            iArr2 = iArr2;
            i40 = i43;
        }
        return new TrackSampleTable(track, jArr14, iArr16, i8, jArr15, iArr17, Util.scaleLargeTimestamp(j14, 1000000L, track.movieTimescale));
    }

    private static StsdData parseStsd(ParsableByteArray parsableByteArray, int i, int i2, String str, @Nullable DrmInitData drmInitData, boolean z) throws ParserException {
        boolean z2;
        parsableByteArray.setPosition(12);
        int readInt = parsableByteArray.readInt();
        StsdData stsdData = new StsdData(readInt);
        int i3 = 0;
        while (i3 < readInt) {
            int position = parsableByteArray.getPosition();
            int readInt2 = parsableByteArray.readInt();
            if (readInt2 > 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            ExtractorUtil.checkContainerInput(z2, "childAtomSize must be positive");
            int readInt3 = parsableByteArray.readInt();
            if (readInt3 == 1635148593 || readInt3 == 1635148595 || readInt3 == 1701733238 || readInt3 == 1831958048 || readInt3 == 1836070006 || readInt3 == 1752589105 || readInt3 == 1751479857 || readInt3 == 1932670515 || readInt3 == 1211250227 || readInt3 == 1987063864 || readInt3 == 1987063865 || readInt3 == 1635135537 || readInt3 == 1685479798 || readInt3 == 1685479729 || readInt3 == 1685481573 || readInt3 == 1685481521) {
                StsdData stsdData2 = stsdData;
                int i4 = i3;
                parseVideoSampleEntry(parsableByteArray, readInt3, position, readInt2, i, i2, drmInitData, stsdData2, i4);
                stsdData = stsdData2;
                i3 = i4;
            } else if (readInt3 == 1836069985 || readInt3 == 1701733217 || readInt3 == 1633889587 || readInt3 == 1700998451 || readInt3 == 1633889588 || readInt3 == 1835823201 || readInt3 == 1685353315 || readInt3 == 1685353317 || readInt3 == 1685353320 || readInt3 == 1685353324 || readInt3 == 1685353336 || readInt3 == 1935764850 || readInt3 == 1935767394 || readInt3 == 1819304813 || readInt3 == 1936684916 || readInt3 == 1953984371 || readInt3 == 778924082 || readInt3 == 778924083 || readInt3 == 1835557169 || readInt3 == 1835560241 || readInt3 == 1634492771 || readInt3 == 1634492791 || readInt3 == 1970037111 || readInt3 == 1332770163 || readInt3 == 1716281667) {
                StsdData stsdData3 = stsdData;
                parseAudioSampleEntry(parsableByteArray, readInt3, position, readInt2, i, str, z, drmInitData, stsdData3, i3);
                stsdData = stsdData3;
            } else if (readInt3 != 1414810956 && readInt3 != 1954034535 && readInt3 != 2004251764 && readInt3 != 1937010800 && readInt3 != 1664495672) {
                if (readInt3 == 1835365492) {
                    parseMetaDataSampleEntry(parsableByteArray, readInt3, position, i, stsdData);
                } else if (readInt3 == 1667329389) {
                    stsdData.format = new Format.Builder().setId(i).setSampleMimeType("application/x-camera-motion").build();
                }
            } else {
                parseTextSampleEntry(parsableByteArray, readInt3, position, readInt2, i, str, stsdData);
            }
            parsableByteArray.setPosition(position + readInt2);
            i3++;
        }
        return stsdData;
    }

    private static void parseTextSampleEntry(ParsableByteArray parsableByteArray, int i, int i2, int i3, int i4, String str, StsdData stsdData) {
        parsableByteArray.setPosition(i2 + 16);
        String str2 = "application/ttml+xml";
        ImmutableList immutableList = null;
        long j = Long.MAX_VALUE;
        if (i != 1414810956) {
            if (i == 1954034535) {
                int i5 = i3 - 16;
                byte[] bArr = new byte[i5];
                parsableByteArray.readBytes(bArr, 0, i5);
                immutableList = ImmutableList.of(bArr);
                str2 = "application/x-quicktime-tx3g";
            } else if (i == 2004251764) {
                str2 = "application/x-mp4-vtt";
            } else if (i == 1937010800) {
                j = 0;
            } else if (i == 1664495672) {
                stsdData.requiredSampleTransformation = 1;
                str2 = "application/x-mp4-cea-608";
            } else {
                throw new IllegalStateException();
            }
        }
        stsdData.format = new Format.Builder().setId(i4).setSampleMimeType(str2).setLanguage(str).setSubsampleOffsetUs(j).setInitializationData(immutableList).build();
    }

    private static TkhdData parseTkhd(ParsableByteArray parsableByteArray) {
        int i;
        long j;
        long readUnsignedLongToLong;
        int i2 = 8;
        parsableByteArray.setPosition(8);
        int parseFullAtomVersion = Atom.parseFullAtomVersion(parsableByteArray.readInt());
        if (parseFullAtomVersion == 0) {
            i = 8;
        } else {
            i = 16;
        }
        parsableByteArray.skipBytes(i);
        int readInt = parsableByteArray.readInt();
        parsableByteArray.skipBytes(4);
        int position = parsableByteArray.getPosition();
        if (parseFullAtomVersion == 0) {
            i2 = 4;
        }
        int i3 = 0;
        int i4 = 0;
        while (true) {
            j = -9223372036854775807L;
            if (i4 < i2) {
                if (parsableByteArray.getData()[position + i4] != -1) {
                    if (parseFullAtomVersion == 0) {
                        readUnsignedLongToLong = parsableByteArray.readUnsignedInt();
                    } else {
                        readUnsignedLongToLong = parsableByteArray.readUnsignedLongToLong();
                    }
                    if (readUnsignedLongToLong != 0) {
                        j = readUnsignedLongToLong;
                    }
                } else {
                    i4++;
                }
            } else {
                parsableByteArray.skipBytes(i2);
                break;
            }
        }
        parsableByteArray.skipBytes(16);
        int readInt2 = parsableByteArray.readInt();
        int readInt3 = parsableByteArray.readInt();
        parsableByteArray.skipBytes(4);
        int readInt4 = parsableByteArray.readInt();
        int readInt5 = parsableByteArray.readInt();
        if (readInt2 == 0 && readInt3 == 65536 && readInt4 == -65536 && readInt5 == 0) {
            i3 = 90;
        } else if (readInt2 == 0 && readInt3 == -65536 && readInt4 == 65536 && readInt5 == 0) {
            i3 = 270;
        } else if (readInt2 == -65536 && readInt3 == 0 && readInt4 == 0 && readInt5 == -65536) {
            i3 = 180;
        }
        return new TkhdData(readInt, j, i3);
    }

    @Nullable
    private static Track parseTrak(Atom.ContainerAtom containerAtom, Atom.LeafAtom leafAtom, long j, @Nullable DrmInitData drmInitData, boolean z, boolean z2) throws ParserException {
        long j2;
        long[] jArr;
        long[] jArr2;
        Atom.ContainerAtom containerAtomOfType;
        Pair<long[], long[]> parseEdts;
        Atom.ContainerAtom containerAtom2 = (Atom.ContainerAtom) Assertions.checkNotNull(containerAtom.getContainerAtomOfType(Atom.TYPE_mdia));
        int trackTypeForHdlr = getTrackTypeForHdlr(parseHdlr(((Atom.LeafAtom) Assertions.checkNotNull(containerAtom2.getLeafAtomOfType(Atom.TYPE_hdlr))).data));
        if (trackTypeForHdlr == -1) {
            return null;
        }
        TkhdData parseTkhd = parseTkhd(((Atom.LeafAtom) Assertions.checkNotNull(containerAtom.getLeafAtomOfType(Atom.TYPE_tkhd))).data);
        long j3 = -9223372036854775807L;
        if (j == -9223372036854775807L) {
            j2 = parseTkhd.duration;
        } else {
            j2 = j;
        }
        long j4 = parseMvhd(leafAtom.data).timescale;
        if (j2 != -9223372036854775807L) {
            j3 = Util.scaleLargeTimestamp(j2, 1000000L, j4);
        }
        long j5 = j3;
        Pair<Long, String> parseMdhd = parseMdhd(((Atom.LeafAtom) Assertions.checkNotNull(containerAtom2.getLeafAtomOfType(Atom.TYPE_mdhd))).data);
        Atom.LeafAtom leafAtomOfType = ((Atom.ContainerAtom) Assertions.checkNotNull(((Atom.ContainerAtom) Assertions.checkNotNull(containerAtom2.getContainerAtomOfType(Atom.TYPE_minf))).getContainerAtomOfType(Atom.TYPE_stbl))).getLeafAtomOfType(Atom.TYPE_stsd);
        if (leafAtomOfType != null) {
            StsdData parseStsd = parseStsd(leafAtomOfType.data, parseTkhd.id, parseTkhd.rotationDegrees, (String) parseMdhd.second, drmInitData, z2);
            if (!z && (containerAtomOfType = containerAtom.getContainerAtomOfType(Atom.TYPE_edts)) != null && (parseEdts = parseEdts(containerAtomOfType)) != null) {
                jArr2 = (long[]) parseEdts.second;
                jArr = (long[]) parseEdts.first;
            } else {
                jArr = null;
                jArr2 = null;
            }
            if (parseStsd.format == null) {
                return null;
            }
            return new Track(parseTkhd.id, trackTypeForHdlr, ((Long) parseMdhd.first).longValue(), j4, j5, parseStsd.format, parseStsd.requiredSampleTransformation, parseStsd.trackEncryptionBoxes, parseStsd.nalUnitLengthFieldLength, jArr, jArr2);
        }
        throw ParserException.createForMalformedContainer("Malformed sample table (stbl) missing sample description (stsd)", null);
    }

    public static List<TrackSampleTable> parseTraks(Atom.ContainerAtom containerAtom, GaplessInfoHolder gaplessInfoHolder, long j, @Nullable DrmInitData drmInitData, boolean z, boolean z2, Function<Track, Track> function) throws ParserException {
        Track apply;
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < containerAtom.containerChildren.size(); i++) {
            Atom.ContainerAtom containerAtom2 = containerAtom.containerChildren.get(i);
            if (containerAtom2.type == 1953653099 && (apply = function.apply(parseTrak(containerAtom2, (Atom.LeafAtom) Assertions.checkNotNull(containerAtom.getLeafAtomOfType(Atom.TYPE_mvhd)), j, drmInitData, z, z2))) != null) {
                arrayList.add(parseStbl(apply, (Atom.ContainerAtom) Assertions.checkNotNull(((Atom.ContainerAtom) Assertions.checkNotNull(((Atom.ContainerAtom) Assertions.checkNotNull(containerAtom2.getContainerAtomOfType(Atom.TYPE_mdia))).getContainerAtomOfType(Atom.TYPE_minf))).getContainerAtomOfType(Atom.TYPE_stbl)), gaplessInfoHolder));
            }
        }
        return arrayList;
    }

    public static Metadata parseUdta(Atom.LeafAtom leafAtom) {
        ParsableByteArray parsableByteArray = leafAtom.data;
        parsableByteArray.setPosition(8);
        Metadata metadata = new Metadata(new Metadata.Entry[0]);
        while (parsableByteArray.bytesLeft() >= 8) {
            int position = parsableByteArray.getPosition();
            int readInt = parsableByteArray.readInt();
            int readInt2 = parsableByteArray.readInt();
            if (readInt2 == 1835365473) {
                parsableByteArray.setPosition(position);
                metadata = metadata.copyWithAppendedEntriesFrom(parseUdtaMeta(parsableByteArray, position + readInt));
            } else if (readInt2 == 1936553057) {
                parsableByteArray.setPosition(position);
                metadata = metadata.copyWithAppendedEntriesFrom(SmtaAtomUtil.parseSmta(parsableByteArray, position + readInt));
            } else if (readInt2 == -1451722374) {
                metadata = metadata.copyWithAppendedEntriesFrom(parseXyz(parsableByteArray));
            }
            parsableByteArray.setPosition(position + readInt);
        }
        return metadata;
    }

    @Nullable
    private static Metadata parseUdtaMeta(ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.skipBytes(8);
        maybeSkipRemainingMetaAtomHeaderBytes(parsableByteArray);
        while (parsableByteArray.getPosition() < i) {
            int position = parsableByteArray.getPosition();
            int readInt = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == 1768715124) {
                parsableByteArray.setPosition(position);
                return parseIlst(parsableByteArray, position + readInt);
            }
            parsableByteArray.setPosition(position + readInt);
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v34, types: [java.util.List<byte[]>] */
    /* JADX WARN: Type inference failed for: r8v23, types: [java.util.List<byte[]>] */
    private static void parseVideoSampleEntry(ParsableByteArray parsableByteArray, int i, int i2, int i3, int i4, int i5, @Nullable DrmInitData drmInitData, StsdData stsdData, int i6) throws ParserException {
        String str;
        DrmInitData drmInitData2;
        int i7;
        int i8;
        String str2;
        int i9;
        int i10;
        int i11;
        int i12 = i2;
        int i13 = i3;
        DrmInitData drmInitData3 = drmInitData;
        StsdData stsdData2 = stsdData;
        parsableByteArray.setPosition(i12 + 16);
        parsableByteArray.skipBytes(16);
        int readUnsignedShort = parsableByteArray.readUnsignedShort();
        int readUnsignedShort2 = parsableByteArray.readUnsignedShort();
        parsableByteArray.skipBytes(50);
        int position = parsableByteArray.getPosition();
        int i14 = i;
        if (i14 == 1701733238) {
            Pair<Integer, TrackEncryptionBox> parseSampleEntryEncryptionData = parseSampleEntryEncryptionData(parsableByteArray, i12, i13);
            if (parseSampleEntryEncryptionData != null) {
                i14 = ((Integer) parseSampleEntryEncryptionData.first).intValue();
                drmInitData3 = drmInitData3 == null ? null : drmInitData3.copyWithSchemeType(((TrackEncryptionBox) parseSampleEntryEncryptionData.second).schemeType);
                stsdData2.trackEncryptionBoxes[i6] = (TrackEncryptionBox) parseSampleEntryEncryptionData.second;
            }
            parsableByteArray.setPosition(position);
        }
        String str3 = "video/3gpp";
        if (i14 != 1831958048) {
            str = i14 == 1211250227 ? "video/3gpp" : null;
        } else {
            str = "video/mpeg";
        }
        float f = 1.0f;
        int i15 = 8;
        int i16 = 8;
        ImmutableList immutableList = null;
        String str4 = null;
        byte[] bArr = null;
        int i17 = -1;
        int i18 = -1;
        int i19 = -1;
        int i20 = -1;
        int i21 = -1;
        ByteBuffer byteBuffer = null;
        EsdsData esdsData = null;
        boolean z = false;
        while (position - i12 < i13) {
            parsableByteArray.setPosition(position);
            int position2 = parsableByteArray.getPosition();
            int readInt = parsableByteArray.readInt();
            if (readInt == 0 && parsableByteArray.getPosition() - i12 == i13) {
                break;
            }
            ExtractorUtil.checkContainerInput(readInt > 0, "childAtomSize must be positive");
            int readInt2 = parsableByteArray.readInt();
            if (readInt2 == 1635148611) {
                ExtractorUtil.checkContainerInput(str == null, null);
                parsableByteArray.setPosition(position2 + 8);
                AvcConfig parse = AvcConfig.parse(parsableByteArray);
                ?? r8 = parse.initializationData;
                stsdData2.nalUnitLengthFieldLength = parse.nalUnitLengthFieldLength;
                if (!z) {
                    f = parse.pixelWidthHeightRatio;
                }
                String str5 = parse.codecs;
                int i22 = parse.maxNumReorderFrames;
                int i23 = parse.colorSpace;
                int i24 = parse.colorRange;
                int i25 = parse.colorTransfer;
                int i26 = parse.bitdepthLuma;
                drmInitData2 = drmInitData3;
                i7 = position;
                i8 = i14;
                str2 = str3;
                i18 = i22;
                i19 = i23;
                i20 = i24;
                i21 = i25;
                i16 = parse.bitdepthChroma;
                i15 = i26;
                immutableList = r8;
                str = "video/avc";
                str4 = str5;
            } else if (readInt2 == 1752589123) {
                ExtractorUtil.checkContainerInput(str == null, null);
                parsableByteArray.setPosition(position2 + 8);
                HevcConfig parse2 = HevcConfig.parse(parsableByteArray);
                ?? r2 = parse2.initializationData;
                stsdData2.nalUnitLengthFieldLength = parse2.nalUnitLengthFieldLength;
                if (!z) {
                    f = parse2.pixelWidthHeightRatio;
                }
                int i27 = parse2.maxNumReorderPics;
                String str6 = parse2.codecs;
                int i28 = parse2.colorSpace;
                drmInitData2 = drmInitData3;
                i7 = position;
                i18 = i27;
                i8 = i14;
                str2 = str3;
                i19 = i28;
                i20 = parse2.colorRange;
                i21 = parse2.colorTransfer;
                str = "video/hevc";
                i15 = parse2.bitdepthLuma;
                str4 = str6;
                immutableList = r2;
                i16 = parse2.bitdepthChroma;
            } else {
                if (readInt2 == 1685480259 || readInt2 == 1685485123) {
                    drmInitData2 = drmInitData3;
                    i7 = position;
                    i8 = i14;
                    str2 = str3;
                    i9 = i15;
                    i10 = i19;
                    i11 = i21;
                    DolbyVisionConfig parse3 = DolbyVisionConfig.parse(parsableByteArray);
                    if (parse3 != null) {
                        str = "video/dolby-vision";
                        str4 = parse3.codecs;
                    }
                } else if (readInt2 == 1987076931) {
                    ExtractorUtil.checkContainerInput(str == null, null);
                    String str7 = i14 == 1987063864 ? "video/x-vnd.on2.vp8" : "video/x-vnd.on2.vp9";
                    parsableByteArray.setPosition(position2 + 12);
                    parsableByteArray.skipBytes(2);
                    int readUnsignedByte = parsableByteArray.readUnsignedByte();
                    int i29 = readUnsignedByte >> 4;
                    boolean z2 = (readUnsignedByte & 1) != 0;
                    int readUnsignedByte2 = parsableByteArray.readUnsignedByte();
                    int readUnsignedByte3 = parsableByteArray.readUnsignedByte();
                    i19 = ColorInfo.isoColorPrimariesToColorSpace(readUnsignedByte2);
                    i20 = z2 ? 1 : 2;
                    i21 = ColorInfo.isoTransferCharacteristicsToColorTransfer(readUnsignedByte3);
                    drmInitData2 = drmInitData3;
                    i7 = position;
                    i15 = i29;
                    i16 = i15;
                    i8 = i14;
                    str2 = str3;
                    str = str7;
                } else if (readInt2 == 1635135811) {
                    int i30 = readInt - 8;
                    byte[] bArr2 = new byte[i30];
                    parsableByteArray.readBytes(bArr2, 0, i30);
                    immutableList = ImmutableList.of(bArr2);
                    parsableByteArray.setPosition(position2 + 8);
                    ColorInfo parseAv1c = parseAv1c(parsableByteArray);
                    int i31 = parseAv1c.lumaBitdepth;
                    int i32 = parseAv1c.chromaBitdepth;
                    int i33 = parseAv1c.colorSpace;
                    int i34 = parseAv1c.colorRange;
                    i21 = parseAv1c.colorTransfer;
                    drmInitData2 = drmInitData3;
                    i7 = position;
                    i8 = i14;
                    str2 = str3;
                    i19 = i33;
                    i20 = i34;
                    str = "video/av01";
                    i15 = i31;
                    i16 = i32;
                } else if (readInt2 == 1668050025) {
                    if (byteBuffer == null) {
                        byteBuffer = allocateHdrStaticInfo();
                    }
                    ByteBuffer byteBuffer2 = byteBuffer;
                    byteBuffer2.position(21);
                    byteBuffer2.putShort(parsableByteArray.readShort());
                    byteBuffer2.putShort(parsableByteArray.readShort());
                    byteBuffer = byteBuffer2;
                    drmInitData2 = drmInitData3;
                    i7 = position;
                    i8 = i14;
                    str2 = str3;
                } else if (readInt2 == 1835295606) {
                    if (byteBuffer == null) {
                        byteBuffer = allocateHdrStaticInfo();
                    }
                    ByteBuffer byteBuffer3 = byteBuffer;
                    short readShort = parsableByteArray.readShort();
                    short readShort2 = parsableByteArray.readShort();
                    short readShort3 = parsableByteArray.readShort();
                    i7 = position;
                    short readShort4 = parsableByteArray.readShort();
                    i8 = i14;
                    short readShort5 = parsableByteArray.readShort();
                    str2 = str3;
                    short readShort6 = parsableByteArray.readShort();
                    short readShort7 = parsableByteArray.readShort();
                    int i35 = i15;
                    short readShort8 = parsableByteArray.readShort();
                    long readUnsignedInt = parsableByteArray.readUnsignedInt();
                    long readUnsignedInt2 = parsableByteArray.readUnsignedInt();
                    drmInitData2 = drmInitData3;
                    byteBuffer3.position(1);
                    byteBuffer3.putShort(readShort5);
                    byteBuffer3.putShort(readShort6);
                    byteBuffer3.putShort(readShort);
                    byteBuffer3.putShort(readShort2);
                    byteBuffer3.putShort(readShort3);
                    byteBuffer3.putShort(readShort4);
                    byteBuffer3.putShort(readShort7);
                    byteBuffer3.putShort(readShort8);
                    byteBuffer3.putShort((short) (readUnsignedInt / 10000));
                    byteBuffer3.putShort((short) (readUnsignedInt2 / 10000));
                    byteBuffer = byteBuffer3;
                    i15 = i35;
                } else {
                    drmInitData2 = drmInitData3;
                    i7 = position;
                    i8 = i14;
                    str2 = str3;
                    i9 = i15;
                    if (readInt2 == 1681012275) {
                        ExtractorUtil.checkContainerInput(str == null, null);
                        str = str2;
                    } else if (readInt2 == 1702061171) {
                        ExtractorUtil.checkContainerInput(str == null, null);
                        esdsData = parseEsdsFromParent(parsableByteArray, position2);
                        String str8 = esdsData.mimeType;
                        byte[] bArr3 = esdsData.initializationData;
                        if (bArr3 != null) {
                            immutableList = ImmutableList.of(bArr3);
                        }
                        str = str8;
                    } else if (readInt2 == 1885434736) {
                        f = parsePaspFromParent(parsableByteArray, position2);
                        i15 = i9;
                        z = true;
                    } else if (readInt2 == 1937126244) {
                        bArr = parseProjFromParent(parsableByteArray, position2, readInt);
                    } else if (readInt2 == 1936995172) {
                        int readUnsignedByte4 = parsableByteArray.readUnsignedByte();
                        parsableByteArray.skipBytes(3);
                        if (readUnsignedByte4 == 0) {
                            int readUnsignedByte5 = parsableByteArray.readUnsignedByte();
                            if (readUnsignedByte5 == 0) {
                                i17 = 0;
                            } else if (readUnsignedByte5 == 1) {
                                i17 = 1;
                            } else if (readUnsignedByte5 == 2) {
                                i17 = 2;
                            } else if (readUnsignedByte5 == 3) {
                                i17 = 3;
                            }
                        }
                    } else {
                        i10 = i19;
                        if (readInt2 == 1668246642) {
                            i11 = i21;
                            if (i10 == -1 && i11 == -1) {
                                int readInt3 = parsableByteArray.readInt();
                                if (readInt3 != TYPE_nclx && readInt3 != TYPE_nclc) {
                                    Log.w(TAG, "Unsupported color type: " + Atom.getAtomTypeString(readInt3));
                                } else {
                                    int readUnsignedShort3 = parsableByteArray.readUnsignedShort();
                                    int readUnsignedShort4 = parsableByteArray.readUnsignedShort();
                                    parsableByteArray.skipBytes(2);
                                    boolean z3 = readInt == 19 && (parsableByteArray.readUnsignedByte() & 128) != 0;
                                    i19 = ColorInfo.isoColorPrimariesToColorSpace(readUnsignedShort3);
                                    i20 = z3 ? 1 : 2;
                                    i21 = ColorInfo.isoTransferCharacteristicsToColorTransfer(readUnsignedShort4);
                                    i15 = i9;
                                }
                            }
                        } else {
                            i11 = i21;
                        }
                    }
                    i15 = i9;
                }
                i21 = i11;
                i19 = i10;
                i15 = i9;
            }
            position = i7 + readInt;
            i12 = i2;
            i13 = i3;
            stsdData2 = stsdData;
            i14 = i8;
            str3 = str2;
            drmInitData3 = drmInitData2;
        }
        DrmInitData drmInitData4 = drmInitData3;
        int i36 = i15;
        int i37 = i19;
        int i38 = i21;
        if (str == null) {
            return;
        }
        Format.Builder colorInfo = new Format.Builder().setId(i4).setSampleMimeType(str).setCodecs(str4).setWidth(readUnsignedShort).setHeight(readUnsignedShort2).setPixelWidthHeightRatio(f).setRotationDegrees(i5).setProjectionData(bArr).setStereoMode(i17).setInitializationData(immutableList).setMaxNumReorderSamples(i18).setDrmInitData(drmInitData4).setColorInfo(new ColorInfo.Builder().setColorSpace(i37).setColorRange(i20).setColorTransfer(i38).setHdrStaticInfo(byteBuffer != null ? byteBuffer.array() : null).setLumaBitdepth(i36).setChromaBitdepth(i16).build());
        if (esdsData != null) {
            colorInfo.setAverageBitrate(Ints.saturatedCast(esdsData.bitrate)).setPeakBitrate(Ints.saturatedCast(esdsData.peakBitrate));
        }
        stsdData.format = colorInfo.build();
    }

    @Nullable
    private static Metadata parseXyz(ParsableByteArray parsableByteArray) {
        short readShort = parsableByteArray.readShort();
        parsableByteArray.skipBytes(2);
        String readString = parsableByteArray.readString(readShort);
        int max = Math.max(readString.lastIndexOf(43), readString.lastIndexOf(45));
        try {
            return new Metadata(new Mp4LocationData(Float.parseFloat(readString.substring(0, max)), Float.parseFloat(readString.substring(max, readString.length() - 1))));
        } catch (IndexOutOfBoundsException | NumberFormatException unused) {
            return null;
        }
    }
}
