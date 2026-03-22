.class public Lcom/tencent/vod/flutter/ui/render/FTXRenderView;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lio/flutter/plugin/platform/PlatformView;


# static fields
.field private static final TAG:Ljava/lang/String; = "FTXRenderView"


# instance fields
.field private mBasePlayer:Lcom/tencent/vod/flutter/player/render/FTXPlayerRenderHost;

.field private final mContainer:Lcom/tencent/vod/flutter/ui/render/FTXTextureContainer;

.field private final mContext:Landroid/content/Context;

.field private mFactory:Lcom/tencent/vod/flutter/ui/render/FTXRenderViewFactory;

.field private final mRenderType:I

.field private mTextureView:Lcom/tencent/vod/flutter/ui/render/FTXRenderCarrier;

.field private final mViewId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/Map;Lcom/tencent/vod/flutter/ui/render/FTXRenderViewFactory;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/tencent/vod/flutter/ui/render/FTXRenderViewFactory;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-eqz p3, :cond_1

    .line 6
    .line 7
    const-string v1, "renderViewType"

    .line 8
    .line 9
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    instance-of v1, p3, Ljava/lang/Integer;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    check-cast p3, Ljava/lang/Integer;

    .line 18
    .line 19
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    iput p3, p0, Lcom/tencent/vod/flutter/ui/render/FTXRenderView;->mRenderType:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iput v0, p0, Lcom/tencent/vod/flutter/ui/render/FTXRenderView;->mRenderType:I

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iput v0, p0, Lcom/tencent/vod/flutter/ui/render/FTXRenderView;->mRenderType:I

    .line 30
    .line 31
    :goto_0
    iput-object p4, p0, Lcom/tencent/vod/flutter/ui/render/FTXRenderView;->mFactory:Lcom/tencent/vod/flutter/ui/render/FTXRenderViewFactory;

    .line 32
    .line 33
    iput-object p1, p0, Lcom/tencent/vod/flutter/ui/render/FTXRenderView;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    new-instance p3, Lcom/tencent/vod/flutter/ui/render/FTXTextureContainer;

    .line 36
    .line 37
    invoke-direct {p3, p1}, Lcom/tencent/vod/flutter/ui/render/FTXTextureContainer;-><init>(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    iput-object p3, p0, Lcom/tencent/vod/flutter/ui/render/FTXRenderView;->mContainer:Lcom/tencent/vod/flutter/ui/render/FTXTextureContainer;

    .line 41
    .line 42
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    .line 43
    .line 44
    const/4 p4, -0x1

    .line 45
    invoke-direct {p1, p4, p4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p3, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    .line 50
    .line 51
    invoke-direct {p0}, Lcom/tencent/vod/flutter/ui/render/FTXRenderView;->resetRenderView()V

    .line 52
    .line 53
    .line 54
    new-instance p1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string p3, "view "

    .line 60
    .line 61
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string p3, " is created\uff0c renderType:"

    .line 68
    .line 69
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget p3, p0, Lcom/tencent/vod/flutter/ui/render/FTXRenderView;->mRenderType:I

    .line 73
    .line 74
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    const-string p3, "FTXRenderView"

    .line 82
    .line 83
    invoke-static {p3, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iput p2, p0, Lcom/tencent/vod/flutter/ui/render/FTXRenderView;->mViewId:I

    .line 87
    .line 88
    return-void
.end method

.method private resetRenderView()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/tencent/vod/flutter/ui/render/FTXRenderView;->mRenderType:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/tencent/vod/flutter/ui/render/FTXTextureView;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/tencent/vod/flutter/ui/render/FTXRenderView;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/tencent/vod/flutter/ui/render/FTXTextureView;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/tencent/vod/flutter/ui/render/FTXRenderView;->mTextureView:Lcom/tencent/vod/flutter/ui/render/FTXRenderCarrier;

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const/4 v1, 0x1

    .line 16
    if-eq v0, v1, :cond_2

    .line 17
    .line 18
    const/4 v1, 0x2

    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v1, "unknown view type :"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget v1, p0, Lcom/tencent/vod/flutter/ui/render/FTXRenderView;->mRenderType:I

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, ", use default type TEXTURE_TYPE"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v1, "FTXRenderView"

    .line 47
    .line 48
    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    new-instance v0, Lcom/tencent/vod/flutter/ui/render/FTXTextureView;

    .line 52
    .line 53
    iget-object v1, p0, Lcom/tencent/vod/flutter/ui/render/FTXRenderView;->mContext:Landroid/content/Context;

    .line 54
    .line 55
    invoke-direct {v0, v1}, Lcom/tencent/vod/flutter/ui/render/FTXTextureView;-><init>(Landroid/content/Context;)V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/tencent/vod/flutter/ui/render/FTXRenderView;->mTextureView:Lcom/tencent/vod/flutter/ui/render/FTXRenderCarrier;

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    :goto_0
    new-instance v0, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;

    .line 62
    .line 63
    iget-object v1, p0, Lcom/tencent/vod/flutter/ui/render/FTXRenderView;->mContext:Landroid/content/Context;

    .line 64
    .line 65
    invoke-direct {v0, v1}, Lcom/tencent/vod/flutter/ui/render/FTXSurfaceView;-><init>(Landroid/content/Context;)V

    .line 66
    .line 67
    .line 68
    iput-object v0, p0, Lcom/tencent/vod/flutter/ui/render/FTXRenderView;->mTextureView:Lcom/tencent/vod/flutter/ui/render/FTXRenderCarrier;

    .line 69
    .line 70
    :goto_1
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/render/FTXRenderView;->mContainer:Lcom/tencent/vod/flutter/ui/render/FTXTextureContainer;

    .line 71
    .line 72
    iget-object v1, p0, Lcom/tencent/vod/flutter/ui/render/FTXRenderView;->mTextureView:Lcom/tencent/vod/flutter/ui/render/FTXRenderCarrier;

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/ui/render/FTXTextureContainer;->setCarrier(Lcom/tencent/vod/flutter/ui/render/FTXRenderCarrier;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method


# virtual methods
.method public clearTexture()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/vod/flutter/ui/render/FTXRenderView;->resetRenderView()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public dispose()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/render/FTXRenderView;->mFactory:Lcom/tencent/vod/flutter/ui/render/FTXRenderViewFactory;

    .line 2
    .line 3
    iget v1, p0, Lcom/tencent/vod/flutter/ui/render/FTXRenderView;->mViewId:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/ui/render/FTXRenderViewFactory;->removeByViewId(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/render/FTXRenderView;->mContainer:Lcom/tencent/vod/flutter/ui/render/FTXTextureContainer;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/ui/render/FTXTextureContainer;->setCarrier(Lcom/tencent/vod/flutter/ui/render/FTXRenderCarrier;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v1, "render view is dispose, id:"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget v1, p0, Lcom/tencent/vod/flutter/ui/render/FTXRenderView;->mViewId:I

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, ", view:"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v1, "FTXRenderView"

    .line 46
    .line 47
    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public getRenderView()Lcom/tencent/vod/flutter/ui/render/FTXRenderCarrier;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/render/FTXRenderView;->mTextureView:Lcom/tencent/vod/flutter/ui/render/FTXRenderCarrier;

    .line 2
    .line 3
    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/render/FTXRenderView;->mContainer:Lcom/tencent/vod/flutter/ui/render/FTXTextureContainer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getViewId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/vod/flutter/ui/render/FTXRenderView;->mViewId:I

    .line 2
    .line 3
    return v0
.end method

.method public synthetic onFlutterViewAttached(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/flutter/plugin/platform/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/platform/PlatformView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onFlutterViewDetached()V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/flutter/plugin/platform/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/platform/PlatformView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onInputConnectionLocked()V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/flutter/plugin/platform/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/platform/PlatformView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onInputConnectionUnlocked()V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/flutter/plugin/platform/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/platform/PlatformView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setPlayer(Lcom/tencent/vod/flutter/player/render/FTXPlayerRenderHost;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "start setPlayer, viewId:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/tencent/vod/flutter/ui/render/FTXRenderView;->mViewId:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "FTXRenderView"

    .line 21
    .line 22
    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/render/FTXRenderView;->mBasePlayer:Lcom/tencent/vod/flutter/player/render/FTXPlayerRenderHost;

    .line 26
    .line 27
    if-eq v0, p1, :cond_1

    .line 28
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v2, "setPlayer, player is not equal, old:"

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lcom/tencent/vod/flutter/ui/render/FTXRenderView;->mBasePlayer:Lcom/tencent/vod/flutter/player/render/FTXPlayerRenderHost;

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v2, ",new:"

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v2, ", view:"

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/render/FTXRenderView;->mBasePlayer:Lcom/tencent/vod/flutter/player/render/FTXPlayerRenderHost;

    .line 72
    .line 73
    if-eqz v0, :cond_0

    .line 74
    .line 75
    const/4 v1, 0x0

    .line 76
    invoke-interface {v0, v1}, Lcom/tencent/vod/flutter/player/render/FTXPlayerRenderHost;->setRenderView(Lcom/tencent/vod/flutter/ui/render/FTXRenderCarrier;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/render/FTXRenderView;->mTextureView:Lcom/tencent/vod/flutter/ui/render/FTXRenderCarrier;

    .line 80
    .line 81
    invoke-interface {v0}, Lcom/tencent/vod/flutter/ui/render/FTXRenderCarrier;->removeAllSurfaceListener()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/ui/render/FTXRenderView;->clearTexture()V

    .line 85
    .line 86
    .line 87
    :cond_0
    iput-object p1, p0, Lcom/tencent/vod/flutter/ui/render/FTXRenderView;->mBasePlayer:Lcom/tencent/vod/flutter/player/render/FTXPlayerRenderHost;

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string v2, "setPlayer, player is same, player:"

    .line 96
    .line 97
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v2, " refresh it, view:"

    .line 104
    .line 105
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    :goto_0
    iget-object v0, p0, Lcom/tencent/vod/flutter/ui/render/FTXRenderView;->mTextureView:Lcom/tencent/vod/flutter/ui/render/FTXRenderCarrier;

    .line 123
    .line 124
    invoke-interface {p1, v0}, Lcom/tencent/vod/flutter/player/render/FTXPlayerRenderHost;->setRenderView(Lcom/tencent/vod/flutter/ui/render/FTXRenderCarrier;)V

    .line 125
    .line 126
    .line 127
    return-void
.end method
