package androidx.media3.extractor.mp3;

import androidx.annotation.Nullable;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.MpegAudioUtil;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.SeekPoint;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
/* compiled from: Proguard */
/* loaded from: classes.dex */
final class XingSeeker implements Seeker {
    private static final String TAG = "XingSeeker";
    private final int bitrate;
    private final long dataEndPosition;
    private final long dataSize;
    private final long dataStartPosition;
    private final long durationUs;
    @Nullable
    private final long[] tableOfContents;
    private final int xingFrameSize;

    private XingSeeker(long j, int i, long j2, int i2) {
        this(j, i, j2, i2, -1L, null);
    }

    @Nullable
    public static XingSeeker create(XingFrame xingFrame, long j) {
        long[] jArr;
        long computeDurationUs = xingFrame.computeDurationUs();
        if (computeDurationUs == -9223372036854775807L) {
            return null;
        }
        long j2 = xingFrame.dataSize;
        if (j2 != -1 && (jArr = xingFrame.tableOfContents) != null) {
            MpegAudioUtil.Header header = xingFrame.header;
            return new XingSeeker(j, header.frameSize, computeDurationUs, header.bitrate, j2, jArr);
        }
        MpegAudioUtil.Header header2 = xingFrame.header;
        return new XingSeeker(j, header2.frameSize, computeDurationUs, header2.bitrate);
    }

    private long getTimeUsForTableIndex(int i) {
        return (this.durationUs * i) / 100;
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
        double d;
        if (!isSeekable()) {
            return new SeekMap.SeekPoints(new SeekPoint(0L, this.dataStartPosition + this.xingFrameSize));
        }
        long constrainValue = Util.constrainValue(j, 0L, this.durationUs);
        double d2 = (constrainValue * 100.0d) / this.durationUs;
        double d3 = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
        if (d2 > FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
            if (d2 >= 100.0d) {
                d3 = 256.0d;
            } else {
                int i = (int) d2;
                long[] jArr = (long[]) Assertions.checkStateNotNull(this.tableOfContents);
                double d4 = jArr[i];
                if (i == 99) {
                    d = 256.0d;
                } else {
                    d = jArr[i + 1];
                }
                d3 = d4 + ((d2 - i) * (d - d4));
            }
        }
        return new SeekMap.SeekPoints(new SeekPoint(constrainValue, this.dataStartPosition + Util.constrainValue(Math.round((d3 / 256.0d) * this.dataSize), this.xingFrameSize, this.dataSize - 1)));
    }

    @Override // androidx.media3.extractor.mp3.Seeker
    public long getTimeUs(long j) {
        long j2;
        double d;
        long j3 = j - this.dataStartPosition;
        if (isSeekable() && j3 > this.xingFrameSize) {
            long[] jArr = (long[]) Assertions.checkStateNotNull(this.tableOfContents);
            double d2 = (j3 * 256.0d) / this.dataSize;
            int binarySearchFloor = Util.binarySearchFloor(jArr, (long) d2, true, true);
            long timeUsForTableIndex = getTimeUsForTableIndex(binarySearchFloor);
            long j4 = jArr[binarySearchFloor];
            int i = binarySearchFloor + 1;
            long timeUsForTableIndex2 = getTimeUsForTableIndex(i);
            if (binarySearchFloor == 99) {
                j2 = 256;
            } else {
                j2 = jArr[i];
            }
            if (j4 == j2) {
                d = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
            } else {
                d = (d2 - j4) / (j2 - j4);
            }
            return timeUsForTableIndex + Math.round(d * (timeUsForTableIndex2 - timeUsForTableIndex));
        }
        return 0L;
    }

    @Override // androidx.media3.extractor.SeekMap
    public boolean isSeekable() {
        if (this.tableOfContents != null) {
            return true;
        }
        return false;
    }

    private XingSeeker(long j, int i, long j2, int i2, long j3, @Nullable long[] jArr) {
        this.dataStartPosition = j;
        this.xingFrameSize = i;
        this.durationUs = j2;
        this.bitrate = i2;
        this.dataSize = j3;
        this.tableOfContents = jArr;
        this.dataEndPosition = j3 != -1 ? j + j3 : -1L;
    }
}
