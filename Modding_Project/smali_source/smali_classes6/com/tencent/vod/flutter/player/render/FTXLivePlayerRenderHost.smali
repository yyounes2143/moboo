.class public abstract Lcom/tencent/vod/flutter/player/render/FTXLivePlayerRenderHost;
.super Lcom/tencent/vod/flutter/player/FTXBasePlayer;
.source "Proguard"

# interfaces
.implements Lcom/tencent/vod/flutter/player/render/FTXPlayerRenderHost;
.implements Lcom/tencent/vod/flutter/ui/render/FTXCarrierSurfaceListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "FTXLivePlayerRenderHost"


# instance fields
.field protected mCurRenderView:Lcom/tencent/vod/flutter/ui/render/FTXRenderView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/vod/flutter/player/FTXBasePlayer;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public abstract getLivePlayer()Lcom/tencent/live2/V2TXLivePlayer;
.end method

.method public onSurfaceTextureAvailable(Landroid/view/Surface;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/tencent/vod/flutter/player/render/FTXLivePlayerRenderHost;->mCurRenderView:Lcom/tencent/vod/flutter/ui/render/FTXRenderView;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/ui/render/FTXRenderView;->getRenderView()Lcom/tencent/vod/flutter/ui/render/FTXRenderCarrier;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/tencent/vod/flutter/player/render/FTXLivePlayerRenderHost;->setRenderView(Lcom/tencent/vod/flutter/ui/render/FTXRenderCarrier;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/view/Surface;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public setRenderView(Lcom/tencent/vod/flutter/ui/render/FTXRenderCarrier;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/player/render/FTXLivePlayerRenderHost;->getLivePlayer()Lcom/tencent/live2/V2TXLivePlayer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "FTXLivePlayerRenderHost"

    .line 6
    .line 7
    if-eqz p1, :cond_2

    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v3, "start bind Player:"

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v3, ", player:"

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-static {v1, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    instance-of v2, p1, Landroid/view/TextureView;

    .line 42
    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    move-object v1, p1

    .line 46
    check-cast v1, Landroid/view/TextureView;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/tencent/live2/V2TXLivePlayer;->setRenderView(Landroid/view/TextureView;)I

    .line 49
    .line 50
    .line 51
    invoke-interface {p1, p0}, Lcom/tencent/vod/flutter/ui/render/FTXRenderCarrier;->addSurfaceTextureListener(Lcom/tencent/vod/flutter/ui/render/FTXCarrierSurfaceListener;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_0
    instance-of v2, p1, Landroid/view/SurfaceView;

    .line 56
    .line 57
    if-eqz v2, :cond_1

    .line 58
    .line 59
    move-object v1, p1

    .line 60
    check-cast v1, Landroid/view/SurfaceView;

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lcom/tencent/live2/V2TXLivePlayer;->setRenderView(Landroid/view/SurfaceView;)I

    .line 63
    .line 64
    .line 65
    invoke-interface {p1, p0}, Lcom/tencent/vod/flutter/ui/render/FTXRenderCarrier;->addSurfaceTextureListener(Lcom/tencent/vod/flutter/ui/render/FTXCarrierSurfaceListener;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string v2, "setRenderView met a unImpl renderView, view obj:"

    .line 75
    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-static {v1, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string v2, "setRenderView met a null textureView, player:"

    .line 96
    .line 97
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-static {v1, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    const/4 p1, 0x0

    .line 115
    invoke-virtual {v0, p1}, Lcom/tencent/live2/V2TXLivePlayer;->setRenderView(Landroid/view/TextureView;)I

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, p1}, Lcom/tencent/live2/V2TXLivePlayer;->setRenderView(Landroid/view/SurfaceView;)I

    .line 119
    .line 120
    .line 121
    return-void
.end method

.method public setUpPlayerView(Lcom/tencent/vod/flutter/ui/render/FTXRenderView;)V
    .locals 3

    .line 1
    const-string v0, "FTXLivePlayerRenderHost"

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "start setUpPlayerView:"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/tencent/vod/flutter/ui/render/FTXRenderView;->getViewId()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v2, ", player:"

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Lcom/tencent/vod/flutter/player/render/FTXLivePlayerRenderHost;->mCurRenderView:Lcom/tencent/vod/flutter/ui/render/FTXRenderView;

    .line 42
    .line 43
    invoke-virtual {p1, p0}, Lcom/tencent/vod/flutter/ui/render/FTXRenderView;->setPlayer(Lcom/tencent/vod/flutter/player/render/FTXPlayerRenderHost;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v1, "start setUpPlayerView met null view, reset player, player:"

    .line 53
    .line 54
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const/4 p1, 0x0

    .line 72
    invoke-virtual {p0, p1}, Lcom/tencent/vod/flutter/player/render/FTXLivePlayerRenderHost;->setRenderView(Lcom/tencent/vod/flutter/ui/render/FTXRenderCarrier;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/render/FTXLivePlayerRenderHost;->mCurRenderView:Lcom/tencent/vod/flutter/ui/render/FTXRenderView;

    .line 76
    .line 77
    if-eqz v0, :cond_1

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/tencent/vod/flutter/ui/render/FTXRenderView;->getRenderView()Lcom/tencent/vod/flutter/ui/render/FTXRenderCarrier;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    if-eqz v0, :cond_1

    .line 84
    .line 85
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/render/FTXLivePlayerRenderHost;->mCurRenderView:Lcom/tencent/vod/flutter/ui/render/FTXRenderView;

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/tencent/vod/flutter/ui/render/FTXRenderView;->getRenderView()Lcom/tencent/vod/flutter/ui/render/FTXRenderCarrier;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-interface {v0, p0}, Lcom/tencent/vod/flutter/ui/render/FTXRenderCarrier;->removeSurfaceTextureListener(Lcom/tencent/vod/flutter/ui/render/FTXCarrierSurfaceListener;)V

    .line 92
    .line 93
    .line 94
    :cond_1
    iput-object p1, p0, Lcom/tencent/vod/flutter/player/render/FTXLivePlayerRenderHost;->mCurRenderView:Lcom/tencent/vod/flutter/ui/render/FTXRenderView;

    .line 95
    .line 96
    return-void
.end method
