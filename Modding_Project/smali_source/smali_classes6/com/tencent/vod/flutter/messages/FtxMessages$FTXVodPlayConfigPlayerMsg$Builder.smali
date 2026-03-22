.class public final Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private autoRotate:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private cacheMp4ExtName:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private connectRetryCount:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private connectRetryInterval:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private enableAccurateSeek:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private enableRenderProcess:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private encryptedMp4Level:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private extInfoMap:Ljava/util/Map;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private firstStartPlayBufferTime:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private headers:Ljava/util/Map;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private maxBufferSize:Ljava/lang/Double;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private maxPreloadSize:Ljava/lang/Double;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mediaType:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private nextStartPlayBufferTime:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private overlayIv:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private overlayKey:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private playerId:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private playerType:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private preferAudioTrack:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private preferredResolution:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private progressInterval:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private smoothSwitchBitrate:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private timeout:Ljava/lang/Long;
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
.method public build()Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;->playerId:Ljava/lang/Long;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->setPlayerId(Ljava/lang/Long;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;->connectRetryCount:Ljava/lang/Long;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->setConnectRetryCount(Ljava/lang/Long;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;->connectRetryInterval:Ljava/lang/Long;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->setConnectRetryInterval(Ljava/lang/Long;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;->timeout:Ljava/lang/Long;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->setTimeout(Ljava/lang/Long;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;->playerType:Ljava/lang/Long;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->setPlayerType(Ljava/lang/Long;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;->headers:Ljava/util/Map;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->setHeaders(Ljava/util/Map;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;->enableAccurateSeek:Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->setEnableAccurateSeek(Ljava/lang/Boolean;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;->autoRotate:Ljava/lang/Boolean;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->setAutoRotate(Ljava/lang/Boolean;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;->smoothSwitchBitrate:Ljava/lang/Boolean;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->setSmoothSwitchBitrate(Ljava/lang/Boolean;)V

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;->cacheMp4ExtName:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->setCacheMp4ExtName(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;->progressInterval:Ljava/lang/Long;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->setProgressInterval(Ljava/lang/Long;)V

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;->maxBufferSize:Ljava/lang/Double;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->setMaxBufferSize(Ljava/lang/Double;)V

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;->maxPreloadSize:Ljava/lang/Double;

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->setMaxPreloadSize(Ljava/lang/Double;)V

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;->firstStartPlayBufferTime:Ljava/lang/Long;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->setFirstStartPlayBufferTime(Ljava/lang/Long;)V

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;->nextStartPlayBufferTime:Ljava/lang/Long;

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->setNextStartPlayBufferTime(Ljava/lang/Long;)V

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;->overlayKey:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->setOverlayKey(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;->overlayIv:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->setOverlayIv(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;->extInfoMap:Ljava/util/Map;

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->setExtInfoMap(Ljava/util/Map;)V

    .line 94
    .line 95
    .line 96
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;->enableRenderProcess:Ljava/lang/Boolean;

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->setEnableRenderProcess(Ljava/lang/Boolean;)V

    .line 99
    .line 100
    .line 101
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;->preferredResolution:Ljava/lang/Long;

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->setPreferredResolution(Ljava/lang/Long;)V

    .line 104
    .line 105
    .line 106
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;->mediaType:Ljava/lang/Long;

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->setMediaType(Ljava/lang/Long;)V

    .line 109
    .line 110
    .line 111
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;->encryptedMp4Level:Ljava/lang/Long;

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->setEncryptedMp4Level(Ljava/lang/Long;)V

    .line 114
    .line 115
    .line 116
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;->preferAudioTrack:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->setPreferAudioTrack(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    return-object v0
.end method

.method public setAutoRotate(Ljava/lang/Boolean;)Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;
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
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;->autoRotate:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public setCacheMp4ExtName(Ljava/lang/String;)Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;
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
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;->cacheMp4ExtName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setConnectRetryCount(Ljava/lang/Long;)Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;
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
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;->connectRetryCount:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public setConnectRetryInterval(Ljava/lang/Long;)Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;
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
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;->connectRetryInterval:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public setEnableAccurateSeek(Ljava/lang/Boolean;)Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;
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
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;->enableAccurateSeek:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public setEnableRenderProcess(Ljava/lang/Boolean;)Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;
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
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;->enableRenderProcess:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public setEncryptedMp4Level(Ljava/lang/Long;)Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;
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
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;->encryptedMp4Level:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public setExtInfoMap(Ljava/util/Map;)Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/tencent/vod/flutter/messages/FtxMessages$CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;->extInfoMap:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public setFirstStartPlayBufferTime(Ljava/lang/Long;)Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;
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
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;->firstStartPlayBufferTime:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public setHeaders(Ljava/util/Map;)Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/tencent/vod/flutter/messages/FtxMessages$CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;->headers:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public setMaxBufferSize(Ljava/lang/Double;)Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;
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
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;->maxBufferSize:Ljava/lang/Double;

    .line 2
    .line 3
    return-object p0
.end method

.method public setMaxPreloadSize(Ljava/lang/Double;)Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;
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
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;->maxPreloadSize:Ljava/lang/Double;

    .line 2
    .line 3
    return-object p0
.end method

.method public setMediaType(Ljava/lang/Long;)Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;
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
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;->mediaType:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public setNextStartPlayBufferTime(Ljava/lang/Long;)Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;
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
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;->nextStartPlayBufferTime:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public setOverlayIv(Ljava/lang/String;)Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;
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
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;->overlayIv:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setOverlayKey(Ljava/lang/String;)Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;
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
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;->overlayKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPlayerId(Ljava/lang/Long;)Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;
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
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;->playerId:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPlayerType(Ljava/lang/Long;)Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;
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
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;->playerType:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPreferAudioTrack(Ljava/lang/String;)Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;
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
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;->preferAudioTrack:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPreferredResolution(Ljava/lang/Long;)Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;
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
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;->preferredResolution:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public setProgressInterval(Ljava/lang/Long;)Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;
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
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;->progressInterval:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public setSmoothSwitchBitrate(Ljava/lang/Boolean;)Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;
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
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;->smoothSwitchBitrate:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public setTimeout(Ljava/lang/Long;)Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;
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
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;->timeout:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method
