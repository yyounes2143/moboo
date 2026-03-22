package androidx.media3.exoplayer.hls;

import androidx.media3.common.util.Assertions;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.source.SampleStream;
import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes.dex */
final class HlsSampleStream implements SampleStream {
    private int sampleQueueIndex = -1;
    private final HlsSampleStreamWrapper sampleStreamWrapper;
    private final int trackGroupIndex;

    public HlsSampleStream(HlsSampleStreamWrapper hlsSampleStreamWrapper, int i) {
        this.sampleStreamWrapper = hlsSampleStreamWrapper;
        this.trackGroupIndex = i;
    }

    private boolean hasValidSampleQueueIndex() {
        int i = this.sampleQueueIndex;
        if (i != -1 && i != -3 && i != -2) {
            return true;
        }
        return false;
    }

    public void bindSampleQueue() {
        boolean z;
        if (this.sampleQueueIndex == -1) {
            z = true;
        } else {
            z = false;
        }
        Assertions.checkArgument(z);
        this.sampleQueueIndex = this.sampleStreamWrapper.bindSampleQueueToSampleStream(this.trackGroupIndex);
    }

    @Override // androidx.media3.exoplayer.source.SampleStream
    public boolean isReady() {
        if (this.sampleQueueIndex != -3) {
            if (!hasValidSampleQueueIndex() || !this.sampleStreamWrapper.isReady(this.sampleQueueIndex)) {
                return false;
            }
            return true;
        }
        return true;
    }

    @Override // androidx.media3.exoplayer.source.SampleStream
    public void maybeThrowError() throws IOException {
        int i = this.sampleQueueIndex;
        if (i != -2) {
            if (i == -1) {
                this.sampleStreamWrapper.maybeThrowError();
                return;
            } else if (i != -3) {
                this.sampleStreamWrapper.maybeThrowError(i);
                return;
            } else {
                return;
            }
        }
        throw new SampleQueueMappingException(this.sampleStreamWrapper.getTrackGroups().get(this.trackGroupIndex).getFormat(0).sampleMimeType);
    }

    @Override // androidx.media3.exoplayer.source.SampleStream
    public int readData(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, int i) {
        if (this.sampleQueueIndex == -3) {
            decoderInputBuffer.addFlag(4);
            return -4;
        } else if (!hasValidSampleQueueIndex()) {
            return -3;
        } else {
            return this.sampleStreamWrapper.readData(this.sampleQueueIndex, formatHolder, decoderInputBuffer, i);
        }
    }

    @Override // androidx.media3.exoplayer.source.SampleStream
    public int skipData(long j) {
        if (hasValidSampleQueueIndex()) {
            return this.sampleStreamWrapper.skipData(this.sampleQueueIndex, j);
        }
        return 0;
    }

    public void unbindSampleQueue() {
        if (this.sampleQueueIndex != -1) {
            this.sampleStreamWrapper.unbindSampleQueue(this.trackGroupIndex);
            this.sampleQueueIndex = -1;
        }
    }
}
