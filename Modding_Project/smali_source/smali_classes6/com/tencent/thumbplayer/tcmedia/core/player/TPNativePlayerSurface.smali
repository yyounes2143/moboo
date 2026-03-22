.class public Lcom/tencent/thumbplayer/tcmedia/core/player/TPNativePlayerSurface;
.super Landroid/view/Surface;


# instance fields
.field private mSurfaceCallback:Lcom/tencent/thumbplayer/tcmedia/core/player/ITPNativePlayerSurfaceCallback;


# direct methods
.method public constructor <init>(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public setTPSurfaceCallback(Lcom/tencent/thumbplayer/tcmedia/core/player/ITPNativePlayerSurfaceCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPNativePlayerSurface;->mSurfaceCallback:Lcom/tencent/thumbplayer/tcmedia/core/player/ITPNativePlayerSurfaceCallback;

    .line 2
    .line 3
    return-void
.end method
