package androidx.media3.exoplayer;

import android.content.Context;
import android.media.AudioDeviceInfo;
import android.os.Looper;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.AuxEffectInfo;
import androidx.media3.common.C;
import androidx.media3.common.DeviceInfo;
import androidx.media3.common.Effect;
import androidx.media3.common.Format;
import androidx.media3.common.MediaItem;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.Player;
import androidx.media3.common.PriorityTaskManager;
import androidx.media3.common.VideoSize;
import androidx.media3.common.text.CueGroup;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.DefaultLivePlaybackSpeedControl;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.PlayerMessage;
import androidx.media3.exoplayer.analytics.AnalyticsCollector;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.media3.exoplayer.analytics.DefaultAnalyticsCollector;
import androidx.media3.exoplayer.image.ImageOutput;
import androidx.media3.exoplayer.source.DefaultMediaSourceFactory;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.ShuffleOrder;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector;
import androidx.media3.exoplayer.trackselection.TrackSelectionArray;
import androidx.media3.exoplayer.trackselection.TrackSelector;
import androidx.media3.exoplayer.upstream.BandwidthMeter;
import androidx.media3.exoplayer.upstream.DefaultBandwidthMeter;
import androidx.media3.exoplayer.video.VideoFrameMetadataListener;
import androidx.media3.exoplayer.video.spherical.CameraMotionListener;
import androidx.media3.extractor.DefaultExtractorsFactory;
import com.google.common.base.Function;
import com.google.common.base.Supplier;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes.dex */
public interface ExoPlayer extends Player {
    @UnstableApi
    public static final long DEFAULT_DETACH_SURFACE_TIMEOUT_MS = 2000;
    @UnstableApi
    public static final long DEFAULT_RELEASE_TIMEOUT_MS = 500;

    /* compiled from: Proguard */
    @UnstableApi
    @Deprecated
    /* loaded from: classes.dex */
    public interface AudioComponent {
        @Deprecated
        void clearAuxEffectInfo();

        @Deprecated
        AudioAttributes getAudioAttributes();

        @Deprecated
        int getAudioSessionId();

        @Deprecated
        boolean getSkipSilenceEnabled();

        @Deprecated
        float getVolume();

        @Deprecated
        void setAudioAttributes(AudioAttributes audioAttributes, boolean z);

        @Deprecated
        void setAudioSessionId(int i);

        @Deprecated
        void setAuxEffectInfo(AuxEffectInfo auxEffectInfo);

        @Deprecated
        void setSkipSilenceEnabled(boolean z);

        @Deprecated
        void setVolume(float f);
    }

    /* compiled from: Proguard */
    @UnstableApi
    /* loaded from: classes.dex */
    public interface AudioOffloadListener {
        void onOffloadedPlayback(boolean z);

