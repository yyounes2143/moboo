.class public Lcom/tencent/vod/flutter/FTXTransformation;
.super Ljava/lang/Object;
.source "Proguard"


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

.method private static doubleIsNotEmpty(Ljava/lang/Double;)Z
    .locals 4

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmpl-double p0, v0, v2

    .line 10
    .line 11
    if-lez p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method private static floatIsNotEmpty(Ljava/lang/Float;)Z
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const/4 v0, 0x0

    .line 8
    cmpl-float p0, p0, v0

    .line 9
    .line 10
    if-lez p0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return p0
.end method

.method private static intIsNotEmpty(Ljava/lang/Integer;)Z
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-lez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public static transToTitleRenderModel(Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg;)Lcom/tencent/liteav/txcplayer/model/TXSubtitleRenderModel;
    .locals 2

    .line 1
    new-instance v0, Lcom/tencent/liteav/txcplayer/model/TXSubtitleRenderModel;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tencent/liteav/txcplayer/model/TXSubtitleRenderModel;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg;->getCanvasWidth()Ljava/lang/Long;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg;->getCanvasWidth()Ljava/lang/Long;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iput v1, v0, Lcom/tencent/liteav/txcplayer/model/TXSubtitleRenderModel;->canvasWidth:I

    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg;->getCanvasHeight()Ljava/lang/Long;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg;->getCanvasHeight()Ljava/lang/Long;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    iput v1, v0, Lcom/tencent/liteav/txcplayer/model/TXSubtitleRenderModel;->canvasHeight:I

    .line 37
    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg;->getFamilyName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iput-object v1, v0, Lcom/tencent/liteav/txcplayer/model/TXSubtitleRenderModel;->familyName:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg;->getFontSize()Ljava/lang/Double;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg;->getFontSize()Ljava/lang/Double;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    iput v1, v0, Lcom/tencent/liteav/txcplayer/model/TXSubtitleRenderModel;->fontSize:F

    .line 59
    .line 60
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg;->getFontScale()Ljava/lang/Double;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    if-eqz v1, :cond_3

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg;->getFontScale()Ljava/lang/Double;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    iput v1, v0, Lcom/tencent/liteav/txcplayer/model/TXSubtitleRenderModel;->fontScale:F

    .line 75
    .line 76
    :cond_3
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg;->getFontColor()Ljava/lang/Long;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    if-eqz v1, :cond_4

    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg;->getFontColor()Ljava/lang/Long;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    iput v1, v0, Lcom/tencent/liteav/txcplayer/model/TXSubtitleRenderModel;->fontColor:I

    .line 91
    .line 92
    :cond_4
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg;->getIsBondFontStyle()Ljava/lang/Boolean;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    if-eqz v1, :cond_5

    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg;->getIsBondFontStyle()Ljava/lang/Boolean;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    iput-boolean v1, v0, Lcom/tencent/liteav/txcplayer/model/TXSubtitleRenderModel;->isBondFontStyle:Z

    .line 107
    .line 108
    :cond_5
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg;->getOutlineWidth()Ljava/lang/Double;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    if-eqz v1, :cond_6

    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg;->getOutlineWidth()Ljava/lang/Double;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    iput v1, v0, Lcom/tencent/liteav/txcplayer/model/TXSubtitleRenderModel;->outlineWidth:F

    .line 123
    .line 124
    :cond_6
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg;->getOutlineColor()Ljava/lang/Long;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    if-eqz v1, :cond_7

    .line 129
    .line 130
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg;->getOutlineColor()Ljava/lang/Long;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    iput v1, v0, Lcom/tencent/liteav/txcplayer/model/TXSubtitleRenderModel;->outlineColor:I

    .line 139
    .line 140
    :cond_7
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg;->getLineSpace()Ljava/lang/Double;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    if-eqz v1, :cond_8

    .line 145
    .line 146
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg;->getLineSpace()Ljava/lang/Double;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    iput v1, v0, Lcom/tencent/liteav/txcplayer/model/TXSubtitleRenderModel;->lineSpace:F

    .line 155
    .line 156
    :cond_8
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg;->getStartMargin()Ljava/lang/Double;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    if-eqz v1, :cond_9

    .line 161
    .line 162
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg;->getStartMargin()Ljava/lang/Double;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    iput v1, v0, Lcom/tencent/liteav/txcplayer/model/TXSubtitleRenderModel;->startMargin:F

    .line 171
    .line 172
    :cond_9
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg;->getEndMargin()Ljava/lang/Double;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    if-eqz v1, :cond_a

    .line 177
    .line 178
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg;->getEndMargin()Ljava/lang/Double;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    iput v1, v0, Lcom/tencent/liteav/txcplayer/model/TXSubtitleRenderModel;->endMargin:F

    .line 187
    .line 188
    :cond_a
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg;->getVerticalMargin()Ljava/lang/Double;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    if-eqz v1, :cond_b

    .line 193
    .line 194
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$SubTitleRenderModelPlayerMsg;->getVerticalMargin()Ljava/lang/Double;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    invoke-virtual {p0}, Ljava/lang/Double;->floatValue()F

    .line 199
    .line 200
    .line 201
    move-result p0

    .line 202
    iput p0, v0, Lcom/tencent/liteav/txcplayer/model/TXSubtitleRenderModel;->verticalMargin:F

    .line 203
    .line 204
    :cond_b
    return-object v0
