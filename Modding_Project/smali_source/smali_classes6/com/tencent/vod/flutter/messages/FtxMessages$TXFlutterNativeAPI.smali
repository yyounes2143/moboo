.class public interface abstract Lcom/tencent/vod/flutter/messages/FtxMessages$TXFlutterNativeAPI;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/vod/flutter/messages/FtxMessages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TXFlutterNativeAPI"
.end annotation


# virtual methods
.method public abstract abandonAudioFocus()V
.end method

.method public abstract getBrightness()Lcom/tencent/vod/flutter/messages/FtxMessages$DoubleMsg;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getSysBrightness()Lcom/tencent/vod/flutter/messages/FtxMessages$DoubleMsg;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getSystemVolume()Lcom/tencent/vod/flutter/messages/FtxMessages$DoubleMsg;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract isDeviceSupportPip()Lcom/tencent/vod/flutter/messages/FtxMessages$IntMsg;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract registerSysBrightness(Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;)V
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract requestAudioFocus()V
.end method

.method public abstract restorePageBrightness()V
.end method

.method public abstract setBrightness(Lcom/tencent/vod/flutter/messages/FtxMessages$DoubleMsg;)V
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$DoubleMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setSystemVolume(Lcom/tencent/vod/flutter/messages/FtxMessages$DoubleMsg;)V
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$DoubleMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
