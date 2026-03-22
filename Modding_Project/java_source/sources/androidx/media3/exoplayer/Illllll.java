package androidx.media3.exoplayer;

import androidx.media3.common.Timeline;
import androidx.media3.exoplayer.LoadControl;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
/* compiled from: Proguard */
/* loaded from: classes.dex */
public final /* synthetic */ class Illllll {
    public static boolean Wwwwwwwwwwwwwwwww(LoadControl loadControl, LoadControl.Parameters parameters) {
        return loadControl.shouldStartPlayback(parameters.timeline, parameters.mediaPeriodId, parameters.bufferedDurationUs, parameters.playbackSpeed, parameters.rebuffering, parameters.targetLiveOffsetUs);
    }

    @Deprecated
    public static boolean Wwwwwwwwwwwwwwwwww(LoadControl loadControl, Timeline timeline, MediaSource.MediaPeriodId mediaPeriodId, long j, float f, boolean z, long j2) {
        return loadControl.shouldStartPlayback(j, f, z, j2);
    }

    @Deprecated
    public static boolean Wwwwwwwwwwwwwwwwwww(LoadControl loadControl, long j, float f, boolean z, long j2) {
        throw new IllegalStateException("shouldStartPlayback not implemented");
    }

    public static boolean Wwwwwwwwwwwwwwwwwwww(LoadControl loadControl, LoadControl.Parameters parameters) {
        return loadControl.shouldContinueLoading(parameters.playbackPositionUs, parameters.bufferedDurationUs, parameters.playbackSpeed);
    }

    @Deprecated
    public static boolean Wwwwwwwwwwwwwwwwwwwww(LoadControl loadControl, long j, long j2, float f) {
        throw new IllegalStateException("shouldContinueLoading not implemented");
    }

    public static boolean Wwwwwwwwwwwwwwwwwwwwww(LoadControl loadControl, PlayerId playerId) {
        return loadControl.retainBackBufferFromKeyframe();
    }

    @Deprecated
    public static boolean Wwwwwwwwwwwwwwwwwwwwwww(LoadControl loadControl) {
        throw new IllegalStateException("retainBackBufferFromKeyframe not implemented");
    }

    @Deprecated
    public static void Wwwwwwwwwwwwwwwwwwwwwwww(LoadControl loadControl, Renderer[] rendererArr, TrackGroupArray trackGroupArray, ExoTrackSelection[] exoTrackSelectionArr) {
        throw new IllegalStateException("onTracksSelected not implemented");
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwww(LoadControl loadControl, PlayerId playerId, Timeline timeline, MediaSource.MediaPeriodId mediaPeriodId, Renderer[] rendererArr, TrackGroupArray trackGroupArray, ExoTrackSelection[] exoTrackSelectionArr) {
        loadControl.onTracksSelected(timeline, mediaPeriodId, rendererArr, trackGroupArray, exoTrackSelectionArr);
    }

    @Deprecated
    public static void Wwwwwwwwwwwwwwwwwwwwwwwwww(LoadControl loadControl, Timeline timeline, MediaSource.MediaPeriodId mediaPeriodId, Renderer[] rendererArr, TrackGroupArray trackGroupArray, ExoTrackSelection[] exoTrackSelectionArr) {
        loadControl.onTracksSelected(rendererArr, trackGroupArray, exoTrackSelectionArr);
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwww(LoadControl loadControl, PlayerId playerId) {
        loadControl.onStopped();
    }

    @Deprecated
    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(LoadControl loadControl) {
        throw new IllegalStateException("onStopped not implemented");
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(LoadControl loadControl, PlayerId playerId) {
        loadControl.onReleased();
    }

    @Deprecated
    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LoadControl loadControl) {
        throw new IllegalStateException("onReleased not implemented");
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LoadControl loadControl, PlayerId playerId) {
        loadControl.onPrepared();
    }

    @Deprecated
    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LoadControl loadControl) {
        throw new IllegalStateException("onPrepared not implemented");
    }

    public static long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LoadControl loadControl, PlayerId playerId) {
        return loadControl.getBackBufferDurationUs();
    }

    @Deprecated
    public static long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LoadControl loadControl) {
        throw new IllegalStateException("getBackBufferDurationUs not implemented");
    }
}
