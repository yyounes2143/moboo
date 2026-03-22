package io.flutter.plugins.videoplayer;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.OptIn;
import androidx.annotation.VisibleForTesting;
import androidx.media3.common.MediaItem;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.datasource.DefaultDataSource;
import androidx.media3.datasource.DefaultHttpDataSource;
import androidx.media3.exoplayer.source.DefaultMediaSourceFactory;
import androidx.media3.exoplayer.source.MediaSource;
import io.flutter.plugins.videoplayer.VideoAsset;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final class HttpVideoAsset extends VideoAsset {
    private static final String DEFAULT_USER_AGENT = "ExoPlayer";
    private static final String HEADER_USER_AGENT = "User-Agent";
    @NonNull
    private final Map<String, String> httpHeaders;
    @NonNull
    private final VideoAsset.StreamingFormat streamingFormat;

    /* compiled from: Proguard */
    /* renamed from: io.flutter.plugins.videoplayer.HttpVideoAsset$1  reason: invalid class name */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$io$flutter$plugins$videoplayer$VideoAsset$StreamingFormat;

        static {
            int[] iArr = new int[VideoAsset.StreamingFormat.values().length];
            $SwitchMap$io$flutter$plugins$videoplayer$VideoAsset$StreamingFormat = iArr;
            try {
                iArr[VideoAsset.StreamingFormat.SMOOTH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$flutter$plugins$videoplayer$VideoAsset$StreamingFormat[VideoAsset.StreamingFormat.DYNAMIC_ADAPTIVE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$io$flutter$plugins$videoplayer$VideoAsset$StreamingFormat[VideoAsset.StreamingFormat.HTTP_LIVE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public HttpVideoAsset(@Nullable String str, @NonNull VideoAsset.StreamingFormat streamingFormat, @NonNull Map<String, String> map) {
        super(str);
        this.streamingFormat = streamingFormat;
        this.httpHeaders = map;
    }

    @OptIn(markerClass = {UnstableApi.class})
    private static void unstableUpdateDataSourceFactory(@NonNull DefaultHttpDataSource.Factory factory, @NonNull Map<String, String> map, @Nullable String str) {
        factory.setUserAgent(str).setAllowCrossProtocolRedirects(true);
        if (!map.isEmpty()) {
            factory.setDefaultRequestProperties(map);
        }
    }

    @Override // io.flutter.plugins.videoplayer.VideoAsset
    @NonNull
    public MediaItem getMediaItem() {
        String str;
        MediaItem.Builder uri = new MediaItem.Builder().setUri(this.assetUrl);
        int i = AnonymousClass1.$SwitchMap$io$flutter$plugins$videoplayer$VideoAsset$StreamingFormat[this.streamingFormat.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    str = null;
                } else {
                    str = "application/x-mpegURL";
                }
            } else {
                str = "application/dash+xml";
            }
        } else {
            str = "application/vnd.ms-sstr+xml";
        }
        if (str != null) {
            uri.setMimeType(str);
        }
        return uri.build();
    }

    @Override // io.flutter.plugins.videoplayer.VideoAsset
    @NonNull
    public MediaSource.Factory getMediaSourceFactory(@NonNull Context context) {
        return getMediaSourceFactory(context, new DefaultHttpDataSource.Factory());
    }

    @VisibleForTesting
    public MediaSource.Factory getMediaSourceFactory(Context context, DefaultHttpDataSource.Factory factory) {
        String str;
        if (!this.httpHeaders.isEmpty() && this.httpHeaders.containsKey("User-Agent")) {
            str = this.httpHeaders.get("User-Agent");
        } else {
            str = "ExoPlayer";
        }
        unstableUpdateDataSourceFactory(factory, this.httpHeaders, str);
        return new DefaultMediaSourceFactory(context).setDataSourceFactory(new DefaultDataSource.Factory(context, factory));
    }
}
