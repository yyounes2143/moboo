.class public Lio/flutter/plugins/videoplayer/platformview/PlatformVideoViewFactory;
.super Lio/flutter/plugin/platform/PlatformViewFactory;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/videoplayer/platformview/PlatformVideoViewFactory$VideoPlayerProvider;
    }
.end annotation


# instance fields
.field private final videoPlayerProvider:Lio/flutter/plugins/videoplayer/platformview/PlatformVideoViewFactory$VideoPlayerProvider;


# direct methods
.method public constructor <init>(Lio/flutter/plugins/videoplayer/platformview/PlatformVideoViewFactory$VideoPlayerProvider;)V
    .locals 1
    .param p1    # Lio/flutter/plugins/videoplayer/platformview/PlatformVideoViewFactory$VideoPlayerProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lio/flutter/plugins/videoplayer/Wwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lio/flutter/plugin/common/MessageCodec;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lio/flutter/plugin/platform/PlatformViewFactory;-><init>(Lio/flutter/plugin/common/MessageCodec;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lio/flutter/plugins/videoplayer/platformview/PlatformVideoViewFactory;->videoPlayerProvider:Lio/flutter/plugins/videoplayer/platformview/PlatformVideoViewFactory$VideoPlayerProvider;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;ILjava/lang/Object;)Lio/flutter/plugin/platform/PlatformView;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    check-cast p3, Lio/flutter/plugins/videoplayer/Messages$PlatformVideoViewCreationParams;

    .line 2
    .line 3
    invoke-static {p3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3}, Lio/flutter/plugins/videoplayer/Messages$PlatformVideoViewCreationParams;->getPlayerId()Ljava/lang/Long;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    iget-object p3, p0, Lio/flutter/plugins/videoplayer/platformview/PlatformVideoViewFactory;->videoPlayerProvider:Lio/flutter/plugins/videoplayer/platformview/PlatformVideoViewFactory$VideoPlayerProvider;

    .line 11
    .line 12
    invoke-interface {p3, p2}, Lio/flutter/plugins/videoplayer/platformview/PlatformVideoViewFactory$VideoPlayerProvider;->getVideoPlayer(Ljava/lang/Long;)Lio/flutter/plugins/videoplayer/VideoPlayer;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p2}, Lio/flutter/plugins/videoplayer/VideoPlayer;->getExoPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    new-instance p3, Lio/flutter/plugins/videoplayer/platformview/PlatformVideoView;

    .line 21
    .line 22
    invoke-direct {p3, p1, p2}, Lio/flutter/plugins/videoplayer/platformview/PlatformVideoView;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/ExoPlayer;)V

    .line 23
    .line 24
    .line 25
    return-object p3
.end method
