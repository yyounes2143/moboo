package androidx.media3.exoplayer.source;

import androidx.annotation.Nullable;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.source.MediaSource;
/* compiled from: Proguard */
/* loaded from: classes.dex */
public final /* synthetic */ class Wwwwwwwwwwwwwwwwwww {
    @UnstableApi
    @Deprecated
    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MediaSource mediaSource, MediaSource.MediaSourceCaller mediaSourceCaller, @Nullable TransferListener transferListener) {
        mediaSource.prepareSource(mediaSourceCaller, transferListener, PlayerId.UNSET);
    }

    @UnstableApi
    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MediaSource mediaSource) {
        return true;
    }

    @Nullable
    @UnstableApi
    public static Timeline Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MediaSource mediaSource) {
        return null;
    }

    @UnstableApi
    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MediaSource mediaSource, MediaItem mediaItem) {
        return false;
    }

    @UnstableApi
    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MediaSource mediaSource, MediaItem mediaItem) {
    }
}
