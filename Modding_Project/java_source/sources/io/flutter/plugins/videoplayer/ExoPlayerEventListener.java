package io.flutter.plugins.videoplayer;

import androidx.annotation.NonNull;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.DeviceInfo;
import androidx.media3.common.MediaItem;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.Metadata;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.Player;
import androidx.media3.common.Timeline;
import androidx.media3.common.TrackSelectionParameters;
import androidx.media3.common.Tracks;
import androidx.media3.common.VideoSize;
import androidx.media3.common.text.CueGroup;
import androidx.media3.exoplayer.ExoPlayer;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public abstract class ExoPlayerEventListener implements Player.Listener {
    protected final VideoPlayerCallbacks events;
    protected final ExoPlayer exoPlayer;
    private boolean isBuffering = false;
    private boolean isInitialized = false;

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public enum RotationDegrees {
        ROTATE_0(0),
        ROTATE_90(90),
        ROTATE_180(180),
        ROTATE_270(270);
        
        private final int degrees;

        RotationDegrees(int i) {
            this.degrees = i;
        }

        public static RotationDegrees fromDegrees(int i) {
            RotationDegrees[] values;
            for (RotationDegrees rotationDegrees : values()) {
                if (rotationDegrees.degrees == i) {
                    return rotationDegrees;
                }
            }
            throw new IllegalArgumentException("Invalid rotation degrees specified: " + i);
        }

        public int getDegrees() {
            return this.degrees;
        }
    }

    public ExoPlayerEventListener(@NonNull ExoPlayer exoPlayer, @NonNull VideoPlayerCallbacks videoPlayerCallbacks) {
        this.exoPlayer = exoPlayer;
        this.events = videoPlayerCallbacks;
    }

    private void setBuffering(boolean z) {
        if (this.isBuffering == z) {
            return;
        }
        this.isBuffering = z;
        if (z) {
            this.events.onBufferingStart();
        } else {
            this.events.onBufferingEnd();
        }
    }

    @Override // androidx.media3.common.Player.Listener
    public /* synthetic */ void onAudioAttributesChanged(AudioAttributes audioAttributes) {
        androidx.media3.common.Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, audioAttributes);
    }

    @Override // androidx.media3.common.Player.Listener
    public /* synthetic */ void onAudioSessionIdChanged(int i) {
        androidx.media3.common.Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, i);
    }

    @Override // androidx.media3.common.Player.Listener
    public /* synthetic */ void onAvailableCommandsChanged(Player.Commands commands) {
        androidx.media3.common.Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, commands);
    }

    @Override // androidx.media3.common.Player.Listener
    public /* synthetic */ void onCues(CueGroup cueGroup) {
        androidx.media3.common.Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, cueGroup);
    }

    @Override // androidx.media3.common.Player.Listener
    public /* synthetic */ void onDeviceInfoChanged(DeviceInfo deviceInfo) {
        androidx.media3.common.Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, deviceInfo);
    }

    @Override // androidx.media3.common.Player.Listener
    public /* synthetic */ void onDeviceVolumeChanged(int i, boolean z) {
        androidx.media3.common.Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(this, i, z);
    }

    @Override // androidx.media3.common.Player.Listener
    public /* synthetic */ void onEvents(Player player, Player.Events events) {
        androidx.media3.common.Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwww(this, player, events);
    }

    @Override // androidx.media3.common.Player.Listener
    public /* synthetic */ void onIsLoadingChanged(boolean z) {
        androidx.media3.common.Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww(this, z);
    }

    @Override // androidx.media3.common.Player.Listener
    public void onIsPlayingChanged(boolean z) {
        this.events.onIsPlayingStateUpdate(z);
    }

    @Override // androidx.media3.common.Player.Listener
    public /* synthetic */ void onLoadingChanged(boolean z) {
        androidx.media3.common.Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww(this, z);
    }

    @Override // androidx.media3.common.Player.Listener
    public /* synthetic */ void onMaxSeekToPreviousPositionChanged(long j) {
        androidx.media3.common.Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwww(this, j);
    }

    @Override // androidx.media3.common.Player.Listener
    public /* synthetic */ void onMediaItemTransition(MediaItem mediaItem, int i) {
        androidx.media3.common.Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwww(this, mediaItem, i);
    }

    @Override // androidx.media3.common.Player.Listener
    public /* synthetic */ void onMediaMetadataChanged(MediaMetadata mediaMetadata) {
        androidx.media3.common.Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwww(this, mediaMetadata);
    }

    @Override // androidx.media3.common.Player.Listener
    public /* synthetic */ void onMetadata(Metadata metadata) {
        androidx.media3.common.Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwww(this, metadata);
    }

    @Override // androidx.media3.common.Player.Listener
    public /* synthetic */ void onPlayWhenReadyChanged(boolean z, int i) {
        androidx.media3.common.Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwww(this, z, i);
    }

    @Override // androidx.media3.common.Player.Listener
    public /* synthetic */ void onPlaybackParametersChanged(PlaybackParameters playbackParameters) {
        androidx.media3.common.Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwww(this, playbackParameters);
    }

    @Override // androidx.media3.common.Player.Listener
    public void onPlaybackStateChanged(int i) {
        if (i != 2) {
            if (i != 3) {
                if (i == 4) {
                    this.events.onCompleted();
                }
            } else if (!this.isInitialized) {
                this.isInitialized = true;
                sendInitialized();
            }
        } else {
            setBuffering(true);
            this.events.onBufferingUpdate(this.exoPlayer.getBufferedPosition());
        }
        if (i != 2) {
            setBuffering(false);
        }
    }

    @Override // androidx.media3.common.Player.Listener
    public /* synthetic */ void onPlaybackSuppressionReasonChanged(int i) {
        androidx.media3.common.Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwww(this, i);
    }

    @Override // androidx.media3.common.Player.Listener
    public void onPlayerError(@NonNull PlaybackException playbackException) {
        setBuffering(false);
        if (playbackException.errorCode == 1002) {
            this.exoPlayer.seekToDefaultPosition();
            this.exoPlayer.prepare();
            return;
        }
        VideoPlayerCallbacks videoPlayerCallbacks = this.events;
        videoPlayerCallbacks.onError("VideoError", "Video player had error " + playbackException, null);
    }

    @Override // androidx.media3.common.Player.Listener
    public /* synthetic */ void onPlayerErrorChanged(PlaybackException playbackException) {
        androidx.media3.common.Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwww(this, playbackException);
    }

    @Override // androidx.media3.common.Player.Listener
    public /* synthetic */ void onPlayerStateChanged(boolean z, int i) {
        androidx.media3.common.Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwww(this, z, i);
    }

    @Override // androidx.media3.common.Player.Listener
    public /* synthetic */ void onPlaylistMetadataChanged(MediaMetadata mediaMetadata) {
        androidx.media3.common.Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwww(this, mediaMetadata);
    }

    @Override // androidx.media3.common.Player.Listener
    public /* synthetic */ void onPositionDiscontinuity(int i) {
        androidx.media3.common.Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwww(this, i);
    }

    @Override // androidx.media3.common.Player.Listener
    public /* synthetic */ void onRenderedFirstFrame() {
        androidx.media3.common.Wwwwwwwwwwwwwwwwwwww.Wwwwwwwww(this);
    }

    @Override // androidx.media3.common.Player.Listener
    public /* synthetic */ void onRepeatModeChanged(int i) {
        androidx.media3.common.Wwwwwwwwwwwwwwwwwwww.Wwwwwwww(this, i);
    }

    @Override // androidx.media3.common.Player.Listener
    public /* synthetic */ void onSeekBackIncrementChanged(long j) {
        androidx.media3.common.Wwwwwwwwwwwwwwwwwwww.Wwwwwww(this, j);
    }

    @Override // androidx.media3.common.Player.Listener
    public /* synthetic */ void onSeekForwardIncrementChanged(long j) {
        androidx.media3.common.Wwwwwwwwwwwwwwwwwwww.Wwwwww(this, j);
    }

    @Override // androidx.media3.common.Player.Listener
    public /* synthetic */ void onShuffleModeEnabledChanged(boolean z) {
        androidx.media3.common.Wwwwwwwwwwwwwwwwwwww.Wwwww(this, z);
    }

    @Override // androidx.media3.common.Player.Listener
    public /* synthetic */ void onSkipSilenceEnabledChanged(boolean z) {
        androidx.media3.common.Wwwwwwwwwwwwwwwwwwww.Wwww(this, z);
    }

    @Override // androidx.media3.common.Player.Listener
    public /* synthetic */ void onSurfaceSizeChanged(int i, int i2) {
        androidx.media3.common.Wwwwwwwwwwwwwwwwwwww.Www(this, i, i2);
    }

    @Override // androidx.media3.common.Player.Listener
    public /* synthetic */ void onTimelineChanged(Timeline timeline, int i) {
        androidx.media3.common.Wwwwwwwwwwwwwwwwwwww.Kkkkkkkkkkkkkkkkkkkkkkkkkk(this, timeline, i);
    }

    @Override // androidx.media3.common.Player.Listener
    public /* synthetic */ void onTrackSelectionParametersChanged(TrackSelectionParameters trackSelectionParameters) {
        androidx.media3.common.Wwwwwwwwwwwwwwwwwwww.Kkkkkkkkkkkkkkkkkkkkkkkkk(this, trackSelectionParameters);
    }

    @Override // androidx.media3.common.Player.Listener
    public /* synthetic */ void onTracksChanged(Tracks tracks) {
        androidx.media3.common.Wwwwwwwwwwwwwwwwwwww.Kkkkkkkkkkkkkkkkkkkkkkkk(this, tracks);
    }

    @Override // androidx.media3.common.Player.Listener
    public /* synthetic */ void onVideoSizeChanged(VideoSize videoSize) {
        androidx.media3.common.Wwwwwwwwwwwwwwwwwwww.Kkkkkkkkkkkkkkkkkkkkkkk(this, videoSize);
    }

    @Override // androidx.media3.common.Player.Listener
    public /* synthetic */ void onVolumeChanged(float f) {
        androidx.media3.common.Wwwwwwwwwwwwwwwwwwww.Kkkkkkkkkkkkkkkkkkkkkk(this, f);
    }

    public abstract void sendInitialized();

    @Override // androidx.media3.common.Player.Listener
    public /* synthetic */ void onCues(List list) {
        androidx.media3.common.Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, list);
    }

    @Override // androidx.media3.common.Player.Listener
    public /* synthetic */ void onPositionDiscontinuity(Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, int i) {
        androidx.media3.common.Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwww(this, positionInfo, positionInfo2, i);
    }
}
