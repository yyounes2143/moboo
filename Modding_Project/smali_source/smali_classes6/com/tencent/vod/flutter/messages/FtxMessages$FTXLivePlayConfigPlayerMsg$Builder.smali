.class public final Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg$Builder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private autoAdjustCacheTime:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private cacheTime:Ljava/lang/Double;
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

.field private enableAec:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private enableMessage:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private enableMetaData:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private flvSessionKey:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private maxAutoAdjustCacheTime:Ljava/lang/Double;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private minAutoAdjustCacheTime:Ljava/lang/Double;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private playerId:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private videoBlockThreshold:Ljava/lang/Long;
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
.method public build()Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg$Builder;->playerId:Ljava/lang/Long;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->setPlayerId(Ljava/lang/Long;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg$Builder;->cacheTime:Ljava/lang/Double;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->setCacheTime(Ljava/lang/Double;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg$Builder;->maxAutoAdjustCacheTime:Ljava/lang/Double;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->setMaxAutoAdjustCacheTime(Ljava/lang/Double;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg$Builder;->minAutoAdjustCacheTime:Ljava/lang/Double;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->setMinAutoAdjustCacheTime(Ljava/lang/Double;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg$Builder;->videoBlockThreshold:Ljava/lang/Long;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->setVideoBlockThreshold(Ljava/lang/Long;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg$Builder;->connectRetryCount:Ljava/lang/Long;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->setConnectRetryCount(Ljava/lang/Long;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg$Builder;->connectRetryInterval:Ljava/lang/Long;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->setConnectRetryInterval(Ljava/lang/Long;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg$Builder;->autoAdjustCacheTime:Ljava/lang/Boolean;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->setAutoAdjustCacheTime(Ljava/lang/Boolean;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg$Builder;->enableAec:Ljava/lang/Boolean;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->setEnableAec(Ljava/lang/Boolean;)V

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg$Builder;->enableMessage:Ljava/lang/Boolean;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->setEnableMessage(Ljava/lang/Boolean;)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg$Builder;->enableMetaData:Ljava/lang/Boolean;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->setEnableMetaData(Ljava/lang/Boolean;)V

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg$Builder;->flvSessionKey:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->setFlvSessionKey(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-object v0
.end method

.method public setAutoAdjustCacheTime(Ljava/lang/Boolean;)Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg$Builder;
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
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg$Builder;->autoAdjustCacheTime:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public setCacheTime(Ljava/lang/Double;)Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg$Builder;
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
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg$Builder;->cacheTime:Ljava/lang/Double;

    .line 2
    .line 3
    return-object p0
.end method

.method public setConnectRetryCount(Ljava/lang/Long;)Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg$Builder;
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
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg$Builder;->connectRetryCount:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public setConnectRetryInterval(Ljava/lang/Long;)Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg$Builder;
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
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg$Builder;->connectRetryInterval:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public setEnableAec(Ljava/lang/Boolean;)Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg$Builder;
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
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg$Builder;->enableAec:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public setEnableMessage(Ljava/lang/Boolean;)Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg$Builder;
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
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg$Builder;->enableMessage:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public setEnableMetaData(Ljava/lang/Boolean;)Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg$Builder;
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
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg$Builder;->enableMetaData:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public setFlvSessionKey(Ljava/lang/String;)Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg$Builder;
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
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg$Builder;->flvSessionKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setMaxAutoAdjustCacheTime(Ljava/lang/Double;)Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg$Builder;
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
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg$Builder;->maxAutoAdjustCacheTime:Ljava/lang/Double;

    .line 2
    .line 3
    return-object p0
.end method

.method public setMinAutoAdjustCacheTime(Ljava/lang/Double;)Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg$Builder;
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
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg$Builder;->minAutoAdjustCacheTime:Ljava/lang/Double;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPlayerId(Ljava/lang/Long;)Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg$Builder;
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
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg$Builder;->playerId:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public setVideoBlockThreshold(Ljava/lang/Long;)Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg$Builder;
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
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg$Builder;->videoBlockThreshold:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method
