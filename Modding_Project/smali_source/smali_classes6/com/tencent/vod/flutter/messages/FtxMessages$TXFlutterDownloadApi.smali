.class public interface abstract Lcom/tencent/vod/flutter/messages/FtxMessages$TXFlutterDownloadApi;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/vod/flutter/messages/FtxMessages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TXFlutterDownloadApi"
.end annotation


# virtual methods
.method public abstract deleteDownloadMediaInfo(Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getDownloadInfo(Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getDownloadList()Lcom/tencent/vod/flutter/messages/FtxMessages$TXDownloadListMsg;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract resumeDownload(Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;)V
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setDownloadHeaders(Lcom/tencent/vod/flutter/messages/FtxMessages$MapMsg;)V
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$MapMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract startDownload(Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;)V
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract startPreLoad(Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$IntMsg;
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract startPreLoadByParams(Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg;)V
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$PreLoadInfoMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract stopDownload(Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;)V
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract stopPreLoad(Lcom/tencent/vod/flutter/messages/FtxMessages$IntMsg;)V
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$IntMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