.end method

.method public static transformToLiveConfig(Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;)Lcom/tencent/rtmp/TXLivePlayConfig;
    .locals 2

    .line 1
    new-instance v0, Lcom/tencent/rtmp/TXLivePlayConfig;

    invoke-direct {v0}, Lcom/tencent/rtmp/TXLivePlayConfig;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->getCacheTime()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->getCacheTime()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXLivePlayConfig;->setCacheTime(F)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->getMaxAutoAdjustCacheTime()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->getMaxAutoAdjustCacheTime()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXLivePlayConfig;->setMaxAutoAdjustCacheTime(F)V

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->getMinAutoAdjustCacheTime()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->getMinAutoAdjustCacheTime()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXLivePlayConfig;->setMinAutoAdjustCacheTime(F)V

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->getVideoBlockThreshold()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 9
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->getVideoBlockThreshold()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXLivePlayConfig;->setVideoBlockThreshold(I)V

    .line 10
    :cond_3
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->getConnectRetryCount()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 11
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->getConnectRetryCount()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXLivePlayConfig;->setConnectRetryCount(I)V

    .line 12
    :cond_4
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->getConnectRetryInterval()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 13
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->getConnectRetryInterval()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXLivePlayConfig;->setConnectRetryInterval(I)V

    .line 14
    :cond_5
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->getAutoAdjustCacheTime()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 15
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->getAutoAdjustCacheTime()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXLivePlayConfig;->setAutoAdjustCacheTime(Z)V

    .line 16
    :cond_6
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->getEnableAec()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 17
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->getEnableAec()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXLivePlayConfig;->setEnableAEC(Z)V

    .line 18
    :cond_7
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->getEnableMessage()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 19
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->getEnableMessage()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXLivePlayConfig;->setEnableMessage(Z)V

    .line 20
    :cond_8
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->getEnableMetaData()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 21
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->getEnableMetaData()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXLivePlayConfig;->setEnableMetaData(Z)V

    .line 22
    :cond_9
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXLivePlayConfigPlayerMsg;->getFlvSessionKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tencent/rtmp/TXLivePlayConfig;->setFlvSessionKey(Ljava/lang/String;)V

    return-object v0
.end method

