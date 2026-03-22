.class Lcom/tencent/vod/flutter/ui/render/FTXTextureView$TextureViewInnerListener;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/vod/flutter/ui/render/FTXTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextureViewInnerListener"
.end annotation


# instance fields
.field private final mContainer:Lcom/tencent/vod/flutter/ui/render/FTXTextureView;

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
.method public constructor <init>(Lcom/tencent/vod/flutter/ui/render/FTXTextureView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/tencent/vod/flutter/ui/render/FTXTextureView$TextureViewInnerListener;->mExternalSurfaceListeners:Ljava/util/List;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/tencent/vod/flutter/ui/render/FTXTextureView$TextureViewInnerListener;->mContainer:Lcom/tencent/vod/flutter/ui/render/FTXTextureView;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic access$000(Lcom/tencent/vod/flutter/ui/render/FTXTextureView$TextureViewInnerListener;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/vod/flutter/ui/render/FTXTextureView$TextureViewInnerListener;->mExternalSurfaceListeners:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1    # Landroid/graphics/SurfaceTexture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "FTXTextureView"

    .line 2
    .line 3
    const-string v1, "onSurfaceTextureAvailable"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/render/FTXTextureView$TextureViewInnerListener;->mContainer:Lcom/tencent/vod/flutter/ui/render/FTXTextureView;

    .line 9
    .line 10
    invoke-static {v0, p1, p2, p3}, Lcom/tencent/vod/flutter/ui/render/FTXTextureView;->access$100(Lcom/tencent/vod/flutter/ui/render/FTXTextureView;Landroid/graphics/SurfaceTexture;II)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/tencent/vod/flutter/ui/render/FTXTextureView$TextureViewInnerListener;->mContainer:Lcom/tencent/vod/flutter/ui/render/FTXTextureView;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/tencent/vod/flutter/ui/render/FTXTextureView;->access$200(Lcom/tencent/vod/flutter/ui/render/FTXTextureView;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/tencent/vod/flutter/ui/render/FTXTextureView$TextureViewInnerListener;->mExternalSurfaceListeners:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-eqz p2, :cond_0

    .line 29
    .line 30
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    check-cast p2, Lcom/tencent/vod/flutter/ui/render/FTXCarrierSurfaceListener;

    .line 35
    .line 36
    iget-object p3, p0, Lcom/tencent/vod/flutter/ui/render/FTXTextureView$TextureViewInnerListener;->mContainer:Lcom/tencent/vod/flutter/ui/render/FTXTextureView;

    .line 37
    .line 38
    invoke-static {p3}, Lcom/tencent/vod/flutter/ui/render/FTXTextureView;->access$300(Lcom/tencent/vod/flutter/ui/render/FTXTextureView;)Landroid/view/Surface;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    invoke-interface {p2, p3}, Lcom/tencent/vod/flutter/ui/render/FTXCarrierSurfaceListener;->onSurfaceTextureAvailable(Landroid/view/Surface;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2
    .param p1    # Landroid/graphics/SurfaceTexture;
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
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/render/FTXTextureView$TextureViewInnerListener;->mContainer:Lcom/tencent/vod/flutter/ui/render/FTXTextureView;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/tencent/vod/flutter/ui/render/FTXTextureView;->access$300(Lcom/tencent/vod/flutter/ui/render/FTXTextureView;)Landroid/view/Surface;

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
    const-string v0, "FTXTextureView"

    .line 25
    .line 26
    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/tencent/vod/flutter/ui/render/FTXTextureView$TextureViewInnerListener;->mExternalSurfaceListeners:Ljava/util/List;

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
    iget-object v1, p0, Lcom/tencent/vod/flutter/ui/render/FTXTextureView$TextureViewInnerListener;->mContainer:Lcom/tencent/vod/flutter/ui/render/FTXTextureView;

    .line 48
    .line 49
    invoke-static {v1}, Lcom/tencent/vod/flutter/ui/render/FTXTextureView;->access$300(Lcom/tencent/vod/flutter/ui/render/FTXTextureView;)Landroid/view/Surface;

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
    iget-object p1, p0, Lcom/tencent/vod/flutter/ui/render/FTXTextureView$TextureViewInnerListener;->mContainer:Lcom/tencent/vod/flutter/ui/render/FTXTextureView;

    .line 58
    .line 59
    const/4 v0, 0x0

    .line 60
    invoke-static {p1, v0}, Lcom/tencent/vod/flutter/ui/render/FTXTextureView;->access$302(Lcom/tencent/vod/flutter/ui/render/FTXTextureView;Landroid/view/Surface;)Landroid/view/Surface;

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/tencent/vod/flutter/ui/render/FTXTextureView$TextureViewInnerListener;->mContainer:Lcom/tencent/vod/flutter/ui/render/FTXTextureView;

    .line 64
    .line 65
    invoke-static {p1, v0}, Lcom/tencent/vod/flutter/ui/render/FTXTextureView;->access$402(Lcom/tencent/vod/flutter/ui/render/FTXTextureView;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 66
    .line 67
    .line 68
    const/4 p1, 0x0

    .line 69
    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1    # Landroid/graphics/SurfaceTexture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "FTXTextureView"

    .line 2
    .line 3
    const-string v1, "onSurfaceTextureSizeChanged"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/render/FTXTextureView$TextureViewInnerListener;->mContainer:Lcom/tencent/vod/flutter/ui/render/FTXTextureView;

    .line 9
    .line 10
    invoke-static {v0, p1, p2, p3}, Lcom/tencent/vod/flutter/ui/render/FTXTextureView;->access$100(Lcom/tencent/vod/flutter/ui/render/FTXTextureView;Landroid/graphics/SurfaceTexture;II)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1    # Landroid/graphics/SurfaceTexture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method
