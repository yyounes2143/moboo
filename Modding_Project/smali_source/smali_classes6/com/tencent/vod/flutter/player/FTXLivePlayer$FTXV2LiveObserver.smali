.class Lcom/tencent/vod/flutter/player/FTXLivePlayer$FTXV2LiveObserver;
.super Lcom/tencent/live2/V2TXLivePlayerObserver;
.source "Proguard"

# interfaces
.implements Lcom/tencent/vod/flutter/messages/FtxMessages$VoidResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/vod/flutter/player/FTXLivePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FTXV2LiveObserver"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FTXV2LiveObserver"


# instance fields
.field private final mLiveFlutterApi:Lcom/tencent/vod/flutter/messages/FtxMessages$TXLivePlayerFlutterAPI;

.field private final mLivePlayer:Lcom/tencent/vod/flutter/player/FTXLivePlayer;


# direct methods
.method public constructor <init>(Lcom/tencent/vod/flutter/player/FTXLivePlayer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/live2/V2TXLivePlayerObserver;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer$FTXV2LiveObserver;->mLivePlayer:Lcom/tencent/vod/flutter/player/FTXLivePlayer;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->access$500(Lcom/tencent/vod/flutter/player/FTXLivePlayer;)Lcom/tencent/vod/flutter/messages/FtxMessages$TXLivePlayerFlutterAPI;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer$FTXV2LiveObserver;->mLiveFlutterApi:Lcom/tencent/vod/flutter/messages/FtxMessages$TXLivePlayerFlutterAPI;

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic access$900(Lcom/tencent/vod/flutter/player/FTXLivePlayer$FTXV2LiveObserver;)Lcom/tencent/vod/flutter/messages/FtxMessages$TXLivePlayerFlutterAPI;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer$FTXV2LiveObserver;->mLiveFlutterApi:Lcom/tencent/vod/flutter/messages/FtxMessages$TXLivePlayerFlutterAPI;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "callback message error:"

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
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "FTXV2LiveObserver"

    .line 19
    .line 20
    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onAudioLoading(Lcom/tencent/live2/V2TXLivePlayer;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/tencent/live2/V2TXLivePlayerObserver;->onAudioLoading(Lcom/tencent/live2/V2TXLivePlayer;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/os/Bundle;

    .line 5
    .line 6
    invoke-direct {p1, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    iget-object p2, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer$FTXV2LiveObserver;->mLivePlayer:Lcom/tencent/vod/flutter/player/FTXLivePlayer;

    .line 10
    .line 11
    const/16 v0, 0x7d7

    .line 12
    .line 13
    invoke-static {p2, v0, p1}, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->access$600(Lcom/tencent/vod/flutter/player/FTXLivePlayer;ILandroid/os/Bundle;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onAudioPlaying(Lcom/tencent/live2/V2TXLivePlayer;ZLandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/live2/V2TXLivePlayerObserver;->onAudioPlaying(Lcom/tencent/live2/V2TXLivePlayer;ZLandroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/os/Bundle;

    .line 5
    .line 6
    invoke-direct {p1, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    iget-object p2, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer$FTXV2LiveObserver;->mLivePlayer:Lcom/tencent/vod/flutter/player/FTXLivePlayer;

    .line 10
    .line 11
    const/16 p3, 0x7ea

    .line 12
    .line 13
    invoke-static {p2, p3, p1}, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->access$600(Lcom/tencent/vod/flutter/player/FTXLivePlayer;ILandroid/os/Bundle;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onConnected(Lcom/tencent/live2/V2TXLivePlayer;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/tencent/live2/V2TXLivePlayerObserver;->onConnected(Lcom/tencent/live2/V2TXLivePlayer;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/os/Bundle;

    .line 5
    .line 6
    invoke-direct {p1, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    iget-object p2, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer$FTXV2LiveObserver;->mLivePlayer:Lcom/tencent/vod/flutter/player/FTXLivePlayer;

    .line 10
    .line 11
    const/16 v0, 0x7d1

    .line 12
    .line 13
    invoke-static {p2, v0, p1}, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->access$600(Lcom/tencent/vod/flutter/player/FTXLivePlayer;ILandroid/os/Bundle;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onError(Lcom/tencent/live2/V2TXLivePlayer;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/tencent/live2/V2TXLivePlayerObserver;->onError(Lcom/tencent/live2/V2TXLivePlayer;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/os/Bundle;

    .line 5
    .line 6
    invoke-direct {p1, p4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    const-string p4, "EVT_MSG"

    .line 10
    .line 11
    invoke-virtual {p1, p4, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p3, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer$FTXV2LiveObserver;->mLivePlayer:Lcom/tencent/vod/flutter/player/FTXLivePlayer;

    .line 15
    .line 16
    invoke-static {p3, p2, p1}, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->access$600(Lcom/tencent/vod/flutter/player/FTXLivePlayer;ILandroid/os/Bundle;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onLocalRecordBegin(Lcom/tencent/live2/V2TXLivePlayer;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/live2/V2TXLivePlayerObserver;->onLocalRecordBegin(Lcom/tencent/live2/V2TXLivePlayer;ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onLocalRecordComplete(Lcom/tencent/live2/V2TXLivePlayer;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/live2/V2TXLivePlayerObserver;->onLocalRecordComplete(Lcom/tencent/live2/V2TXLivePlayer;ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onLocalRecording(Lcom/tencent/live2/V2TXLivePlayer;JLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/tencent/live2/V2TXLivePlayerObserver;->onLocalRecording(Lcom/tencent/live2/V2TXLivePlayer;JLjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onPlayoutAudioFrame(Lcom/tencent/live2/V2TXLivePlayer;Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioFrame;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/tencent/live2/V2TXLivePlayerObserver;->onPlayoutAudioFrame(Lcom/tencent/live2/V2TXLivePlayer;Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioFrame;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onPlayoutVolumeUpdate(Lcom/tencent/live2/V2TXLivePlayer;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/tencent/live2/V2TXLivePlayerObserver;->onPlayoutVolumeUpdate(Lcom/tencent/live2/V2TXLivePlayer;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onReceiveSeiMessage(Lcom/tencent/live2/V2TXLivePlayer;I[B)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/live2/V2TXLivePlayerObserver;->onReceiveSeiMessage(Lcom/tencent/live2/V2TXLivePlayer;I[B)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/os/Bundle;

    .line 5
    .line 6
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v0, "EVT_GET_MSG"

    .line 10
    .line 11
    invoke-virtual {p1, v0, p3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 12
    .line 13
    .line 14
    const-string p3, "EVT_GET_MSG_TYPE"

    .line 15
    .line 16
    invoke-virtual {p1, p3, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    iget-object p2, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer$FTXV2LiveObserver;->mLivePlayer:Lcom/tencent/vod/flutter/player/FTXLivePlayer;

    .line 20
    .line 21
    const/16 p3, 0x7dc

    .line 22
    .line 23
    invoke-static {p2, p3, p1}, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->access$600(Lcom/tencent/vod/flutter/player/FTXLivePlayer;ILandroid/os/Bundle;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public onRenderVideoFrame(Lcom/tencent/live2/V2TXLivePlayer;Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/tencent/live2/V2TXLivePlayerObserver;->onRenderVideoFrame(Lcom/tencent/live2/V2TXLivePlayer;Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onSnapshotComplete(Lcom/tencent/live2/V2TXLivePlayer;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/tencent/live2/V2TXLivePlayerObserver;->onSnapshotComplete(Lcom/tencent/live2/V2TXLivePlayer;Landroid/graphics/Bitmap;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onStatisticsUpdate(Lcom/tencent/live2/V2TXLivePlayer;Lcom/tencent/live2/V2TXLiveDef$V2TXLivePlayerStatistics;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/tencent/live2/V2TXLivePlayerObserver;->onStatisticsUpdate(Lcom/tencent/live2/V2TXLivePlayer;Lcom/tencent/live2/V2TXLiveDef$V2TXLivePlayerStatistics;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer$FTXV2LiveObserver;->mLivePlayer:Lcom/tencent/vod/flutter/player/FTXLivePlayer;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->access$1000(Lcom/tencent/vod/flutter/player/FTXLivePlayer;)Landroid/os/Handler;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    new-instance v0, Lcom/tencent/vod/flutter/player/FTXLivePlayer$FTXV2LiveObserver$1;

    .line 11
    .line 12
    invoke-direct {v0, p0, p2}, Lcom/tencent/vod/flutter/player/FTXLivePlayer$FTXV2LiveObserver$1;-><init>(Lcom/tencent/vod/flutter/player/FTXLivePlayer$FTXV2LiveObserver;Lcom/tencent/live2/V2TXLiveDef$V2TXLivePlayerStatistics;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onStreamSwitched(Lcom/tencent/live2/V2TXLivePlayer;Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/live2/V2TXLivePlayerObserver;->onStreamSwitched(Lcom/tencent/live2/V2TXLivePlayer;Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    if-eqz p3, :cond_0

    .line 5
    .line 6
    const/16 p1, -0x903

    .line 7
    .line 8
    const-string p2, "Switch stream failed."

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/16 p1, 0x7df

    .line 12
    .line 13
    const-string p2, "Switch stream success."

    .line 14
    .line 15
    :goto_0
    new-instance p3, Landroid/os/Bundle;

    .line 16
    .line 17
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v0, "EVT_MSG"

    .line 21
    .line 22
    invoke-virtual {p3, v0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object p2, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer$FTXV2LiveObserver;->mLivePlayer:Lcom/tencent/vod/flutter/player/FTXLivePlayer;

    .line 26
    .line 27
    invoke-static {p2, p1, p3}, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->access$600(Lcom/tencent/vod/flutter/player/FTXLivePlayer;ILandroid/os/Bundle;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public onVideoLoading(Lcom/tencent/live2/V2TXLivePlayer;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/tencent/live2/V2TXLivePlayerObserver;->onVideoLoading(Lcom/tencent/live2/V2TXLivePlayer;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/os/Bundle;

    .line 5
    .line 6
    invoke-direct {p1, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    iget-object p2, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer$FTXV2LiveObserver;->mLivePlayer:Lcom/tencent/vod/flutter/player/FTXLivePlayer;

    .line 10
    .line 11
    const/16 v0, 0x7d7

    .line 12
    .line 13
    invoke-static {p2, v0, p1}, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->access$600(Lcom/tencent/vod/flutter/player/FTXLivePlayer;ILandroid/os/Bundle;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onVideoPlaying(Lcom/tencent/live2/V2TXLivePlayer;ZLandroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/live2/V2TXLivePlayerObserver;->onVideoPlaying(Lcom/tencent/live2/V2TXLivePlayer;ZLandroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer$FTXV2LiveObserver;->mLivePlayer:Lcom/tencent/vod/flutter/player/FTXLivePlayer;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->access$400(Lcom/tencent/vod/flutter/player/FTXLivePlayer;)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/16 v0, 0x7d7

    .line 11
    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    .line 14
    new-instance p1, Landroid/os/Bundle;

    .line 15
    .line 16
    invoke-direct {p1, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer$FTXV2LiveObserver;->mLivePlayer:Lcom/tencent/vod/flutter/player/FTXLivePlayer;

    .line 20
    .line 21
    const/16 v1, 0x7de

    .line 22
    .line 23
    invoke-static {v0, v1, p1}, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->access$600(Lcom/tencent/vod/flutter/player/FTXLivePlayer;ILandroid/os/Bundle;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    .line 27
    .line 28
    invoke-direct {p1, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer$FTXV2LiveObserver;->mLivePlayer:Lcom/tencent/vod/flutter/player/FTXLivePlayer;

    .line 32
    .line 33
    const/16 v1, 0x7d4

    .line 34
    .line 35
    invoke-static {v0, v1, p1}, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->access$600(Lcom/tencent/vod/flutter/player/FTXLivePlayer;ILandroid/os/Bundle;)V

    .line 36
    .line 37
    .line 38
    if-eqz p2, :cond_1

    .line 39
    .line 40
    new-instance p1, Landroid/os/Bundle;

    .line 41
    .line 42
    invoke-direct {p1, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 43
    .line 44
    .line 45
    iget-object p2, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer$FTXV2LiveObserver;->mLivePlayer:Lcom/tencent/vod/flutter/player/FTXLivePlayer;

    .line 46
    .line 47
    const/16 p3, 0x7d3

    .line 48
    .line 49
    invoke-static {p2, p3, p1}, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->access$600(Lcom/tencent/vod/flutter/player/FTXLivePlayer;ILandroid/os/Bundle;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void
.end method

.method public onVideoResolutionChanged(Lcom/tencent/live2/V2TXLivePlayer;II)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/live2/V2TXLivePlayerObserver;->onVideoResolutionChanged(Lcom/tencent/live2/V2TXLivePlayer;II)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/os/Bundle;

    .line 5
    .line 6
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v0, "EVT_WIDTH"

    .line 10
    .line 11
    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    const-string v0, "EVT_HEIGHT"

    .line 15
    .line 16
    invoke-virtual {p1, v0, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    const-string v0, "EVT_PARAM1"

    .line 20
    .line 21
    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    const-string v0, "EVT_PARAM2"

    .line 25
    .line 26
    invoke-virtual {p1, v0, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 30
    .line 31
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const/4 v3, 0x2

    .line 40
    new-array v3, v3, [Ljava/lang/Object;

    .line 41
    .line 42
    const/4 v4, 0x0

    .line 43
    aput-object v1, v3, v4

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    aput-object v2, v3, v1

    .line 47
    .line 48
    const-string v1, "Resolution changed. resolution:%1$dx%2$d, (long)width, (long)height"

    .line 49
    .line 50
    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const-string v1, "EVT_MSG"

    .line 55
    .line 56
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const/16 v0, 0x7d9

    .line 60
    .line 61
    iget-object v1, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer$FTXV2LiveObserver;->mLivePlayer:Lcom/tencent/vod/flutter/player/FTXLivePlayer;

    .line 62
    .line 63
    invoke-static {v1, v0, p1}, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->access$600(Lcom/tencent/vod/flutter/player/FTXLivePlayer;ILandroid/os/Bundle;)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer$FTXV2LiveObserver;->mLivePlayer:Lcom/tencent/vod/flutter/player/FTXLivePlayer;

    .line 67
    .line 68
    invoke-static {p1, p2}, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->access$702(Lcom/tencent/vod/flutter/player/FTXLivePlayer;I)I

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer$FTXV2LiveObserver;->mLivePlayer:Lcom/tencent/vod/flutter/player/FTXLivePlayer;

    .line 72
    .line 73
    invoke-static {p1, p3}, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->access$802(Lcom/tencent/vod/flutter/player/FTXLivePlayer;I)I

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public onWarning(Lcom/tencent/live2/V2TXLivePlayer;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/tencent/live2/V2TXLivePlayerObserver;->onWarning(Lcom/tencent/live2/V2TXLivePlayer;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/os/Bundle;

    .line 5
    .line 6
    invoke-direct {p1, p4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    const-string p4, "EVT_MSG"

    .line 10
    .line 11
    invoke-virtual {p1, p4, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p3, p0, Lcom/tencent/vod/flutter/player/FTXLivePlayer$FTXV2LiveObserver;->mLivePlayer:Lcom/tencent/vod/flutter/player/FTXLivePlayer;

    .line 15
    .line 16
    invoke-static {p3, p2, p1}, Lcom/tencent/vod/flutter/player/FTXLivePlayer;->access$600(Lcom/tencent/vod/flutter/player/FTXLivePlayer;ILandroid/os/Bundle;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public success()V
    .locals 0

    .line 1
    return-void
.end method
