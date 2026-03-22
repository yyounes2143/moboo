.class public final Lcom/tencent/liteav/videoconsumer/renderer/k;
.super Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface;
.source "Proguard"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/tencent/liteav/base/util/CustomHandler;

.field private final c:Lcom/tencent/liteav/base/a/b;

.field private final d:Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface$RenderViewListener;

.field private final e:Lcom/tencent/rtmp/ui/TXCloudVideoView;

.field private f:Landroid/view/TextureView;

.field private g:Z

.field private final h:Lcom/tencent/liteav/base/util/Size;

.field private i:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

.field private j:Z

.field private k:Z

.field private l:Landroid/graphics/Matrix;

.field private m:Z

.field private n:Landroid/graphics/SurfaceTexture;

.field private final o:Lcom/tencent/liteav/base/util/Size;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/view/TextureView;Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface$RenderViewListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, p3, v0, p2}, Lcom/tencent/liteav/videoconsumer/renderer/k;-><init>(Ljava/lang/String;Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface$RenderViewListener;Lcom/tencent/rtmp/ui/TXCloudVideoView;Landroid/view/TextureView;)V

    .line 8
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->f:Landroid/view/TextureView;

    if-nez p1, :cond_0

    .line 9
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->a:Ljava/lang/String;

    const-string p2, "construct: textureView is null."

    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "construct: textureView="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->f:Landroid/view/TextureView;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->b:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p0}, Lcom/tencent/liteav/videoconsumer/renderer/m;->a(Lcom/tencent/liteav/videoconsumer/renderer/k;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface$RenderViewListener;Lcom/tencent/rtmp/ui/TXCloudVideoView;Landroid/view/TextureView;)V
    .locals 2

    .line 12
    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface;-><init>()V

    .line 13
    new-instance v0, Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/liteav/base/util/CustomHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->b:Lcom/tencent/liteav/base/util/CustomHandler;

    .line 14
    new-instance v0, Lcom/tencent/liteav/base/a/b;

    invoke-direct {v0}, Lcom/tencent/liteav/base/a/b;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->c:Lcom/tencent/liteav/base/a/b;

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->g:Z

    .line 16
    new-instance v1, Lcom/tencent/liteav/base/util/Size;

    invoke-direct {v1}, Lcom/tencent/liteav/base/util/Size;-><init>()V

    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->h:Lcom/tencent/liteav/base/util/Size;

    const/4 v1, 0x0

    .line 17
    iput-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->i:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    const/4 v1, 0x1

    .line 18
    iput-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->j:Z

    .line 19
    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->k:Z

    .line 20
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->l:Landroid/graphics/Matrix;

    .line 21
    iput-boolean v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->m:Z

    .line 22
    new-instance v0, Lcom/tencent/liteav/base/util/Size;

    invoke-direct {v0}, Lcom/tencent/liteav/base/util/Size;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->o:Lcom/tencent/liteav/base/util/Size;

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "TextureViewRenderHelper_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->a:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->d:Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface$RenderViewListener;

    .line 25
    iput-object p3, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->e:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    .line 26
    iput-object p4, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->f:Landroid/view/TextureView;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/tencent/rtmp/ui/TXCloudVideoView;Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface$RenderViewListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p3, p2, v0}, Lcom/tencent/liteav/videoconsumer/renderer/k;-><init>(Ljava/lang/String;Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface$RenderViewListener;Lcom/tencent/rtmp/ui/TXCloudVideoView;Landroid/view/TextureView;)V

    .line 2
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->e:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->a:Ljava/lang/String;

    const-string p2, "construct: txCloudVideoView is null."

    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "construct: txCloudVideoView="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->e:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->e:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-static {p1, p0}, Lcom/tencent/liteav/videobase/videobase/TXCCloudVideoViewMethodInvoker;->setRenderClient(Lcom/tencent/rtmp/ui/TXCloudVideoView;Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 6
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->b:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p0}, Lcom/tencent/liteav/videoconsumer/renderer/l;->a(Lcom/tencent/liteav/videoconsumer/renderer/k;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static a(Landroid/view/View;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 8
    const-string p0, "null"

    return-object p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v2, v8, v1

    aput-object v3, v8, v0

    const/4 v2, 0x2

    aput-object v4, v8, v2

    const/4 v2, 0x3

    aput-object v5, v8, v2

    const/4 v2, 0x4

    aput-object v6, v8, v2

    const/4 v2, 0x5

    aput-object v7, v8, v2

    .line 11
    const-string v2, "%s: is_shown:%b, visibility:%s, window_visibility:%s, size:%dx%d"

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result v3

    const/16 v4, 0x13

    if-lt v3, v4, :cond_1

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    new-array v4, v0, [Ljava/lang/Object;

    aput-object v2, v4, v1

    const-string v2, ", is_attached:%b"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 14
    :cond_1
    instance-of v3, p0, Landroid/view/TextureView;

    if-eqz v3, :cond_2

    .line 15
    check-cast p0, Landroid/view/TextureView;

    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/TextureView;->isAvailable()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v1

    const-string p0, ", is_surface_available:%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v2
.end method

.method private declared-synchronized a(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    monitor-enter p0

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->n:Landroid/graphics/SurfaceTexture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    .line 49
    monitor-exit p0

    return-void

    .line 50
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->n:Landroid/graphics/SurfaceTexture;

    .line 51
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->d:Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface$RenderViewListener;

    if-eqz v0, :cond_1

    .line 52
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    const/4 p1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface$RenderViewListener;->onSurfaceChanged(Landroid/view/Surface;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 53
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private declared-synchronized a(Landroid/view/TextureView;)V
    .locals 14

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    .line 20
    :try_start_0
    iget-boolean v3, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->m:Z

    if-nez v3, :cond_0

    .line 21
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->l:Landroid/graphics/Matrix;

    .line 22
    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 23
    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    .line 24
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->c:Lcom/tencent/liteav/base/a/b;

    const-string v0, "resetTextureViewRenderMatrix"

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/base/a/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/a/a;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->a:Ljava/lang/String;

    const-string v1, "resetTextureViewRenderMatrix"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Lcom/tencent/liteav/base/a/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    .line 26
    :cond_0
    :try_start_1
    new-instance v3, Lcom/tencent/liteav/base/util/Size;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/tencent/liteav/base/util/Size;-><init>(II)V

    .line 27
    iget-object v4, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->h:Lcom/tencent/liteav/base/util/Size;

    invoke-virtual {v4}, Lcom/tencent/liteav/base/util/Size;->isValid()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Lcom/tencent/liteav/base/util/Size;->isValid()Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_3

    .line 28
    :cond_1
    invoke-virtual {v3}, Lcom/tencent/liteav/base/util/Size;->aspectRatio()D

    move-result-wide v4

    .line 29
    iget-object v6, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->h:Lcom/tencent/liteav/base/util/Size;

    invoke-virtual {v6}, Lcom/tencent/liteav/base/util/Size;->aspectRatio()D

    move-result-wide v6

    cmpg-double v8, v6, v4

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    if-gez v8, :cond_3

    .line 30
    iget-object v8, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->i:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    sget-object v11, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->b:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    if-ne v8, v11, :cond_2

    :goto_0
    div-double/2addr v6, v4

    move-wide v4, v9

    move-wide v9, v6

    goto :goto_2

    .line 31
    :cond_2
    sget-object v11, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    if-ne v8, v11, :cond_5

    :goto_1
    div-double/2addr v4, v6

    goto :goto_2

    .line 32
    :cond_3
    iget-object v8, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->i:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    sget-object v11, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->b:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    if-ne v8, v11, :cond_4

    goto :goto_1

    .line 33
    :cond_4
    sget-object v11, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    if-ne v8, v11, :cond_5

    goto :goto_0

    :cond_5
    move-wide v4, v9

    .line 34
    :goto_2
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    double-to-float v7, v9

    double-to-float v8, v4

    .line 35
    iget v11, v3, Lcom/tencent/liteav/base/util/Size;->width:I

    int-to-float v11, v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    iget v13, v3, Lcom/tencent/liteav/base/util/Size;->height:I

    int-to-float v13, v13

    div-float/2addr v13, v12

    invoke-virtual {v6, v7, v8, v11, v13}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 36
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p1, v7}, Landroid/view/TextureView;->getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 37
    invoke-virtual {p1, v6}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 38
    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    .line 39
    iget-object v7, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->c:Lcom/tencent/liteav/base/a/b;

    const-string v8, "updateTextureViewMatrix"

    invoke-virtual {v7, v8}, Lcom/tencent/liteav/base/a/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/a/a;

    move-result-object v7

    iget-object v8, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->a:Ljava/lang/String;

    const-string v11, "updateTextureViewRenderMatrix: view: %s, scaleX: %.2f, scaleY: %.2f, frame: %s, view: %s"

    .line 40
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->h:Lcom/tencent/liteav/base/util/Size;

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    aput-object p1, v10, v2

    aput-object v9, v10, v1

    aput-object v4, v10, v0

    const/4 p1, 0x3

    aput-object v5, v10, p1

    const/4 p1, 0x4

    aput-object v3, v10, p1

    .line 41
    invoke-static {v7, v8, v11, v10}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Lcom/tencent/liteav/base/a/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    :cond_6
    iput-object v6, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->l:Landroid/graphics/Matrix;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    monitor-exit p0

    return-void

    .line 44
    :cond_7
    :goto_3
    :try_start_2
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->c:Lcom/tencent/liteav/base/a/b;

    const-string v4, "updateTextureViewMatrixFailure"

    invoke-virtual {p1, v4}, Lcom/tencent/liteav/base/a/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/a/a;

    move-result-object p1

    iget-object v4, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->a:Ljava/lang/String;

    const-string v5, "updateTextureViewRenderMatrix, invalid frameSize: %s, viewSize: %s"

    iget-object v6, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->h:Lcom/tencent/liteav/base/util/Size;

    .line 45
    invoke-virtual {v6}, Lcom/tencent/liteav/base/util/Size;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/tencent/liteav/base/util/Size;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v6, v0, v2

    aput-object v3, v0, v1

    .line 46
    invoke-static {p1, v4, v5, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Lcom/tencent/liteav/base/a/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    monitor-exit p0

    return-void

    :goto_4
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public static synthetic a(Lcom/tencent/liteav/videoconsumer/renderer/k;)V
    .locals 1

    .line 54
    invoke-virtual {p0}, Lcom/tencent/liteav/videoconsumer/renderer/k;->a()Landroid/view/TextureView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoconsumer/renderer/k;->a(Landroid/view/TextureView;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/tencent/liteav/videoconsumer/renderer/k;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->e:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0, p0, p1}, Lcom/tencent/liteav/videobase/videobase/TXCCloudVideoViewMethodInvoker;->releaseRenderClient(Lcom/tencent/rtmp/ui/TXCloudVideoView;Landroid/view/TextureView$SurfaceTextureListener;Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->f:Landroid/view/TextureView;

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object p1

    const/4 v0, 0x0

    if-ne p1, p0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->f:Landroid/view/TextureView;

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 6
    :cond_1
    iput-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->f:Landroid/view/TextureView;

    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->g:Z

    return-void
.end method

.method private b()V
    .locals 6

    .line 4
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->f:Landroid/view/TextureView;

    const-string v1, "setup: null view"

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->e:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    if-nez v2, :cond_0

    .line 5
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    goto :goto_1

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->e:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-static {v0}, Lcom/tencent/liteav/videobase/videobase/TXCCloudVideoViewMethodInvoker;->getInnerTextureView(Lcom/tencent/rtmp/ui/TXCloudVideoView;)Landroid/view/TextureView;

    move-result-object v0

    if-nez v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 9
    :cond_3
    :goto_1
    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_4

    .line 10
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->a:Ljava/lang/String;

    const-string v1, "setup: textureView not available."

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lcom/tencent/liteav/videoconsumer/renderer/k;->checkViewAvailability()V

    return-void

    .line 12
    :cond_4
    new-instance v1, Lcom/tencent/liteav/base/util/Size;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-direct {v1, v3, v4}, Lcom/tencent/liteav/base/util/Size;-><init>(II)V

    .line 13
    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "setup: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isShown="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-static {v3, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_5

    .line 16
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->f:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoconsumer/renderer/k;->a(Landroid/graphics/SurfaceTexture;)V

    :cond_5
    return-void
.end method

.method private declared-synchronized b(Landroid/view/TextureView;)V
    .locals 2

    monitor-enter p0

    .line 17
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->m:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->i:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    sget-object v1, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->b:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setOpaque(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 19
    :try_start_1
    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setOpaque(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public static synthetic b(Lcom/tencent/liteav/videoconsumer/renderer/k;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tencent/liteav/videoconsumer/renderer/k;->a()Landroid/view/TextureView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoconsumer/renderer/k;->a(Landroid/view/TextureView;)V

    .line 3
    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoconsumer/renderer/k;->b(Landroid/view/TextureView;)V

    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/tencent/liteav/videoconsumer/renderer/k;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tencent/liteav/videoconsumer/renderer/k;->a()Landroid/view/TextureView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoconsumer/renderer/k;->a(Landroid/view/TextureView;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoconsumer/renderer/k;->b(Landroid/view/TextureView;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-nez p0, :cond_1

    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic d(Lcom/tencent/liteav/videoconsumer/renderer/k;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0}, Lcom/tencent/liteav/videoconsumer/renderer/k;->a()Landroid/view/TextureView;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->a:Ljava/lang/String;

    .line 9
    .line 10
    const-string v0, "checkViewAvailability: textureView is null"

    .line 11
    .line 12
    invoke-static {p0, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {v1}, Landroid/view/TextureView;->isAvailable()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->a:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {v1}, Lcom/tencent/liteav/videoconsumer/renderer/k;->a(Landroid/view/View;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    iget-object v4, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->e:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    .line 48
    .line 49
    invoke-static {v4}, Lcom/tencent/liteav/videoconsumer/renderer/k;->a(Landroid/view/View;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    const/4 v5, 0x2

    .line 54
    new-array v5, v5, [Ljava/lang/Object;

    .line 55
    .line 56
    aput-object v3, v5, v0

    .line 57
    .line 58
    const/4 v3, 0x1

    .line 59
    aput-object v4, v5, v3

    .line 60
    .line 61
    const-string v3, "checkViewAvailability: %s, %s"

    .line 62
    .line 63
    invoke-static {v2, v3, v5}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    :goto_0
    iget-object v2, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->e:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    .line 67
    .line 68
    if-eqz v2, :cond_2

    .line 69
    .line 70
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_2

    .line 75
    .line 76
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    iput-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->j:Z

    .line 84
    .line 85
    return-void
.end method

.method public static synthetic e(Lcom/tencent/liteav/videoconsumer/renderer/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/renderer/k;->b()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(Lcom/tencent/liteav/videoconsumer/renderer/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/liteav/videoconsumer/renderer/k;->b()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic g(Lcom/tencent/liteav/videoconsumer/renderer/k;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->a:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "first frame rendered"

    .line 4
    .line 5
    invoke-static {p0, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Landroid/view/TextureView;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->f:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    return-object v0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->e:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    if-eqz v0, :cond_1

    .line 19
    invoke-static {v0}, Lcom/tencent/liteav/videobase/videobase/TXCCloudVideoViewMethodInvoker;->getInnerTextureView(Lcom/tencent/rtmp/ui/TXCloudVideoView;)Landroid/view/TextureView;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final checkViewAvailability()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->b:Lcom/tencent/liteav/base/util/CustomHandler;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/tencent/liteav/videoconsumer/renderer/o;->a(Lcom/tencent/liteav/videoconsumer/renderer/k;)Ljava/lang/Runnable;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/util/CustomHandler;->runOrPost(Ljava/lang/Runnable;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final declared-synchronized enableNonUniformScale(Z)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->m:Z

    .line 9
    .line 10
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->a:Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "enableNonUniformScale: "

    .line 13
    .line 14
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->b:Lcom/tencent/liteav/base/util/CustomHandler;

    .line 26
    .line 27
    invoke-static {p0}, Lcom/tencent/liteav/videoconsumer/renderer/q;->a(Lcom/tencent/liteav/videoconsumer/renderer/k;)Ljava/lang/Runnable;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    .line 33
    .line 34
    monitor-exit p0

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    throw p1
.end method

.method public final getTransformMatrix(II)Landroid/graphics/Matrix;
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Matrix;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->l:Landroid/graphics/Matrix;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 6
    .line 7
    .line 8
    int-to-float p1, p1

    .line 9
    const/high16 v1, 0x40000000    # 2.0f

    .line 10
    .line 11
    div-float/2addr p1, v1

    .line 12
    int-to-float p2, p2

    .line 13
    div-float/2addr p2, v1

    .line 14
    const/high16 v1, 0x3f800000    # 1.0f

    .line 15
    .line 16
    const/high16 v2, -0x40800000    # -1.0f

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public final isUsingTextureView()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final isVisible()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->j:Z

    .line 2
    .line 3
    return v0
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->a:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "onSurfaceTextureAvailable, size:"

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, "x"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, " surfaceTexture:"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    monitor-enter p0

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->o:Lcom/tencent/liteav/base/util/Size;

    .line 38
    .line 39
    iput p2, v0, Lcom/tencent/liteav/base/util/Size;->width:I

    .line 40
    .line 41
    iput p3, v0, Lcom/tencent/liteav/base/util/Size;->height:I

    .line 42
    .line 43
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/k;->a(Landroid/graphics/SurfaceTexture;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->b:Lcom/tencent/liteav/base/util/CustomHandler;

    .line 48
    .line 49
    invoke-static {p0}, Lcom/tencent/liteav/videoconsumer/renderer/r;->a(Lcom/tencent/liteav/videoconsumer/renderer/k;)Ljava/lang/Runnable;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/tencent/liteav/videoconsumer/renderer/k;->checkViewAvailability()V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception p1

    .line 61
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    throw p1
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->a:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "onSurfaceTextureDestroyed surface:"

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    monitor-enter p0

    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->n:Landroid/graphics/SurfaceTexture;

    .line 18
    .line 19
    if-ne v0, p1, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->n:Landroid/graphics/SurfaceTexture;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->a:Ljava/lang/String;

    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v2, "notifySurfaceDestroy, surface not same, cur: "

    .line 32
    .line 33
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p1, ", last: "

    .line 40
    .line 41
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->n:Landroid/graphics/SurfaceTexture;

    .line 45
    .line 46
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->d:Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface$RenderViewListener;

    .line 58
    .line 59
    if-eqz p1, :cond_1

    .line 60
    .line 61
    invoke-interface {p1}, Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface$RenderViewListener;->onSurfaceDestroy()V

    .line 62
    .line 63
    .line 64
    :cond_1
    const/4 p1, 0x0

    .line 65
    iput-boolean p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->k:Z

    .line 66
    .line 67
    const/4 p1, 0x1

    .line 68
    return p1

    .line 69
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    throw p1
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->c:Lcom/tencent/liteav/base/a/b;

    .line 2
    .line 3
    const-string v1, "surfaceSizeChanged"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/a/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/a/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->a:Ljava/lang/String;

    .line 10
    .line 11
    const-string v2, "onSurfaceTextureSizeChanged: %dx%d --> %dx%d"

    .line 12
    .line 13
    iget-object v3, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->o:Lcom/tencent/liteav/base/util/Size;

    .line 14
    .line 15
    iget v3, v3, Lcom/tencent/liteav/base/util/Size;->width:I

    .line 16
    .line 17
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    iget-object v4, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->o:Lcom/tencent/liteav/base/util/Size;

    .line 22
    .line 23
    iget v4, v4, Lcom/tencent/liteav/base/util/Size;->height:I

    .line 24
    .line 25
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    const/4 v7, 0x4

    .line 38
    new-array v7, v7, [Ljava/lang/Object;

    .line 39
    .line 40
    const/4 v8, 0x0

    .line 41
    aput-object v3, v7, v8

    .line 42
    .line 43
    const/4 v3, 0x1

    .line 44
    aput-object v4, v7, v3

    .line 45
    .line 46
    const/4 v4, 0x2

    .line 47
    aput-object v5, v7, v4

    .line 48
    .line 49
    const/4 v4, 0x3

    .line 50
    aput-object v6, v7, v4

    .line 51
    .line 52
    invoke-static {v0, v1, v2, v7}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Lcom/tencent/liteav/base/a/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/tencent/liteav/videoconsumer/renderer/k;->a()Landroid/view/TextureView;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    if-nez v0, :cond_0

    .line 60
    .line 61
    return-void

    .line 62
    :cond_0
    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoconsumer/renderer/k;->a(Landroid/view/TextureView;)V

    .line 63
    .line 64
    .line 65
    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/k;->a(Landroid/graphics/SurfaceTexture;)V

    .line 66
    .line 67
    .line 68
    monitor-enter p0

    .line 69
    :try_start_0
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->o:Lcom/tencent/liteav/base/util/Size;

    .line 70
    .line 71
    iget v0, p1, Lcom/tencent/liteav/base/util/Size;->width:I

    .line 72
    .line 73
    iget p1, p1, Lcom/tencent/liteav/base/util/Size;->height:I

    .line 74
    .line 75
    if-le v0, p1, :cond_1

    .line 76
    .line 77
    move p1, v3

    .line 78
    goto :goto_0

    .line 79
    :cond_1
    move p1, v8

    .line 80
    :goto_0
    if-le p2, p3, :cond_2

    .line 81
    .line 82
    move v8, v3

    .line 83
    :cond_2
    if-eq p1, v8, :cond_4

    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/tencent/liteav/videoconsumer/renderer/k;->a()Landroid/view/TextureView;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->d:Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface$RenderViewListener;

    .line 90
    .line 91
    if-eqz v0, :cond_4

    .line 92
    .line 93
    if-nez p1, :cond_3

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_3
    invoke-virtual {p1}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    if-eqz p1, :cond_4

    .line 101
    .line 102
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->d:Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface$RenderViewListener;

    .line 103
    .line 104
    invoke-interface {v0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/RenderViewHelperInterface$RenderViewListener;->onRequestRedraw(Landroid/graphics/Bitmap;)V

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :catchall_0
    move-exception p1

    .line 109
    goto :goto_2

    .line 110
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->o:Lcom/tencent/liteav/base/util/Size;

    .line 111
    .line 112
    iput p2, p1, Lcom/tencent/liteav/base/util/Size;->width:I

    .line 113
    .line 114
    iput p3, p1, Lcom/tencent/liteav/base/util/Size;->height:I

    .line 115
    .line 116
    monitor-exit p0

    .line 117
    return-void

    .line 118
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    throw p1
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->k:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->k:Z

    .line 8
    .line 9
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->b:Lcom/tencent/liteav/base/util/CustomHandler;

    .line 10
    .line 11
    invoke-static {p0}, Lcom/tencent/liteav/videoconsumer/renderer/s;->a(Lcom/tencent/liteav/videoconsumer/renderer/k;)Ljava/lang/Runnable;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/tencent/liteav/videoconsumer/renderer/k;->checkViewAvailability()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final release(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->a:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "release: clearLastImage="

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->b:Lcom/tencent/liteav/base/util/CustomHandler;

    .line 17
    .line 18
    invoke-static {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/n;->a(Lcom/tencent/liteav/videoconsumer/renderer/k;Z)Ljava/lang/Runnable;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final declared-synchronized updateVideoFrameInfo(Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;IIZ)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object p4, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->i:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    .line 3
    .line 4
    if-ne p4, p1, :cond_0

    .line 5
    .line 6
    iget-object p4, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->h:Lcom/tencent/liteav/base/util/Size;

    .line 7
    .line 8
    iget v0, p4, Lcom/tencent/liteav/base/util/Size;->width:I

    .line 9
    .line 10
    if-ne p2, v0, :cond_0

    .line 11
    .line 12
    iget p4, p4, Lcom/tencent/liteav/base/util/Size;->height:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    if-ne p3, p4, :cond_0

    .line 15
    .line 16
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    :try_start_1
    iget-object p4, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->a:Ljava/lang/String;

    .line 21
    .line 22
    const-string v0, "updateVideoFrameInfo: scaleType: %s, width: %d, height: %d"

    .line 23
    .line 24
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const/4 v3, 0x3

    .line 33
    new-array v3, v3, [Ljava/lang/Object;

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    aput-object p1, v3, v4

    .line 37
    .line 38
    const/4 v4, 0x1

    .line 39
    aput-object v1, v3, v4

    .line 40
    .line 41
    const/4 v1, 0x2

    .line 42
    aput-object v2, v3, v1

    .line 43
    .line 44
    invoke-static {p4, v0, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->i:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    .line 48
    .line 49
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->h:Lcom/tencent/liteav/base/util/Size;

    .line 50
    .line 51
    invoke-virtual {p1, p2, p3}, Lcom/tencent/liteav/base/util/Size;->set(II)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/tencent/liteav/videoconsumer/renderer/k;->b:Lcom/tencent/liteav/base/util/CustomHandler;

    .line 55
    .line 56
    invoke-static {p0}, Lcom/tencent/liteav/videoconsumer/renderer/p;->a(Lcom/tencent/liteav/videoconsumer/renderer/k;)Ljava/lang/Runnable;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-virtual {p1, p2}, Lcom/tencent/liteav/base/util/CustomHandler;->runOrPost(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    .line 62
    .line 63
    monitor-exit p0

    .line 64
    return-void

    .line 65
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    throw p1
.end method
