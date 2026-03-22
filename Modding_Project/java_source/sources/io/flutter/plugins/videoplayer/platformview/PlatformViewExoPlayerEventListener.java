package io.flutter.plugins.videoplayer.platformview;

import androidx.annotation.NonNull;
import androidx.annotation.OptIn;
import androidx.media3.common.Format;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.ExoPlayer;
import io.flutter.plugins.videoplayer.ExoPlayerEventListener;
import io.flutter.plugins.videoplayer.VideoPlayerCallbacks;
import j$.util.Objects;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final class PlatformViewExoPlayerEventListener extends ExoPlayerEventListener {
    public PlatformViewExoPlayerEventListener(@NonNull ExoPlayer exoPlayer, @NonNull VideoPlayerCallbacks videoPlayerCallbacks) {
        super(exoPlayer, videoPlayerCallbacks);
    }

    @Override // io.flutter.plugins.videoplayer.ExoPlayerEventListener
    @OptIn(markerClass = {UnstableApi.class})
    public void sendInitialized() {
        int i;
        int i2;
        Format videoFormat = this.exoPlayer.getVideoFormat();
        Objects.requireNonNull(videoFormat);
        ExoPlayerEventListener.RotationDegrees fromDegrees = ExoPlayerEventListener.RotationDegrees.fromDegrees(videoFormat.rotationDegrees);
        int i3 = videoFormat.width;
        int i4 = videoFormat.height;
        if (fromDegrees != ExoPlayerEventListener.RotationDegrees.ROTATE_90 && fromDegrees != ExoPlayerEventListener.RotationDegrees.ROTATE_270) {
            i2 = i4;
            i = i3;
        } else {
            fromDegrees = ExoPlayerEventListener.RotationDegrees.fromDegrees(0);
            i = i4;
            i2 = i3;
        }
        this.events.onInitialized(i, i2, this.exoPlayer.getDuration(), fromDegrees.getDegrees());
    }
}
