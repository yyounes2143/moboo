.class Lcom/tencent/thumbplayer/tcmedia/c/e$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/tcmedia/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/thumbplayer/tcmedia/c/e;


# direct methods
.method public constructor <init>(Lcom/tencent/thumbplayer/tcmedia/c/e;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/c/e$a;->a:Lcom/tencent/thumbplayer/tcmedia/c/e;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/e$a;->a:Lcom/tencent/thumbplayer/tcmedia/c/e;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/c/e;->a(Lcom/tencent/thumbplayer/tcmedia/c/e;)Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p1, "TPThumbPlayer[TPPlayManagerImpl.java]"

    .line 10
    .line 11
    const-string v0, "handleMessage failed, mPlayListener is null and return"

    .line 12
    .line 13
    invoke-static {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    .line 18
    .line 19
    const/16 v1, 0x1064

    .line 20
    .line 21
    if-eq v0, v1, :cond_2

    .line 22
    .line 23
    const/16 v1, 0x1065

    .line 24
    .line 25
    if-eq v0, v1, :cond_1

    .line 26
    .line 27
    packed-switch v0, :pswitch_data_0

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p1, Lcom/tencent/thumbplayer/tcmedia/c/e$e;

    .line 34
    .line 35
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/e$a;->a:Lcom/tencent/thumbplayer/tcmedia/c/e;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/c/e;->a(Lcom/tencent/thumbplayer/tcmedia/c/e;)Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v1, p1, Lcom/tencent/thumbplayer/tcmedia/c/e$e;->a:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v1, Ljava/lang/String;

    .line 44
    .line 45
    invoke-interface {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;->getPlayInfo(Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object p1, p1, Lcom/tencent/thumbplayer/tcmedia/c/e$e;->b:Lcom/tencent/thumbplayer/tcmedia/utils/e;

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/utils/e;->a(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast p1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMsg$TPDownLoadProgressInfo;

    .line 58
    .line 59
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/e$a;->a:Lcom/tencent/thumbplayer/tcmedia/c/e;

    .line 60
    .line 61
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/c/e;->a(Lcom/tencent/thumbplayer/tcmedia/c/e;)Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iget-wide v2, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMsg$TPDownLoadProgressInfo;->playableDurationMS:J

    .line 66
    .line 67
    long-to-int v2, v2

    .line 68
    iget v3, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMsg$TPDownLoadProgressInfo;->downloadSpeedKBps:I

    .line 69
    .line 70
    iget-wide v4, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMsg$TPDownLoadProgressInfo;->currentDownloadSize:J

    .line 71
    .line 72
    iget-wide v6, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMsg$TPDownLoadProgressInfo;->totalFileSize:J

    .line 73
    .line 74
    iget-object v8, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMsg$TPDownLoadProgressInfo;->extraInfo:Ljava/lang/String;

    .line 75
    .line 76
    invoke-interface/range {v1 .. v8}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;->onDownloadProgressUpdate(IIJJLjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast p1, Lcom/tencent/thumbplayer/tcmedia/c/e$e;

    .line 83
    .line 84
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/e$a;->a:Lcom/tencent/thumbplayer/tcmedia/c/e;

    .line 85
    .line 86
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/c/e;->a(Lcom/tencent/thumbplayer/tcmedia/c/e;)Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iget-object v1, p1, Lcom/tencent/thumbplayer/tcmedia/c/e$e;->a:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v1, Ljava/lang/Long;

    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 95
    .line 96
    .line 97
    move-result-wide v1

    .line 98
    invoke-interface {v0, v1, v2}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;->getPlayInfo(J)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    iget-object p1, p1, Lcom/tencent/thumbplayer/tcmedia/c/e$e;->b:Lcom/tencent/thumbplayer/tcmedia/utils/e;

    .line 103
    .line 104
    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/utils/e;->a(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast p1, Lcom/tencent/thumbplayer/tcmedia/c/e$e;

    .line 111
    .line 112
    iget-object v0, p1, Lcom/tencent/thumbplayer/tcmedia/c/e$e;->a:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast v0, Lcom/tencent/thumbplayer/tcmedia/c/e$f;

    .line 115
    .line 116
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/c/e$a;->a:Lcom/tencent/thumbplayer/tcmedia/c/e;

    .line 117
    .line 118
    invoke-static {v1}, Lcom/tencent/thumbplayer/tcmedia/c/e;->a(Lcom/tencent/thumbplayer/tcmedia/c/e;)Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    iget v3, v0, Lcom/tencent/thumbplayer/tcmedia/c/e$f;->a:I

    .line 123
    .line 124
    iget-object v4, v0, Lcom/tencent/thumbplayer/tcmedia/c/e$f;->b:Ljava/lang/Object;

    .line 125
    .line 126
    iget-object v5, v0, Lcom/tencent/thumbplayer/tcmedia/c/e$f;->c:Ljava/lang/Object;

    .line 127
    .line 128
    iget-object v6, v0, Lcom/tencent/thumbplayer/tcmedia/c/e$f;->d:Ljava/lang/Object;

    .line 129
    .line 130
    iget-object v7, v0, Lcom/tencent/thumbplayer/tcmedia/c/e$f;->e:Ljava/lang/Object;

    .line 131
    .line 132
    invoke-interface/range {v2 .. v7}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;->onPlayCallback(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    iget-object p1, p1, Lcom/tencent/thumbplayer/tcmedia/c/e$e;->b:Lcom/tencent/thumbplayer/tcmedia/utils/e;

    .line 137
    .line 138
    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/utils/e;->a(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    :pswitch_4
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/e$a;->a:Lcom/tencent/thumbplayer/tcmedia/c/e;

    .line 143
    .line 144
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/c/e;->a(Lcom/tencent/thumbplayer/tcmedia/c/e;)Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 149
    .line 150
    check-cast p1, Ljava/util/Map;

    .line 151
    .line 152
    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;->onDownloadCdnUrlExpired(Ljava/util/Map;)V

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 157
    .line 158
    check-cast p1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMsg$TPProtocolInfo;

    .line 159
    .line 160
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/e$a;->a:Lcom/tencent/thumbplayer/tcmedia/c/e;

    .line 161
    .line 162
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/c/e;->a(Lcom/tencent/thumbplayer/tcmedia/c/e;)Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    iget-object v1, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMsg$TPProtocolInfo;->protocolName:Ljava/lang/String;

    .line 167
    .line 168
    iget-object p1, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMsg$TPProtocolInfo;->protocolVersion:Ljava/lang/String;

    .line 169
    .line 170
    invoke-interface {v0, v1, p1}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;->onDownloadProtocolUpdate(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    return-void

    .line 174
    :pswitch_6
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/e$a;->a:Lcom/tencent/thumbplayer/tcmedia/c/e;

    .line 175
    .line 176
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/c/e;->a(Lcom/tencent/thumbplayer/tcmedia/c/e;)Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 181
    .line 182
    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;->onDownloadStatusUpdate(I)V

    .line 183
    .line 184
    .line 185
    return-void

    .line 186
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 187
    .line 188
    check-cast p1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMsg$TPCDNURLInfo;

    .line 189
    .line 190
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/e$a;->a:Lcom/tencent/thumbplayer/tcmedia/c/e;

    .line 191
    .line 192
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/c/e;->a(Lcom/tencent/thumbplayer/tcmedia/c/e;)Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    iget-object v1, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMsg$TPCDNURLInfo;->url:Ljava/lang/String;

    .line 197
    .line 198
    iget-object v2, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMsg$TPCDNURLInfo;->cdnIp:Ljava/lang/String;

    .line 199
    .line 200
    iget-object v3, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMsg$TPCDNURLInfo;->uIp:Ljava/lang/String;

    .line 201
    .line 202
    iget-object p1, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMsg$TPCDNURLInfo;->errorStr:Ljava/lang/String;

    .line 203
    .line 204
    invoke-interface {v0, v1, v2, v3, p1}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;->onDownloadCdnUrlInfoUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    return-void

    .line 208
    :pswitch_8
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/e$a;->a:Lcom/tencent/thumbplayer/tcmedia/c/e;

    .line 209
    .line 210
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/c/e;->a(Lcom/tencent/thumbplayer/tcmedia/c/e;)Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 215
    .line 216
    check-cast p1, Ljava/lang/String;

    .line 217
    .line 218
    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;->onDownloadCdnUrlUpdate(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    return-void

    .line 222
    :pswitch_9
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/e$a;->a:Lcom/tencent/thumbplayer/tcmedia/c/e;

    .line 223
    .line 224
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/c/e;->a(Lcom/tencent/thumbplayer/tcmedia/c/e;)Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 229
    .line 230
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 231
    .line 232
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 233
    .line 234
    check-cast p1, Ljava/lang/String;

    .line 235
    .line 236
    invoke-interface {v0, v1, v2, p1}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;->onDownloadError(IILjava/lang/String;)V

    .line 237
    .line 238
    .line 239
    return-void

    .line 240
    :pswitch_a
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/c/e$a;->a:Lcom/tencent/thumbplayer/tcmedia/c/e;

    .line 241
    .line 242
    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/c/e;->a(Lcom/tencent/thumbplayer/tcmedia/c/e;)Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    invoke-interface {p1}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;->onDownloadFinish()V

    .line 247
    .line 248
    .line 249
    return-void

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/e$a;->a:Lcom/tencent/thumbplayer/tcmedia/c/e;

    .line 251
    .line 252
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 253
    .line 254
    invoke-static {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/c/e;->b(Lcom/tencent/thumbplayer/tcmedia/c/e;I)V

    .line 255
    .line 256
    .line 257
    return-void

    .line 258
    :cond_2
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/c/e$a;->a:Lcom/tencent/thumbplayer/tcmedia/c/e;

    .line 259
    .line 260
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 261
    .line 262
    invoke-static {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/c/e;->a(Lcom/tencent/thumbplayer/tcmedia/c/e;I)V

    .line 263
    .line 264
    .line 265
    return-void

    .line 266
    nop

    .line 267
    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