.method public static transformToLiveConfig(Ljava/util/Map;)Lcom/tencent/rtmp/TXLivePlayConfig;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/tencent/rtmp/TXLivePlayConfig;"
        }
    .end annotation

    .line 23
    new-instance v0, Lcom/tencent/rtmp/TXLivePlayConfig;

    invoke-direct {v0}, Lcom/tencent/rtmp/TXLivePlayConfig;-><init>()V

    .line 24
    const-string v1, "cacheTime"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    .line 25
    invoke-static {v1}, Lcom/tencent/vod/flutter/FTXTransformation;->doubleIsNotEmpty(Ljava/lang/Double;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 26
    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXLivePlayConfig;->setCacheTime(F)V

    .line 27
    :cond_0
    const-string v1, "maxAutoAdjustCacheTime"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    .line 28
    invoke-static {v1}, Lcom/tencent/vod/flutter/FTXTransformation;->doubleIsNotEmpty(Ljava/lang/Double;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 29
    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXLivePlayConfig;->setMaxAutoAdjustCacheTime(F)V

    .line 30
    :cond_1
    const-string v1, "minAutoAdjustCacheTime"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    .line 31
    invoke-static {v1}, Lcom/tencent/vod/flutter/FTXTransformation;->doubleIsNotEmpty(Ljava/lang/Double;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 32
    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXLivePlayConfig;->setMinAutoAdjustCacheTime(F)V

    .line 33
    :cond_2
    const-string v1, "videoBlockThreshold"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 34
    invoke-static {v1}, Lcom/tencent/vod/flutter/FTXTransformation;->intIsNotEmpty(Ljava/lang/Integer;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 35
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXLivePlayConfig;->setVideoBlockThreshold(I)V

    .line 36
    :cond_3
    const-string v1, "connectRetryCount"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 37
    invoke-static {v1}, Lcom/tencent/vod/flutter/FTXTransformation;->intIsNotEmpty(Ljava/lang/Integer;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 38
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXLivePlayConfig;->setConnectRetryCount(I)V

    .line 39
    :cond_4
    const-string v1, "connectRetryInterval"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 40
    invoke-static {v1}, Lcom/tencent/vod/flutter/FTXTransformation;->intIsNotEmpty(Ljava/lang/Integer;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 41
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXLivePlayConfig;->setConnectRetryInterval(I)V

    .line 42
    :cond_5
    const-string v1, "autoAdjustCacheTime"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    .line 43
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXLivePlayConfig;->setAutoAdjustCacheTime(Z)V

    .line 44
    :cond_6
    const-string v1, "enableAec"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    .line 45
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXLivePlayConfig;->setEnableAEC(Z)V

    .line 46
    :cond_7
    const-string v1, "enableMessage"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_8

    .line 47
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXLivePlayConfig;->setEnableMessage(Z)V

    .line 48
    :cond_8
    const-string v1, "enableMetaData"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_9

    .line 49
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXLivePlayConfig;->setEnableMetaData(Z)V

    .line 50
    :cond_9
    const-string v1, "flvSessionKey"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 51
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 52
    invoke-virtual {v0, p0}, Lcom/tencent/rtmp/TXLivePlayConfig;->setFlvSessionKey(Ljava/lang/String;)V

    :cond_a
    return-object v0
.end method

.method public static transformToVodConfig(Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;)Lcom/tencent/rtmp/TXVodPlayConfig;
    .locals 3

    .line 1
    new-instance v0, Lcom/tencent/rtmp/TXVodPlayConfig;

    invoke-direct {v0}, Lcom/tencent/rtmp/TXVodPlayConfig;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->getConnectRetryCount()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->getConnectRetryCount()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXVodPlayConfig;->setConnectRetryCount(I)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->getProgressInterval()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->getProgressInterval()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXVodPlayConfig;->setConnectRetryInterval(I)V

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->getTimeout()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->getTimeout()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXVodPlayConfig;->setTimeout(I)V

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->getPlayerType()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 9
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->getPlayerType()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXVodPlayConfig;->setPlayerType(I)V

    .line 10
    :cond_3
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXVodPlayConfig;->setHeaders(Ljava/util/Map;)V

    .line 11
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->getEnableAccurateSeek()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 12
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->getEnableAccurateSeek()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXVodPlayConfig;->setEnableAccurateSeek(Z)V

    .line 13
    :cond_4
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->getAutoRotate()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 14
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->getAutoRotate()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXVodPlayConfig;->setAutoRotate(Z)V

    .line 15
    :cond_5
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->getSmoothSwitchBitrate()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 16
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->getSmoothSwitchBitrate()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXVodPlayConfig;->setSmoothSwitchBitrate(Z)V

    .line 17
    :cond_6
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->getCacheMp4ExtName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXVodPlayConfig;->setCacheMp4ExtName(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->getProgressInterval()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 19
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->getProgressInterval()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXVodPlayConfig;->setProgressInterval(I)V

    .line 20
    :cond_7
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->getMaxBufferSize()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 21
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->getMaxBufferSize()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXVodPlayConfig;->setMaxBufferSize(F)V

    .line 22
    :cond_8
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->getMaxPreloadSize()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 23
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->getMaxPreloadSize()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXVodPlayConfig;->setMaxPreloadSize(F)V

    .line 24
    :cond_9
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->getFirstStartPlayBufferTime()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 25
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->getFirstStartPlayBufferTime()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXVodPlayConfig;->setFirstStartPlayBufferTime(I)V

    .line 26
    :cond_a
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->getNextStartPlayBufferTime()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 27
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->getNextStartPlayBufferTime()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXVodPlayConfig;->setNextStartPlayBufferTime(I)V

    .line 28
    :cond_b
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->getOverlayKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXVodPlayConfig;->setOverlayKey(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->getOverlayIv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXVodPlayConfig;->setOverlayIv(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->getExtInfoMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXVodPlayConfig;->setExtInfo(Ljava/util/Map;)V

    .line 31
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->getEnableRenderProcess()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 32
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->getEnableRenderProcess()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXVodPlayConfig;->setEnableRenderProcess(Z)V

    .line 33
    :cond_c
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->getPreferredResolution()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 34
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->getPreferredResolution()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/rtmp/TXVodPlayConfig;->setPreferredResolution(J)V

    .line 35
    :cond_d
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->getPreferAudioTrack()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXVodPlayConfig;->setPreferredAudioTrack(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->getMediaType()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXVodPlayConfig;->setMediaType(I)V

    .line 37
    invoke-virtual {p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->getEncryptedMp4Level()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/tencent/rtmp/TXVodPlayConfig;->setEncryptedMp4Level(I)V

    return-object v0
.end method

.method public static transformToVodConfig(Ljava/util/Map;)Lcom/tencent/rtmp/TXVodPlayConfig;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/tencent/rtmp/TXVodPlayConfig;"
        }
    .end annotation

    .line 38
    new-instance v0, Lcom/tencent/rtmp/TXVodPlayConfig;

    invoke-direct {v0}, Lcom/tencent/rtmp/TXVodPlayConfig;-><init>()V

    .line 39
    const-string v1, "connectRetryCount"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 40
    invoke-static {v1}, Lcom/tencent/vod/flutter/FTXTransformation;->intIsNotEmpty(Ljava/lang/Integer;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 41
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXVodPlayConfig;->setConnectRetryCount(I)V

    .line 42
    :cond_0
    const-string v1, "connectRetryInterval"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 43
    invoke-static {v1}, Lcom/tencent/vod/flutter/FTXTransformation;->intIsNotEmpty(Ljava/lang/Integer;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 44
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXVodPlayConfig;->setConnectRetryInterval(I)V

    .line 45
    :cond_1
    const-string v1, "timeout"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 46
    invoke-static {v1}, Lcom/tencent/vod/flutter/FTXTransformation;->intIsNotEmpty(Ljava/lang/Integer;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 47
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXVodPlayConfig;->setTimeout(I)V

    .line 48
    :cond_2
    const-string v1, "playerType"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 49
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXVodPlayConfig;->setPlayerType(I)V

    .line 50
    :cond_3
    const-string v1, "headers"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_4

    .line 51
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 52
    :cond_4
    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXVodPlayConfig;->setHeaders(Ljava/util/Map;)V

    .line 53
    const-string v1, "enableAccurateSeek"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    .line 54
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXVodPlayConfig;->setEnableAccurateSeek(Z)V

    .line 55
    :cond_5
    const-string v1, "autoRotate"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    .line 56
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXVodPlayConfig;->setAutoRotate(Z)V

    .line 57
    :cond_6
    const-string v1, "smoothSwitchBitrate"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    .line 58
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXVodPlayConfig;->setSmoothSwitchBitrate(Z)V

    .line 59
    :cond_7
    const-string v1, "cacheMp4ExtName"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 60
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 61
    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXVodPlayConfig;->setCacheMp4ExtName(Ljava/lang/String;)V

    .line 62
    :cond_8
    const-string v1, "progressInterval"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 63
    invoke-static {v1}, Lcom/tencent/vod/flutter/FTXTransformation;->intIsNotEmpty(Ljava/lang/Integer;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 64
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXVodPlayConfig;->setProgressInterval(I)V

    .line 65
    :cond_9
    const-string v1, "maxBufferSize"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 66
    invoke-static {v1}, Lcom/tencent/vod/flutter/FTXTransformation;->floatIsNotEmpty(Ljava/lang/Float;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 67
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXVodPlayConfig;->setMaxBufferSize(F)V

    .line 68
    :cond_a
    const-string v1, "maxPreloadSize"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 69
    invoke-static {v1}, Lcom/tencent/vod/flutter/FTXTransformation;->floatIsNotEmpty(Ljava/lang/Float;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 70
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXVodPlayConfig;->setMaxPreloadSize(F)V

    .line 71
    :cond_b
    const-string v1, "firstStartPlayBufferTime"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_c

    .line 72
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXVodPlayConfig;->setFirstStartPlayBufferTime(I)V

    .line 73
    :cond_c
    const-string v1, "nextStartPlayBufferTime"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_d

    .line 74
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXVodPlayConfig;->setNextStartPlayBufferTime(I)V

    .line 75
    :cond_d
    const-string v1, "overlayKey"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 76
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 77
    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXVodPlayConfig;->setOverlayKey(Ljava/lang/String;)V

    .line 78
    :cond_e
    const-string v1, "overlayIv"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 79
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 80
    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXVodPlayConfig;->setOverlayIv(Ljava/lang/String;)V

    .line 81
    :cond_f
    const-string v1, "extInfoMap"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_10

    .line 82
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 83
    :cond_10
    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXVodPlayConfig;->setExtInfo(Ljava/util/Map;)V

    .line 84
    const-string v1, "enableRenderProcess"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_11

    .line 85
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXVodPlayConfig;->setEnableRenderProcess(Z)V

    .line 86
    :cond_11
    const-string v1, "preferredResolution"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_12

    .line 87
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 88
    invoke-virtual {v0, v1, v2}, Lcom/tencent/rtmp/TXVodPlayConfig;->setPreferredResolution(J)V

    :cond_12
    return-object v0
.end method
