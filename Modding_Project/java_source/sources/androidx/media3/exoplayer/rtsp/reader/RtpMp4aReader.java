package androidx.media3.exoplayer.rtsp.reader;

import androidx.media3.common.ParserException;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.rtsp.RtpPacket;
import androidx.media3.exoplayer.rtsp.RtpPayloadFormat;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.TrackOutput;
import com.google.common.collect.ImmutableMap;
/* compiled from: Proguard */
/* loaded from: classes.dex */
final class RtpMp4aReader implements RtpPayloadReader {
    private static final String PARAMETER_MP4A_CONFIG = "config";
    private static final String TAG = "RtpMp4aReader";
    private long firstReceivedTimestamp;
    private int fragmentedSampleSizeBytes;
    private long fragmentedSampleTimeUs;
    private final int numberOfSubframes;
    private final RtpPayloadFormat payloadFormat;
    private int previousSequenceNumber;
    private long startTimeOffsetUs;
    private TrackOutput trackOutput;

    public RtpMp4aReader(RtpPayloadFormat rtpPayloadFormat) {
        this.payloadFormat = rtpPayloadFormat;
        try {
            this.numberOfSubframes = getNumOfSubframesFromMpeg4AudioConfig(rtpPayloadFormat.fmtpParameters);
            this.firstReceivedTimestamp = -9223372036854775807L;
            this.previousSequenceNumber = -1;
            this.fragmentedSampleSizeBytes = 0;
            this.startTimeOffsetUs = 0L;
            this.fragmentedSampleTimeUs = -9223372036854775807L;
        } catch (ParserException e) {
            throw new IllegalArgumentException(e);
        }
    }

    private static int getNumOfSubframesFromMpeg4AudioConfig(ImmutableMap<String, String> immutableMap) throws ParserException {
        boolean z;
        boolean z2;
        String str = immutableMap.get(PARAMETER_MP4A_CONFIG);
        int i = 0;
        boolean z3 = false;
        i = 0;
        if (str != null && str.length() % 2 == 0) {
            ParsableBitArray parsableBitArray = new ParsableBitArray(Util.getBytesFromHexString(str));
            int readBits = parsableBitArray.readBits(1);
            if (readBits == 0) {
                if (parsableBitArray.readBits(1) == 1) {
                    z = true;
                } else {
                    z = false;
                }
                Assertions.checkArgument(z, "Only supports allStreamsSameTimeFraming.");
                int readBits2 = parsableBitArray.readBits(6);
                if (parsableBitArray.readBits(4) == 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                Assertions.checkArgument(z2, "Only suppors one program.");
                if (parsableBitArray.readBits(3) == 0) {
                    z3 = true;
                }
                Assertions.checkArgument(z3, "Only suppors one layer.");
                i = readBits2;
            } else {
                throw ParserException.createForMalformedDataOfUnknownType("unsupported audio mux version: " + readBits, null);
            }
        }
        return i + 1;
    }

    private void outputSampleMetadataForFragmentedPackets() {
        ((TrackOutput) Assertions.checkNotNull(this.trackOutput)).sampleMetadata(this.fragmentedSampleTimeUs, 1, this.fragmentedSampleSizeBytes, 0, null);
        this.fragmentedSampleSizeBytes = 0;
        this.fragmentedSampleTimeUs = -9223372036854775807L;
    }

    @Override // androidx.media3.exoplayer.rtsp.reader.RtpPayloadReader
    public void consume(ParsableByteArray parsableByteArray, long j, int i, boolean z) {
        Assertions.checkStateNotNull(this.trackOutput);
        int nextSequenceNumber = RtpPacket.getNextSequenceNumber(this.previousSequenceNumber);
        if (this.fragmentedSampleSizeBytes > 0 && nextSequenceNumber < i) {
            outputSampleMetadataForFragmentedPackets();
        }
        for (int i2 = 0; i2 < this.numberOfSubframes; i2++) {
            int i3 = 0;
            while (parsableByteArray.getPosition() < parsableByteArray.limit()) {
                int readUnsignedByte = parsableByteArray.readUnsignedByte();
                i3 += readUnsignedByte;
                if (readUnsignedByte != 255) {
                    break;
                }
            }
            this.trackOutput.sampleData(parsableByteArray, i3);
            this.fragmentedSampleSizeBytes += i3;
        }
        this.fragmentedSampleTimeUs = RtpReaderUtils.toSampleTimeUs(this.startTimeOffsetUs, j, this.firstReceivedTimestamp, this.payloadFormat.clockRate);
        if (z) {
            outputSampleMetadataForFragmentedPackets();
        }
        this.previousSequenceNumber = i;
    }

    @Override // androidx.media3.exoplayer.rtsp.reader.RtpPayloadReader
    public void createTracks(ExtractorOutput extractorOutput, int i) {
        TrackOutput track = extractorOutput.track(i, 2);
        this.trackOutput = track;
        ((TrackOutput) Util.castNonNull(track)).format(this.payloadFormat.format);
    }

    @Override // androidx.media3.exoplayer.rtsp.reader.RtpPayloadReader
    public void onReceivingFirstPacket(long j, int i) {
        boolean z;
        if (this.firstReceivedTimestamp == -9223372036854775807L) {
            z = true;
        } else {
            z = false;
        }
        Assertions.checkState(z);
        this.firstReceivedTimestamp = j;
    }

    @Override // androidx.media3.exoplayer.rtsp.reader.RtpPayloadReader
    public void seek(long j, long j2) {
        this.firstReceivedTimestamp = j;
        this.fragmentedSampleSizeBytes = 0;
        this.startTimeOffsetUs = j2;
    }
}
