.class public final Lcom/tencent/thumbplayer/tcmedia/api/TPSurface;
.super Lcom/tencent/thumbplayer/tcmedia/core/player/TPNativePlayerSurface;


# instance fields
.field private mITPSurfaceCallback:Lcom/tencent/thumbplayer/tcmedia/core/player/ITPNativePlayerSurfaceCallback;

.field private mPlayerSurfaceListener:Lcom/tencent/thumbplayer/tcmedia/api/ITPSurfaceListener;


# direct methods
.method public constructor <init>(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/player/TPNativePlayerSurface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPSurface;->mPlayerSurfaceListener:Lcom/tencent/thumbplayer/tcmedia/api/ITPSurfaceListener;

    .line 6
    .line 7
    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/api/TPSurface$1;

    .line 8
    .line 9
    invoke-direct {p1, p0}, Lcom/tencent/thumbplayer/tcmedia/api/TPSurface$1;-><init>(Lcom/tencent/thumbplayer/tcmedia/api/TPSurface;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPSurface;->mITPSurfaceCallback:Lcom/tencent/thumbplayer/tcmedia/core/player/ITPNativePlayerSurfaceCallback;

    .line 13
    .line 14
    invoke-super {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/player/TPNativePlayerSurface;->setTPSurfaceCallback(Lcom/tencent/thumbplayer/tcmedia/core/player/ITPNativePlayerSurfaceCallback;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static synthetic access$000(Lcom/tencent/thumbplayer/tcmedia/api/TPSurface;)Lcom/tencent/thumbplayer/tcmedia/api/ITPSurfaceListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPSurface;->mPlayerSurfaceListener:Lcom/tencent/thumbplayer/tcmedia/api/ITPSurfaceListener;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final finalize()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/Surface;->release()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Landroid/view/Surface;->finalize()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final setSurfaceListener(Lcom/tencent/thumbplayer/tcmedia/api/ITPSurfaceListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPSurface;->mPlayerSurfaceListener:Lcom/tencent/thumbplayer/tcmedia/api/ITPSurfaceListener;

    .line 2
    .line 3
    return-void
.end method
