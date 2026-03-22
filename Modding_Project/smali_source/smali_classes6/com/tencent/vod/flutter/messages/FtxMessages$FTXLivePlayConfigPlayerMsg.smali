.class public final Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/vod/flutter/messages/FtxMessages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FTXLivePlayConfigPlayerMsg"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg$Builder;
    }
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

.method public static fromList(Ljava/util/ArrayList;)Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;
    .locals 2
    .param p0    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Ljava/lang/Long;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->setPlayerId(Ljava/lang/Long;)V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/Double;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->setCacheTime(Ljava/lang/Double;)V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x2

    .line 27
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/lang/Double;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->setMaxAutoAdjustCacheTime(Ljava/lang/Double;)V

    .line 34
    .line 35
    .line 36
    const/4 v1, 0x3

    .line 37
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Ljava/lang/Double;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->setMinAutoAdjustCacheTime(Ljava/lang/Double;)V

    .line 44
    .line 45
    .line 46
    const/4 v1, 0x4

    .line 47
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Ljava/lang/Long;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->setVideoBlockThreshold(Ljava/lang/Long;)V

    .line 54
    .line 55
    .line 56
    const/4 v1, 0x5

    .line 57
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Ljava/lang/Long;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->setConnectRetryCount(Ljava/lang/Long;)V

    .line 64
    .line 65
    .line 66
    const/4 v1, 0x6

    .line 67
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Ljava/lang/Long;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->setConnectRetryInterval(Ljava/lang/Long;)V

    .line 74
    .line 75
    .line 76
    const/4 v1, 0x7

    .line 77
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    check-cast v1, Ljava/lang/Boolean;

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->setAutoAdjustCacheTime(Ljava/lang/Boolean;)V

    .line 84
    .line 85
    .line 86
    const/16 v1, 0x8

    .line 87
    .line 88
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    check-cast v1, Ljava/lang/Boolean;

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->setEnableAec(Ljava/lang/Boolean;)V

    .line 95
    .line 96
    .line 97
    const/16 v1, 0x9

    .line 98
    .line 99
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    check-cast v1, Ljava/lang/Boolean;

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->setEnableMessage(Ljava/lang/Boolean;)V

    .line 106
    .line 107
    .line 108
    const/16 v1, 0xa

    .line 109
    .line 110
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    check-cast v1, Ljava/lang/Boolean;

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->setEnableMetaData(Ljava/lang/Boolean;)V

    .line 117
    .line 118
    .line 119
    const/16 v1, 0xb

    .line 120
    .line 121
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    check-cast p0, Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {v0, p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->setFlvSessionKey(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-class v3, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;

    .line 13
    .line 14
    if-eq v3, v2, :cond_1

    .line 15
    .line 16
    goto/16 :goto_0

    .line 17
    .line 18
    :cond_1
    check-cast p1, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->playerId:Ljava/lang/Long;

    .line 21
    .line 22
    iget-object v3, p1, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->playerId:Ljava/lang/Long;

    .line 23
    .line 24
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    iget-object v2, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->cacheTime:Ljava/lang/Double;

    .line 31
    .line 32
    iget-object v3, p1, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->cacheTime:Ljava/lang/Double;

    .line 33
    .line 34
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    iget-object v2, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->maxAutoAdjustCacheTime:Ljava/lang/Double;

    .line 41
    .line 42
    iget-object v3, p1, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->maxAutoAdjustCacheTime:Ljava/lang/Double;

    .line 43
    .line 44
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    iget-object v2, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->minAutoAdjustCacheTime:Ljava/lang/Double;

    .line 51
    .line 52
    iget-object v3, p1, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->minAutoAdjustCacheTime:Ljava/lang/Double;

    .line 53
    .line 54
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    iget-object v2, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->videoBlockThreshold:Ljava/lang/Long;

    .line 61
    .line 62
    iget-object v3, p1, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->videoBlockThreshold:Ljava/lang/Long;

    .line 63
    .line 64
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_2

    .line 69
    .line 70
    iget-object v2, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->connectRetryCount:Ljava/lang/Long;

    .line 71
    .line 72
    iget-object v3, p1, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->connectRetryCount:Ljava/lang/Long;

    .line 73
    .line 74
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_2

    .line 79
    .line 80
    iget-object v2, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->connectRetryInterval:Ljava/lang/Long;

    .line 81
    .line 82
    iget-object v3, p1, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->connectRetryInterval:Ljava/lang/Long;

    .line 83
    .line 84
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_2

    .line 89
    .line 90
    iget-object v2, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->autoAdjustCacheTime:Ljava/lang/Boolean;

    .line 91
    .line 92
    iget-object v3, p1, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->autoAdjustCacheTime:Ljava/lang/Boolean;

    .line 93
    .line 94
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-eqz v2, :cond_2

    .line 99
    .line 100
    iget-object v2, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->enableAec:Ljava/lang/Boolean;

    .line 101
    .line 102
    iget-object v3, p1, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->enableAec:Ljava/lang/Boolean;

    .line 103
    .line 104
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-eqz v2, :cond_2

    .line 109
    .line 110
    iget-object v2, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->enableMessage:Ljava/lang/Boolean;

    .line 111
    .line 112
    iget-object v3, p1, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->enableMessage:Ljava/lang/Boolean;

    .line 113
    .line 114
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-eqz v2, :cond_2

    .line 119
    .line 120
    iget-object v2, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->enableMetaData:Ljava/lang/Boolean;

    .line 121
    .line 122
    iget-object v3, p1, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->enableMetaData:Ljava/lang/Boolean;

    .line 123
    .line 124
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-eqz v2, :cond_2

    .line 129
    .line 130
    iget-object v2, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->flvSessionKey:Ljava/lang/String;

    .line 131
    .line 132
    iget-object p1, p1, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->flvSessionKey:Ljava/lang/String;

    .line 133
    .line 134
    invoke-static {v2, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    if-eqz p1, :cond_2

    .line 139
    .line 140
    return v0

    .line 141
    :cond_2
    :goto_0
    return v1
.end method

.method public getAutoAdjustCacheTime()Ljava/lang/Boolean;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->autoAdjustCacheTime:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCacheTime()Ljava/lang/Double;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->cacheTime:Ljava/lang/Double;

    .line 2
    .line 3
    return-object v0
.end method

.method public getConnectRetryCount()Ljava/lang/Long;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->connectRetryCount:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public getConnectRetryInterval()Ljava/lang/Long;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->connectRetryInterval:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEnableAec()Ljava/lang/Boolean;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->enableAec:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEnableMessage()Ljava/lang/Boolean;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->enableMessage:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEnableMetaData()Ljava/lang/Boolean;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->enableMetaData:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFlvSessionKey()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->flvSessionKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMaxAutoAdjustCacheTime()Ljava/lang/Double;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->maxAutoAdjustCacheTime:Ljava/lang/Double;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMinAutoAdjustCacheTime()Ljava/lang/Double;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->minAutoAdjustCacheTime:Ljava/lang/Double;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlayerId()Ljava/lang/Long;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->playerId:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVideoBlockThreshold()Ljava/lang/Long;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->videoBlockThreshold:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->playerId:Ljava/lang/Long;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->cacheTime:Ljava/lang/Double;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->maxAutoAdjustCacheTime:Ljava/lang/Double;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->minAutoAdjustCacheTime:Ljava/lang/Double;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->videoBlockThreshold:Ljava/lang/Long;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->connectRetryCount:Ljava/lang/Long;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->connectRetryInterval:Ljava/lang/Long;

    .line 14
    .line 15
    iget-object v7, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->autoAdjustCacheTime:Ljava/lang/Boolean;

    .line 16
    .line 17
    iget-object v8, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->enableAec:Ljava/lang/Boolean;

    .line 18
    .line 19
    iget-object v9, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->enableMessage:Ljava/lang/Boolean;

    .line 20
    .line 21
    iget-object v10, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->enableMetaData:Ljava/lang/Boolean;

    .line 22
    .line 23
    iget-object v11, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->flvSessionKey:Ljava/lang/String;

    .line 24
    .line 25
    const/16 v12, 0xc

    .line 26
    .line 27
    new-array v12, v12, [Ljava/lang/Object;

    .line 28
    .line 29
    const/4 v13, 0x0

    .line 30
    aput-object v0, v12, v13

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    aput-object v1, v12, v0

    .line 34
    .line 35
    const/4 v0, 0x2

    .line 36
    aput-object v2, v12, v0

    .line 37
    .line 38
    const/4 v0, 0x3

    .line 39
    aput-object v3, v12, v0

    .line 40
    .line 41
    const/4 v0, 0x4

    .line 42
    aput-object v4, v12, v0

    .line 43
    .line 44
    const/4 v0, 0x5

    .line 45
    aput-object v5, v12, v0

    .line 46
    .line 47
    const/4 v0, 0x6

    .line 48
    aput-object v6, v12, v0

    .line 49
    .line 50
    const/4 v0, 0x7

    .line 51
    aput-object v7, v12, v0

    .line 52
    .line 53
    const/16 v0, 0x8

    .line 54
    .line 55
    aput-object v8, v12, v0

    .line 56
    .line 57
    const/16 v0, 0x9

    .line 58
    .line 59
    aput-object v9, v12, v0

    .line 60
    .line 61
    const/16 v0, 0xa

    .line 62
    .line 63
    aput-object v10, v12, v0

    .line 64
    .line 65
    const/16 v0, 0xb

    .line 66
    .line 67
    aput-object v11, v12, v0

    .line 68
    .line 69
    invoke-static {v12}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    return v0
.end method

.method public setAutoAdjustCacheTime(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->autoAdjustCacheTime:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public setCacheTime(Ljava/lang/Double;)V
    .locals 0
    .param p1    # Ljava/lang/Double;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->cacheTime:Ljava/lang/Double;

    .line 2
    .line 3
    return-void
.end method

.method public setConnectRetryCount(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->connectRetryCount:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public setConnectRetryInterval(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->connectRetryInterval:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public setEnableAec(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->enableAec:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public setEnableMessage(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->enableMessage:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public setEnableMetaData(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->enableMetaData:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public setFlvSessionKey(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->flvSessionKey:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setMaxAutoAdjustCacheTime(Ljava/lang/Double;)V
    .locals 0
    .param p1    # Ljava/lang/Double;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->maxAutoAdjustCacheTime:Ljava/lang/Double;

    .line 2
    .line 3
    return-void
.end method

.method public setMinAutoAdjustCacheTime(Ljava/lang/Double;)V
    .locals 0
    .param p1    # Ljava/lang/Double;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->minAutoAdjustCacheTime:Ljava/lang/Double;

    .line 2
    .line 3
    return-void
.end method

.method public setPlayerId(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->playerId:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public setVideoBlockThreshold(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->videoBlockThreshold:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public toList()Ljava/util/ArrayList;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/16 v1, 0xc

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->playerId:Ljava/lang/Long;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->cacheTime:Ljava/lang/Double;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->maxAutoAdjustCacheTime:Ljava/lang/Double;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->minAutoAdjustCacheTime:Ljava/lang/Double;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->videoBlockThreshold:Ljava/lang/Long;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->connectRetryCount:Ljava/lang/Long;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->connectRetryInterval:Ljava/lang/Long;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->autoAdjustCacheTime:Ljava/lang/Boolean;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->enableAec:Ljava/lang/Boolean;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->enableMessage:Ljava/lang/Boolean;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->enableMetaData:Ljava/lang/Boolean;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->flvSessionKey:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    return-object v0
.end method