        void onSleepingForOffloadChanged(boolean z);
    }

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static final class Builder {
        Function<Clock, AnalyticsCollector> analyticsCollectorFunction;
        AudioAttributes audioAttributes;
        Supplier<BandwidthMeter> bandwidthMeterSupplier;
        boolean buildCalled;
        Clock clock;
        final Context context;
        long detachSurfaceTimeoutMs;
        boolean deviceVolumeControlEnabled;
        boolean dynamicSchedulingEnabled;
        long foregroundModeTimeoutMs;
        boolean handleAudioBecomingNoisy;
        boolean handleAudioFocus;
        LivePlaybackSpeedControl livePlaybackSpeedControl;
        Supplier<LoadControl> loadControlSupplier;
        Looper looper;
        long maxSeekToPreviousPositionMs;
        Supplier<MediaSource.Factory> mediaSourceFactorySupplier;
        boolean pauseAtEndOfMediaItems;
        @Nullable
        Looper playbackLooper;
        String playerName;
        int priority;
        @Nullable
        PriorityTaskManager priorityTaskManager;
        long releaseTimeoutMs;
        Supplier<RenderersFactory> renderersFactorySupplier;
        long seekBackIncrementMs;
        long seekForwardIncrementMs;
        SeekParameters seekParameters;
        boolean skipSilenceEnabled;
        boolean suppressPlaybackOnUnsuitableOutput;
        Supplier<TrackSelector> trackSelectorSupplier;
        boolean useLazyPreparation;
        boolean usePlatformDiagnostics;
        int videoChangeFrameRateStrategy;
        int videoScalingMode;
        int wakeMode;

        public Builder(final Context context) {
            this(context, new Supplier() { // from class: androidx.media3.exoplayer.Wwwwwwwwwwwwwwwwww
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return ExoPlayer.Builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
                }
            }, new Supplier() { // from class: androidx.media3.exoplayer.Wwwwwwwwwwwwwwwww
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return ExoPlayer.Builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
                }
            });
        }

        public static /* synthetic */ TrackSelector Wwwwwwwwwwwwww(Context context) {
            return new DefaultTrackSelector(context);
        }

        public static /* synthetic */ RenderersFactory Wwwwwwwwwwwwwwwwwwwwwwww(Context context) {
            return new DefaultRenderersFactory(context);
        }

        public static /* synthetic */ MediaSource.Factory Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context) {
            return new DefaultMediaSourceFactory(context, new DefaultExtractorsFactory());
        }

        public static /* synthetic */ MediaSource.Factory Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context) {
            return new DefaultMediaSourceFactory(context, new DefaultExtractorsFactory());
        }

        public static /* synthetic */ RenderersFactory Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context) {
            return new DefaultRenderersFactory(context);
        }

        public ExoPlayer build() {
            Assertions.checkState(!this.buildCalled);
            this.buildCalled = true;
            return new ExoPlayerImpl(this, null);
        }

        public SimpleExoPlayer buildSimpleExoPlayer() {
            Assertions.checkState(!this.buildCalled);
            this.buildCalled = true;
            return new SimpleExoPlayer(this);
        }

        @CanIgnoreReturnValue
        @UnstableApi
        public Builder experimentalSetDynamicSchedulingEnabled(boolean z) {
            Assertions.checkState(!this.buildCalled);
            this.dynamicSchedulingEnabled = z;
            return this;
        }

        @CanIgnoreReturnValue
        @UnstableApi
        public Builder experimentalSetForegroundModeTimeoutMs(long j) {
            Assertions.checkState(!this.buildCalled);
            this.foregroundModeTimeoutMs = j;
            return this;
        }

        @CanIgnoreReturnValue
        @UnstableApi
        public Builder setAnalyticsCollector(final AnalyticsCollector analyticsCollector) {
            Assertions.checkState(!this.buildCalled);
            Assertions.checkNotNull(analyticsCollector);
            this.analyticsCollectorFunction = new Function() { // from class: androidx.media3.exoplayer.Wwwwwwwwwwwwwwwwwww
                @Override // com.google.common.base.Function
                public final Object apply(Object obj) {
                    return ExoPlayer.Builder.Wwwwwwwwwwwwwwwww(AnalyticsCollector.this, (Clock) obj);
                }
            };
            return this;
        }

        @CanIgnoreReturnValue
        public Builder setAudioAttributes(AudioAttributes audioAttributes, boolean z) {
            Assertions.checkState(!this.buildCalled);
            this.audioAttributes = (AudioAttributes) Assertions.checkNotNull(audioAttributes);
            this.handleAudioFocus = z;
            return this;
        }

        @CanIgnoreReturnValue
        @UnstableApi
        public Builder setBandwidthMeter(final BandwidthMeter bandwidthMeter) {
            Assertions.checkState(!this.buildCalled);
            Assertions.checkNotNull(bandwidthMeter);
            this.bandwidthMeterSupplier = new Supplier() { // from class: androidx.media3.exoplayer.Wwwwwwwww
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return ExoPlayer.Builder.Wwwwwwwwwwwwwww(BandwidthMeter.this);
                }
            };
            return this;
        }

        @CanIgnoreReturnValue
        @VisibleForTesting
        @UnstableApi
        public Builder setClock(Clock clock) {
            Assertions.checkState(!this.buildCalled);
            this.clock = clock;
            return this;
        }

        @CanIgnoreReturnValue
        @UnstableApi
        public Builder setDetachSurfaceTimeoutMs(long j) {
            Assertions.checkState(!this.buildCalled);
            this.detachSurfaceTimeoutMs = j;
            return this;
        }

        @CanIgnoreReturnValue
        @UnstableApi
        public Builder setDeviceVolumeControlEnabled(boolean z) {
            Assertions.checkState(!this.buildCalled);
            this.deviceVolumeControlEnabled = z;
            return this;
        }

        @CanIgnoreReturnValue
        public Builder setHandleAudioBecomingNoisy(boolean z) {
            Assertions.checkState(!this.buildCalled);
            this.handleAudioBecomingNoisy = z;
            return this;
        }

        @CanIgnoreReturnValue
        @UnstableApi
        public Builder setLivePlaybackSpeedControl(LivePlaybackSpeedControl livePlaybackSpeedControl) {
            Assertions.checkState(!this.buildCalled);
            this.livePlaybackSpeedControl = (LivePlaybackSpeedControl) Assertions.checkNotNull(livePlaybackSpeedControl);
            return this;
        }

        @CanIgnoreReturnValue
        @UnstableApi
        public Builder setLoadControl(final LoadControl loadControl) {
            Assertions.checkState(!this.buildCalled);
            Assertions.checkNotNull(loadControl);
            this.loadControlSupplier = new Supplier() { // from class: androidx.media3.exoplayer.Wwwwwwwwwwwwwwwwwwww
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return ExoPlayer.Builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(LoadControl.this);
                }
            };
            return this;
        }

        @CanIgnoreReturnValue
        @UnstableApi
        public Builder setLooper(Looper looper) {
            Assertions.checkState(!this.buildCalled);
            Assertions.checkNotNull(looper);
            this.looper = looper;
            return this;
        }

        @CanIgnoreReturnValue
        @UnstableApi
        public Builder setMaxSeekToPreviousPositionMs(@IntRange(from = 0) long j) {
            boolean z;
            if (j >= 0) {
                z = true;
            } else {
                z = false;
            }
            Assertions.checkArgument(z);
            Assertions.checkState(!this.buildCalled);
            this.maxSeekToPreviousPositionMs = j;
            return this;
        }

        @CanIgnoreReturnValue
        public Builder setMediaSourceFactory(final MediaSource.Factory factory) {
            Assertions.checkState(!this.buildCalled);
            Assertions.checkNotNull(factory);
            this.mediaSourceFactorySupplier = new Supplier() { // from class: androidx.media3.exoplayer.Kkkkkkkkkkkkkkkkkkkkk
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return ExoPlayer.Builder.Wwwwwwwwwwwwwwwwwwwwwwwwwww(MediaSource.Factory.this);
                }
            };
            return this;
        }

        @CanIgnoreReturnValue
        @UnstableApi
        public Builder setName(String str) {
            Assertions.checkState(!this.buildCalled);
            this.playerName = str;
            return this;
        }

        @CanIgnoreReturnValue
        @UnstableApi
        public Builder setPauseAtEndOfMediaItems(boolean z) {
            Assertions.checkState(!this.buildCalled);
            this.pauseAtEndOfMediaItems = z;
            return this;
        }

        @CanIgnoreReturnValue
        @UnstableApi
        public Builder setPlaybackLooper(Looper looper) {
            Assertions.checkState(!this.buildCalled);
            this.playbackLooper = looper;
            return this;
        }

        @CanIgnoreReturnValue
        @UnstableApi
        public Builder setPriority(int i) {
            Assertions.checkState(!this.buildCalled);
            this.priority = i;
            return this;
        }

        @CanIgnoreReturnValue
        @UnstableApi
        public Builder setPriorityTaskManager(@Nullable PriorityTaskManager priorityTaskManager) {
            Assertions.checkState(!this.buildCalled);
            this.priorityTaskManager = priorityTaskManager;
            return this;
        }

        @CanIgnoreReturnValue
        @UnstableApi
        public Builder setReleaseTimeoutMs(long j) {
            Assertions.checkState(!this.buildCalled);
            this.releaseTimeoutMs = j;
            return this;
        }

        @CanIgnoreReturnValue
        @UnstableApi
        public Builder setRenderersFactory(final RenderersFactory renderersFactory) {
            Assertions.checkState(!this.buildCalled);
            Assertions.checkNotNull(renderersFactory);
            this.renderersFactorySupplier = new Supplier() { // from class: androidx.media3.exoplayer.Wwwwwwwwwwwwwwww
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return ExoPlayer.Builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(RenderersFactory.this);
                }
            };
            return this;
        }

        @CanIgnoreReturnValue
        @UnstableApi
        public Builder setSeekBackIncrementMs(@IntRange(from = 1) long j) {
            boolean z;
            if (j > 0) {
                z = true;
            } else {
                z = false;
            }
            Assertions.checkArgument(z);
            Assertions.checkState(!this.buildCalled);
            this.seekBackIncrementMs = j;
            return this;
        }

        @CanIgnoreReturnValue
        @UnstableApi
        public Builder setSeekForwardIncrementMs(@IntRange(from = 1) long j) {
            boolean z;
            if (j > 0) {
                z = true;
            } else {
                z = false;
            }
            Assertions.checkArgument(z);
            Assertions.checkState(!this.buildCalled);
            this.seekForwardIncrementMs = j;
            return this;
        }

        @CanIgnoreReturnValue
        @UnstableApi
        public Builder setSeekParameters(SeekParameters seekParameters) {
            Assertions.checkState(!this.buildCalled);
            this.seekParameters = (SeekParameters) Assertions.checkNotNull(seekParameters);
            return this;
        }

        @CanIgnoreReturnValue
        @UnstableApi
        public Builder setSkipSilenceEnabled(boolean z) {
            Assertions.checkState(!this.buildCalled);
            this.skipSilenceEnabled = z;
            return this;
        }

        @CanIgnoreReturnValue
        @UnstableApi
        public Builder setSuppressPlaybackOnUnsuitableOutput(boolean z) {
            Assertions.checkState(!this.buildCalled);
            this.suppressPlaybackOnUnsuitableOutput = z;
            return this;
        }

        @CanIgnoreReturnValue
        @UnstableApi
        public Builder setTrackSelector(final TrackSelector trackSelector) {
            Assertions.checkState(!this.buildCalled);
            Assertions.checkNotNull(trackSelector);
            this.trackSelectorSupplier = new Supplier() { // from class: androidx.media3.exoplayer.Kkkkkkkkkkkkkkkkkkkkkk
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return ExoPlayer.Builder.Wwwwwwwwwwwwwwwwwwwwww(TrackSelector.this);
                }
            };
            return this;
        }

        @CanIgnoreReturnValue
        @UnstableApi
        public Builder setUseLazyPreparation(boolean z) {
            Assertions.checkState(!this.buildCalled);
            this.useLazyPreparation = z;
            return this;
        }

        @CanIgnoreReturnValue
        @UnstableApi
        public Builder setUsePlatformDiagnostics(boolean z) {
            Assertions.checkState(!this.buildCalled);
            this.usePlatformDiagnostics = z;
            return this;
        }

        @CanIgnoreReturnValue
        @UnstableApi
        public Builder setVideoChangeFrameRateStrategy(int i) {
            Assertions.checkState(!this.buildCalled);
            this.videoChangeFrameRateStrategy = i;
            return this;
        }

        @CanIgnoreReturnValue
        @UnstableApi
        public Builder setVideoScalingMode(int i) {
            Assertions.checkState(!this.buildCalled);
            this.videoScalingMode = i;
            return this;
        }

        @CanIgnoreReturnValue
        public Builder setWakeMode(int i) {
            Assertions.checkState(!this.buildCalled);
            this.wakeMode = i;
            return this;
        }

        @UnstableApi
        public Builder(final Context context, final RenderersFactory renderersFactory) {
            this(context, new Supplier() { // from class: androidx.media3.exoplayer.Wwwwwwwwwwwww
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return ExoPlayer.Builder.Wwwwwwwwwwwwwwwwww(RenderersFactory.this);
                }
            }, new Supplier() { // from class: androidx.media3.exoplayer.Wwwwwwwwwwww
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return ExoPlayer.Builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
                }
            });
            Assertions.checkNotNull(renderersFactory);
        }

        @UnstableApi
        public Builder(final Context context, final MediaSource.Factory factory) {
            this(context, new Supplier() { // from class: androidx.media3.exoplayer.Kkkkkkkkkkkkkkkkkkkkkkkk
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return ExoPlayer.Builder.Wwwwwwwwwwwwwwwwwwwwwwww(context);
                }
            }, new Supplier() { // from class: androidx.media3.exoplayer.Kkkkkkkkkkkkkkkkkkkkkkk
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return ExoPlayer.Builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MediaSource.Factory.this);
                }
            });
            Assertions.checkNotNull(factory);
        }

        @UnstableApi
        public Builder(Context context, final RenderersFactory renderersFactory, final MediaSource.Factory factory) {
            this(context, new Supplier() { // from class: androidx.media3.exoplayer.Wwwwwwwwwwwwwww
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return ExoPlayer.Builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(RenderersFactory.this);
                }
            }, new Supplier() { // from class: androidx.media3.exoplayer.Wwwwwwwwwwwwww
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return ExoPlayer.Builder.Wwwwwwwwwwwwwwwwwwwwwwwww(MediaSource.Factory.this);
                }
            });
            Assertions.checkNotNull(renderersFactory);
            Assertions.checkNotNull(factory);
        }

        @UnstableApi
        public Builder(Context context, final RenderersFactory renderersFactory, final MediaSource.Factory factory, final TrackSelector trackSelector, final LoadControl loadControl, final BandwidthMeter bandwidthMeter, final AnalyticsCollector analyticsCollector) {
            this(context, new Supplier() { // from class: androidx.media3.exoplayer.Wwwwwwwwwww
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return ExoPlayer.Builder.Wwwwwwwwwwwwwwwwwwwww(RenderersFactory.this);
                }
            }, new Supplier() { // from class: androidx.media3.exoplayer.Wwwwwwwwww
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return ExoPlayer.Builder.Wwwwwwwwwwwwwwwwwww(MediaSource.Factory.this);
                }
            }, new Supplier() { // from class: androidx.media3.exoplayer.Wwwwwwww
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return ExoPlayer.Builder.Wwwwwwwwwwwwwwww(TrackSelector.this);
                }
            }, new Supplier() { // from class: androidx.media3.exoplayer.Wwwwwww
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return ExoPlayer.Builder.Wwwwwwwwwwwww(LoadControl.this);
                }
            }, new Supplier() { // from class: androidx.media3.exoplayer.Wwwwww
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return ExoPlayer.Builder.Wwwwwwwwwwwwwwwwwwwwwwwwww(BandwidthMeter.this);
                }
            }, new Function() { // from class: androidx.media3.exoplayer.Wwwww
                @Override // com.google.common.base.Function
                public final Object apply(Object obj) {
                    return ExoPlayer.Builder.Wwwwwwwwwwwwwwwwwwww(AnalyticsCollector.this, (Clock) obj);
                }
            });
            Assertions.checkNotNull(renderersFactory);
            Assertions.checkNotNull(factory);
            Assertions.checkNotNull(trackSelector);
            Assertions.checkNotNull(bandwidthMeter);
            Assertions.checkNotNull(analyticsCollector);
        }

        private Builder(final Context context, Supplier<RenderersFactory> supplier, Supplier<MediaSource.Factory> supplier2) {
            this(context, supplier, supplier2, new Supplier() { // from class: androidx.media3.exoplayer.Wwww
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return ExoPlayer.Builder.Wwwwwwwwwwwwww(context);
                }
            }, new Supplier() { // from class: androidx.media3.exoplayer.Www
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    return new DefaultLoadControl();
                }
            }, new Supplier() { // from class: androidx.media3.exoplayer.Kkkkkkkkkkkkkkkkkkkkkkkkkk
                @Override // com.google.common.base.Supplier
                public final Object get() {
                    BandwidthMeter singletonInstance;
                    singletonInstance = DefaultBandwidthMeter.getSingletonInstance(context);
                    return singletonInstance;
                }
            }, new Function() { // from class: androidx.media3.exoplayer.Kkkkkkkkkkkkkkkkkkkkkkkkk
                @Override // com.google.common.base.Function
                public final Object apply(Object obj) {
                    return new DefaultAnalyticsCollector((Clock) obj);
                }
            });
        }

        private Builder(Context context, Supplier<RenderersFactory> supplier, Supplier<MediaSource.Factory> supplier2, Supplier<TrackSelector> supplier3, Supplier<LoadControl> supplier4, Supplier<BandwidthMeter> supplier5, Function<Clock, AnalyticsCollector> function) {
            this.context = (Context) Assertions.checkNotNull(context);
            this.renderersFactorySupplier = supplier;
            this.mediaSourceFactorySupplier = supplier2;
            this.trackSelectorSupplier = supplier3;
            this.loadControlSupplier = supplier4;
            this.bandwidthMeterSupplier = supplier5;
            this.analyticsCollectorFunction = function;
            this.looper = Util.getCurrentOrMainLooper();
            this.audioAttributes = AudioAttributes.DEFAULT;
            this.wakeMode = 0;
            this.videoScalingMode = 1;
            this.videoChangeFrameRateStrategy = 0;
            this.useLazyPreparation = true;
            this.seekParameters = SeekParameters.DEFAULT;
            this.seekBackIncrementMs = 5000L;
            this.seekForwardIncrementMs = 15000L;
            this.maxSeekToPreviousPositionMs = C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS;
            this.livePlaybackSpeedControl = new DefaultLivePlaybackSpeedControl.Builder().build();
            this.clock = Clock.DEFAULT;
            this.releaseTimeoutMs = 500L;
            this.detachSurfaceTimeoutMs = 2000L;
            this.usePlatformDiagnostics = true;
            this.playerName = "";
            this.priority = -1000;
        }

        public static /* synthetic */ LoadControl Wwwwwwwwwwwww(LoadControl loadControl) {
            return loadControl;
        }

        public static /* synthetic */ BandwidthMeter Wwwwwwwwwwwwwww(BandwidthMeter bandwidthMeter) {
            return bandwidthMeter;
        }

        public static /* synthetic */ TrackSelector Wwwwwwwwwwwwwwww(TrackSelector trackSelector) {
            return trackSelector;
        }

        public static /* synthetic */ RenderersFactory Wwwwwwwwwwwwwwwwww(RenderersFactory renderersFactory) {
            return renderersFactory;
        }

        public static /* synthetic */ MediaSource.Factory Wwwwwwwwwwwwwwwwwww(MediaSource.Factory factory) {
            return factory;
        }

        public static /* synthetic */ RenderersFactory Wwwwwwwwwwwwwwwwwwwww(RenderersFactory renderersFactory) {
            return renderersFactory;
        }

        public static /* synthetic */ TrackSelector Wwwwwwwwwwwwwwwwwwwwww(TrackSelector trackSelector) {
            return trackSelector;
        }

        public static /* synthetic */ MediaSource.Factory Wwwwwwwwwwwwwwwwwwwwwwwww(MediaSource.Factory factory) {
            return factory;
        }

        public static /* synthetic */ BandwidthMeter Wwwwwwwwwwwwwwwwwwwwwwwwww(BandwidthMeter bandwidthMeter) {
            return bandwidthMeter;
        }

        public static /* synthetic */ MediaSource.Factory Wwwwwwwwwwwwwwwwwwwwwwwwwww(MediaSource.Factory factory) {
            return factory;
        }

        public static /* synthetic */ LoadControl Wwwwwwwwwwwwwwwwwwwwwwwwwwww(LoadControl loadControl) {
            return loadControl;
        }

        public static /* synthetic */ RenderersFactory Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(RenderersFactory renderersFactory) {
            return renderersFactory;
        }

        public static /* synthetic */ MediaSource.Factory Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MediaSource.Factory factory) {
            return factory;
        }

        public static /* synthetic */ RenderersFactory Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(RenderersFactory renderersFactory) {
            return renderersFactory;
        }

        public static /* synthetic */ AnalyticsCollector Wwwwwwwwwwwwwwwww(AnalyticsCollector analyticsCollector, Clock clock) {
            return analyticsCollector;
        }

        public static /* synthetic */ AnalyticsCollector Wwwwwwwwwwwwwwwwwwww(AnalyticsCollector analyticsCollector, Clock clock) {
            return analyticsCollector;
        }
    }

    /* compiled from: Proguard */
    @UnstableApi
    @Deprecated
    /* loaded from: classes.dex */
    public interface DeviceComponent {
        @Deprecated
        void decreaseDeviceVolume();

        @Deprecated
        DeviceInfo getDeviceInfo();

        @Deprecated
        int getDeviceVolume();

        @Deprecated
        void increaseDeviceVolume();

        @Deprecated
        boolean isDeviceMuted();

        @Deprecated
        void setDeviceMuted(boolean z);

        @Deprecated
        void setDeviceVolume(int i);
    }

    /* compiled from: Proguard */
    @UnstableApi
    /* loaded from: classes.dex */
    public static class PreloadConfiguration {
        public static final PreloadConfiguration DEFAULT = new PreloadConfiguration(-9223372036854775807L);
        public final long targetPreloadDurationUs;

        public PreloadConfiguration(long j) {
            this.targetPreloadDurationUs = j;
        }
    }

    /* compiled from: Proguard */
    @UnstableApi
    @Deprecated
    /* loaded from: classes.dex */
    public interface TextComponent {
        @Deprecated
        CueGroup getCurrentCues();
    }

    /* compiled from: Proguard */
    @UnstableApi
    @Deprecated
    /* loaded from: classes.dex */
    public interface VideoComponent {
        @Deprecated
        void clearCameraMotionListener(CameraMotionListener cameraMotionListener);

        @Deprecated
        void clearVideoFrameMetadataListener(VideoFrameMetadataListener videoFrameMetadataListener);

        @Deprecated
        void clearVideoSurface();

        @Deprecated
        void clearVideoSurface(@Nullable Surface surface);

        @Deprecated
        void clearVideoSurfaceHolder(@Nullable SurfaceHolder surfaceHolder);

        @Deprecated
        void clearVideoSurfaceView(@Nullable SurfaceView surfaceView);

        @Deprecated
        void clearVideoTextureView(@Nullable TextureView textureView);

        @Deprecated
        int getVideoChangeFrameRateStrategy();

        @Deprecated
        int getVideoScalingMode();

        @Deprecated
        VideoSize getVideoSize();

        @Deprecated
        void setCameraMotionListener(CameraMotionListener cameraMotionListener);

        @Deprecated
        void setVideoChangeFrameRateStrategy(int i);

        @Deprecated
        void setVideoFrameMetadataListener(VideoFrameMetadataListener videoFrameMetadataListener);

        @Deprecated
        void setVideoScalingMode(int i);

        @Deprecated
        void setVideoSurface(@Nullable Surface surface);

        @Deprecated
        void setVideoSurfaceHolder(@Nullable SurfaceHolder surfaceHolder);

        @Deprecated
        void setVideoSurfaceView(@Nullable SurfaceView surfaceView);

        @Deprecated
        void setVideoTextureView(@Nullable TextureView textureView);
    }

    void addAnalyticsListener(AnalyticsListener analyticsListener);

    @UnstableApi
    void addAudioOffloadListener(AudioOffloadListener audioOffloadListener);

    @UnstableApi
    void addMediaSource(int i, MediaSource mediaSource);

    @UnstableApi
    void addMediaSource(MediaSource mediaSource);

    @UnstableApi
    void addMediaSources(int i, List<MediaSource> list);

    @UnstableApi
    void addMediaSources(List<MediaSource> list);

    @UnstableApi
    void clearAuxEffectInfo();

    @UnstableApi
    void clearCameraMotionListener(CameraMotionListener cameraMotionListener);

    @UnstableApi
    void clearVideoFrameMetadataListener(VideoFrameMetadataListener videoFrameMetadataListener);

    @UnstableApi
    PlayerMessage createMessage(PlayerMessage.Target target);

    @UnstableApi
    AnalyticsCollector getAnalyticsCollector();

    @Nullable
    @UnstableApi
    @Deprecated
    AudioComponent getAudioComponent();

    @Nullable
    @UnstableApi
    DecoderCounters getAudioDecoderCounters();

    @Nullable
    @UnstableApi
    Format getAudioFormat();

    @UnstableApi
    int getAudioSessionId();

    @UnstableApi
    Clock getClock();

    @UnstableApi
    @Deprecated
    TrackGroupArray getCurrentTrackGroups();

    @UnstableApi
    @Deprecated
    TrackSelectionArray getCurrentTrackSelections();

    @Nullable
    @UnstableApi
    @Deprecated
    DeviceComponent getDeviceComponent();

    @UnstableApi
    boolean getPauseAtEndOfMediaItems();

    @UnstableApi
    Looper getPlaybackLooper();

    @Override // androidx.media3.common.Player
    @Nullable
    /* bridge */ /* synthetic */ PlaybackException getPlayerError();

    @Override // androidx.media3.common.Player
    @Nullable
    ExoPlaybackException getPlayerError();

    @UnstableApi
    PreloadConfiguration getPreloadConfiguration();

    @UnstableApi
    Renderer getRenderer(int i);

    @UnstableApi
    int getRendererCount();

    @UnstableApi
    int getRendererType(int i);

    @UnstableApi
    SeekParameters getSeekParameters();

    @UnstableApi
    boolean getSkipSilenceEnabled();

    @Nullable
    @UnstableApi
    @Deprecated
    TextComponent getTextComponent();

    @Nullable
    @UnstableApi
    TrackSelector getTrackSelector();

    @UnstableApi
    int getVideoChangeFrameRateStrategy();

    @Nullable
    @UnstableApi
    @Deprecated
    VideoComponent getVideoComponent();

    @Nullable
    @UnstableApi
    DecoderCounters getVideoDecoderCounters();

    @Nullable
    @UnstableApi
    Format getVideoFormat();

    @UnstableApi
    int getVideoScalingMode();

    @UnstableApi
    boolean isReleased();

    @UnstableApi
    boolean isSleepingForOffload();

    @UnstableApi
    boolean isTunnelingEnabled();

    @UnstableApi
    @Deprecated
    void prepare(MediaSource mediaSource);

    @UnstableApi
    @Deprecated
    void prepare(MediaSource mediaSource, boolean z, boolean z2);

    @Override // androidx.media3.common.Player
    void release();

    void removeAnalyticsListener(AnalyticsListener analyticsListener);

    @UnstableApi
    void removeAudioOffloadListener(AudioOffloadListener audioOffloadListener);

    @Override // androidx.media3.common.Player
    void replaceMediaItem(int i, MediaItem mediaItem);

    @Override // androidx.media3.common.Player
    void replaceMediaItems(int i, int i2, List<MediaItem> list);

    @UnstableApi
    void setAudioSessionId(int i);

    @UnstableApi
    void setAuxEffectInfo(AuxEffectInfo auxEffectInfo);

    @UnstableApi
    void setCameraMotionListener(CameraMotionListener cameraMotionListener);

    @UnstableApi
    void setForegroundMode(boolean z);

    void setHandleAudioBecomingNoisy(boolean z);

    @UnstableApi
    void setImageOutput(@Nullable ImageOutput imageOutput);

    @UnstableApi
    void setMediaSource(MediaSource mediaSource);

    @UnstableApi
    void setMediaSource(MediaSource mediaSource, long j);

    @UnstableApi
    void setMediaSource(MediaSource mediaSource, boolean z);

    @UnstableApi
    void setMediaSources(List<MediaSource> list);

    @UnstableApi
    void setMediaSources(List<MediaSource> list, int i, long j);

    @UnstableApi
    void setMediaSources(List<MediaSource> list, boolean z);

    @UnstableApi
    void setPauseAtEndOfMediaItems(boolean z);

    @RequiresApi(23)
    @UnstableApi
    void setPreferredAudioDevice(@Nullable AudioDeviceInfo audioDeviceInfo);

    @UnstableApi
    void setPreloadConfiguration(PreloadConfiguration preloadConfiguration);

    @UnstableApi
    void setPriority(int i);

    @UnstableApi
    void setPriorityTaskManager(@Nullable PriorityTaskManager priorityTaskManager);

    @UnstableApi
    void setSeekParameters(@Nullable SeekParameters seekParameters);

    @UnstableApi
    void setShuffleOrder(ShuffleOrder shuffleOrder);

    @UnstableApi
    void setSkipSilenceEnabled(boolean z);

    @UnstableApi
    void setVideoChangeFrameRateStrategy(int i);

    @UnstableApi
    void setVideoEffects(List<Effect> list);

    @UnstableApi
    void setVideoFrameMetadataListener(VideoFrameMetadataListener videoFrameMetadataListener);

    @UnstableApi
    void setVideoScalingMode(int i);

    void setWakeMode(int i);
}
