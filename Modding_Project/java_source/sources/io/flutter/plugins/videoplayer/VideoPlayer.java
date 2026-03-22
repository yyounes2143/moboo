package io.flutter.plugins.videoplayer;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.MediaItem;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.exoplayer.ExoPlayer;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import io.flutter.view.TextureRegistry;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public abstract class VideoPlayer {
    @NonNull
    protected ExoPlayer exoPlayer;
    @Nullable
    protected final TextureRegistry.SurfaceProducer surfaceProducer;
    @NonNull
    protected final VideoPlayerCallbacks videoPlayerEvents;

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface ExoPlayerProvider {
        @NonNull
        ExoPlayer get();
    }

    public VideoPlayer(@NonNull VideoPlayerCallbacks videoPlayerCallbacks, @NonNull MediaItem mediaItem, @NonNull VideoPlayerOptions videoPlayerOptions, @Nullable TextureRegistry.SurfaceProducer surfaceProducer, @NonNull ExoPlayerProvider exoPlayerProvider) {
        this.videoPlayerEvents = videoPlayerCallbacks;
        this.surfaceProducer = surfaceProducer;
        ExoPlayer exoPlayer = exoPlayerProvider.get();
        this.exoPlayer = exoPlayer;
        exoPlayer.setMediaItem(mediaItem);
        this.exoPlayer.prepare();
        ExoPlayer exoPlayer2 = this.exoPlayer;
        exoPlayer2.addListener(createExoPlayerEventListener(exoPlayer2, surfaceProducer));
        setAudioAttributes(this.exoPlayer, videoPlayerOptions.mixWithOthers);
    }

    private static void setAudioAttributes(ExoPlayer exoPlayer, boolean z) {
        exoPlayer.setAudioAttributes(new AudioAttributes.Builder().setContentType(3).build(), !z);
    }

    @NonNull
    public abstract ExoPlayerEventListener createExoPlayerEventListener(@NonNull ExoPlayer exoPlayer, @Nullable TextureRegistry.SurfaceProducer surfaceProducer);

    public void dispose() {
        this.exoPlayer.release();
    }

    @NonNull
    public ExoPlayer getExoPlayer() {
        return this.exoPlayer;
    }

    public long getPosition() {
        return this.exoPlayer.getCurrentPosition();
    }

    public void pause() {
        this.exoPlayer.pause();
    }

    public void play() {
        this.exoPlayer.play();
    }

    public void seekTo(int i) {
        this.exoPlayer.seekTo(i);
    }

    public void sendBufferingUpdate() {
        this.videoPlayerEvents.onBufferingUpdate(this.exoPlayer.getBufferedPosition());
    }

    public void setLooping(boolean z) {
        int i;
        ExoPlayer exoPlayer = this.exoPlayer;
        if (z) {
            i = 2;
        } else {
            i = 0;
        }
        exoPlayer.setRepeatMode(i);
    }

    public void setPlaybackSpeed(double d) {
        this.exoPlayer.setPlaybackParameters(new PlaybackParameters((float) d));
    }

    public void setVolume(double d) {
        this.exoPlayer.setVolume((float) Math.max((double) FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE, Math.min(1.0d, d)));
    }
}
