.class public interface abstract Lcom/tencent/vod/flutter/messages/FtxMessages$TXFlutterVodPlayerApi;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/vod/flutter/messages/FtxMessages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TXFlutterVodPlayerApi"
.end annotation


# virtual methods
.method public abstract addSubtitleSource(Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitlePlayerMsg;)V
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitlePlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract autoEnterPictureInPictureMode(Lcom/tencent/vod/flutter/messages/FtxMessages$BoolPlayerMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$BoolPlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract deselectTrack(Lcom/tencent/vod/flutter/messages/FtxMessages$IntPlayerMsg;)V
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$IntPlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract enableHardwareDecode(Lcom/tencent/vod/flutter/messages/FtxMessages$BoolPlayerMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$BoolPlayerMsg;
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

.method public abstract exitPictureInPictureMode(Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getAudioTrackInfo(Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$ListMsg;
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getBitrateIndex(Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$IntMsg;
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getBufferDuration(Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$DoubleMsg;
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getCurrentPlaybackTime(Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$DoubleMsg;
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getDuration(Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$DoubleMsg;
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getHeight(Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$IntMsg;
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getImageSprite(Lcom/tencent/vod/flutter/messages/FtxMessages$DoublePlayerMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$UInt8ListMsg;
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$DoublePlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getPlayableDuration(Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$DoubleMsg;
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getSubtitleTrackInfo(Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$ListMsg;
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getSupportedBitrate(Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$ListMsg;
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getWidth(Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$IntMsg;
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract initImageSprite(Lcom/tencent/vod/flutter/messages/FtxMessages$StringListPlayerMsg;)V
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$StringListPlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract initialize(Lcom/tencent/vod/flutter/messages/FtxMessages$BoolPlayerMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$IntMsg;
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$BoolPlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract isInPIPMode(Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract isLoop(Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;
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

.method public abstract reDraw()V
.end method

.method public abstract resume(Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;)V
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract seek(Lcom/tencent/vod/flutter/messages/FtxMessages$DoublePlayerMsg;)V
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$DoublePlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract seekToPdtTime(Lcom/tencent/vod/flutter/messages/FtxMessages$IntPlayerMsg;)V
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$IntPlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract selectTrack(Lcom/tencent/vod/flutter/messages/FtxMessages$IntPlayerMsg;)V
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$IntPlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setAudioPlayOutVolume(Lcom/tencent/vod/flutter/messages/FtxMessages$IntPlayerMsg;)V
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$IntPlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setAutoPlay(Lcom/tencent/vod/flutter/messages/FtxMessages$BoolPlayerMsg;)V
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$BoolPlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setBitrateIndex(Lcom/tencent/vod/flutter/messages/FtxMessages$IntPlayerMsg;)V
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$IntPlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setConfig(Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;)V
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setLoop(Lcom/tencent/vod/flutter/messages/FtxMessages$BoolPlayerMsg;)V
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$BoolPlayerMsg;
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

.method public abstract setRate(Lcom/tencent/vod/flutter/messages/FtxMessages$DoublePlayerMsg;)V
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$DoublePlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setRenderMode(Ljava/lang/Long;)V
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setRequestAudioFocus(Lcom/tencent/vod/flutter/messages/FtxMessages$BoolPlayerMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$BoolPlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setStartTime(Lcom/tencent/vod/flutter/messages/FtxMessages$DoublePlayerMsg;)V
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$DoublePlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setStringOption(Lcom/tencent/vod/flutter/messages/FtxMessages$StringOptionPlayerMsg;)V
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$StringOptionPlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setSubtitleStyle(Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg;)V
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setToken(Lcom/tencent/vod/flutter/messages/FtxMessages$StringPlayerMsg;)V
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$StringPlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract startPlayDrm(Lcom/tencent/vod/flutter/messages/FtxMessages$TXPlayerDrmMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$IntMsg;
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$TXPlayerDrmMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract startVodPlay(Lcom/tencent/vod/flutter/messages/FtxMessages$StringPlayerMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$StringPlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract startVodPlayWithParams(Lcom/tencent/vod/flutter/messages/FtxMessages$TXPlayInfoParamsPlayerMsg;)V
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$TXPlayInfoParamsPlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract stop(Lcom/tencent/vod/flutter/messages/FtxMessages$BoolPlayerMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$BoolPlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
