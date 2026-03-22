.class public Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;
.super Landroid/view/SurfaceView;
.source "Proguard"

# interfaces
.implements Lcom/tencent/vod/flutter/ui/render/FTXRenderCarrier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView$SurfaceViewInnerListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FTXSurfaceView"


# instance fields
.field private final mGlSurfaceTools:Lcom/tencent/vod/flutter/player/render/gl/GLSurfaceTools;

.field private final mLayoutLock:Ljava/lang/Object;

.field private mPlayer:Lcom/tencent/vod/flutter/player/render/FTXPlayerRenderSurfaceHost;

.field private mRender:Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;

.field private mRenderMode:J

.field private mSurface:Landroid/view/Surface;

.field private final mSurfaceListenerDelegate:Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView$SurfaceViewInnerListener;

.field private mVideoHeight:I

.field private mVideoWidth:I

.field private mViewHeight:I

.field private mViewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/tencent/vod/flutter/player/render/gl/GLSurfaceTools;

    .line 5
    .line 6
    invoke-direct {p1}, Lcom/tencent/vod/flutter/player/render/gl/GLSurfaceTools;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->mGlSurfaceTools:Lcom/tencent/vod/flutter/player/render/gl/GLSurfaceTools;

    .line 10
    .line 11
    const-wide/16 v0, 0x1

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->mRenderMode:J

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->mVideoWidth:I

    .line 17
    .line 18
    iput p1, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->mVideoHeight:I

    .line 19
    .line 20
    iput p1, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->mViewWidth:I

    .line 21
    .line 22
    iput p1, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->mViewHeight:I

    .line 23
    .line 24
    new-instance p1, Ljava/lang/Object;

    .line 25
    .line 26
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->mLayoutLock:Ljava/lang/Object;

    .line 30
    .line 31
    new-instance p1, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView$SurfaceViewInnerListener;

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-direct {p1, p0, v0}, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView$SurfaceViewInnerListener;-><init>(Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView$1;)V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->mSurfaceListenerDelegate:Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView$SurfaceViewInnerListener;

    .line 38
    .line 39
    invoke-direct {p0}, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->init()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public static synthetic access$200(Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;Landroid/view/Surface;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->applySurfaceConfig(Landroid/view/Surface;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$300(Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->updateRenderSizeIfCan()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$400(Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;)Landroid/view/Surface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->mSurface:Landroid/view/Surface;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$402(Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->mSurface:Landroid/view/Surface;

    .line 2
    .line 3
    return-object p1
.end method

.method private applySurfaceConfig(Landroid/view/Surface;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->updateSurfaceTexture(Landroid/view/Surface;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private connectPlayer(Lcom/tencent/vod/flutter/player/render/FTXPlayerRenderSurfaceHost;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->mSurface:Landroid/view/Surface;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "bindPlayer suc,player: "

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string p1, ", view:"

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string v0, "FTXSurfaceView"

    .line 37
    .line 38
    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->mSurface:Landroid/view/Surface;

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_0

    .line 48
    .line 49
    iget-object p1, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->mSurface:Landroid/view/Surface;

    .line 50
    .line 51
    invoke-direct {p0, p1}, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->updateHostSurface(Landroid/view/Surface;)V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0}, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->updateRenderSizeIfCan()V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v1, "bindPlayer interrupt ,mSurface: "

    .line 64
    .line 65
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->mSurface:Landroid/view/Surface;

    .line 69
    .line 70
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, " is inValid, view:"

    .line 74
    .line 75
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :cond_1
    return-void
.end method

.method private init()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->mSurfaceListenerDelegate:Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView$SurfaceViewInnerListener;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;

    .line 11
    .line 12
    const/16 v1, 0x438

    .line 13
    .line 14
    const/16 v2, 0x2d0

    .line 15
    .line 16
    invoke-direct {v0, v1, v2}, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;-><init>(II)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->mRender:Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;

    .line 20
    .line 21
    return-void
.end method

.method private updateHostSurface(Landroid/view/Surface;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->mPlayer:Lcom/tencent/vod/flutter/player/render/FTXPlayerRenderSurfaceHost;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->mRender:Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->initOpengl(Landroid/view/Surface;)Z

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->mPlayer:Lcom/tencent/vod/flutter/player/render/FTXPlayerRenderSurfaceHost;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->mRender:Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->getInputSurface()Landroid/view/Surface;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {v0, v1}, Lcom/tencent/vod/flutter/player/render/FTXPlayerRenderSurfaceHost;->setSurface(Landroid/view/Surface;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->mRender:Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->startRender()V

    .line 24
    .line 25
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v1, "updateHostSurface:"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string v0, "FTXSurfaceView"

    .line 44
    .line 45
    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    return-void
.end method

.method private updateRenderSizeIfCan()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->mRender:Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/view/ViewGroup;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-direct {p0, v1, v0}, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->updateRenderSizeIfNeed(II)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method private updateRenderSizeIfNeed(II)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->mViewWidth:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->mViewHeight:I

    .line 6
    .line 7
    if-eq v0, p2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    return-void

    .line 11
    :cond_1
    :goto_0
    iput p1, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->mViewWidth:I

    .line 12
    .line 13
    iput p2, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->mViewHeight:I

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v1, "updateRenderSizeIfNeed, width:"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ",height:"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v1, "FTXSurfaceView"

    .line 41
    .line 42
    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->mRender:Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;

    .line 46
    .line 47
    invoke-virtual {v0, p1, p2}, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->setViewPortSize(II)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method private updateSurfaceTexture(Landroid/view/Surface;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->mSurface:Landroid/view/Surface;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "surfaceTexture is updated:"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "FTXSurfaceView"

    .line 23
    .line 24
    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->mSurface:Landroid/view/Surface;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->mGlSurfaceTools:Lcom/tencent/vod/flutter/player/render/gl/GLSurfaceTools;

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Lcom/tencent/vod/flutter/player/render/gl/GLSurfaceTools;->clearSurface(Landroid/view/Surface;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, p1}, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->updateHostSurface(Landroid/view/Surface;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method


# virtual methods
.method public addSurfaceTextureListener(Lcom/tencent/vod/flutter/ui/render/FTXCarrierSurfaceListener;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->mSurfaceListenerDelegate:Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView$SurfaceViewInnerListener;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView$SurfaceViewInnerListener;->access$100(Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView$SurfaceViewInnerListener;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->mSurfaceListenerDelegate:Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView$SurfaceViewInnerListener;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView$SurfaceViewInnerListener;->access$100(Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView$SurfaceViewInnerListener;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public bindPlayer(Lcom/tencent/vod/flutter/player/render/FTXPlayerRenderSurfaceHost;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "called bindPlayer "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ", view:"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "FTXSurfaceView"

    .line 31
    .line 32
    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->mPlayer:Lcom/tencent/vod/flutter/player/render/FTXPlayerRenderSurfaceHost;

    .line 36
    .line 37
    if-ne v0, p1, :cond_1

    .line 38
    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->mRender:Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->getInputSurface()Landroid/view/Surface;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-interface {p1, v0}, Lcom/tencent/vod/flutter/player/render/FTXPlayerRenderSurfaceHost;->setSurface(Landroid/view/Surface;)V

    .line 48
    .line 49
    .line 50
    invoke-direct {p0}, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->updateRenderSizeIfCan()V

    .line 51
    .line 52
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v2, "bindPlayer interrupt ,player: "

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v2, " is equal before, view:"

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->mRender:Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;

    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->stopRender()V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_1
    iput-object p1, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->mPlayer:Lcom/tencent/vod/flutter/player/render/FTXPlayerRenderSurfaceHost;

    .line 93
    .line 94
    invoke-direct {p0, p1}, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->connectPlayer(Lcom/tencent/vod/flutter/player/render/FTXPlayerRenderSurfaceHost;)V

    .line 95
    .line 96
    .line 97
    :goto_0
    if-eqz p1, :cond_2

    .line 98
    .line 99
    invoke-interface {p1}, Lcom/tencent/vod/flutter/player/render/FTXPlayerRenderSurfaceHost;->getPlayerRenderMode()J

    .line 100
    .line 101
    .line 102
    move-result-wide v2

    .line 103
    iput-wide v2, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->mRenderMode:J

    .line 104
    .line 105
    invoke-interface {p1}, Lcom/tencent/vod/flutter/player/render/FTXPlayerRenderSurfaceHost;->getVideoWidth()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    iput v0, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->mVideoWidth:I

    .line 110
    .line 111
    invoke-interface {p1}, Lcom/tencent/vod/flutter/player/render/FTXPlayerRenderSurfaceHost;->getVideoHeight()I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    iput p1, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->mVideoHeight:I

    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->updateVideoRenderMode()V

    .line 118
    .line 119
    .line 120
    new-instance p1, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    const-string v0, "updateSize, mVideoWidth:"

    .line 126
    .line 127
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    iget v0, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->mVideoWidth:I

    .line 131
    .line 132
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v0, ",mVideoHeight:"

    .line 136
    .line 137
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    iget v0, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->mVideoHeight:I

    .line 141
    .line 142
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string v0, ",renderMode:"

    .line 146
    .line 147
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    iget-wide v2, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->mRenderMode:J

    .line 151
    .line 152
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-static {v1, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    :cond_2
    return-void
.end method

.method public clearLastImg()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "start clearLastImg, view:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "FTXSurfaceView"

    .line 23
    .line 24
    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->mSurface:Landroid/view/Surface;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object v1, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->mGlSurfaceTools:Lcom/tencent/vod/flutter/player/render/gl/GLSurfaceTools;

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Lcom/tencent/vod/flutter/player/render/gl/GLSurfaceTools;->clearSurface(Landroid/view/Surface;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public destroyRender()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->mRender:Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->stopRender()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public notifyVideoResolutionChanged(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->mLayoutLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->mVideoWidth:I

    .line 5
    .line 6
    if-ne v1, p1, :cond_0

    .line 7
    .line 8
    iget v1, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->mVideoHeight:I

    .line 9
    .line 10
    if-eq v1, p2, :cond_3

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    :goto_0
    if-ltz p1, :cond_1

    .line 16
    .line 17
    iput p1, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->mVideoWidth:I

    .line 18
    .line 19
    :cond_1
    if-ltz p2, :cond_2

    .line 20
    .line 21
    iput p2, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->mVideoHeight:I

    .line 22
    .line 23
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->updateVideoRenderMode()V

    .line 24
    .line 25
    .line 26
    const-string p1, "FTXSurfaceView"

    .line 27
    .line 28
    new-instance p2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v1, "notifyVideoResolutionChanged updateSize, mVideoWidth:"

    .line 34
    .line 35
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->mVideoWidth:I

    .line 39
    .line 40
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ",mVideoHeight:"

    .line 44
    .line 45
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v1, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->mVideoHeight:I

    .line 49
    .line 50
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_3
    monitor-exit v0

    .line 61
    return-void

    .line 62
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    throw p1
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "target onAttachedToWindow,view:"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "FTXSurfaceView"

    .line 26
    .line 27
    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "target onDetachedFromWindow,view:"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "FTXSurfaceView"

    .line 26
    .line 27
    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->mRender:Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->stopRender()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public reDrawVod()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->mRender:Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->refreshRender()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public removeAllSurfaceListener()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->mSurfaceListenerDelegate:Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView$SurfaceViewInnerListener;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView$SurfaceViewInnerListener;->access$100(Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView$SurfaceViewInnerListener;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public removeSurfaceTextureListener(Lcom/tencent/vod/flutter/ui/render/FTXCarrierSurfaceListener;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->mSurfaceListenerDelegate:Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView$SurfaceViewInnerListener;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView$SurfaceViewInnerListener;->access$100(Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView$SurfaceViewInnerListener;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public requestLayoutSizeByContainerSize(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->updateRenderSizeIfNeed(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public updateRenderMode(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->mRenderMode:J

    .line 2
    .line 3
    cmp-long v0, v0, p1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->mRenderMode:J

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->updateVideoRenderMode()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public updateVideoRenderMode()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->mRender:Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->mVideoWidth:I

    .line 6
    .line 7
    iget v2, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->mVideoHeight:I

    .line 8
    .line 9
    iget-wide v3, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->mRenderMode:J

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/vod/flutter/player/render/gl/FTXEGLRender;->updateSizeAndRenderMode(IIJ)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
