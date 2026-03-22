.class public final synthetic Lio/flutter/plugins/videoplayer/platformview/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lio/flutter/plugins/videoplayer/VideoPlayer$ExoPlayerProvider;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugins/videoplayer/VideoAsset;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lio/flutter/plugins/videoplayer/VideoAsset;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/flutter/plugins/videoplayer/platformview/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lio/flutter/plugins/videoplayer/platformview/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugins/videoplayer/VideoAsset;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final get()Landroidx/media3/exoplayer/ExoPlayer;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/platformview/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lio/flutter/plugins/videoplayer/platformview/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugins/videoplayer/VideoAsset;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lio/flutter/plugins/videoplayer/platformview/PlatformViewVideoPlayer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Lio/flutter/plugins/videoplayer/VideoAsset;)Landroidx/media3/exoplayer/ExoPlayer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
