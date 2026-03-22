package io.flutter.plugins.videoplayer.platformview;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.media3.common.MediaItem;
import androidx.media3.exoplayer.ExoPlayer;
import io.flutter.plugins.videoplayer.ExoPlayerEventListener;
import io.flutter.plugins.videoplayer.VideoAsset;
import io.flutter.plugins.videoplayer.VideoPlayer;
import io.flutter.plugins.videoplayer.VideoPlayerCallbacks;
import io.flutter.plugins.videoplayer.VideoPlayerOptions;
import io.flutter.view.TextureRegistry;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class PlatformViewVideoPlayer extends VideoPlayer {
    @VisibleForTesting
    public PlatformViewVideoPlayer(@NonNull VideoPlayerCallbacks videoPlayerCallbacks, @NonNull MediaItem mediaItem, @NonNull VideoPlayerOptions videoPlayerOptions, @NonNull VideoPlayer.ExoPlayerProvider exoPlayerProvider) {
        super(videoPlayerCallbacks, mediaItem, videoPlayerOptions, null, exoPlayerProvider);
    }

    @NonNull
    public static PlatformViewVideoPlayer create(@NonNull final Context context, @NonNull VideoPlayerCallbacks videoPlayerCallbacks, @NonNull final VideoAsset videoAsset, @NonNull VideoPlayerOptions videoPlayerOptions) {
        return new PlatformViewVideoPlayer(videoPlayerCallbacks, videoAsset.getMediaItem(), videoPlayerOptions, new VideoPlayer.ExoPlayerProvider() { // from class: io.flutter.plugins.videoplayer.platformview.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // io.flutter.plugins.videoplayer.VideoPlayer.ExoPlayerProvider
            public final ExoPlayer get() {
                ExoPlayer build;
                build = new ExoPlayer.Builder(r0).setMediaSourceFactory(videoAsset.getMediaSourceFactory(context)).build();
                return build;
            }
        });
    }

    @Override // io.flutter.plugins.videoplayer.VideoPlayer
    @NonNull
    public ExoPlayerEventListener createExoPlayerEventListener(@NonNull ExoPlayer exoPlayer, @Nullable TextureRegistry.SurfaceProducer surfaceProducer) {
        return new PlatformViewExoPlayerEventListener(exoPlayer, this.videoPlayerEvents);
    }
}
