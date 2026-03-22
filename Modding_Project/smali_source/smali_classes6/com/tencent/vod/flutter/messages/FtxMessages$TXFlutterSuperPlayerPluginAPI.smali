.class public interface abstract Lcom/tencent/vod/flutter/messages/FtxMessages$TXFlutterSuperPlayerPluginAPI;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/vod/flutter/messages/FtxMessages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TXFlutterSuperPlayerPluginAPI"
.end annotation


# virtual methods
.method public abstract createLivePlayer(Ljava/lang/Boolean;)Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract createVodPlayer(Ljava/lang/Boolean;)Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getIOSSupportPIP()Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getLiteAVSDKVersion()Lcom/tencent/vod/flutter/messages/FtxMessages$StringMsg;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getPlatformVersion()Lcom/tencent/vod/flutter/messages/FtxMessages$StringMsg;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract releasePlayer(Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;)V
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$PlayerMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setConsoleEnabled(Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;)V
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setDrmProvisionEnv(Ljava/lang/Long;)V
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setGlobalCacheFolderCustomPath(Lcom/tencent/vod/flutter/messages/FtxMessages$CachePathMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$CachePathMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setGlobalCacheFolderPath(Lcom/tencent/vod/flutter/messages/FtxMessages$StringMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$StringMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setGlobalEnv(Lcom/tencent/vod/flutter/messages/FtxMessages$StringMsg;)Lcom/tencent/vod/flutter/messages/FtxMessages$IntMsg;
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$StringMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract setGlobalLicense(Lcom/tencent/vod/flutter/messages/FtxMessages$LicenseMsg;)V
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$LicenseMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setGlobalMaxCacheSize(Lcom/tencent/vod/flutter/messages/FtxMessages$IntMsg;)V
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$IntMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setLicenseFlexibleValid(Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;)V
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setLogLevel(Lcom/tencent/vod/flutter/messages/FtxMessages$IntMsg;)V
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$IntMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setUserId(Lcom/tencent/vod/flutter/messages/FtxMessages$StringMsg;)V
    .param p1    # Lcom/tencent/vod/flutter/messages/FtxMessages$StringMsg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract startVideoOrientationService()Lcom/tencent/vod/flutter/messages/FtxMessages$BoolMsg;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
