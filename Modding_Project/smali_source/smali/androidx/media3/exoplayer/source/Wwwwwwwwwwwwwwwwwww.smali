.class public final synthetic Landroidx/media3/exoplayer/source/Wwwwwwwwwwwwwwwwwww;
.super Ljava/lang/Object;
.source "Proguard"


# direct methods
.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/common/MediaItem;)V
    .locals 0
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    return-void
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;Landroidx/media3/datasource/TransferListener;)V
    .locals 1
    .param p2    # Landroidx/media3/datasource/TransferListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Landroidx/media3/exoplayer/analytics/PlayerId;->UNSET:Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2, v0}, Landroidx/media3/exoplayer/source/MediaSource;->prepareSource(Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;Landroidx/media3/datasource/TransferListener;Landroidx/media3/exoplayer/analytics/PlayerId;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroidx/media3/exoplayer/source/MediaSource;)Z
    .locals 0
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroidx/media3/exoplayer/source/MediaSource;)Landroidx/media3/common/Timeline;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/common/MediaItem;)Z
    .locals 0
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
