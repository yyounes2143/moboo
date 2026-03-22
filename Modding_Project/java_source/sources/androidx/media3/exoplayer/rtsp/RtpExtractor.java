package androidx.media3.exoplayer.rtsp;

import android.os.SystemClock;
import androidx.annotation.GuardedBy;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.exoplayer.rtsp.reader.DefaultRtpPayloadReaderFactory;
import androidx.media3.exoplayer.rtsp.reader.RtpPayloadReader;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import java.io.IOException;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes.dex */
public final class RtpExtractor implements Extractor {
    private boolean firstPacketRead;
    @GuardedBy("lock")
    private boolean isSeekPending;
    private ExtractorOutput output;
    private final RtpPayloadReader payloadReader;
    private final int trackId;
    private final ParsableByteArray rtpPacketScratchBuffer = new ParsableByteArray((int) RtpPacket.MAX_SIZE);
    private final ParsableByteArray rtpPacketDataBuffer = new ParsableByteArray();
    private final Object lock = new Object();
    private final RtpPacketReorderingQueue reorderingQueue = new RtpPacketReorderingQueue();
    private volatile long firstTimestamp = -9223372036854775807L;
    private volatile int firstSequenceNumber = -1;
    @GuardedBy("lock")
    private long nextRtpTimestamp = -9223372036854775807L;
    @GuardedBy("lock")
    private long playbackStartTimeUs = -9223372036854775807L;

    public RtpExtractor(RtpPayloadFormat rtpPayloadFormat, int i) {
        this.trackId = i;
        this.payloadReader = (RtpPayloadReader) Assertions.checkNotNull(new DefaultRtpPayloadReaderFactory().createPayloadReader(rtpPayloadFormat));
    }

    private static long getCutoffTimeMs(long j) {
        return j - 30;
    }

    @Override // androidx.media3.extractor.Extractor
    public /* synthetic */ List getSniffFailureDetails() {
        return androidx.media3.extractor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
    }

    @Override // androidx.media3.extractor.Extractor
    public /* synthetic */ Extractor getUnderlyingImplementation() {
        return androidx.media3.extractor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
    }

    public boolean hasReadFirstRtpPacket() {
        return this.firstPacketRead;
    }

    @Override // androidx.media3.extractor.Extractor
    public void init(ExtractorOutput extractorOutput) {
        this.payloadReader.createTracks(extractorOutput, this.trackId);
        extractorOutput.endTracks();
        extractorOutput.seekMap(new SeekMap.Unseekable(-9223372036854775807L));
        this.output = extractorOutput;
    }

    public void preSeek() {
        synchronized (this.lock) {
            this.isSeekPending = true;
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) throws IOException {
        Assertions.checkNotNull(this.output);
        int read = extractorInput.read(this.rtpPacketScratchBuffer.getData(), 0, RtpPacket.MAX_SIZE);
        if (read == -1) {
            return -1;
        }
        if (read == 0) {
            return 0;
        }
        this.rtpPacketScratchBuffer.setPosition(0);
        this.rtpPacketScratchBuffer.setLimit(read);
        RtpPacket parse = RtpPacket.parse(this.rtpPacketScratchBuffer);
        if (parse == null) {
            return 0;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long cutoffTimeMs = getCutoffTimeMs(elapsedRealtime);
        this.reorderingQueue.offer(parse, elapsedRealtime);
        RtpPacket poll = this.reorderingQueue.poll(cutoffTimeMs);
        if (poll == null) {
            return 0;
        }
        if (!this.firstPacketRead) {
            if (this.firstTimestamp == -9223372036854775807L) {
                this.firstTimestamp = poll.timestamp;
            }
            if (this.firstSequenceNumber == -1) {
                this.firstSequenceNumber = poll.sequenceNumber;
            }
            this.payloadReader.onReceivingFirstPacket(this.firstTimestamp, this.firstSequenceNumber);
            this.firstPacketRead = true;
        }
        synchronized (this.lock) {
            try {
                if (this.isSeekPending) {
                    if (this.nextRtpTimestamp != -9223372036854775807L && this.playbackStartTimeUs != -9223372036854775807L) {
                        this.reorderingQueue.reset();
                        this.payloadReader.seek(this.nextRtpTimestamp, this.playbackStartTimeUs);
                        this.isSeekPending = false;
                        this.nextRtpTimestamp = -9223372036854775807L;
                        this.playbackStartTimeUs = -9223372036854775807L;
                    }
                } else {
                    do {
                        this.rtpPacketDataBuffer.reset(poll.payloadData);
                        this.payloadReader.consume(this.rtpPacketDataBuffer, poll.timestamp, poll.sequenceNumber, poll.marker);
                        poll = this.reorderingQueue.poll(cutoffTimeMs);
                    } while (poll != null);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return 0;
    }

    @Override // androidx.media3.extractor.Extractor
    public void seek(long j, long j2) {
        synchronized (this.lock) {
            try {
                if (!this.isSeekPending) {
                    this.isSeekPending = true;
                }
                this.nextRtpTimestamp = j;
                this.playbackStartTimeUs = j2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void setFirstSequenceNumber(int i) {
        this.firstSequenceNumber = i;
    }

    public void setFirstTimestamp(long j) {
        this.firstTimestamp = j;
    }

    @Override // androidx.media3.extractor.Extractor
    public boolean sniff(ExtractorInput extractorInput) {
        throw new UnsupportedOperationException("RTP packets are transmitted in a packet stream do not support sniffing.");
    }

    @Override // androidx.media3.extractor.Extractor
    public void release() {
    }
}
