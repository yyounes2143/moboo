package androidx.media3.exoplayer.video;

import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import androidx.media3.common.VideoSize;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.LongArrayQueue;
import androidx.media3.common.util.TimedValueQueue;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.video.VideoFrameReleaseControl;
/* compiled from: Proguard */
/* loaded from: classes.dex */
final class VideoFrameRenderControl {
    private final FrameRenderer frameRenderer;
    private long outputStreamOffsetUs;
    @Nullable
    private VideoSize pendingOutputVideoSize;
    private final VideoFrameReleaseControl videoFrameReleaseControl;
    private final VideoFrameReleaseControl.FrameReleaseInfo videoFrameReleaseInfo = new VideoFrameReleaseControl.FrameReleaseInfo();
    private final TimedValueQueue<VideoSize> videoSizeChanges = new TimedValueQueue<>();
    private final TimedValueQueue<Long> streamOffsets = new TimedValueQueue<>();
    private final LongArrayQueue presentationTimestampsUs = new LongArrayQueue();
    private VideoSize reportedVideoSize = VideoSize.UNKNOWN;
    private long lastPresentationTimeUs = -9223372036854775807L;

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public interface FrameRenderer {
        void dropFrame();

        void onVideoSizeChanged(VideoSize videoSize);

        void renderFrame(long j, long j2, long j3, boolean z);
    }

    public VideoFrameRenderControl(FrameRenderer frameRenderer, VideoFrameReleaseControl videoFrameReleaseControl) {
        this.frameRenderer = frameRenderer;
        this.videoFrameReleaseControl = videoFrameReleaseControl;
    }

    private void dropFrame() {
        Assertions.checkStateNotNull(Long.valueOf(this.presentationTimestampsUs.remove()));
        this.frameRenderer.dropFrame();
    }

    private static <T> T getLastAndClear(TimedValueQueue<T> timedValueQueue) {
        boolean z;
        if (timedValueQueue.size() > 0) {
            z = true;
        } else {
            z = false;
        }
        Assertions.checkArgument(z);
        while (timedValueQueue.size() > 1) {
            timedValueQueue.pollFirst();
        }
        return (T) Assertions.checkNotNull(timedValueQueue.pollFirst());
    }

    private boolean maybeUpdateOutputStreamOffset(long j) {
        Long pollFloor = this.streamOffsets.pollFloor(j);
        if (pollFloor != null && pollFloor.longValue() != this.outputStreamOffsetUs) {
            this.outputStreamOffsetUs = pollFloor.longValue();
            return true;
        }
        return false;
    }

    private boolean maybeUpdateVideoSize(long j) {
        VideoSize pollFloor = this.videoSizeChanges.pollFloor(j);
        if (pollFloor == null || pollFloor.equals(VideoSize.UNKNOWN) || pollFloor.equals(this.reportedVideoSize)) {
            return false;
        }
        this.reportedVideoSize = pollFloor;
        return true;
    }

    private void renderFrame(boolean z) {
        long releaseTimeNs;
        long longValue = ((Long) Assertions.checkStateNotNull(Long.valueOf(this.presentationTimestampsUs.remove()))).longValue();
        if (maybeUpdateVideoSize(longValue)) {
            this.frameRenderer.onVideoSizeChanged(this.reportedVideoSize);
        }
        if (z) {
            releaseTimeNs = -1;
        } else {
            releaseTimeNs = this.videoFrameReleaseInfo.getReleaseTimeNs();
        }
        this.frameRenderer.renderFrame(releaseTimeNs, longValue, this.outputStreamOffsetUs, this.videoFrameReleaseControl.onFrameReleasedIsFirstFrame());
    }

    public void flush() {
        this.presentationTimestampsUs.clear();
        this.lastPresentationTimeUs = -9223372036854775807L;
        if (this.streamOffsets.size() > 0) {
            Long l = (Long) getLastAndClear(this.streamOffsets);
            l.longValue();
            this.streamOffsets.add(0L, l);
        }
        if (this.pendingOutputVideoSize == null) {
            if (this.videoSizeChanges.size() > 0) {
                this.pendingOutputVideoSize = (VideoSize) getLastAndClear(this.videoSizeChanges);
                return;
            }
            return;
        }
        this.videoSizeChanges.clear();
    }

    public boolean hasReleasedFrame(long j) {
        long j2 = this.lastPresentationTimeUs;
        if (j2 != -9223372036854775807L && j2 >= j) {
            return true;
        }
        return false;
    }

    public boolean isReady() {
        return this.videoFrameReleaseControl.isReady(true);
    }

    public void onOutputFrameAvailableForRendering(long j) {
        VideoSize videoSize = this.pendingOutputVideoSize;
        if (videoSize != null) {
            this.videoSizeChanges.add(j, videoSize);
            this.pendingOutputVideoSize = null;
        }
        this.presentationTimestampsUs.add(j);
    }

    public void onOutputSizeChanged(int i, int i2) {
        VideoSize videoSize = new VideoSize(i, i2);
        if (!Util.areEqual(this.pendingOutputVideoSize, videoSize)) {
            this.pendingOutputVideoSize = videoSize;
        }
    }

    public void onStreamOffsetChange(long j, long j2) {
        this.streamOffsets.add(j, Long.valueOf(j2));
    }

    public void render(long j, long j2) throws ExoPlaybackException {
        while (!this.presentationTimestampsUs.isEmpty()) {
            long element = this.presentationTimestampsUs.element();
            if (maybeUpdateOutputStreamOffset(element)) {
                this.videoFrameReleaseControl.onProcessedStreamChange();
            }
            int frameReleaseAction = this.videoFrameReleaseControl.getFrameReleaseAction(element, j, j2, this.outputStreamOffsetUs, false, this.videoFrameReleaseInfo);
            boolean z = true;
            if (frameReleaseAction != 0 && frameReleaseAction != 1) {
                if (frameReleaseAction != 2 && frameReleaseAction != 3 && frameReleaseAction != 4) {
                    if (frameReleaseAction != 5) {
                        throw new IllegalStateException(String.valueOf(frameReleaseAction));
                    }
                    return;
                }
                this.lastPresentationTimeUs = element;
                dropFrame();
            } else {
                this.lastPresentationTimeUs = element;
                if (frameReleaseAction != 0) {
                    z = false;
                }
                renderFrame(z);
            }
        }
    }

    public void setPlaybackSpeed(@FloatRange(from = 0.0d, fromInclusive = false) float f) {
        boolean z;
        if (f > 0.0f) {
            z = true;
        } else {
            z = false;
        }
        Assertions.checkArgument(z);
        this.videoFrameReleaseControl.setPlaybackSpeed(f);
    }
}
