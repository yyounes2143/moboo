.class public Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$LiveExParam;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LiveExParam"
.end annotation


# instance fields
.field adPlayLengthInt:I

.field blockCountInt:I

.field blockTimeInt:I

.field cdnServerString:Ljava/lang/String;

.field connectTimeInt:I

.field contentIdInt:I

.field defSwitchString:Ljava/lang/String;

.field deviceTypeInt:I

.field downSpeedInt:I

.field downloadServerIpString:Ljava/lang/String;

.field downloadUrl:Ljava/lang/String;

.field errCodeInt:I

.field extraInfoString:Ljava/lang/String;

.field freeTypeInt:I

.field fullErrCodeString:Ljava/lang/String;

.field getStreamDurationInt:I

.field getSyncFrameDurationInt:I

.field getUrlTimeInt:I

.field isLookBackInt:I

.field isStreamP2PInt:I

.field isUseP2PInt:I

.field isUserPayInt:I

.field liveDelayInt:I

.field liveProgramIdInt:I

.field liveTagInt:I

.field liveTypeInt:I

.field loadingTimeLong:J

.field maxSpeedInt:I

.field networkTypeInt:I

.field playTimeInt:I

.field playerVersionString:Ljava/lang/String;

.field prePlayLengthInt:I

.field reconnectCntInt:I

.field reportTimeLong:J

.field spanId:Ljava/lang/String;

.field streamIdInt:I

.field testSpeedInt:I

.field final synthetic this$0:Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams;

.field tuid:Ljava/lang/String;

.field userIpString:Ljava/lang/String;

