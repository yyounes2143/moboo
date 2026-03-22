package androidx.media3.extractor.mp3;

import androidx.annotation.Nullable;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.MpegAudioUtil;
/* compiled from: Proguard */
/* loaded from: classes.dex */
final class XingFrame {
    public final long dataSize;
    public final int encoderDelay;
    public final int encoderPadding;
    public final long frameCount;
    public final MpegAudioUtil.Header header;
    @Nullable
    public final long[] tableOfContents;

    private XingFrame(MpegAudioUtil.Header header, long j, long j2, @Nullable long[] jArr, int i, int i2) {
        this.header = new MpegAudioUtil.Header(header);
        this.frameCount = j;
        this.dataSize = j2;
        this.tableOfContents = jArr;
        this.encoderDelay = i;
        this.encoderPadding = i2;
    }

    public static XingFrame parse(MpegAudioUtil.Header header, ParsableByteArray parsableByteArray) {
        int i;
        long j;
        long[] jArr;
        int i2;
        int i3;
        int readInt = parsableByteArray.readInt();
        if ((readInt & 1) != 0) {
            i = parsableByteArray.readUnsignedIntToInt();
        } else {
            i = -1;
        }
        if ((readInt & 2) != 0) {
            j = parsableByteArray.readUnsignedInt();
        } else {
            j = -1;
        }
        long j2 = j;
        if ((readInt & 4) == 4) {
            jArr = new long[100];
            for (int i4 = 0; i4 < 100; i4++) {
                jArr[i4] = parsableByteArray.readUnsignedByte();
            }
        } else {
            jArr = null;
        }
        long[] jArr2 = jArr;
        if ((readInt & 8) != 0) {
            parsableByteArray.skipBytes(4);
        }
        if (parsableByteArray.bytesLeft() >= 24) {
            parsableByteArray.skipBytes(21);
            int readUnsignedInt24 = parsableByteArray.readUnsignedInt24();
            i3 = readUnsignedInt24 & 4095;
            i2 = (16773120 & readUnsignedInt24) >> 12;
        } else {
            i2 = -1;
            i3 = -1;
        }
        return new XingFrame(header, i, j2, jArr2, i2, i3);
    }

    public long computeDurationUs() {
        long j = this.frameCount;
        if (j != -1 && j != 0) {
            MpegAudioUtil.Header header = this.header;
            return Util.sampleCountToDurationUs((j * header.samplesPerFrame) - 1, header.sampleRate);
        }
        return -9223372036854775807L;
    }
}
