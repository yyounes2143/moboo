.class public Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CommonParams"
.end annotation


# instance fields
.field public appVersionString:Ljava/lang/String;

.field public cdnIdInt:I

.field public cdnIpString:Ljava/lang/String;

.field public cdnUipString:Ljava/lang/String;

.field public deviceNameString:Ljava/lang/String;

.field public deviceResolutionString:Ljava/lang/String;

.field public downloadTypeInt:I

.field public flowIdString:Ljava/lang/String;

.field public guidString:Ljava/lang/String;

.field public loginTypeInt:I

.field public mediaDurationFloat:F

.field public mediaFormatInt:I

.field public mediaRateInt:I

.field public mediaResolutionString:Ljava/lang/String;

.field public networkSpeedInt:I

.field public networkTypeInt:I

.field public onlineInt:I

.field public osVersionString:Ljava/lang/String;

.field public p2pInt:I

.field public p2pVersionString:Ljava/lang/String;

.field public platformLong:J

.field public playNoString:Ljava/lang/String;

.field public playTypeInt:I

.field public playerTypeInt:I

.field public playerVersionString:Ljava/lang/String;

.field public proto:Ljava/lang/String;

.field public protover:Ljava/lang/String;

.field public qxOpenIdString:Ljava/lang/String;

.field public scenesId:I

.field public seqInt:I

.field public signalStrengthInt:I

.field public stepInt:I

.field public testIdInt:I

.field final synthetic this$0:Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams;

.field public uinString:Ljava/lang/String;

.field public uipString:Ljava/lang/String;

.field public vidString:Ljava/lang/String;

.field public wxOpenIdString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->this$0:Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->seqInt:I

    .line 8
    .line 9
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
    const-string v0, "step"

    .line 2
    .line 3
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->stepInt:I

    .line 4
    .line 5
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    const-string v0, "seq"

    .line 9
    .line 10
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->seqInt:I

    .line 11
    .line 12
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    const-string v0, "platform"

    .line 16
    .line 17
    iget-wide v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->platformLong:J

    .line 18
    .line 19
    invoke-interface {p1, v0, v1, v2}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;J)V

    .line 20
    .line 21
    .line 22
    const-string v0, "flowid"

    .line 23
    .line 24
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->flowIdString:Ljava/lang/String;

    .line 25
    .line 26
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v0, "playno"

    .line 30
    .line 31
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->playNoString:Ljava/lang/String;

    .line 32
    .line 33
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v0, "uin"

    .line 37
    .line 38
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->uinString:Ljava/lang/String;

    .line 39
    .line 40
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string v0, "QXopenid"

    .line 44
    .line 45
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->qxOpenIdString:Ljava/lang/String;

    .line 46
    .line 47
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string v0, "WXopenid"

    .line 51
    .line 52
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->wxOpenIdString:Ljava/lang/String;

    .line 53
    .line 54
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string v0, "logintype"

    .line 58
    .line 59
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->loginTypeInt:I

    .line 60
    .line 61
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;I)V

    .line 62
    .line 63
    .line 64
    const-string v0, "guid"

    .line 65
    .line 66
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->guidString:Ljava/lang/String;

    .line 67
    .line 68
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const-string v0, "uip"

    .line 72
    .line 73
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->uipString:Ljava/lang/String;

    .line 74
    .line 75
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const-string v0, "cdnuip"

    .line 79
    .line 80
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->cdnUipString:Ljava/lang/String;

    .line 81
    .line 82
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const-string v0, "cdnip"

    .line 86
    .line 87
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->cdnIpString:Ljava/lang/String;

    .line 88
    .line 89
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    const-string v0, "online"

    .line 93
    .line 94
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->onlineInt:I

    .line 95
    .line 96
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;I)V

    .line 97
    .line 98
    .line 99
    const-string v0, "p2p"

    .line 100
    .line 101
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->p2pInt:I

    .line 102
    .line 103
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;I)V

    .line 104
    .line 105
    .line 106
    const-string v0, "sstrength"

    .line 107
    .line 108
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->signalStrengthInt:I

    .line 109
    .line 110
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;I)V

    .line 111
    .line 112
    .line 113
    const-string v0, "network"

    .line 114
    .line 115
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->networkTypeInt:I

    .line 116
    .line 117
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;I)V

    .line 118
    .line 119
    .line 120
    const-string v0, "speed"

    .line 121
    .line 122
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->networkSpeedInt:I

    .line 123
    .line 124
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;I)V

    .line 125
    .line 126
    .line 127
    const-string v0, "device"

    .line 128
    .line 129
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->deviceNameString:Ljava/lang/String;

    .line 130
    .line 131
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    const-string v0, "resolution"

    .line 135
    .line 136
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->deviceResolutionString:Ljava/lang/String;

    .line 137
    .line 138
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    const-string v0, "testid"

    .line 142
    .line 143
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->testIdInt:I

    .line 144
    .line 145
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;I)V

    .line 146
    .line 147
    .line 148
    const-string v0, "osver"

    .line 149
    .line 150
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->osVersionString:Ljava/lang/String;

    .line 151
    .line 152
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    const-string v0, "p2pver"

    .line 156
    .line 157
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->p2pVersionString:Ljava/lang/String;

    .line 158
    .line 159
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    const-string v0, "appver"

    .line 163
    .line 164
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->appVersionString:Ljava/lang/String;

    .line 165
    .line 166
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    const-string v0, "playerver"

    .line 170
    .line 171
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->playerVersionString:Ljava/lang/String;

    .line 172
    .line 173
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    const-string v0, "playertype"

    .line 177
    .line 178
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->playerTypeInt:I

    .line 179
    .line 180
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;I)V

    .line 181
    .line 182
    .line 183
    const-string v0, "cdnid"

    .line 184
    .line 185
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->cdnIdInt:I

    .line 186
    .line 187
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;I)V

    .line 188
    .line 189
    .line 190
    const-string v0, "scenesid"

    .line 191
    .line 192
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->scenesId:I

    .line 193
    .line 194
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;I)V

    .line 195
    .line 196
    .line 197
    const-string v0, "playtype"

    .line 198
    .line 199
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->playTypeInt:I

    .line 200
    .line 201
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;I)V

    .line 202
    .line 203
    .line 204
    const-string v0, "dltype"

    .line 205
    .line 206
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->downloadTypeInt:I

    .line 207
    .line 208
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;I)V

    .line 209
    .line 210
    .line 211
    const-string v0, "vid"

    .line 212
    .line 213
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->vidString:Ljava/lang/String;

    .line 214
    .line 215
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    const-string v0, "definition"

    .line 219
    .line 220
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->mediaResolutionString:Ljava/lang/String;

    .line 221
    .line 222
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    const-string v0, "fmt"

    .line 226
    .line 227
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->mediaFormatInt:I

    .line 228
    .line 229
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;I)V

    .line 230
    .line 231
    .line 232
    const-string v0, "rate"

    .line 233
    .line 234
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->mediaRateInt:I

    .line 235
    .line 236
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;I)V

    .line 237
    .line 238
    .line 239
    const-string v0, "duration"

    .line 240
    .line 241
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->mediaDurationFloat:F

    .line 242
    .line 243
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;F)V

    .line 244
    .line 245
    .line 246
    const-string v0, "proto"

    .line 247
    .line 248
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->proto:Ljava/lang/String;

    .line 249
    .line 250
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    const-string v0, "protover"

    .line 254
    .line 255
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->protover:Ljava/lang/String;

    .line 256
    .line 257
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    return-void
.end method

