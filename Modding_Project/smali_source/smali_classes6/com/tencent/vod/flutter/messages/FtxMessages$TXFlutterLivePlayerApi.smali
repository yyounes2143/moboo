.class public interface abstract Lcom/tencent/vod/flutter/messages/FtxMessages$TXFlutterLivePlayerApi;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/vod/flutter/messages/FtxMessages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TXFlutterLivePlayerApi"
.end annotation


# virtual methods
.method public abstract enableHardwareDecode(Lcom/tencent/vod/flutter/messages/FtxMessages$BoolPlayerMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$BoolPlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract enablePictureInPicture(Lcom/tencent/vod/flutter/messages/FtxMessages$BoolPlayerMsg;)Ljava/lang/Long;
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$BoolPlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract enableReceiveSeiMessage(Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;Ljava/lang/Boolean;Ljava/lang/Long;)Ljava/lang/Long;
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract enterPictureInPictureMode(Lcom/tencent/vod/flutter/messages/FtxMessages$PipParamsPlayerMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$IntMsg;
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$PipParamsPlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract exitPictureInPictureMode(Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;)V
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getSupportedBitrate(Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$ListMsg;
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract initialize(Lcom/tencent/vod/flutter/messages/FtxMessages$BoolPlayerMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$IntMsg;
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$BoolPlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract isPlaying(Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract pause(Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;)V
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract resume(Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;)V
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setAppID(Lcom/tencent/vod/flutter/messages/FtxMessages$StringPlayerMsg;)V
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$StringPlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setCacheParams(Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;Ljava/lang/Double;Ljava/lang/Double;)Ljava/lang/Long;
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Double;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Double;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setConfig(Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;)V
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setLiveMode(Lcom/tencent/vod/flutter/messages/FtxMessages$IntPlayerMsg;)V
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$IntPlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setMute(Lcom/tencent/vod/flutter/messages/FtxMessages$BoolPlayerMsg;)V
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$BoolPlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setPlayerView(Ljava/lang/Long;)V
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setProperty(Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Long;
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setRenderMode(Ljava/lang/Long;)V
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setVolume(Lcom/tencent/vod/flutter/messages/FtxMessages$IntPlayerMsg;)V
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$IntPlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract showDebugView(Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;Ljava/lang/Boolean;)V
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract startLivePlay(Lcom/tencent/vod/flutter/messages/FtxMessages$StringPlayerMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$StringPlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract stop(Lcom/tencent/vod/flutter/messages/FtxMessages$BoolPlayerMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$BoolPlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract switchStream(Lcom/tencent/vod/flutter/messages/FtxMessages$StringPlayerMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$IntMsg;
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$StringPlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
