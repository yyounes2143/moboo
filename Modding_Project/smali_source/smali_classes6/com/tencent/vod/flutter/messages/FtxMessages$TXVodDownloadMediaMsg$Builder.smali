.class public final Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg$Builder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private appId:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private downloadSize:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private downloadState:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private duration:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private fileId:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private isResourceBroken:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private pSign:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private playPath:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private playableDuration:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private progress:Ljava/lang/Double;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private quality:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private size:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private speed:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private token:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private userName:Ljava/lang/String;
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
.method public build()Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg$Builder;->playPath:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->setPlayPath(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg$Builder;->progress:Ljava/lang/Double;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->setProgress(Ljava/lang/Double;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg$Builder;->downloadState:Ljava/lang/Long;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->setDownloadState(Ljava/lang/Long;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg$Builder;->userName:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->setUserName(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg$Builder;->duration:Ljava/lang/Long;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->setDuration(Ljava/lang/Long;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg$Builder;->playableDuration:Ljava/lang/Long;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->setPlayableDuration(Ljava/lang/Long;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg$Builder;->size:Ljava/lang/Long;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->setSize(Ljava/lang/Long;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg$Builder;->downloadSize:Ljava/lang/Long;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->setDownloadSize(Ljava/lang/Long;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg$Builder;->url:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->setUrl(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg$Builder;->appId:Ljava/lang/Long;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->setAppId(Ljava/lang/Long;)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg$Builder;->fileId:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->setFileId(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg$Builder;->pSign:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->setPSign(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg$Builder;->quality:Ljava/lang/Long;

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->setQuality(Ljava/lang/Long;)V

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg$Builder;->token:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->setToken(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg$Builder;->speed:Ljava/lang/Long;

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->setSpeed(Ljava/lang/Long;)V

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg$Builder;->isResourceBroken:Ljava/lang/Boolean;

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg;->setIsResourceBroken(Ljava/lang/Boolean;)V

    .line 84
    .line 85
    .line 86
    return-object v0
.end method

.method public setAppId(Ljava/lang/Long;)Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg$Builder;
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
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg$Builder;->appId:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public setDownloadSize(Ljava/lang/Long;)Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg$Builder;
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
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg$Builder;->downloadSize:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public setDownloadState(Ljava/lang/Long;)Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg$Builder;
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
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg$Builder;->downloadState:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public setDuration(Ljava/lang/Long;)Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg$Builder;
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
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg$Builder;->duration:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public setFileId(Ljava/lang/String;)Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg$Builder;
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
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg$Builder;->fileId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setIsResourceBroken(Ljava/lang/Boolean;)Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg$Builder;
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/tencent/vod/flutter/messages/FtxMessages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg$Builder;->isResourceBroken:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPSign(Ljava/lang/String;)Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg$Builder;
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
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg$Builder;->pSign:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPlayPath(Ljava/lang/String;)Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg$Builder;
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
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg$Builder;->playPath:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPlayableDuration(Ljava/lang/Long;)Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg$Builder;
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
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg$Builder;->playableDuration:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public setProgress(Ljava/lang/Double;)Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg$Builder;
    .locals 0
    .param p1    # Ljava/lang/Double;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/tencent/vod/flutter/messages/FtxMessages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg$Builder;->progress:Ljava/lang/Double;

    .line 2
    .line 3
    return-object p0
.end method

.method public setQuality(Ljava/lang/Long;)Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg$Builder;
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
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg$Builder;->quality:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public setSize(Ljava/lang/Long;)Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg$Builder;
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
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg$Builder;->size:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public setSpeed(Ljava/lang/Long;)Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg$Builder;
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
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg$Builder;->speed:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public setToken(Ljava/lang/String;)Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg$Builder;
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
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg$Builder;->token:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg$Builder;
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
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg$Builder;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setUserName(Ljava/lang/String;)Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg$Builder;
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
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$TXVodDownloadMediaMsg$Builder;->userName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
