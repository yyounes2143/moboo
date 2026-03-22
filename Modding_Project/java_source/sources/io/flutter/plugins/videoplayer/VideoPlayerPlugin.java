package io.flutter.plugins.videoplayer;

import android.content.Context;
import android.util.LongSparseArray;
import androidx.annotation.NonNull;
import io.flutter.FlutterInjector;
import io.flutter.Log;
import io.flutter.embedding.engine.loader.FlutterLoader;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.EventChannel;
import io.flutter.plugin.platform.PlatformViewRegistry;
import io.flutter.plugins.videoplayer.Messages;
import io.flutter.plugins.videoplayer.VideoAsset;
import io.flutter.plugins.videoplayer.platformview.PlatformVideoViewFactory;
import io.flutter.plugins.videoplayer.platformview.PlatformViewVideoPlayer;
import io.flutter.plugins.videoplayer.texture.TextureVideoPlayer;
import io.flutter.view.TextureRegistry;
import j$.util.Objects;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class VideoPlayerPlugin implements FlutterPlugin, Messages.AndroidVideoPlayerApi {
    private static final String TAG = "VideoPlayerPlugin";
    private FlutterState flutterState;
    private final LongSparseArray<VideoPlayer> videoPlayers = new LongSparseArray<>();
    private final VideoPlayerOptions options = new VideoPlayerOptions();
    private Long nextPlatformViewPlayerId = Long.MAX_VALUE;

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static final class FlutterState {
        final Context applicationContext;
        final BinaryMessenger binaryMessenger;
        final KeyForAssetFn keyForAsset;
        final KeyForAssetAndPackageName keyForAssetAndPackageName;
        final TextureRegistry textureRegistry;

        public FlutterState(Context context, BinaryMessenger binaryMessenger, KeyForAssetFn keyForAssetFn, KeyForAssetAndPackageName keyForAssetAndPackageName, TextureRegistry textureRegistry) {
            this.applicationContext = context;
            this.binaryMessenger = binaryMessenger;
            this.keyForAsset = keyForAssetFn;
            this.keyForAssetAndPackageName = keyForAssetAndPackageName;
            this.textureRegistry = textureRegistry;
        }

        public void startListening(VideoPlayerPlugin videoPlayerPlugin, BinaryMessenger binaryMessenger) {
            Wwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwww(binaryMessenger, videoPlayerPlugin);
        }

        public void stopListening(BinaryMessenger binaryMessenger) {
            Wwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwww(binaryMessenger, null);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface KeyForAssetAndPackageName {
        String get(String str, String str2);
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface KeyForAssetFn {
        String get(String str);
    }

    @NonNull
    private EventChannel createEventChannel(long j) {
        BinaryMessenger binaryMessenger = this.flutterState.binaryMessenger;
        return new EventChannel(binaryMessenger, "flutter.io/videoPlayer/videoEvents" + j);
    }

    private void disposeAllPlayers() {
        for (int i = 0; i < this.videoPlayers.size(); i++) {
            this.videoPlayers.valueAt(i).dispose();
        }
        this.videoPlayers.clear();
    }

    @NonNull
    private VideoPlayer getPlayer(long j) {
        VideoPlayer videoPlayer = this.videoPlayers.get(j);
        if (videoPlayer == null) {
            String str = "No player found with playerId <" + j + ">";
            if (this.videoPlayers.size() == 0) {
                str = str + " and no active players created by the plugin.";
            }
            throw new IllegalStateException(str);
        }
        return videoPlayer;
    }

    @Override // io.flutter.plugins.videoplayer.Messages.AndroidVideoPlayerApi
    @NonNull
    public Long create(@NonNull Messages.CreateMessage createMessage) {
        VideoAsset fromRemoteUrl;
        long id;
        VideoPlayer create;
        String str;
        if (createMessage.getAsset() != null) {
            if (createMessage.getPackageName() != null) {
                str = this.flutterState.keyForAssetAndPackageName.get(createMessage.getAsset(), createMessage.getPackageName());
            } else {
                str = this.flutterState.keyForAsset.get(createMessage.getAsset());
            }
            fromRemoteUrl = VideoAsset.fromAssetUrl("asset:///" + str);
        } else if (createMessage.getUri().startsWith("rtsp://")) {
            fromRemoteUrl = VideoAsset.fromRtspUrl(createMessage.getUri());
        } else {
            VideoAsset.StreamingFormat streamingFormat = VideoAsset.StreamingFormat.UNKNOWN;
            String formatHint = createMessage.getFormatHint();
            if (formatHint != null) {
                char c = 65535;
                switch (formatHint.hashCode()) {
                    case 3680:
                        if (formatHint.equals("ss")) {
                            c = 0;
                            break;
                        }
                        break;
                    case 103407:
                        if (formatHint.equals("hls")) {
                            c = 1;
                            break;
                        }
                        break;
                    case 3075986:
                        if (formatHint.equals("dash")) {
                            c = 2;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        streamingFormat = VideoAsset.StreamingFormat.SMOOTH;
                        break;
                    case 1:
                        streamingFormat = VideoAsset.StreamingFormat.HTTP_LIVE;
                        break;
                    case 2:
                        streamingFormat = VideoAsset.StreamingFormat.DYNAMIC_ADAPTIVE;
                        break;
                }
            }
            fromRemoteUrl = VideoAsset.fromRemoteUrl(createMessage.getUri(), streamingFormat, createMessage.getHttpHeaders());
        }
        if (createMessage.getViewType() == Messages.PlatformVideoViewType.PLATFORM_VIEW) {
            Long l = this.nextPlatformViewPlayerId;
            this.nextPlatformViewPlayerId = Long.valueOf(l.longValue() - 1);
            id = l.longValue();
            create = PlatformViewVideoPlayer.create(this.flutterState.applicationContext, VideoPlayerEventCallbacks.bindTo(createEventChannel(id)), fromRemoteUrl, this.options);
        } else {
            TextureRegistry.SurfaceProducer createSurfaceProducer = this.flutterState.textureRegistry.createSurfaceProducer();
            id = createSurfaceProducer.id();
            create = TextureVideoPlayer.create(this.flutterState.applicationContext, VideoPlayerEventCallbacks.bindTo(createEventChannel(id)), createSurfaceProducer, fromRemoteUrl, this.options);
        }
        this.videoPlayers.put(id, create);
        return Long.valueOf(id);
    }

    @Override // io.flutter.plugins.videoplayer.Messages.AndroidVideoPlayerApi
    public void dispose(@NonNull Long l) {
        getPlayer(l.longValue()).dispose();
        this.videoPlayers.remove(l.longValue());
    }

    @Override // io.flutter.plugins.videoplayer.Messages.AndroidVideoPlayerApi
    public void initialize() {
        disposeAllPlayers();
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(@NonNull FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        FlutterInjector instance = FlutterInjector.instance();
        Context applicationContext = flutterPluginBinding.getApplicationContext();
        BinaryMessenger binaryMessenger = flutterPluginBinding.getBinaryMessenger();
        final FlutterLoader flutterLoader = instance.flutterLoader();
        Objects.requireNonNull(flutterLoader);
        KeyForAssetFn keyForAssetFn = new KeyForAssetFn() { // from class: io.flutter.plugins.videoplayer.Wwwwwwwwwwwwwwwwwwwwww
            @Override // io.flutter.plugins.videoplayer.VideoPlayerPlugin.KeyForAssetFn
            public final String get(String str) {
                return FlutterLoader.this.getLookupKeyForAsset(str);
            }
        };
        final FlutterLoader flutterLoader2 = instance.flutterLoader();
        Objects.requireNonNull(flutterLoader2);
        FlutterState flutterState = new FlutterState(applicationContext, binaryMessenger, keyForAssetFn, new KeyForAssetAndPackageName() { // from class: io.flutter.plugins.videoplayer.Wwwwwwwwwwwwwwwwwwwww
            @Override // io.flutter.plugins.videoplayer.VideoPlayerPlugin.KeyForAssetAndPackageName
            public final String get(String str, String str2) {
                return FlutterLoader.this.getLookupKeyForAsset(str, str2);
            }
        }, flutterPluginBinding.getTextureRegistry());
        this.flutterState = flutterState;
        flutterState.startListening(this, flutterPluginBinding.getBinaryMessenger());
        PlatformViewRegistry platformViewRegistry = flutterPluginBinding.getPlatformViewRegistry();
        final LongSparseArray<VideoPlayer> longSparseArray = this.videoPlayers;
        Objects.requireNonNull(longSparseArray);
        platformViewRegistry.registerViewFactory("plugins.flutter.dev/video_player_android", new PlatformVideoViewFactory(new PlatformVideoViewFactory.VideoPlayerProvider() { // from class: io.flutter.plugins.videoplayer.Wwwwwwwwwwwwwwwwwwww
            @Override // io.flutter.plugins.videoplayer.platformview.PlatformVideoViewFactory.VideoPlayerProvider
            public final VideoPlayer getVideoPlayer(Long l) {
                return (VideoPlayer) longSparseArray.get(l.longValue());
            }
        }));
    }

    public void onDestroy() {
        disposeAllPlayers();
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(@NonNull FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        if (this.flutterState == null) {
            Log.wtf(TAG, "Detached from the engine before registering to it.");
        }
        this.flutterState.stopListening(flutterPluginBinding.getBinaryMessenger());
        this.flutterState = null;
        onDestroy();
    }

    @Override // io.flutter.plugins.videoplayer.Messages.AndroidVideoPlayerApi
    public void pause(@NonNull Long l) {
        getPlayer(l.longValue()).pause();
    }

    @Override // io.flutter.plugins.videoplayer.Messages.AndroidVideoPlayerApi
    public void play(@NonNull Long l) {
        getPlayer(l.longValue()).play();
    }

    @Override // io.flutter.plugins.videoplayer.Messages.AndroidVideoPlayerApi
    @NonNull
    public Long position(@NonNull Long l) {
        VideoPlayer player = getPlayer(l.longValue());
        long position = player.getPosition();
        player.sendBufferingUpdate();
        return Long.valueOf(position);
    }

    @Override // io.flutter.plugins.videoplayer.Messages.AndroidVideoPlayerApi
    public void seekTo(@NonNull Long l, @NonNull Long l2) {
        getPlayer(l.longValue()).seekTo(l2.intValue());
    }

    @Override // io.flutter.plugins.videoplayer.Messages.AndroidVideoPlayerApi
    public void setLooping(@NonNull Long l, @NonNull Boolean bool) {
        getPlayer(l.longValue()).setLooping(bool.booleanValue());
    }

    @Override // io.flutter.plugins.videoplayer.Messages.AndroidVideoPlayerApi
    public void setMixWithOthers(@NonNull Boolean bool) {
        this.options.mixWithOthers = bool.booleanValue();
    }

    @Override // io.flutter.plugins.videoplayer.Messages.AndroidVideoPlayerApi
    public void setPlaybackSpeed(@NonNull Long l, @NonNull Double d) {
        getPlayer(l.longValue()).setPlaybackSpeed(d.doubleValue());
    }

    @Override // io.flutter.plugins.videoplayer.Messages.AndroidVideoPlayerApi
    public void setVolume(@NonNull Long l, @NonNull Double d) {
        getPlayer(l.longValue()).setVolume(d.doubleValue());
    }
}
