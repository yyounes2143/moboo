.class public final Lcom/tencent/vod/flutter/messages/FtxMessages$TXPlayerDrmMsg$Builder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/vod/flutter/messages/FtxMessages$TXPlayerDrmMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private deviceCertificateUrl:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private licenseUrl:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private playUrl:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private playerId:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public build()Lcom/tencent/vod/flutter/messages/FtxMessages$TXPlayerDrmMsg;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXPlayerDrmMsg;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXPlayerDrmMsg;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXPlayerDrmMsg$Builder;->licenseUrl:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXPlayerDrmMsg;->setLicenseUrl(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXPlayerDrmMsg$Builder;->playUrl:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXPlayerDrmMsg;->setPlayUrl(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXPlayerDrmMsg$Builder;->playerId:Ljava/lang/Long;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXPlayerDrmMsg;->setPlayerId(Ljava/lang/Long;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXPlayerDrmMsg$Builder;->deviceCertificateUrl:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXPlayerDrmMsg;->setDeviceCertificateUrl(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method public setDeviceCertificateUrl(Ljava/lang/String;)Lcom/tencent/vod/flutter/messages/FtxMessages$TXPlayerDrmMsg$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/tencent/vod/flutter/messages/FtxMessages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXPlayerDrmMsg$Builder;->deviceCertificateUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setLicenseUrl(Ljava/lang/String;)Lcom/tencent/vod/flutter/messages/FtxMessages$TXPlayerDrmMsg$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/tencent/vod/flutter/messages/FtxMessages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXPlayerDrmMsg$Builder;->licenseUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPlayUrl(Ljava/lang/String;)Lcom/tencent/vod/flutter/messages/FtxMessages$TXPlayerDrmMsg$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/tencent/vod/flutter/messages/FtxMessages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXPlayerDrmMsg$Builder;->playUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPlayerId(Ljava/lang/Long;)Lcom/tencent/vod/flutter/messages/FtxMessages$TXPlayerDrmMsg$Builder;
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/tencent/vod/flutter/messages/FtxMessages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXPlayerDrmMsg$Builder;->playerId:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method
