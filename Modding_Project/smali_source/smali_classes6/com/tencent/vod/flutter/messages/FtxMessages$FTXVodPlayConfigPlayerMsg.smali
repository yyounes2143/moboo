.class public final Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/vod/flutter/messages/FtxMessages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FTXVodPlayConfigPlayerMsg"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg$Builder;
    }
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

.method public static fromList(Ljava/util/ArrayList;)Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;
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
            "Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;-><init>()V

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
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->setPlayerId(Ljava/lang/Long;)V

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
    check-cast v1, Ljava/lang/Long;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->setConnectRetryCount(Ljava/lang/Long;)V

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
    check-cast v1, Ljava/lang/Long;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->setConnectRetryInterval(Ljava/lang/Long;)V

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
    check-cast v1, Ljava/lang/Long;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->setTimeout(Ljava/lang/Long;)V

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
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->setPlayerType(Ljava/lang/Long;)V

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
    check-cast v1, Ljava/util/Map;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->setHeaders(Ljava/util/Map;)V

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
    check-cast v1, Ljava/lang/Boolean;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->setEnableAccurateSeek(Ljava/lang/Boolean;)V

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
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->setAutoRotate(Ljava/lang/Boolean;)V

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
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->setSmoothSwitchBitrate(Ljava/lang/Boolean;)V

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
    check-cast v1, Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->setCacheMp4ExtName(Ljava/lang/String;)V

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
    check-cast v1, Ljava/lang/Long;

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->setProgressInterval(Ljava/lang/Long;)V

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
    move-result-object v1

    .line 125
    check-cast v1, Ljava/lang/Double;

    .line 126
    .line 127
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->setMaxBufferSize(Ljava/lang/Double;)V

    .line 128
    .line 129
    .line 130
    const/16 v1, 0xc

    .line 131
    .line 132
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    check-cast v1, Ljava/lang/Double;

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->setMaxPreloadSize(Ljava/lang/Double;)V

    .line 139
    .line 140
    .line 141
    const/16 v1, 0xd

    .line 142
    .line 143
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    check-cast v1, Ljava/lang/Long;

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->setFirstStartPlayBufferTime(Ljava/lang/Long;)V

    .line 150
    .line 151
    .line 152
    const/16 v1, 0xe

    .line 153
    .line 154
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    check-cast v1, Ljava/lang/Long;

    .line 159
    .line 160
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->setNextStartPlayBufferTime(Ljava/lang/Long;)V

    .line 161
    .line 162
    .line 163
    const/16 v1, 0xf

    .line 164
    .line 165
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    check-cast v1, Ljava/lang/String;

    .line 170
    .line 171
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->setOverlayKey(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    const/16 v1, 0x10

    .line 175
    .line 176
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    check-cast v1, Ljava/lang/String;

    .line 181
    .line 182
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->setOverlayIv(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    const/16 v1, 0x11

    .line 186
    .line 187
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    check-cast v1, Ljava/util/Map;

    .line 192
    .line 193
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->setExtInfoMap(Ljava/util/Map;)V

    .line 194
    .line 195
    .line 196
    const/16 v1, 0x12

    .line 197
    .line 198
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    check-cast v1, Ljava/lang/Boolean;

    .line 203
    .line 204
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->setEnableRenderProcess(Ljava/lang/Boolean;)V

    .line 205
    .line 206
    .line 207
    const/16 v1, 0x13

    .line 208
    .line 209
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    check-cast v1, Ljava/lang/Long;

    .line 214
    .line 215
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->setPreferredResolution(Ljava/lang/Long;)V

    .line 216
    .line 217
    .line 218
    const/16 v1, 0x14

    .line 219
    .line 220
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    check-cast v1, Ljava/lang/Long;

    .line 225
    .line 226
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->setMediaType(Ljava/lang/Long;)V

    .line 227
    .line 228
    .line 229
    const/16 v1, 0x15

    .line 230
    .line 231
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    check-cast v1, Ljava/lang/Long;

    .line 236
    .line 237
    invoke-virtual {v0, v1}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->setEncryptedMp4Level(Ljava/lang/Long;)V

    .line 238
    .line 239
    .line 240
    const/16 v1, 0x16

    .line 241
    .line 242
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object p0

    .line 246
    check-cast p0, Ljava/lang/String;

    .line 247
    .line 248
    invoke-virtual {v0, p0}, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->setPreferAudioTrack(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
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
    const-class v3, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;

    .line 13
    .line 14
    if-eq v3, v2, :cond_1

    .line 15
    .line 16
    goto/16 :goto_0

    .line 17
    .line 18
    :cond_1
    check-cast p1, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->playerId:Ljava/lang/Long;

    .line 21
    .line 22
    iget-object v3, p1, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->playerId:Ljava/lang/Long;

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
    iget-object v2, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->connectRetryCount:Ljava/lang/Long;

    .line 31
    .line 32
    iget-object v3, p1, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->connectRetryCount:Ljava/lang/Long;

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
    iget-object v2, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->connectRetryInterval:Ljava/lang/Long;

    .line 41
    .line 42
    iget-object v3, p1, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->connectRetryInterval:Ljava/lang/Long;

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
    iget-object v2, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->timeout:Ljava/lang/Long;

    .line 51
    .line 52
    iget-object v3, p1, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->timeout:Ljava/lang/Long;

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
    iget-object v2, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->playerType:Ljava/lang/Long;

    .line 61
    .line 62
    iget-object v3, p1, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->playerType:Ljava/lang/Long;

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
    iget-object v2, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->headers:Ljava/util/Map;

    .line 71
    .line 72
    iget-object v3, p1, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->headers:Ljava/util/Map;

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
    iget-object v2, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->enableAccurateSeek:Ljava/lang/Boolean;

    .line 81
    .line 82
    iget-object v3, p1, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->enableAccurateSeek:Ljava/lang/Boolean;

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
    iget-object v2, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->autoRotate:Ljava/lang/Boolean;

    .line 91
    .line 92
    iget-object v3, p1, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->autoRotate:Ljava/lang/Boolean;

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
    iget-object v2, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->smoothSwitchBitrate:Ljava/lang/Boolean;

    .line 101
    .line 102
    iget-object v3, p1, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->smoothSwitchBitrate:Ljava/lang/Boolean;

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
    iget-object v2, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->cacheMp4ExtName:Ljava/lang/String;

    .line 111
    .line 112
    iget-object v3, p1, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->cacheMp4ExtName:Ljava/lang/String;

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
    iget-object v2, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->progressInterval:Ljava/lang/Long;

    .line 121
    .line 122
    iget-object v3, p1, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->progressInterval:Ljava/lang/Long;

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
    iget-object v2, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->maxBufferSize:Ljava/lang/Double;

    .line 131
    .line 132
    iget-object v3, p1, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->maxBufferSize:Ljava/lang/Double;

    .line 133
    .line 134
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    if-eqz v2, :cond_2

    .line 139
    .line 140
    iget-object v2, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->maxPreloadSize:Ljava/lang/Double;

    .line 141
    .line 142
    iget-object v3, p1, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->maxPreloadSize:Ljava/lang/Double;

    .line 143
    .line 144
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    if-eqz v2, :cond_2

    .line 149
    .line 150
    iget-object v2, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->firstStartPlayBufferTime:Ljava/lang/Long;

    .line 151
    .line 152
    iget-object v3, p1, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->firstStartPlayBufferTime:Ljava/lang/Long;

    .line 153
    .line 154
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    if-eqz v2, :cond_2

    .line 159
    .line 160
    iget-object v2, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->nextStartPlayBufferTime:Ljava/lang/Long;

    .line 161
    .line 162
    iget-object v3, p1, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->nextStartPlayBufferTime:Ljava/lang/Long;

    .line 163
    .line 164
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    if-eqz v2, :cond_2

    .line 169
    .line 170
    iget-object v2, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->overlayKey:Ljava/lang/String;

    .line 171
    .line 172
    iget-object v3, p1, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->overlayKey:Ljava/lang/String;

    .line 173
    .line 174
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    if-eqz v2, :cond_2

    .line 179
    .line 180
    iget-object v2, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->overlayIv:Ljava/lang/String;

    .line 181
    .line 182
    iget-object v3, p1, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->overlayIv:Ljava/lang/String;

    .line 183
    .line 184
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    if-eqz v2, :cond_2

    .line 189
    .line 190
    iget-object v2, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->extInfoMap:Ljava/util/Map;

    .line 191
    .line 192
    iget-object v3, p1, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->extInfoMap:Ljava/util/Map;

    .line 193
    .line 194
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    if-eqz v2, :cond_2

    .line 199
    .line 200
    iget-object v2, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->enableRenderProcess:Ljava/lang/Boolean;

    .line 201
    .line 202
    iget-object v3, p1, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->enableRenderProcess:Ljava/lang/Boolean;

    .line 203
    .line 204
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    if-eqz v2, :cond_2

    .line 209
    .line 210
    iget-object v2, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->preferredResolution:Ljava/lang/Long;

    .line 211
    .line 212
    iget-object v3, p1, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->preferredResolution:Ljava/lang/Long;

    .line 213
    .line 214
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v2

    .line 218
    if-eqz v2, :cond_2

    .line 219
    .line 220
    iget-object v2, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->mediaType:Ljava/lang/Long;

    .line 221
    .line 222
    iget-object v3, p1, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->mediaType:Ljava/lang/Long;

    .line 223
    .line 224
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    if-eqz v2, :cond_2

    .line 229
    .line 230
    iget-object v2, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->encryptedMp4Level:Ljava/lang/Long;

    .line 231
    .line 232
    iget-object v3, p1, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->encryptedMp4Level:Ljava/lang/Long;

    .line 233
    .line 234
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v2

    .line 238
    if-eqz v2, :cond_2

    .line 239
    .line 240
    iget-object v2, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->preferAudioTrack:Ljava/lang/String;

    .line 241
    .line 242
    iget-object p1, p1, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->preferAudioTrack:Ljava/lang/String;

    .line 243
    .line 244
    invoke-static {v2, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result p1

    .line 248
    if-eqz p1, :cond_2

    .line 249
    .line 250
    return v0

    .line 251
    :cond_2
    :goto_0
    return v1
.end method

.method public getAutoRotate()Ljava/lang/Boolean;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->autoRotate:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCacheMp4ExtName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->cacheMp4ExtName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getConnectRetryCount()Ljava/lang/Long;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->connectRetryCount:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public getConnectRetryInterval()Ljava/lang/Long;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->connectRetryInterval:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEnableAccurateSeek()Ljava/lang/Boolean;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->enableAccurateSeek:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEnableRenderProcess()Ljava/lang/Boolean;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->enableRenderProcess:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEncryptedMp4Level()Ljava/lang/Long;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->encryptedMp4Level:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExtInfoMap()Ljava/util/Map;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->extInfoMap:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFirstStartPlayBufferTime()Ljava/lang/Long;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->firstStartPlayBufferTime:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->headers:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMaxBufferSize()Ljava/lang/Double;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->maxBufferSize:Ljava/lang/Double;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMaxPreloadSize()Ljava/lang/Double;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->maxPreloadSize:Ljava/lang/Double;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMediaType()Ljava/lang/Long;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->mediaType:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNextStartPlayBufferTime()Ljava/lang/Long;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->nextStartPlayBufferTime:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOverlayIv()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->overlayIv:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOverlayKey()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->overlayKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlayerId()Ljava/lang/Long;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->playerId:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlayerType()Ljava/lang/Long;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->playerType:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPreferAudioTrack()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->preferAudioTrack:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPreferredResolution()Ljava/lang/Long;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->preferredResolution:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public getProgressInterval()Ljava/lang/Long;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->progressInterval:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSmoothSwitchBitrate()Ljava/lang/Boolean;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->smoothSwitchBitrate:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTimeout()Ljava/lang/Long;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->timeout:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->playerId:Ljava/lang/Long;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->connectRetryCount:Ljava/lang/Long;

    .line 6
    .line 7
    iget-object v3, v0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->connectRetryInterval:Ljava/lang/Long;

    .line 8
    .line 9
    iget-object v4, v0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->timeout:Ljava/lang/Long;

    .line 10
    .line 11
    iget-object v5, v0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->playerType:Ljava/lang/Long;

    .line 12
    .line 13
    iget-object v6, v0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->headers:Ljava/util/Map;

    .line 14
    .line 15
    iget-object v7, v0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->enableAccurateSeek:Ljava/lang/Boolean;

    .line 16
    .line 17
    iget-object v8, v0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->autoRotate:Ljava/lang/Boolean;

    .line 18
    .line 19
    iget-object v9, v0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->smoothSwitchBitrate:Ljava/lang/Boolean;

    .line 20
    .line 21
    iget-object v10, v0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->cacheMp4ExtName:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v11, v0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->progressInterval:Ljava/lang/Long;

    .line 24
    .line 25
    iget-object v12, v0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->maxBufferSize:Ljava/lang/Double;

    .line 26
    .line 27
    iget-object v13, v0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->maxPreloadSize:Ljava/lang/Double;

    .line 28
    .line 29
    iget-object v14, v0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->firstStartPlayBufferTime:Ljava/lang/Long;

    .line 30
    .line 31
    iget-object v15, v0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->nextStartPlayBufferTime:Ljava/lang/Long;

    .line 32
    .line 33
    move-object/from16 v16, v1

    .line 34
    .line 35
    iget-object v1, v0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->overlayKey:Ljava/lang/String;

    .line 36
    .line 37
    move-object/from16 v17, v1

    .line 38
    .line 39
    iget-object v1, v0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->overlayIv:Ljava/lang/String;

    .line 40
    .line 41
    move-object/from16 v18, v1

    .line 42
    .line 43
    iget-object v1, v0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->extInfoMap:Ljava/util/Map;

    .line 44
    .line 45
    move-object/from16 v19, v1

    .line 46
    .line 47
    iget-object v1, v0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->enableRenderProcess:Ljava/lang/Boolean;

    .line 48
    .line 49
    move-object/from16 v20, v1

    .line 50
    .line 51
    iget-object v1, v0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->preferredResolution:Ljava/lang/Long;

    .line 52
    .line 53
    move-object/from16 v21, v1

    .line 54
    .line 55
    iget-object v1, v0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->mediaType:Ljava/lang/Long;

    .line 56
    .line 57
    move-object/from16 v22, v1

    .line 58
    .line 59
    iget-object v1, v0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->encryptedMp4Level:Ljava/lang/Long;

    .line 60
    .line 61
    move-object/from16 v23, v1

    .line 62
    .line 63
    iget-object v1, v0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->preferAudioTrack:Ljava/lang/String;

    .line 64
    .line 65
    const/16 v0, 0x17

    .line 66
    .line 67
    new-array v0, v0, [Ljava/lang/Object;

    .line 68
    .line 69
    const/16 v24, 0x0

    .line 70
    .line 71
    aput-object v16, v0, v24

    .line 72
    .line 73
    const/16 v16, 0x1

    .line 74
    .line 75
    aput-object v2, v0, v16

    .line 76
    .line 77
    const/4 v2, 0x2

    .line 78
    aput-object v3, v0, v2

    .line 79
    .line 80
    const/4 v2, 0x3

    .line 81
    aput-object v4, v0, v2

    .line 82
    .line 83
    const/4 v2, 0x4

    .line 84
    aput-object v5, v0, v2

    .line 85
    .line 86
    const/4 v2, 0x5

    .line 87
    aput-object v6, v0, v2

    .line 88
    .line 89
    const/4 v2, 0x6

    .line 90
    aput-object v7, v0, v2

    .line 91
    .line 92
    const/4 v2, 0x7

    .line 93
    aput-object v8, v0, v2

    .line 94
    .line 95
    const/16 v2, 0x8

    .line 96
    .line 97
    aput-object v9, v0, v2

    .line 98
    .line 99
    const/16 v2, 0x9

    .line 100
    .line 101
    aput-object v10, v0, v2

    .line 102
    .line 103
    const/16 v2, 0xa

    .line 104
    .line 105
    aput-object v11, v0, v2

    .line 106
    .line 107
    const/16 v2, 0xb

    .line 108
    .line 109
    aput-object v12, v0, v2

    .line 110
    .line 111
    const/16 v2, 0xc

    .line 112
    .line 113
    aput-object v13, v0, v2

    .line 114
    .line 115
    const/16 v2, 0xd

    .line 116
    .line 117
    aput-object v14, v0, v2

    .line 118
    .line 119
    const/16 v2, 0xe

    .line 120
    .line 121
    aput-object v15, v0, v2

    .line 122
    .line 123
    const/16 v2, 0xf

    .line 124
    .line 125
    aput-object v17, v0, v2

    .line 126
    .line 127
    const/16 v2, 0x10

    .line 128
    .line 129
    aput-object v18, v0, v2

    .line 130
    .line 131
    const/16 v2, 0x11

    .line 132
    .line 133
    aput-object v19, v0, v2

    .line 134
    .line 135
    const/16 v2, 0x12

    .line 136
    .line 137
    aput-object v20, v0, v2

    .line 138
    .line 139
    const/16 v2, 0x13

    .line 140
    .line 141
    aput-object v21, v0, v2

    .line 142
    .line 143
    const/16 v2, 0x14

    .line 144
    .line 145
    aput-object v22, v0, v2

    .line 146
    .line 147
    const/16 v2, 0x15

    .line 148
    .line 149
    aput-object v23, v0, v2

    .line 150
    .line 151
    const/16 v2, 0x16

    .line 152
    .line 153
    aput-object v1, v0, v2

    .line 154
    .line 155
    invoke-static {v0}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    return v0
.end method

.method public setAutoRotate(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->autoRotate:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public setCacheMp4ExtName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->cacheMp4ExtName:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->connectRetryCount:Ljava/lang/Long;

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
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->connectRetryInterval:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public setEnableAccurateSeek(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->enableAccurateSeek:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public setEnableRenderProcess(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->enableRenderProcess:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public setEncryptedMp4Level(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->encryptedMp4Level:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public setExtInfoMap(Ljava/util/Map;)V
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->extInfoMap:Ljava/util/Map;

    .line 2
    .line 3
    return-void
.end method

.method public setFirstStartPlayBufferTime(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->firstStartPlayBufferTime:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public setHeaders(Ljava/util/Map;)V
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->headers:Ljava/util/Map;

    .line 2
    .line 3
    return-void
.end method

.method public setMaxBufferSize(Ljava/lang/Double;)V
    .locals 0
    .param p1    # Ljava/lang/Double;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->maxBufferSize:Ljava/lang/Double;

    .line 2
    .line 3
    return-void
.end method

.method public setMaxPreloadSize(Ljava/lang/Double;)V
    .locals 0
    .param p1    # Ljava/lang/Double;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->maxPreloadSize:Ljava/lang/Double;

    .line 2
    .line 3
    return-void
.end method

.method public setMediaType(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->mediaType:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public setNextStartPlayBufferTime(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->nextStartPlayBufferTime:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public setOverlayIv(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->overlayIv:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setOverlayKey(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->overlayKey:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->playerId:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public setPlayerType(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->playerType:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public setPreferAudioTrack(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->preferAudioTrack:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPreferredResolution(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->preferredResolution:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public setProgressInterval(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->progressInterval:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public setSmoothSwitchBitrate(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->smoothSwitchBitrate:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public setTimeout(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->timeout:Ljava/lang/Long;

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
    const/16 v1, 0x17

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->playerId:Ljava/lang/Long;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->connectRetryCount:Ljava/lang/Long;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->connectRetryInterval:Ljava/lang/Long;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->timeout:Ljava/lang/Long;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->playerType:Ljava/lang/Long;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->headers:Ljava/util/Map;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->enableAccurateSeek:Ljava/lang/Boolean;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->autoRotate:Ljava/lang/Boolean;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->smoothSwitchBitrate:Ljava/lang/Boolean;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->cacheMp4ExtName:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->progressInterval:Ljava/lang/Long;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->maxBufferSize:Ljava/lang/Double;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->maxPreloadSize:Ljava/lang/Double;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->firstStartPlayBufferTime:Ljava/lang/Long;

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->nextStartPlayBufferTime:Ljava/lang/Long;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->overlayKey:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->overlayIv:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->extInfoMap:Ljava/util/Map;

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->enableRenderProcess:Ljava/lang/Boolean;

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->preferredResolution:Ljava/lang/Long;

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->mediaType:Ljava/lang/Long;

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->encryptedMp4Level:Ljava/lang/Long;

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    iget-object v1, p0, Lcom/tencent/vod/flutter/messages/FtxMessages$FTXVodPlayConfigPlayerMsg;->preferAudioTrack:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    return-object v0
.end method
