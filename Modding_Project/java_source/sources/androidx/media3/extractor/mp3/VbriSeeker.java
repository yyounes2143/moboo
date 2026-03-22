package androidx.media3.extractor.mp3;

import androidx.annotation.Nullable;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.MpegAudioUtil;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.SeekPoint;
/* compiled from: Proguard */
/* loaded from: classes.dex */
final class VbriSeeker implements Seeker {
    private static final String TAG = "VbriSeeker";
    private final int bitrate;
    private final long dataEndPosition;
    private final long durationUs;
    private final long[] positions;
    private final long[] timesUs;

    private VbriSeeker(long[] jArr, long[] jArr2, long j, long j2, int i) {
        this.timesUs = jArr;
        this.positions = jArr2;
        this.durationUs = j;
        this.dataEndPosition = j2;
        this.bitrate = i;
    }

    @Nullable
    public static VbriSeeker create(long j, long j2, MpegAudioUtil.Header header, ParsableByteArray parsableByteArray) {
        int i;
        int readUnsignedByte;
        ParsableByteArray parsableByteArray2 = parsableByteArray;
        parsableByteArray2.skipBytes(10);
        int readInt = parsableByteArray2.readInt();
        VbriSeeker vbriSeeker = null;
        if (readInt <= 0) {
            return null;
        }
        int i2 = header.sampleRate;
        long j3 = readInt;
        if (i2 >= 32000) {
            i = 1152;
        } else {
            i = 576;
        }
        long scaleLargeTimestamp = Util.scaleLargeTimestamp(j3, i * 1000000, i2);
        int readUnsignedShort = parsableByteArray2.readUnsignedShort();
        int readUnsignedShort2 = parsableByteArray2.readUnsignedShort();
        int readUnsignedShort3 = parsableByteArray2.readUnsignedShort();
        parsableByteArray2.skipBytes(2);
        long j4 = j2 + header.frameSize;
        long[] jArr = new long[readUnsignedShort];
        long[] jArr2 = new long[readUnsignedShort];
        int i3 = 0;
        long j5 = j2;
        while (i3 < readUnsignedShort) {
            VbriSeeker vbriSeeker2 = vbriSeeker;
            int i4 = readUnsignedShort2;
            long j6 = j4;
            jArr[i3] = (i3 * scaleLargeTimestamp) / readUnsignedShort;
            jArr2[i3] = Math.max(j5, j6);
            if (readUnsignedShort3 != 1) {
                if (readUnsignedShort3 != 2) {
                    if (readUnsignedShort3 != 3) {
                        if (readUnsignedShort3 != 4) {
                            return vbriSeeker2;
                        }
                        readUnsignedByte = parsableByteArray2.readUnsignedIntToInt();
                    } else {
                        readUnsignedByte = parsableByteArray2.readUnsignedInt24();
                    }
                } else {
                    readUnsignedByte = parsableByteArray2.readUnsignedShort();
                }
            } else {
                readUnsignedByte = parsableByteArray2.readUnsignedByte();
            }
            j5 += readUnsignedByte * i4;
            i3++;
            parsableByteArray2 = parsableByteArray;
            j4 = j6;
            readUnsignedShort2 = i4;
            vbriSeeker = vbriSeeker2;
            readUnsignedShort = readUnsignedShort;
        }
        if (j != -1 && j != j5) {
            Log.w(TAG, "VBRI data size mismatch: " + j + ", " + j5);
        }
        return new VbriSeeker(jArr, jArr2, scaleLargeTimestamp, j5, header.bitrate);
    }

    @Override // androidx.media3.extractor.mp3.Seeker
    public int getAverageBitrate() {
        return this.bitrate;
    }

    @Override // androidx.media3.extractor.mp3.Seeker
    public long getDataEndPosition() {
        return this.dataEndPosition;
    }

    @Override // androidx.media3.extractor.SeekMap
    public long getDurationUs() {
        return this.durationUs;
    }

    @Override // androidx.media3.extractor.SeekMap
    public SeekMap.SeekPoints getSeekPoints(long j) {
        int binarySearchFloor = Util.binarySearchFloor(this.timesUs, j, true, true);
        SeekPoint seekPoint = new SeekPoint(this.timesUs[binarySearchFloor], this.positions[binarySearchFloor]);
        if (seekPoint.timeUs < j && binarySearchFloor != this.timesUs.length - 1) {
            int i = binarySearchFloor + 1;
            return new SeekMap.SeekPoints(seekPoint, new SeekPoint(this.timesUs[i], this.positions[i]));
        }
        return new SeekMap.SeekPoints(seekPoint);
    }

    @Override // androidx.media3.extractor.mp3.Seeker
    public long getTimeUs(long j) {
        return this.timesUs[Util.binarySearchFloor(this.positions, j, true, true)];
    }

    @Override // androidx.media3.extractor.SeekMap
    public boolean isSeekable() {
        return true;
    }
}
