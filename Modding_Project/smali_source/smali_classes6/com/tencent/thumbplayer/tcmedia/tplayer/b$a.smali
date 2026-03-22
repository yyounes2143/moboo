.class Lcom/tencent/thumbplayer/tcmedia/tplayer/b$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/tcmedia/tplayer/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/thumbplayer/tcmedia/tplayer/b;

.field private b:Lcom/tencent/thumbplayer/tcmedia/tplayer/b;


# direct methods
.method public constructor <init>(Lcom/tencent/thumbplayer/tcmedia/tplayer/b;Lcom/tencent/thumbplayer/tcmedia/tplayer/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b$a;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b$a;->b:Lcom/tencent/thumbplayer/tcmedia/tplayer/b;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/thumbplayer/tcmedia/tplayer/b;Lcom/tencent/thumbplayer/tcmedia/tplayer/b;Landroid/os/Looper;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b$a;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/b;

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b$a;->b:Lcom/tencent/thumbplayer/tcmedia/tplayer/b;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b$a;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/b;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->e(Lcom/tencent/thumbplayer/tcmedia/tplayer/b;)Lcom/tencent/thumbplayer/tcmedia/tplayer/c;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    .line 12
    .line 13
    const/16 v2, 0x101

    .line 14
    .line 15
    if-eq v0, v2, :cond_5

    .line 16
    .line 17
    const/16 v2, 0x4e8

    .line 18
    .line 19
    if-eq v0, v2, :cond_4

    .line 20
    .line 21
    packed-switch v0, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    goto/16 :goto_1

    .line 25
    .line 26
    :pswitch_0
    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b$a;->b:Lcom/tencent/thumbplayer/tcmedia/tplayer/b;

    .line 27
    .line 28
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 29
    .line 30
    int-to-long v4, v0

    .line 31
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 32
    .line 33
    int-to-long v6, v0

    .line 34
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 35
    .line 36
    const/16 v3, 0x3fa

    .line 37
    .line 38
    invoke-virtual/range {v1 .. v8}, Lcom/tencent/thumbplayer/tcmedia/tplayer/c;->onInfo(Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayer;IJJLjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_1
    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b$a;->b:Lcom/tencent/thumbplayer/tcmedia/tplayer/b;

    .line 43
    .line 44
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 45
    .line 46
    int-to-long v4, v0

    .line 47
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 48
    .line 49
    int-to-long v6, v0

    .line 50
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 51
    .line 52
    const/16 v3, 0x3f9

    .line 53
    .line 54
    invoke-virtual/range {v1 .. v8}, Lcom/tencent/thumbplayer/tcmedia/tplayer/c;->onInfo(Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayer;IJJLjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :pswitch_2
    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b$a;->b:Lcom/tencent/thumbplayer/tcmedia/tplayer/b;

    .line 59
    .line 60
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 61
    .line 62
    int-to-long v4, v0

    .line 63
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 64
    .line 65
    int-to-long v6, v0

    .line 66
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 67
    .line 68
    const/16 v3, 0x3f8

    .line 69
    .line 70
    invoke-virtual/range {v1 .. v8}, Lcom/tencent/thumbplayer/tcmedia/tplayer/c;->onInfo(Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayer;IJJLjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :pswitch_3
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b$a;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/b;

    .line 75
    .line 76
    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->i(Lcom/tencent/thumbplayer/tcmedia/tplayer/b;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :pswitch_4
    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b$a;->b:Lcom/tencent/thumbplayer/tcmedia/tplayer/b;

    .line 81
    .line 82
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 83
    .line 84
    int-to-long v4, v0

    .line 85
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 86
    .line 87
    int-to-long v6, v0

    .line 88
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 89
    .line 90
    const/16 v3, 0x3f7

    .line 91
    .line 92
    invoke-virtual/range {v1 .. v8}, Lcom/tencent/thumbplayer/tcmedia/tplayer/c;->onInfo(Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayer;IJJLjava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :pswitch_5
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b$a;->b:Lcom/tencent/thumbplayer/tcmedia/tplayer/b;

    .line 97
    .line 98
    invoke-virtual {v1, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/c;->onStopAsyncComplete(Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayer;)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :pswitch_6
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b$a;->b:Lcom/tencent/thumbplayer/tcmedia/tplayer/b;

    .line 103
    .line 104
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast p1, Lcom/tencent/thumbplayer/tcmedia/api/TPSubtitleFrameBuffer;

    .line 107
    .line 108
    invoke-virtual {v1, v0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/c;->onSubtitleFrameOut(Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayer;Lcom/tencent/thumbplayer/tcmedia/api/TPSubtitleFrameBuffer;)V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :pswitch_7
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b$a;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/b;

    .line 113
    .line 114
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b(Lcom/tencent/thumbplayer/tcmedia/tplayer/b;)Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    if-eqz v0, :cond_1

    .line 119
    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b$a;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/b;

    .line 121
    .line 122
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b(Lcom/tencent/thumbplayer/tcmedia/tplayer/b;)Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    new-instance v2, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;

    .line 127
    .line 128
    invoke-direct {v2}, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;-><init>()V

    .line 129
    .line 130
    .line 131
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 132
    .line 133
    int-to-long v3, v3

    .line 134
    const/16 v5, 0x1f40

    .line 135
    .line 136
    invoke-virtual {v2, v5, v3, v4}, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->buildLong(IJ)Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-interface {v0, v2}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;)V

    .line 141
    .line 142
    .line 143
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b$a;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/b;

    .line 144
    .line 145
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->c(Lcom/tencent/thumbplayer/tcmedia/tplayer/b;)Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    const-string v3, "MESSAGE_NOTIFY_PLAYER_SWITCH_DEFINITION bitrate:"

    .line 152
    .line 153
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 157
    .line 158
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    invoke-virtual {v0, v2}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .line 167
    .line 168
    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b$a;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/b;

    .line 171
    .line 172
    invoke-static {v2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->c(Lcom/tencent/thumbplayer/tcmedia/tplayer/b;)Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    invoke-virtual {v2, v0}, Lcom/tencent/thumbplayer/tcmedia/e/a;->a(Ljava/lang/Exception;)V

    .line 177
    .line 178
    .line 179
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b$a;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/b;

    .line 180
    .line 181
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->h(Lcom/tencent/thumbplayer/tcmedia/tplayer/b;)Z

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    if-eqz v0, :cond_3

    .line 186
    .line 187
    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b$a;->b:Lcom/tencent/thumbplayer/tcmedia/tplayer/b;

    .line 188
    .line 189
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 190
    .line 191
    int-to-long v4, v0

    .line 192
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 193
    .line 194
    int-to-long v6, v0

    .line 195
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 196
    .line 197
    const/16 v3, 0x3f2

    .line 198
    .line 199
    invoke-virtual/range {v1 .. v8}, Lcom/tencent/thumbplayer/tcmedia/tplayer/c;->onInfo(Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayer;IJJLjava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    return-void

    .line 203
    :pswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 204
    .line 205
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 206
    .line 207
    invoke-virtual {v1, v0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/c;->onStateChange(II)V

    .line 208
    .line 209
    .line 210
    return-void

    .line 211
    :pswitch_9
    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b$a;->b:Lcom/tencent/thumbplayer/tcmedia/tplayer/b;

    .line 212
    .line 213
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 214
    .line 215
    int-to-long v4, v0

    .line 216
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 217
    .line 218
    int-to-long v6, v0

    .line 219
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 220
    .line 221
    const/16 v3, 0x3f0

    .line 222
    .line 223
    invoke-virtual/range {v1 .. v8}, Lcom/tencent/thumbplayer/tcmedia/tplayer/c;->onInfo(Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayer;IJJLjava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    return-void

    .line 227
    :pswitch_a
    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b$a;->b:Lcom/tencent/thumbplayer/tcmedia/tplayer/b;

    .line 228
    .line 229
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 230
    .line 231
    int-to-long v4, v0

    .line 232
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 233
    .line 234
    int-to-long v6, v0

    .line 235
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 236
    .line 237
    const/16 v3, 0x3ef

    .line 238
    .line 239
    invoke-virtual/range {v1 .. v8}, Lcom/tencent/thumbplayer/tcmedia/tplayer/c;->onInfo(Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayer;IJJLjava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    return-void

    .line 243
    :pswitch_b
    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b$a;->b:Lcom/tencent/thumbplayer/tcmedia/tplayer/b;

    .line 244
    .line 245
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 246
    .line 247
    int-to-long v4, v0

    .line 248
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 249
    .line 250
    int-to-long v6, v0

    .line 251
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 252
    .line 253
    const/16 v3, 0x3ee

    .line 254
    .line 255
    invoke-virtual/range {v1 .. v8}, Lcom/tencent/thumbplayer/tcmedia/tplayer/c;->onInfo(Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayer;IJJLjava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    return-void

    .line 259
    :pswitch_c
    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b$a;->b:Lcom/tencent/thumbplayer/tcmedia/tplayer/b;

    .line 260
    .line 261
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 262
    .line 263
    int-to-long v4, v0

    .line 264
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 265
    .line 266
    int-to-long v6, v0

    .line 267
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 268
    .line 269
    const/16 v3, 0x3ed

    .line 270
    .line 271
    invoke-virtual/range {v1 .. v8}, Lcom/tencent/thumbplayer/tcmedia/tplayer/c;->onInfo(Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayer;IJJLjava/lang/Object;)V

    .line 272
    .line 273
    .line 274
    return-void

    .line 275
    :pswitch_d
    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b$a;->b:Lcom/tencent/thumbplayer/tcmedia/tplayer/b;

    .line 276
    .line 277
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 278
    .line 279
    int-to-long v4, v0

    .line 280
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 281
    .line 282
    int-to-long v6, v0

    .line 283
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 284
    .line 285
    const/16 v3, 0x3ec

    .line 286
    .line 287
    invoke-virtual/range {v1 .. v8}, Lcom/tencent/thumbplayer/tcmedia/tplayer/c;->onInfo(Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayer;IJJLjava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    return-void

    .line 291
    :pswitch_e
    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b$a;->b:Lcom/tencent/thumbplayer/tcmedia/tplayer/b;

    .line 292
    .line 293
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 294
    .line 295
    int-to-long v4, v0

    .line 296
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 297
    .line 298
    int-to-long v6, v0

    .line 299
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 300
    .line 301
    const/16 v3, 0x3e9

    .line 302
    .line 303
    invoke-virtual/range {v1 .. v8}, Lcom/tencent/thumbplayer/tcmedia/tplayer/c;->onInfo(Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayer;IJJLjava/lang/Object;)V

    .line 304
    .line 305
    .line 306
    return-void

    .line 307
    :pswitch_f
    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b$a;->b:Lcom/tencent/thumbplayer/tcmedia/tplayer/b;

    .line 308
    .line 309
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 310
    .line 311
    int-to-long v4, v0

    .line 312
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 313
    .line 314
    int-to-long v6, v0

    .line 315
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 316
    .line 317
    const/16 v3, 0x3eb

    .line 318
    .line 319
    invoke-virtual/range {v1 .. v8}, Lcom/tencent/thumbplayer/tcmedia/tplayer/c;->onInfo(Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayer;IJJLjava/lang/Object;)V

    .line 320
    .line 321
    .line 322
    return-void

    .line 323
    :pswitch_10
    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b$a;->b:Lcom/tencent/thumbplayer/tcmedia/tplayer/b;

    .line 324
    .line 325
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 326
    .line 327
    int-to-long v4, v0

    .line 328
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 329
    .line 330
    int-to-long v6, v0

    .line 331
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 332
    .line 333
    const/16 v3, 0x3ea

    .line 334
    .line 335
    invoke-virtual/range {v1 .. v8}, Lcom/tencent/thumbplayer/tcmedia/tplayer/c;->onInfo(Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayer;IJJLjava/lang/Object;)V

    .line 336
    .line 337
    .line 338
    return-void

    .line 339
    :pswitch_11
    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b$a;->b:Lcom/tencent/thumbplayer/tcmedia/tplayer/b;

    .line 340
    .line 341
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 342
    .line 343
    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 344
    .line 345
    const-wide/16 v5, 0x0

    .line 346
    .line 347
    const-wide/16 v7, 0x0

    .line 348
    .line 349
    invoke-virtual/range {v1 .. v8}, Lcom/tencent/thumbplayer/tcmedia/tplayer/c;->onError(Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayer;IIJJ)V

    .line 350
    .line 351
    .line 352
    return-void

    .line 353
    :pswitch_12
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b$a;->b:Lcom/tencent/thumbplayer/tcmedia/tplayer/b;

    .line 354
    .line 355
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 356
    .line 357
    check-cast p1, Lcom/tencent/thumbplayer/tcmedia/api/TPAudioFrameBuffer;

    .line 358
    .line 359
    invoke-virtual {v1, v0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/c;->onAudioFrameOut(Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayer;Lcom/tencent/thumbplayer/tcmedia/api/TPAudioFrameBuffer;)V

    .line 360
    .line 361
    .line 362
    return-void

    .line 363
    :pswitch_13
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b$a;->b:Lcom/tencent/thumbplayer/tcmedia/tplayer/b;

    .line 364
    .line 365
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 366
    .line 367
    check-cast p1, Lcom/tencent/thumbplayer/tcmedia/api/TPVideoFrameBuffer;

    .line 368
    .line 369
    invoke-virtual {v1, v0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/c;->onVideoFrameOut(Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayer;Lcom/tencent/thumbplayer/tcmedia/api/TPVideoFrameBuffer;)V

    .line 370
    .line 371
    .line 372
    return-void

    .line 373
    :pswitch_14
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b$a;->b:Lcom/tencent/thumbplayer/tcmedia/tplayer/b;

    .line 374
    .line 375
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 376
    .line 377
    check-cast p1, Lcom/tencent/thumbplayer/tcmedia/api/TPSubtitleData;

    .line 378
    .line 379
    invoke-virtual {v1, v0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/c;->onSubtitleData(Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayer;Lcom/tencent/thumbplayer/tcmedia/api/TPSubtitleData;)V

    .line 380
    .line 381
    .line 382
    return-void

    .line 383
    :pswitch_15
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 384
    .line 385
    check-cast p1, Lcom/tencent/thumbplayer/tcmedia/tplayer/e$a;

    .line 386
    .line 387
    if-eqz p1, :cond_3

    .line 388
    .line 389
    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b$a;->b:Lcom/tencent/thumbplayer/tcmedia/tplayer/b;

    .line 390
    .line 391
    iget-wide v3, p1, Lcom/tencent/thumbplayer/tcmedia/tplayer/e$a;->a:J

    .line 392
    .line 393
    iget-wide v5, p1, Lcom/tencent/thumbplayer/tcmedia/tplayer/e$a;->b:J

    .line 394
    .line 395
    invoke-virtual/range {v1 .. v6}, Lcom/tencent/thumbplayer/tcmedia/tplayer/c;->onVideoSizeChanged(Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayer;JJ)V

    .line 396
    .line 397
    .line 398
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b$a;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/b;

    .line 399
    .line 400
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a(Lcom/tencent/thumbplayer/tcmedia/tplayer/b;)Lcom/tencent/thumbplayer/tcmedia/c/a;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    iget-wide v1, p1, Lcom/tencent/thumbplayer/tcmedia/tplayer/e$a;->a:J

    .line 405
    .line 406
    iget-wide v3, p1, Lcom/tencent/thumbplayer/tcmedia/tplayer/e$a;->b:J

    .line 407
    .line 408
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/tencent/thumbplayer/tcmedia/c/a;->a(JJ)V

    .line 409
    .line 410
    .line 411
    return-void

    .line 412
    :pswitch_16
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b$a;->b:Lcom/tencent/thumbplayer/tcmedia/tplayer/b;

    .line 413
    .line 414
    invoke-virtual {v1, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/c;->onSeekComplete(Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayer;)V

    .line 415
    .line 416
    .line 417
    return-void

    .line 418
    :pswitch_17
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 419
    .line 420
    check-cast v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/e$a;

    .line 421
    .line 422
    if-eqz v0, :cond_3

    .line 423
    .line 424
    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b$a;->b:Lcom/tencent/thumbplayer/tcmedia/tplayer/b;

    .line 425
    .line 426
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 427
    .line 428
    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 429
    .line 430
    iget-wide v5, v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/e$a;->a:J

    .line 431
    .line 432
    iget-wide v7, v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/e$a;->b:J

    .line 433
    .line 434
    invoke-virtual/range {v1 .. v8}, Lcom/tencent/thumbplayer/tcmedia/tplayer/c;->onError(Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayer;IIJJ)V

    .line 435
    .line 436
    .line 437
    return-void

    .line 438
    :pswitch_18
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b$a;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/b;

    .line 439
    .line 440
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 441
    .line 442
    invoke-static {v0, v2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->c(Lcom/tencent/thumbplayer/tcmedia/tplayer/b;I)V

    .line 443
    .line 444
    .line 445
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 446
    .line 447
    check-cast v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/e$a;

    .line 448
    .line 449
    if-eqz v0, :cond_2

    .line 450
    .line 451
    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b$a;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/b;

    .line 452
    .line 453
    invoke-static {v2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a(Lcom/tencent/thumbplayer/tcmedia/tplayer/b;)Lcom/tencent/thumbplayer/tcmedia/c/a;

    .line 454
    .line 455
    .line 456
    move-result-object v2

    .line 457
    invoke-interface {v2}, Lcom/tencent/thumbplayer/tcmedia/c/a;->c()Z

    .line 458
    .line 459
    .line 460
    move-result v2

    .line 461
    if-nez v2, :cond_2

    .line 462
    .line 463
    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b$a;->b:Lcom/tencent/thumbplayer/tcmedia/tplayer/b;

    .line 464
    .line 465
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 466
    .line 467
    iget-wide v4, v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/e$a;->a:J

    .line 468
    .line 469
    iget-wide v6, v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/e$a;->b:J

    .line 470
    .line 471
    iget-object v8, v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/e$a;->c:Ljava/lang/Object;

    .line 472
    .line 473
    invoke-virtual/range {v1 .. v8}, Lcom/tencent/thumbplayer/tcmedia/tplayer/c;->onInfo(Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayer;IJJLjava/lang/Object;)V

    .line 474
    .line 475
    .line 476
    return-void

    .line 477
    :cond_2
    if-eqz v0, :cond_3

    .line 478
    .line 479
    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b$a;->b:Lcom/tencent/thumbplayer/tcmedia/tplayer/b;

    .line 480
    .line 481
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 482
    .line 483
    iget-wide v4, v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/e$a;->a:J

    .line 484
    .line 485
    iget-wide v6, v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/e$a;->b:J

    .line 486
    .line 487
    iget-object v8, v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/e$a;->c:Ljava/lang/Object;

    .line 488
    .line 489
    invoke-virtual/range {v1 .. v8}, Lcom/tencent/thumbplayer/tcmedia/tplayer/c;->onInfo(Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayer;IJJLjava/lang/Object;)V

    .line 490
    .line 491
    .line 492
    :cond_3
    :goto_1
    return-void

    .line 493
    :pswitch_19
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b$a;->b:Lcom/tencent/thumbplayer/tcmedia/tplayer/b;

    .line 494
    .line 495
    invoke-virtual {v1, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/c;->onCompletion(Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayer;)V

    .line 496
    .line 497
    .line 498
    return-void

    .line 499
    :cond_4
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b$a;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/b;

    .line 500
    .line 501
    invoke-static {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a(Lcom/tencent/thumbplayer/tcmedia/tplayer/b;Landroid/os/Message;)V

    .line 502
    .line 503
    .line 504
    return-void

    .line 505
    :cond_5
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b$a;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/b;

    .line 506
    .line 507
    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->c(Lcom/tencent/thumbplayer/tcmedia/tplayer/b;)Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 508
    .line 509
    .line 510
    move-result-object p1

    .line 511
    const-string v0, "onPrepared"

    .line 512
    .line 513
    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b$a;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/b;

    .line 517
    .line 518
    const/16 v0, 0x3ec

    .line 519
    .line 520
    invoke-static {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b(Lcom/tencent/thumbplayer/tcmedia/tplayer/b;I)V

    .line 521
    .line 522
    .line 523
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b$a;->b:Lcom/tencent/thumbplayer/tcmedia/tplayer/b;

    .line 524
    .line 525
    invoke-virtual {v1, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/c;->onPrepared(Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayer;)V

    .line 526
    .line 527
    .line 528
    return-void

    .line 529
    :pswitch_data_0
    .packed-switch 0x104
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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
