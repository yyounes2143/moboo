.class final Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(II)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "[onError] vodErrorEvent: "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, " ,errorCode: "

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v0, v1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 29
    .line 30
    const/4 v1, -0x1

    .line 31
    invoke-static {v0, v1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->f(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 35
    .line 36
    invoke-static {v0, v1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->e(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I

    .line 37
    .line 38
    .line 39
    const/16 v0, -0x17d5

    .line 40
    .line 41
    const/4 v2, 0x1

    .line 42
    if-eq p1, v0, :cond_6

    .line 43
    .line 44
    const/16 v0, -0x1774

    .line 45
    .line 46
    if-eq p1, v0, :cond_5

    .line 47
    .line 48
    packed-switch p1, :pswitch_data_0

    .line 49
    .line 50
    .line 51
    packed-switch p1, :pswitch_data_1

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getCurrentPosition()J

    .line 57
    .line 58
    .line 59
    move-result-wide v3

    .line 60
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 61
    .line 62
    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->z(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)J

    .line 63
    .line 64
    .line 65
    move-result-wide v5

    .line 66
    sub-long/2addr v3, v5

    .line 67
    const-wide/16 v5, 0x0

    .line 68
    .line 69
    cmp-long v0, v3, v5

    .line 70
    .line 71
    if-ltz v0, :cond_0

    .line 72
    .line 73
    const-wide/16 v5, 0x1f4

    .line 74
    .line 75
    cmp-long v0, v3, v5

    .line 76
    .line 77
    if-lez v0, :cond_1

    .line 78
    .line 79
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 80
    .line 81
    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->A(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    .line 82
    .line 83
    .line 84
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getCurrentPosition()J

    .line 87
    .line 88
    .line 89
    move-result-wide v3

    .line 90
    invoke-static {v0, v3, v4}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->b(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;J)J

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 94
    .line 95
    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->B(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    int-to-float v0, v0

    .line 100
    iget-object v3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 101
    .line 102
    invoke-static {v3}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->l(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/e;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    iget v3, v3, Lcom/tencent/liteav/txcplayer/e;->a:I

    .line 107
    .line 108
    int-to-float v3, v3

    .line 109
    cmpg-float v0, v0, v3

    .line 110
    .line 111
    if-gez v0, :cond_3

    .line 112
    .line 113
    iget-object p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 114
    .line 115
    invoke-static {p2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->i(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Landroid/os/Handler;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    if-eqz p2, :cond_4

    .line 120
    .line 121
    iget-object p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 122
    .line 123
    invoke-static {p2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->C(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    .line 124
    .line 125
    .line 126
    move-result p2

    .line 127
    if-eq p2, v1, :cond_2

    .line 128
    .line 129
    iget-object p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 130
    .line 131
    invoke-static {p2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->C(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    invoke-static {p2, v0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->b(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;II)V

    .line 136
    .line 137
    .line 138
    :cond_2
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 139
    .line 140
    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->i(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Landroid/os/Handler;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    iget-object p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 145
    .line 146
    invoke-static {p2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->l(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/e;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    iget p2, p2, Lcom/tencent/liteav/txcplayer/e;->b:I

    .line 151
    .line 152
    int-to-float p2, p2

    .line 153
    const/high16 v0, 0x447a0000    # 1000.0f

    .line 154
    .line 155
    mul-float/2addr p2, v0

    .line 156
    float-to-long v0, p2

    .line 157
    const/16 p2, 0x66

    .line 158
    .line 159
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 160
    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_3
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 164
    .line 165
    const/16 v0, -0x8fd

    .line 166
    .line 167
    const-string v1, "Disconnected from the network. Playback error"

    .line 168
    .line 169
    invoke-static {p1, v0, p2, v1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;IILjava/lang/String;)V

    .line 170
    .line 171
    .line 172
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 173
    .line 174
    invoke-virtual {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a()V

    .line 175
    .line 176
    .line 177
    :cond_4
    :goto_0
    return v2

    .line 178
    :pswitch_0
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 179
    .line 180
    const/16 v0, -0x8ff

    .line 181
    .line 182
    const-string v1, "The file does not exist"

    .line 183
    .line 184
    invoke-static {p1, v0, p2, v1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;IILjava/lang/String;)V

    .line 185
    .line 186
    .line 187
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 188
    .line 189
    invoke-virtual {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a()V

    .line 190
    .line 191
    .line 192
    return v2

    .line 193
    :pswitch_1
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 194
    .line 195
    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->w(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    .line 196
    .line 197
    .line 198
    return v2

    .line 199
    :pswitch_2
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 200
    .line 201
    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->y(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    .line 202
    .line 203
    .line 204
    return v2

    .line 205
    :pswitch_3
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 206
    .line 207
    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->x(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    .line 208
    .line 209
    .line 210
    return v2

    .line 211
    :cond_5
    :pswitch_4
    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->b(I)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 216
    .line 217
    invoke-static {v1, p1, p2, v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;IILjava/lang/String;)V

    .line 218
    .line 219
    .line 220
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 221
    .line 222
    invoke-virtual {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a()V

    .line 223
    .line 224
    .line 225
    return v2

    .line 226
    :cond_6
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 227
    .line 228
    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->u(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Ljava/util/Map;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    if-eqz p1, :cond_8

    .line 233
    .line 234
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 235
    .line 236
    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->u(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Ljava/util/Map;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    const-string v1, "TXC_DRM_SIMPLE_AES_URL"

    .line 241
    .line 242
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    instance-of v1, p1, Ljava/lang/String;

    .line 247
    .line 248
    if-eqz v1, :cond_8

    .line 249
    .line 250
    check-cast p1, Ljava/lang/String;

    .line 251
    .line 252
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 253
    .line 254
    .line 255
    move-result p1

    .line 256
    if-nez p1, :cond_8

    .line 257
    .line 258
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 259
    .line 260
    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->u(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Ljava/util/Map;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    const-string p2, "TXC_DRM_KEY_URL"

    .line 265
    .line 266
    const/4 v0, 0x0

    .line 267
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 271
    .line 272
    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->u(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Ljava/util/Map;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    const-string p2, "TXC_DRM_PROVISION_URL"

    .line 277
    .line 278
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 282
    .line 283
    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->v(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Z

    .line 284
    .line 285
    .line 286
    move-result p1

    .line 287
    if-nez p1, :cond_7

    .line 288
    .line 289
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 290
    .line 291
    const/4 p2, 0x0

    .line 292
    invoke-virtual {p1, p2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->b(Z)V

    .line 293
    .line 294
    .line 295
    :cond_7
    return v2

    .line 296
    :cond_8
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$11;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 297
    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    .line 299
    .line 300
    const-string v3, "DRM play failed cause by "

    .line 301
    .line 302
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    const-string v3, "."

    .line 309
    .line 310
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    invoke-static {p1, v0, p2, v1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;IILjava/lang/String;)V

    .line 318
    .line 319
    .line 320
    return v2

    .line 321
    :pswitch_data_0
    .packed-switch -0x177a
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    :pswitch_data_1
    .packed-switch -0x901
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
