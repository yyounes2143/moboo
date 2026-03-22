package androidx.media3.exoplayer.rtsp.reader;

import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.rtsp.RtpPacket;
import androidx.media3.exoplayer.rtsp.RtpPayloadFormat;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.TrackOutput;
/* compiled from: Proguard */
/* loaded from: classes.dex */
final class RtpAmrReader implements RtpPayloadReader {
    private static final int[] AMR_NB_FRAME_TYPE_INDEX_TO_FRAME_SIZE = {13, 14, 16, 18, 20, 21, 27, 32, 6, 7, 6, 6, 1, 1, 1, 1};
    private static final int[] AMR_WB_FRAME_TYPE_INDEX_TO_FRAME_SIZE = {18, 24, 33, 37, 41, 47, 51, 59, 61, 6, 1, 1, 1, 1, 1, 1};
    private static final String TAG = "RtpAmrReader";
    private final boolean isWideBand;
    private final RtpPayloadFormat payloadFormat;
    private final int sampleRate;
    private TrackOutput trackOutput;
    private long firstReceivedTimestamp = -9223372036854775807L;
    private int previousSequenceNumber = -1;
    private long startTimeOffsetUs = 0;

    public RtpAmrReader(RtpPayloadFormat rtpPayloadFormat) {
        this.payloadFormat = rtpPayloadFormat;
        this.isWideBand = "audio/amr-wb".equals(Assertions.checkNotNull(rtpPayloadFormat.format.sampleMimeType));
        this.sampleRate = rtpPayloadFormat.clockRate;
    }

    public static int getFrameSize(int i, boolean z) {
        boolean z2;
        String str;
        if ((i >= 0 && i <= 8) || i == 15) {
            z2 = true;
        } else {
            z2 = false;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Illegal AMR ");
        if (z) {
            str = "WB";
        } else {
            str = "NB";
        }
        sb.append(str);
        sb.append(" frame type ");
        sb.append(i);
        Assertions.checkArgument(z2, sb.toString());
        if (z) {
            return AMR_WB_FRAME_TYPE_INDEX_TO_FRAME_SIZE[i];
        }
        return AMR_NB_FRAME_TYPE_INDEX_TO_FRAME_SIZE[i];
    }

    @Override // androidx.media3.exoplayer.rtsp.reader.RtpPayloadReader
    public void consume(ParsableByteArray parsableByteArray, long j, int i, boolean z) {
        int nextSequenceNumber;
        boolean z2 = true;
        Assertions.checkStateNotNull(this.trackOutput);
        int i2 = this.previousSequenceNumber;
        if (i2 != -1 && i != (nextSequenceNumber = RtpPacket.getNextSequenceNumber(i2))) {
            Log.w(TAG, Util.formatInvariant("Received RTP packet with unexpected sequence number. Expected: %d; received: %d.", Integer.valueOf(nextSequenceNumber), Integer.valueOf(i)));
        }
        parsableByteArray.skipBytes(1);
        int frameSize = getFrameSize((parsableByteArray.peekUnsignedByte() >> 3) & 15, this.isWideBand);
        int bytesLeft = parsableByteArray.bytesLeft();
        if (bytesLeft != frameSize) {
            z2 = false;
        }
        Assertions.checkArgument(z2, "compound payload not supported currently");
        this.trackOutput.sampleData(parsableByteArray, bytesLeft);
        this.trackOutput.sampleMetadata(RtpReaderUtils.toSampleTimeUs(this.startTimeOffsetUs, j, this.firstReceivedTimestamp, this.sampleRate), 1, bytesLeft, 0, null);
        this.previousSequenceNumber = i;
    }

    @Override // androidx.media3.exoplayer.rtsp.reader.RtpPayloadReader
    public void createTracks(ExtractorOutput extractorOutput, int i) {
        TrackOutput track = extractorOutput.track(i, 1);
        this.trackOutput = track;
        track.format(this.payloadFormat.format);
    }

    @Override // androidx.media3.exoplayer.rtsp.reader.RtpPayloadReader
    public void onReceivingFirstPacket(long j, int i) {
        this.firstReceivedTimestamp = j;
    }

    @Override // androidx.media3.exoplayer.rtsp.reader.RtpPayloadReader
    public void seek(long j, long j2) {
        this.firstReceivedTimestamp = j;
        this.startTimeOffsetUs = j2;
    }
}
