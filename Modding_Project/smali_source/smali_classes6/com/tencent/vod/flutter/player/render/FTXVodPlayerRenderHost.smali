.class public abstract Lcom/tencent/vod/flutter/player/render/FTXVodPlayerRenderHost;
.super Lcom/tencent/vod/flutter/player/FTXBasePlayer;
.source "Proguard"

# interfaces
.implements Lcom/tencent/vod/flutter/player/render/FTXPlayerRenderHost;
.implements Lcom/tencent/vod/flutter/player/render/FTXPlayerRenderSurfaceHost;


# static fields
.field private static final TAG:Ljava/lang/String; = "FTXVodPlayerRenderHost"


# instance fields
.field protected mCurRenderView:Lcom/tencent/vod/flutter/ui/render/FTXRenderView;

.field protected mRenderCarrier:Lcom/tencent/vod/flutter/ui/render/FTXRenderCarrier;


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

.method private removeRenderView()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "start removeRenderView, player:"

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
    const-string v1, "FTXVodPlayerRenderHost"

    .line 23
    .line 24
    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/render/FTXVodPlayerRenderHost;->mRenderCarrier:Lcom/tencent/vod/flutter/ui/render/FTXRenderCarrier;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-interface {v0, v1}, Lcom/tencent/vod/flutter/ui/render/FTXRenderCarrier;->bindPlayer(Lcom/tencent/vod/flutter/player/render/FTXPlayerRenderSurfaceHost;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/player/render/FTXVodPlayerRenderHost;->getVodPlayer()Lcom/tencent/rtmp/TXVodPlayer;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXVodPlayer;->setSurface(Landroid/view/Surface;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    iput-object v1, p0, Lcom/tencent/vod/flutter/player/render/FTXVodPlayerRenderHost;->mRenderCarrier:Lcom/tencent/vod/flutter/ui/render/FTXRenderCarrier;

    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public getCurCarrier()Lcom/tencent/vod/flutter/ui/render/FTXRenderCarrier;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/render/FTXVodPlayerRenderHost;->mRenderCarrier:Lcom/tencent/vod/flutter/ui/render/FTXRenderCarrier;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract getVodPlayer()Lcom/tencent/rtmp/TXVodPlayer;
.end method

.method public notifyTextureResolution(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/render/FTXVodPlayerRenderHost;->mRenderCarrier:Lcom/tencent/vod/flutter/ui/render/FTXRenderCarrier;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/tencent/vod/flutter/ui/render/FTXRenderCarrier;->notifyVideoResolutionChanged(II)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setRenderView(Lcom/tencent/vod/flutter/ui/render/FTXRenderCarrier;)V
    .locals 3

    .line 1
    const-string v0, "FTXVodPlayerRenderHost"

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
    const-string v2, "start bind Player:"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, ", player:"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, p0}, Lcom/tencent/vod/flutter/ui/render/FTXRenderCarrier;->bindPlayer(Lcom/tencent/vod/flutter/player/render/FTXPlayerRenderSurfaceHost;)V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lcom/tencent/vod/flutter/player/render/FTXVodPlayerRenderHost;->mRenderCarrier:Lcom/tencent/vod/flutter/ui/render/FTXRenderCarrier;

    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v1, "setRenderView met a null textureView, player:"

    .line 49
    .line 50
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-direct {p0}, Lcom/tencent/vod/flutter/player/render/FTXVodPlayerRenderHost;->removeRenderView()V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/player/render/FTXVodPlayerRenderHost;->getVodPlayer()Lcom/tencent/rtmp/TXVodPlayer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "FTXVodPlayerRenderHost"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v3, "start setSurface: "

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
    invoke-static {v1, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/TXVodPlayer;->setSurface(Landroid/view/Surface;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v0, "setSurface met a null player, player:"

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {v1, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public setUpPlayerView(Lcom/tencent/vod/flutter/ui/render/FTXRenderView;)V
    .locals 3

    .line 1
    const-string v0, "FTXVodPlayerRenderHost"

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
    iput-object p1, p0, Lcom/tencent/vod/flutter/player/render/FTXVodPlayerRenderHost;->mCurRenderView:Lcom/tencent/vod/flutter/ui/render/FTXRenderView;

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
    iput-object p1, p0, Lcom/tencent/vod/flutter/player/render/FTXVodPlayerRenderHost;->mCurRenderView:Lcom/tencent/vod/flutter/ui/render/FTXRenderView;

    .line 73
    .line 74
    invoke-virtual {p0, p1}, Lcom/tencent/vod/flutter/player/render/FTXVodPlayerRenderHost;->setRenderView(Lcom/tencent/vod/flutter/ui/render/FTXRenderCarrier;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public updateTextureRenderMode(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/render/FTXVodPlayerRenderHost;->mRenderCarrier:Lcom/tencent/vod/flutter/ui/render/FTXRenderCarrier;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/tencent/vod/flutter/ui/render/FTXRenderCarrier;->updateRenderMode(J)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
