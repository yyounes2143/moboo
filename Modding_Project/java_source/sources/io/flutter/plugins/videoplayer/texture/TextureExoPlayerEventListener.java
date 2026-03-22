package io.flutter.plugins.videoplayer.texture;

import androidx.annotation.NonNull;
import androidx.annotation.OptIn;
import androidx.media3.common.Format;
import androidx.media3.common.VideoSize;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.ExoPlayer;
import io.flutter.plugins.videoplayer.ExoPlayerEventListener;
import io.flutter.plugins.videoplayer.VideoPlayerCallbacks;
import j$.util.Objects;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final class TextureExoPlayerEventListener extends ExoPlayerEventListener {
    private boolean surfaceProducerHandlesCropAndRotation;

    public TextureExoPlayerEventListener(@NonNull ExoPlayer exoPlayer, @NonNull VideoPlayerCallbacks videoPlayerCallbacks, boolean z) {
        super(exoPlayer, videoPlayerCallbacks);
        this.surfaceProducerHandlesCropAndRotation = z;
    }

    @OptIn(markerClass = {UnstableApi.class})
    private int getRotationCorrectionFromFormat(ExoPlayer exoPlayer) {
        Format videoFormat = exoPlayer.getVideoFormat();
        Objects.requireNonNull(videoFormat);
        return videoFormat.rotationDegrees;
    }

    private ExoPlayerEventListener.RotationDegrees getRotationCorrectionFromUnappliedRotation(ExoPlayerEventListener.RotationDegrees rotationDegrees) {
        ExoPlayerEventListener.RotationDegrees rotationDegrees2 = ExoPlayerEventListener.RotationDegrees.ROTATE_0;
        if (rotationDegrees == ExoPlayerEventListener.RotationDegrees.ROTATE_180) {
            return rotationDegrees;
        }
        return rotationDegrees2;
    }

    @Override // io.flutter.plugins.videoplayer.ExoPlayerEventListener
    public void sendInitialized() {
        VideoSize videoSize = this.exoPlayer.getVideoSize();
        ExoPlayerEventListener.RotationDegrees rotationDegrees = ExoPlayerEventListener.RotationDegrees.ROTATE_0;
        int i = videoSize.width;
        int i2 = videoSize.height;
        if (i != 0 && i2 != 0 && !this.surfaceProducerHandlesCropAndRotation) {
            try {
                rotationDegrees = ExoPlayerEventListener.RotationDegrees.fromDegrees(getRotationCorrectionFromFormat(this.exoPlayer));
            } catch (IllegalArgumentException unused) {
                rotationDegrees = ExoPlayerEventListener.RotationDegrees.ROTATE_0;
            }
        }
        this.events.onInitialized(i, i2, this.exoPlayer.getDuration(), rotationDegrees.getDegrees());
    }
}