.field userQXString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$LiveExParam;->this$0:Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public paramsToJson(Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    return-void
.end method

.method public paramsToProperties(Lcom/tencent/thumbplayer/tcmedia/common/a/a;)V
    .locals 3

    .line 1
    const-string v0, "ftime"

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$LiveExParam;->reportTimeLong:J

    .line 4
    .line 5
    invoke-interface {p1, v0, v1, v2}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;J)V

    .line 6
    .line 7
    .line 8
    const-string v0, "sip"

    .line 9
    .line 10
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$LiveExParam;->userIpString:Ljava/lang/String;

    .line 11
    .line 12
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "iqx"

    .line 16
    .line 17
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$LiveExParam;->userQXString:Ljava/lang/String;

    .line 18
    .line 19
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v0, "prdlength"

    .line 23
    .line 24
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$LiveExParam;->prePlayLengthInt:I

    .line 25
    .line 26
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    const-string v0, "playad"

    .line 30
    .line 31
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$LiveExParam;->adPlayLengthInt:I

    .line 32
    .line 33
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    const-string v0, "fplayerver"

    .line 37
    .line 38
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$LiveExParam;->playerVersionString:Ljava/lang/String;

    .line 39
    .line 40
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string v0, "dsip"

    .line 44
    .line 45
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$LiveExParam;->downloadServerIpString:Ljava/lang/String;

    .line 46
    .line 47
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string v0, "devtype"

    .line 51
    .line 52
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$LiveExParam;->deviceTypeInt:I

    .line 53
    .line 54
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    const-string v0, "nettype"

    .line 58
    .line 59
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$LiveExParam;->networkTypeInt:I

    .line 60
    .line 61
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;I)V

    .line 62
    .line 63
    .line 64
    const-string v0, "freetype"

    .line 65
    .line 66
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$LiveExParam;->freeTypeInt:I

    .line 67
    .line 68
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;I)V

    .line 69
    .line 70
    .line 71
    const-string v0, "use_p2p"

    .line 72
    .line 73
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$LiveExParam;->isUseP2PInt:I

    .line 74
    .line 75
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;I)V

    .line 76
    .line 77
    .line 78
    const-string v0, "p2p_play"

    .line 79
    .line 80
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$LiveExParam;->isStreamP2PInt:I

    .line 81
    .line 82
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;I)V

    .line 83
    .line 84
    .line 85
    const-string v0, "livepid"

    .line 86
    .line 87
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$LiveExParam;->liveProgramIdInt:I

    .line 88
    .line 89
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;I)V

    .line 90
    .line 91
    .line 92
    const-string v0, "sid"

    .line 93
    .line 94
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$LiveExParam;->streamIdInt:I

    .line 95
    .line 96
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;I)V

    .line 97
    .line 98
    .line 99
    const-string v0, "contentid"

    .line 100
    .line 101
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$LiveExParam;->contentIdInt:I

    .line 102
    .line 103
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;I)V

    .line 104
    .line 105
    .line 106
    const-string v0, "playtime"

    .line 107
    .line 108
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$LiveExParam;->playTimeInt:I

    .line 109
    .line 110
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;I)V

    .line 111
    .line 112
    .line 113
    const-string v0, "isuserpay"

    .line 114
    .line 115
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$LiveExParam;->isUserPayInt:I

    .line 116
    .line 117
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;I)V

    .line 118
    .line 119
    .line 120
    const-string v0, "switch"

    .line 121
    .line 122
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$LiveExParam;->defSwitchString:Ljava/lang/String;

    .line 123
    .line 124
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    const-string v0, "live_type"

    .line 128
    .line 129
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$LiveExParam;->liveTypeInt:I

    .line 130
    .line 131
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;I)V

    .line 132
    .line 133
    .line 134
    const-string v0, "xserverip"

    .line 135
    .line 136
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$LiveExParam;->cdnServerString:Ljava/lang/String;

    .line 137
    .line 138
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    const-string v0, "durl"

    .line 142
    .line 143
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$LiveExParam;->downloadUrl:Ljava/lang/String;

    .line 144
    .line 145
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    const-string v0, "lookback"

    .line 149
    .line 150
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$LiveExParam;->isLookBackInt:I

    .line 151
    .line 152
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;I)V

    .line 153
    .line 154
    .line 155
    const-string v0, "live_delay"

    .line 156
    .line 157
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$LiveExParam;->liveDelayInt:I

    .line 158
    .line 159
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;I)V

    .line 160
    .line 161
    .line 162
    const-string v0, "live_tag"

    .line 163
    .line 164
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$LiveExParam;->liveTagInt:I

    .line 165
    .line 166
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;I)V

    .line 167
    .line 168
    .line 169
    const-string v0, "extraInfo"

    .line 170
    .line 171
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$LiveExParam;->extraInfoString:Ljava/lang/String;

    .line 172
    .line 173
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    const-string v0, "cnntime"

    .line 177
    .line 178
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$LiveExParam;->connectTimeInt:I

    .line 179
    .line 180
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;I)V

    .line 181
    .line 182
    .line 183
    const-string v0, "maxspeed"

    .line 184
    .line 185
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$LiveExParam;->maxSpeedInt:I

    .line 186
    .line 187
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;I)V

    .line 188
    .line 189
    .line 190
    const-string v0, "testspeed"

    .line 191
    .line 192
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$LiveExParam;->testSpeedInt:I

    .line 193
    .line 194
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;I)V

    .line 195
    .line 196
    .line 197
    const-string v0, "downspeed"

    .line 198
    .line 199
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$LiveExParam;->downSpeedInt:I

    .line 200
    .line 201
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;I)V

    .line 202
    .line 203
    .line 204
    const-string v0, "recnncount"

    .line 205
    .line 206
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$LiveExParam;->reconnectCntInt:I

    .line 207
    .line 208
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;I)V

    .line 209
    .line 210
    .line 211
    const-string v0, "loadingtime"

    .line 212
    .line 213
    iget-wide v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$LiveExParam;->loadingTimeLong:J

    .line 214
    .line 215
    invoke-interface {p1, v0, v1, v2}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;J)V

    .line 216
    .line 217
    .line 218
    const-string v0, "blocktime"

    .line 219
    .line 220
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$LiveExParam;->blockTimeInt:I

    .line 221
    .line 222
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;I)V

    .line 223
    .line 224
    .line 225
    const-string v0, "blockcount"

    .line 226
    .line 227
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$LiveExParam;->blockCountInt:I

    .line 228
    .line 229
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;I)V

    .line 230
    .line 231
    .line 232
    const-string v0, "errorcode"

    .line 233
    .line 234
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$LiveExParam;->errCodeInt:I

    .line 235
    .line 236
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;I)V

    .line 237
    .line 238
    .line 239
    const-string v0, "geturltime"

    .line 240
    .line 241
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$LiveExParam;->getUrlTimeInt:I

    .line 242
    .line 243
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;I)V

    .line 244
    .line 245
    .line 246
    const-string v0, "fullecode"

    .line 247
    .line 248
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$LiveExParam;->fullErrCodeString:Ljava/lang/String;

    .line 249
    .line 250
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    const-string v0, "get_stream_data_duration"

    .line 254
    .line 255
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$LiveExParam;->getStreamDurationInt:I

    .line 256
    .line 257
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;I)V

    .line 258
    .line 259
    .line 260
    const-string v0, "get_sync_frame_duration"

    .line 261
    .line 262
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$LiveExParam;->getSyncFrameDurationInt:I

    .line 263
    .line 264
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;I)V

    .line 265
    .line 266
    .line 267
    const-string v0, "spanId"

    .line 268
    .line 269
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$LiveExParam;->spanId:Ljava/lang/String;

    .line 270
    .line 271
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    const-string v0, "tuid"

    .line 275
    .line 276
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$LiveExParam;->tuid:Ljava/lang/String;

    .line 277
    .line 278
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    return-void
.end method

.method public reset()V
    .locals 0

    .line 1
    return-void
.end method
