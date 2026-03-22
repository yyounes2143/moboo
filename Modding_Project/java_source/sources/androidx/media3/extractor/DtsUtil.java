package androidx.media3.extractor;

import androidx.annotation.Nullable;
import androidx.media3.common.C;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.RendererCapabilities;
import com.google.android.material.internal.ViewUtils;
import com.tencent.rtmp.downloader.TXVodDownloadDataSource;
import com.tencent.ugc.TXRecordCommon;
import io.flutter.plugin.platform.PlatformPlugin;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: Proguard */
@UnstableApi
/* loaded from: classes.dex */
public final class DtsUtil {
    public static final int DTS_EXPRESS_MAX_RATE_BITS_PER_SECOND = 768000;
    public static final int DTS_HD_MAX_RATE_BYTES_PER_SECOND = 2250000;
    private static final byte FIRST_BYTE_14B_BE = 31;
    private static final byte FIRST_BYTE_14B_LE = -1;
    private static final byte FIRST_BYTE_BE = Byte.MAX_VALUE;
    private static final byte FIRST_BYTE_EXTSS_BE = 100;
    private static final byte FIRST_BYTE_EXTSS_LE = 37;
    private static final byte FIRST_BYTE_LE = -2;
    private static final byte FIRST_BYTE_UHD_FTOC_NONSYNC_BE = 113;
    private static final byte FIRST_BYTE_UHD_FTOC_NONSYNC_LE = -24;
    private static final byte FIRST_BYTE_UHD_FTOC_SYNC_BE = 64;
    private static final byte FIRST_BYTE_UHD_FTOC_SYNC_LE = -14;
    public static final int FRAME_TYPE_CORE = 1;
    public static final int FRAME_TYPE_EXTENSION_SUBSTREAM = 2;
    public static final int FRAME_TYPE_UHD_NON_SYNC = 4;
    public static final int FRAME_TYPE_UHD_SYNC = 3;
    public static final int FRAME_TYPE_UNKNOWN = 0;
    private static final int SYNC_VALUE_14B_BE = 536864768;
    private static final int SYNC_VALUE_14B_LE = -14745368;
    private static final int SYNC_VALUE_BE = 2147385345;
    private static final int SYNC_VALUE_EXTSS_BE = 1683496997;
    private static final int SYNC_VALUE_EXTSS_LE = 622876772;
    private static final int SYNC_VALUE_LE = -25230976;
    private static final int SYNC_VALUE_UHD_FTOC_NONSYNC_BE = 1908687592;
    private static final int SYNC_VALUE_UHD_FTOC_NONSYNC_LE = -398277519;
    private static final int SYNC_VALUE_UHD_FTOC_SYNC_BE = 1078008818;
    private static final int SYNC_VALUE_UHD_FTOC_SYNC_LE = -233094848;
    private static final int[] CHANNELS_BY_AMODE = {1, 2, 2, 2, 2, 3, 3, 4, 4, 5, 6, 6, 6, 7, 8, 8};
    private static final int[] SAMPLE_RATE_BY_SFREQ = {-1, 8000, 16000, TXRecordCommon.AUDIO_SAMPLERATE_32000, -1, -1, 11025, 22050, TXRecordCommon.AUDIO_SAMPLERATE_44100, -1, -1, 12000, 24000, 48000, -1, -1};
    private static final int[] TWICE_BITRATE_KBPS_BY_RATE = {64, 112, 128, 192, 224, 256, RendererCapabilities.DECODER_SUPPORT_MASK, 448, 512, 640, ViewUtils.EDGE_TO_EDGE_FLAGS, 896, 1024, 1152, PlatformPlugin.DEFAULT_SYSTEM_UI, 1536, 1920, 2048, 2304, 2560, 2688, 2816, 2823, 2944, 3072, 3840, 4096, 6144, 7680};
    public static final int DTS_MAX_RATE_BYTES_PER_SECOND = 192000;
    private static final int[] SAMPLE_RATE_BY_INDEX = {8000, 16000, TXRecordCommon.AUDIO_SAMPLERATE_32000, 64000, 128000, 22050, TXRecordCommon.AUDIO_SAMPLERATE_44100, 88200, 176400, 352800, 12000, 24000, 48000, 96000, DTS_MAX_RATE_BYTES_PER_SECOND, 384000};
    private static final int[] UHD_FTOC_PAYLOAD_LENGTH_TABLE = {5, 8, 10, 12};
    private static final int[] UHD_METADATA_CHUNK_SIZE_LENGTH_TABLE = {6, 9, 12, 15};
    private static final int[] UHD_AUDIO_CHUNK_ID_LENGTH_TABLE = {2, 4, 6, 8};
    private static final int[] UHD_AUDIO_CHUNK_SIZE_LENGTH_TABLE = {9, 11, 13, 16};
    private static final int[] UHD_HEADER_SIZE_LENGTH_TABLE = {5, 8, 10, 12};

