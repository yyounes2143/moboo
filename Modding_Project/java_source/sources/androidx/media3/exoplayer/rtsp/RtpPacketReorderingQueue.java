package androidx.media3.exoplayer.rtsp;

import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.media3.exoplayer.rtsp.RtpPacketReorderingQueue;
import java.util.Comparator;
import java.util.TreeSet;
/* compiled from: Proguard */
/* loaded from: classes.dex */
final class RtpPacketReorderingQueue {
    @VisibleForTesting
    static final int MAX_SEQUENCE_LEAP_ALLOWED = 1000;
    private static final int QUEUE_SIZE_THRESHOLD_FOR_RESET = 5000;
    @GuardedBy("this")
    private int lastDequeuedSequenceNumber;
    @GuardedBy("this")
    private int lastReceivedSequenceNumber;
    @GuardedBy("this")
    private final TreeSet<RtpPacketContainer> packetQueue = new TreeSet<>(new Comparator() { // from class: androidx.media3.exoplayer.rtsp.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int calculateSequenceNumberShift;
            calculateSequenceNumberShift = RtpPacketReorderingQueue.calculateSequenceNumberShift(((RtpPacketReorderingQueue.RtpPacketContainer) obj).packet.sequenceNumber, ((RtpPacketReorderingQueue.RtpPacketContainer) obj2).packet.sequenceNumber);
            return calculateSequenceNumberShift;
        }
    });
    @GuardedBy("this")
    private boolean started;

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static final class RtpPacketContainer {
        public final RtpPacket packet;
        public final long receivedTimestampMs;

        public RtpPacketContainer(RtpPacket rtpPacket, long j) {
            this.packet = rtpPacket;
            this.receivedTimestampMs = j;
        }
    }

    public RtpPacketReorderingQueue() {
        reset();
    }

    private synchronized void addToQueue(RtpPacketContainer rtpPacketContainer) {
        this.lastReceivedSequenceNumber = rtpPacketContainer.packet.sequenceNumber;
        this.packetQueue.add(rtpPacketContainer);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int calculateSequenceNumberShift(int i, int i2) {
        int min;
        int i3 = i - i2;
        if (Math.abs(i3) > 1000 && (min = (Math.min(i, i2) - Math.max(i, i2)) + 65535) < 1000) {
            if (i < i2) {
                return min;
            }
            return -min;
        }
        return i3;
    }

    public synchronized boolean offer(RtpPacket rtpPacket, long j) {
        if (this.packetQueue.size() < 5000) {
            int i = rtpPacket.sequenceNumber;
            if (!this.started) {
                reset();
                this.lastDequeuedSequenceNumber = RtpPacket.getPreviousSequenceNumber(i);
                this.started = true;
                addToQueue(new RtpPacketContainer(rtpPacket, j));
                return true;
            } else if (Math.abs(calculateSequenceNumberShift(i, RtpPacket.getNextSequenceNumber(this.lastReceivedSequenceNumber))) < 1000) {
                if (calculateSequenceNumberShift(i, this.lastDequeuedSequenceNumber) > 0) {
                    addToQueue(new RtpPacketContainer(rtpPacket, j));
                    return true;
                }
                return false;
            } else {
                this.lastDequeuedSequenceNumber = RtpPacket.getPreviousSequenceNumber(i);
                this.packetQueue.clear();
                addToQueue(new RtpPacketContainer(rtpPacket, j));
                return true;
            }
        }
        throw new IllegalStateException("Queue size limit of 5000 reached.");
    }

    @Nullable
    public synchronized RtpPacket poll(long j) {
        if (this.packetQueue.isEmpty()) {
            return null;
        }
        RtpPacketContainer first = this.packetQueue.first();
        int i = first.packet.sequenceNumber;
        if (i != RtpPacket.getNextSequenceNumber(this.lastDequeuedSequenceNumber) && j < first.receivedTimestampMs) {
            return null;
        }
        this.packetQueue.pollFirst();
        this.lastDequeuedSequenceNumber = i;
        return first.packet;
    }

    public synchronized void reset() {
        this.packetQueue.clear();
        this.started = false;
        this.lastDequeuedSequenceNumber = -1;
        this.lastReceivedSequenceNumber = -1;
    }
}