.method public reset()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->stepInt:I

    .line 3
    .line 4
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->seqInt:I

    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    iput-wide v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->platformLong:J

    .line 9
    .line 10
    const-string v1, ""

    .line 11
    .line 12
    iput-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->flowIdString:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->playNoString:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->uinString:Ljava/lang/String;

    .line 17
    .line 18
    iput-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->qxOpenIdString:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->wxOpenIdString:Ljava/lang/String;

    .line 21
    .line 22
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->loginTypeInt:I

    .line 23
    .line 24
    iput-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->guidString:Ljava/lang/String;

    .line 25
    .line 26
    iput-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->uipString:Ljava/lang/String;

    .line 27
    .line 28
    iput-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->cdnUipString:Ljava/lang/String;

    .line 29
    .line 30
    iput-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->cdnIpString:Ljava/lang/String;

    .line 31
    .line 32
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->onlineInt:I

    .line 33
    .line 34
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->p2pInt:I

    .line 35
    .line 36
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->signalStrengthInt:I

    .line 37
    .line 38
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->networkTypeInt:I

    .line 39
    .line 40
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->networkSpeedInt:I

    .line 41
    .line 42
    iput-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->deviceNameString:Ljava/lang/String;

    .line 43
    .line 44
    iput-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->deviceResolutionString:Ljava/lang/String;

    .line 45
    .line 46
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->testIdInt:I

    .line 47
    .line 48
    iput-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->osVersionString:Ljava/lang/String;

    .line 49
    .line 50
    iput-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->p2pVersionString:Ljava/lang/String;

    .line 51
    .line 52
    iput-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->appVersionString:Ljava/lang/String;

    .line 53
    .line 54
    iput-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->playerVersionString:Ljava/lang/String;

    .line 55
    .line 56
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->playerTypeInt:I

    .line 57
    .line 58
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->cdnIdInt:I

    .line 59
    .line 60
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->scenesId:I

    .line 61
    .line 62
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->downloadTypeInt:I

    .line 63
    .line 64
    iput-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->vidString:Ljava/lang/String;

    .line 65
    .line 66
    iput-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->mediaResolutionString:Ljava/lang/String;

    .line 67
    .line 68
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->mediaFormatInt:I

    .line 69
    .line 70
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->mediaRateInt:I

    .line 71
    .line 72
    const/4 v0, 0x0

    .line 73
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->mediaDurationFloat:F

    .line 74
    .line 75
    iput-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->proto:Ljava/lang/String;

    .line 76
    .line 77
    iput-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/TPReportParams$CommonParams;->protover:Ljava/lang/String;

    .line 78
    .line 79
    return-void
.end method