    /* compiled from: Proguard */
    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface DtsAudioMimeType {
    }

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static final class DtsHeader {
        public final int bitrate;
        public final int channelCount;
        public final long frameDurationUs;
        public final int frameSize;
        public final String mimeType;
        public final int sampleRate;

        private DtsHeader(String str, int i, int i2, int i3, long j, int i4) {
            this.mimeType = str;
            this.channelCount = i;
            this.sampleRate = i2;
            this.frameSize = i3;
            this.frameDurationUs = j;
            this.bitrate = i4;
        }
    }

    /* compiled from: Proguard */
    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface FrameType {
    }

    private DtsUtil() {
    }

    private static void checkCrc(byte[] bArr, int i) throws ParserException {
        int i2 = i - 2;
        if (((bArr[i - 1] & 255) | ((bArr[i2] << 8) & 65535)) == Util.crc16(bArr, 0, i2, 65535)) {
            return;
        }
        throw ParserException.createForMalformedContainer("CRC check failed", null);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:17:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int getDtsFrameSize(byte[] r7) {
        /*
            r0 = 0
            r1 = r7[r0]
            r2 = -2
            r3 = 7
            r4 = 6
            r5 = 1
            r6 = 4
            if (r1 == r2) goto L4f
            r2 = -1
            if (r1 == r2) goto L3e
            r2 = 31
            if (r1 == r2) goto L26
            r1 = 5
            r1 = r7[r1]
            r1 = r1 & 3
            int r1 = r1 << 12
            r2 = r7[r4]
            r2 = r2 & 255(0xff, float:3.57E-43)
            int r2 = r2 << r6
            r1 = r1 | r2
            r7 = r7[r3]
        L20:
            r7 = r7 & 240(0xf0, float:3.36E-43)
            int r7 = r7 >> r6
            r7 = r7 | r1
            int r7 = r7 + r5
            goto L5e
        L26:
            r0 = r7[r4]
            r0 = r0 & 3
            int r0 = r0 << 12
            r1 = r7[r3]
            r1 = r1 & 255(0xff, float:3.57E-43)
            int r1 = r1 << r6
            r0 = r0 | r1
            r1 = 8
            r7 = r7[r1]
        L36:
            r7 = r7 & 60
            int r7 = r7 >> 2
            r7 = r7 | r0
            int r7 = r7 + r5
            r0 = r5
            goto L5e
        L3e:
            r0 = r7[r3]
            r0 = r0 & 3
            int r0 = r0 << 12
            r1 = r7[r4]
            r1 = r1 & 255(0xff, float:3.57E-43)
            int r1 = r1 << r6
            r0 = r0 | r1
            r1 = 9
            r7 = r7[r1]
            goto L36
        L4f:
            r1 = r7[r6]
            r1 = r1 & 3
            int r1 = r1 << 12
            r2 = r7[r3]
            r2 = r2 & 255(0xff, float:3.57E-43)
            int r2 = r2 << r6
            r1 = r1 | r2
            r7 = r7[r4]
            goto L20
        L5e:
            if (r0 == 0) goto L64
            int r7 = r7 * 16
            int r7 = r7 / 14
        L64:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.extractor.DtsUtil.getDtsFrameSize(byte[]):int");
    }

    public static int getFrameType(int i) {
        if (i != SYNC_VALUE_BE && i != SYNC_VALUE_LE && i != SYNC_VALUE_14B_BE && i != SYNC_VALUE_14B_LE) {
            if (i != SYNC_VALUE_EXTSS_BE && i != SYNC_VALUE_EXTSS_LE) {
                if (i != SYNC_VALUE_UHD_FTOC_SYNC_BE && i != SYNC_VALUE_UHD_FTOC_SYNC_LE) {
                    if (i != SYNC_VALUE_UHD_FTOC_NONSYNC_BE && i != SYNC_VALUE_UHD_FTOC_NONSYNC_LE) {
                        return 0;
                    }
                    return 4;
                }
                return 3;
            }
            return 2;
        }
        return 1;
    }

    private static ParsableBitArray getNormalizedFrame(byte[] bArr) {
        byte b = bArr[0];
        if (b != Byte.MAX_VALUE && b != 100 && b != 64 && b != 113) {
            byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
            if (isLittleEndianFrameHeader(copyOf)) {
                for (int i = 0; i < copyOf.length - 1; i += 2) {
                    byte b2 = copyOf[i];
                    int i2 = i + 1;
                    copyOf[i] = copyOf[i2];
                    copyOf[i2] = b2;
                }
            }
            ParsableBitArray parsableBitArray = new ParsableBitArray(copyOf);
            if (copyOf[0] == 31) {
                ParsableBitArray parsableBitArray2 = new ParsableBitArray(copyOf);
                while (parsableBitArray2.bitsLeft() >= 16) {
                    parsableBitArray2.skipBits(2);
                    parsableBitArray.putInt(parsableBitArray2.readBits(14), 14);
                }
            }
            parsableBitArray.reset(copyOf);
            return parsableBitArray;
        }
        return new ParsableBitArray(bArr);
    }

    private static boolean isLittleEndianFrameHeader(byte[] bArr) {
        byte b = bArr[0];
        if (b != -2 && b != -1 && b != 37 && b != -14 && b != -24) {
            return false;
        }
        return true;
    }

    public static int parseDtsAudioSampleCount(byte[] bArr) {
        int i;
        byte b;
        int i2;
        byte b2;
        byte b3 = bArr[0];
        if (b3 != -2) {
            if (b3 == -1) {
                i = (bArr[4] & 7) << 4;
                b2 = bArr[7];
            } else if (b3 != 31) {
                i = (bArr[4] & 1) << 6;
                b = bArr[5];
            } else {
                i = (bArr[5] & 7) << 4;
                b2 = bArr[6];
            }
            i2 = b2 & 60;
            return (((i2 >> 2) | i) + 1) * 32;
        }
        i = (bArr[5] & 1) << 6;
        b = bArr[4];
        i2 = b & 252;
        return (((i2 >> 2) | i) + 1) * 32;
    }

    public static Format parseDtsFormat(byte[] bArr, @Nullable String str, @Nullable String str2, int i, @Nullable DrmInitData drmInitData) {
        int i2;
        int i3;
        ParsableBitArray normalizedFrame = getNormalizedFrame(bArr);
        normalizedFrame.skipBits(60);
        int i4 = CHANNELS_BY_AMODE[normalizedFrame.readBits(6)];
        int i5 = SAMPLE_RATE_BY_SFREQ[normalizedFrame.readBits(4)];
        int readBits = normalizedFrame.readBits(5);
        int[] iArr = TWICE_BITRATE_KBPS_BY_RATE;
        if (readBits >= iArr.length) {
            i2 = -1;
        } else {
            i2 = (iArr[readBits] * 1000) / 2;
        }
        normalizedFrame.skipBits(10);
        if (normalizedFrame.readBits(2) > 0) {
            i3 = 1;
        } else {
            i3 = 0;
        }
        return new Format.Builder().setId(str).setSampleMimeType("audio/vnd.dts").setAverageBitrate(i2).setChannelCount(i4 + i3).setSampleRate(i5).setDrmInitData(drmInitData).setLanguage(str2).setRoleFlags(i).build();
    }

    public static DtsHeader parseDtsHdHeader(byte[] bArr) throws ParserException {
        int i;
        int i2;
        int i3;
        int i4;
        long j;
        int i5;
        ParsableBitArray normalizedFrame = getNormalizedFrame(bArr);
        normalizedFrame.skipBits(40);
        int readBits = normalizedFrame.readBits(2);
        if (!normalizedFrame.readBit()) {
            i = 16;
            i2 = 8;
        } else {
            i = 20;
            i2 = 12;
        }
        normalizedFrame.skipBits(i2);
        int readBits2 = normalizedFrame.readBits(i) + 1;
        boolean readBit = normalizedFrame.readBit();
        int i6 = -1;
        int i7 = 0;
        if (readBit) {
            i3 = normalizedFrame.readBits(2);
            int readBits3 = (normalizedFrame.readBits(3) + 1) * 512;
            if (normalizedFrame.readBit()) {
                normalizedFrame.skipBits(36);
            }
            int readBits4 = normalizedFrame.readBits(3) + 1;
            int readBits5 = normalizedFrame.readBits(3) + 1;
            if (readBits4 == 1 && readBits5 == 1) {
                int i8 = readBits + 1;
                int readBits6 = normalizedFrame.readBits(i8);
                for (int i9 = 0; i9 < i8; i9++) {
                    if (((readBits6 >> i9) & 1) == 1) {
                        normalizedFrame.skipBits(8);
                    }
                }
                if (normalizedFrame.readBit()) {
                    normalizedFrame.skipBits(2);
                    int readBits7 = (normalizedFrame.readBits(2) + 1) << 2;
                    int readBits8 = normalizedFrame.readBits(2) + 1;
                    while (i7 < readBits8) {
                        normalizedFrame.skipBits(readBits7);
                        i7++;
                    }
                }
                i7 = readBits3;
            } else {
                throw ParserException.createForUnsupportedContainerFeature("Multiple audio presentations or assets not supported");
            }
        } else {
            i3 = -1;
        }
        normalizedFrame.skipBits(i);
        normalizedFrame.skipBits(12);
        if (readBit) {
            if (normalizedFrame.readBit()) {
                normalizedFrame.skipBits(4);
            }
            if (normalizedFrame.readBit()) {
                normalizedFrame.skipBits(24);
            }
            if (normalizedFrame.readBit()) {
                normalizedFrame.skipBytes(normalizedFrame.readBits(10) + 1);
            }
            normalizedFrame.skipBits(5);
            i4 = SAMPLE_RATE_BY_INDEX[normalizedFrame.readBits(4)];
            i6 = normalizedFrame.readBits(8) + 1;
        } else {
            i4 = C.RATE_UNSET_INT;
        }
        int i10 = i4;
        if (readBit) {
            if (i3 != 0) {
                if (i3 != 1) {
                    if (i3 == 2) {
                        i5 = 48000;
                    } else {
                        throw ParserException.createForMalformedContainer("Unsupported reference clock code in DTS HD header: " + i3, null);
                    }
                } else {
                    i5 = TXRecordCommon.AUDIO_SAMPLERATE_44100;
                }
            } else {
                i5 = TXRecordCommon.AUDIO_SAMPLERATE_32000;
            }
            j = Util.scaleLargeTimestamp(i7, 1000000L, i5);
        } else {
            j = -9223372036854775807L;
        }
        return new DtsHeader("audio/vnd.dts.hd;profile=lbr", i6, i10, readBits2, j, 0);
    }

    public static int parseDtsHdHeaderSize(byte[] bArr) {
        int i;
        ParsableBitArray normalizedFrame = getNormalizedFrame(bArr);
        normalizedFrame.skipBits(42);
        if (normalizedFrame.readBit()) {
            i = 12;
        } else {
            i = 8;
        }
        return normalizedFrame.readBits(i) + 1;
    }

    public static DtsHeader parseDtsUhdHeader(byte[] bArr, AtomicInteger atomicInteger) throws ParserException {
        int i;
        int i2;
        long j;
        AtomicInteger atomicInteger2;
        int i3;
        int i4;
        ParsableBitArray normalizedFrame = getNormalizedFrame(bArr);
        int i5 = 0;
        if (normalizedFrame.readBits(32) == SYNC_VALUE_UHD_FTOC_SYNC_BE) {
            i = 1;
        } else {
            i = 0;
        }
        int parseUnsignedVarInt = parseUnsignedVarInt(normalizedFrame, UHD_FTOC_PAYLOAD_LENGTH_TABLE, true) + 1;
        if (i != 0) {
            if (normalizedFrame.readBit()) {
                checkCrc(bArr, parseUnsignedVarInt);
                int readBits = normalizedFrame.readBits(2);
                if (readBits != 0) {
                    if (readBits != 1) {
                        if (readBits == 2) {
                            i3 = RendererCapabilities.DECODER_SUPPORT_MASK;
                        } else {
                            throw ParserException.createForMalformedContainer("Unsupported base duration index in DTS UHD header: " + readBits, null);
                        }
                    } else {
                        i3 = TXVodDownloadDataSource.QUALITY_480P;
                    }
                } else {
                    i3 = 512;
                }
                int readBits2 = i3 * (normalizedFrame.readBits(3) + 1);
                int readBits3 = normalizedFrame.readBits(2);
                if (readBits3 != 0) {
                    if (readBits3 != 1) {
                        if (readBits3 == 2) {
                            i4 = 48000;
                        } else {
                            throw ParserException.createForMalformedContainer("Unsupported clock rate index in DTS UHD header: " + readBits3, null);
                        }
                    } else {
                        i4 = TXRecordCommon.AUDIO_SAMPLERATE_44100;
                    }
                } else {
                    i4 = TXRecordCommon.AUDIO_SAMPLERATE_32000;
                }
                if (normalizedFrame.readBit()) {
                    normalizedFrame.skipBits(36);
                }
                i2 = (1 << normalizedFrame.readBits(2)) * i4;
                j = Util.scaleLargeTimestamp(readBits2, 1000000L, i4);
            } else {
                throw ParserException.createForUnsupportedContainerFeature("Only supports full channel mask-based audio presentation");
            }
        } else {
            i2 = C.RATE_UNSET_INT;
            j = -9223372036854775807L;
        }
        int i6 = i2;
        long j2 = j;
        int i7 = 0;
        for (int i8 = 0; i8 < i; i8++) {
            i7 += parseUnsignedVarInt(normalizedFrame, UHD_METADATA_CHUNK_SIZE_LENGTH_TABLE, true);
        }
        if (i != 0) {
            atomicInteger2 = atomicInteger;
            atomicInteger2.set(parseUnsignedVarInt(normalizedFrame, UHD_AUDIO_CHUNK_ID_LENGTH_TABLE, true));
        } else {
            atomicInteger2 = atomicInteger;
        }
        if (atomicInteger2.get() != 0) {
            i5 = parseUnsignedVarInt(normalizedFrame, UHD_AUDIO_CHUNK_SIZE_LENGTH_TABLE, true);
        }
        return new DtsHeader(MimeTypes.AUDIO_DTS_X, 2, i6, parseUnsignedVarInt + i7 + i5, j2, 0);
    }

    public static int parseDtsUhdHeaderSize(byte[] bArr) {
        ParsableBitArray normalizedFrame = getNormalizedFrame(bArr);
        normalizedFrame.skipBits(32);
        return parseUnsignedVarInt(normalizedFrame, UHD_HEADER_SIZE_LENGTH_TABLE, true) + 1;
    }

    private static int parseUnsignedVarInt(ParsableBitArray parsableBitArray, int[] iArr, boolean z) {
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < 3 && parsableBitArray.readBit(); i3++) {
            i2++;
        }
        if (z) {
            int i4 = 0;
            while (i < i2) {
                i4 += 1 << iArr[i];
                i++;
            }
            i = i4;
        }
        return i + parsableBitArray.readBits(iArr[i2]);
    }

    public static int parseDtsAudioSampleCount(ByteBuffer byteBuffer) {
        int i;
        byte b;
        int i2;
        byte b2;
        if (byteBuffer.getInt(0) == SYNC_VALUE_UHD_FTOC_SYNC_LE || byteBuffer.getInt(0) == SYNC_VALUE_UHD_FTOC_NONSYNC_LE) {
            return 1024;
        }
        if (byteBuffer.getInt(0) == SYNC_VALUE_EXTSS_LE) {
            return 4096;
        }
        int position = byteBuffer.position();
        byte b3 = byteBuffer.get(position);
        if (b3 != -2) {
            if (b3 == -1) {
                i = (byteBuffer.get(position + 4) & 7) << 4;
                b2 = byteBuffer.get(position + 7);
            } else if (b3 != 31) {
                i = (byteBuffer.get(position + 4) & 1) << 6;
                b = byteBuffer.get(position + 5);
            } else {
                i = (byteBuffer.get(position + 5) & 7) << 4;
                b2 = byteBuffer.get(position + 6);
            }
            i2 = b2 & 60;
            return (((i2 >> 2) | i) + 1) * 32;
        }
        i = (byteBuffer.get(position + 5) & 1) << 6;
        b = byteBuffer.get(position + 4);
        i2 = b & 252;
        return (((i2 >> 2) | i) + 1) * 32;
    }
}
