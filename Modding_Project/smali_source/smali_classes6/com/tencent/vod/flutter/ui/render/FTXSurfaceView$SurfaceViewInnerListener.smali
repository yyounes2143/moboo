.class Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView$SurfaceViewInnerListener;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SurfaceViewInnerListener"
.end annotation


# instance fields
.field private final mContainer:Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;

.field private final mExternalSurfaceListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/vod/flutter/ui/render/FTXCarrierSurfaceListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView$SurfaceViewInnerListener;->mExternalSurfaceListeners:Ljava/util/List;

    .line 4
    iput-object p1, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView$SurfaceViewInnerListener;->mContainer:Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView$SurfaceViewInnerListener;-><init>(Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView$SurfaceViewInnerListener;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView$SurfaceViewInnerListener;->mExternalSurfaceListeners:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string p2, "FTXSurfaceView"

    .line 2
    .line 3
    const-string v0, "surfaceChanged"

    .line 4
    .line 5
    invoke-static {p2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p2, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView$SurfaceViewInnerListener;->mContainer:Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;

    .line 9
    .line 10
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p2, p1, p3, p4}, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->access$200(Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;Landroid/view/Surface;II)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "FTXSurfaceView"

    .line 2
    .line 3
    const-string v1, "onSurfaceTextureAvailable"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView$SurfaceViewInnerListener;->mContainer:Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;

    .line 9
    .line 10
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-static {v0, p1, v1, v1}, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->access$200(Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;Landroid/view/Surface;II)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView$SurfaceViewInnerListener;->mContainer:Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->access$300(Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView$SurfaceViewInnerListener;->mExternalSurfaceListeners:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/tencent/vod/flutter/ui/render/FTXCarrierSurfaceListener;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView$SurfaceViewInnerListener;->mContainer:Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;

    .line 42
    .line 43
    invoke-static {v1}, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->access$400(Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;)Landroid/view/Surface;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-interface {v0, v1}, Lcom/tencent/vod/flutter/ui/render/FTXCarrierSurfaceListener;->onSurfaceTextureAvailable(Landroid/view/Surface;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "onSurfaceTextureDestroyed:"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView$SurfaceViewInnerListener;->mContainer:Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->access$400(Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;)Landroid/view/Surface;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string v0, "FTXSurfaceView"

    .line 25
    .line 26
    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView$SurfaceViewInnerListener;->mExternalSurfaceListeners:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lcom/tencent/vod/flutter/ui/render/FTXCarrierSurfaceListener;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView$SurfaceViewInnerListener;->mContainer:Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;

    .line 48
    .line 49
    invoke-static {v1}, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->access$400(Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;)Landroid/view/Surface;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-interface {v0, v1}, Lcom/tencent/vod/flutter/ui/render/FTXCarrierSurfaceListener;->onSurfaceTextureDestroyed(Landroid/view/Surface;)Z

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    iget-object p1, p0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView$SurfaceViewInnerListener;->mContainer:Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;

    .line 58
    .line 59
    const/4 v0, 0x0

    .line 60
    invoke-static {p1, v0}, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;->access$402(Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;Landroid/view/Surface;)Landroid/view/Surface;

    .line 61
    .line 62
    .line 63
    return-void
.end method
