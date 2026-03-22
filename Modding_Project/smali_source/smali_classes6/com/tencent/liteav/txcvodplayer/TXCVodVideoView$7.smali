.class final Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$j;


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
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;IILjava/lang/String;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    iget-object v4, v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 10
    .line 11
    invoke-static {v4}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    const/4 v5, 0x0

    .line 16
    const/16 v6, 0x10

    .line 17
    .line 18
    if-eq v4, v2, :cond_0

    .line 19
    .line 20
    iget-object v4, v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 21
    .line 22
    invoke-static {v4}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    sub-int/2addr v4, v2

    .line 27
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-gt v4, v6, :cond_1

    .line 32
    .line 33
    :cond_0
    iget-object v4, v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 34
    .line 35
    invoke-static {v4}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->d(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eq v4, v1, :cond_2

    .line 40
    .line 41
    iget-object v4, v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 42
    .line 43
    invoke-static {v4}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->d(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    sub-int/2addr v4, v1

    .line 48
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-le v4, v6, :cond_2

    .line 53
    .line 54
    :cond_1
    const/4 v4, 0x1

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    move v4, v5

    .line 57
    :goto_0
    iget-object v6, v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 58
    .line 59
    invoke-interface/range {p1 .. p1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getVideoWidth()I

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    invoke-static {v6, v7}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I

    .line 64
    .line 65
    .line 66
    iget-object v6, v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 67
    .line 68
    invoke-interface/range {p1 .. p1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getVideoHeight()I

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    invoke-static {v6, v7}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->b(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I

    .line 73
    .line 74
    .line 75
    iget-object v6, v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 76
    .line 77
    invoke-interface/range {p1 .. p1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getVideoSarNum()I

    .line 78
    .line 79
    .line 80
    move-result v7

    .line 81
    invoke-static {v6, v7}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I

    .line 82
    .line 83
    .line 84
    iget-object v6, v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 85
    .line 86
    invoke-interface/range {p1 .. p1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getVideoSarDen()I

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    invoke-static {v6, v7}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->d(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I

    .line 91
    .line 92
    .line 93
    iget-object v6, v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 94
    .line 95
    invoke-virtual {v6}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getSupportedBitrates()Ljava/util/ArrayList;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    if-eqz v6, :cond_4

    .line 100
    .line 101
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    const-wide/32 v8, 0x7fffffff

    .line 106
    .line 107
    .line 108
    :cond_3
    :goto_1
    if-ge v5, v7, :cond_4

    .line 109
    .line 110
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v10

    .line 114
    add-int/lit8 v5, v5, 0x1

    .line 115
    .line 116
    check-cast v10, Lcom/tencent/liteav/txcplayer/model/a;

    .line 117
    .line 118
    iget-object v11, v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 119
    .line 120
    invoke-static {v11}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->d(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    .line 121
    .line 122
    .line 123
    move-result v11

    .line 124
    iget-object v12, v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 125
    .line 126
    invoke-static {v12}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    .line 127
    .line 128
    .line 129
    move-result v12

    .line 130
    mul-int/2addr v11, v12

    .line 131
    iget v12, v10, Lcom/tencent/liteav/txcplayer/model/a;->b:I

    .line 132
    .line 133
    iget v13, v10, Lcom/tencent/liteav/txcplayer/model/a;->c:I

    .line 134
    .line 135
    mul-int/2addr v12, v13

    .line 136
    sub-int/2addr v11, v12

    .line 137
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    .line 138
    .line 139
    .line 140
    move-result v11

    .line 141
    int-to-long v11, v11

    .line 142
    cmp-long v13, v11, v8

    .line 143
    .line 144
    if-gez v13, :cond_3

    .line 145
    .line 146
    iget-object v8, v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 147
    .line 148
    iget v9, v10, Lcom/tencent/liteav/txcplayer/model/a;->b:I

    .line 149
    .line 150
    int-to-long v13, v9

    .line 151
    iget v9, v10, Lcom/tencent/liteav/txcplayer/model/a;->c:I

    .line 152
    .line 153
    int-to-long v9, v9

    .line 154
    mul-long/2addr v13, v9

    .line 155
    invoke-static {v8, v13, v14}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;J)J

    .line 156
    .line 157
    .line 158
    move-wide v8, v11

    .line 159
    goto :goto_1

    .line 160
    :cond_4
    iget-object v5, v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 161
    .line 162
    invoke-static {v5}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->e(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    const/16 v6, 0xcd

    .line 167
    .line 168
    invoke-interface {v5, v6}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getPropertyLong(I)J

    .line 169
    .line 170
    .line 171
    move-result-wide v5

    .line 172
    iget-object v7, v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 173
    .line 174
    new-instance v8, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    const-string v9, "OnVideoSizeChangedListener width:"

    .line 177
    .line 178
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    iget-object v9, v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 182
    .line 183
    invoke-static {v9}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->d(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    .line 184
    .line 185
    .line 186
    move-result v9

    .line 187
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    const-string v9, ":height:"

    .line 191
    .line 192
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    iget-object v9, v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 196
    .line 197
    invoke-static {v9}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    .line 198
    .line 199
    .line 200
    move-result v9

    .line 201
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    const-string v9, ":SarNum:"

    .line 205
    .line 206
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    iget-object v9, v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 210
    .line 211
    invoke-static {v9}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->f(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    .line 212
    .line 213
    .line 214
    move-result v9

    .line 215
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    const-string v9, ":SarDen:"

    .line 219
    .line 220
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    iget-object v9, v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 224
    .line 225
    invoke-static {v9}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->g(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    .line 226
    .line 227
    .line 228
    move-result v9

    .line 229
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    const-string v9, ":videoRotationDegree:"

    .line 233
    .line 234
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v8

    .line 244
    invoke-static {v7, v8}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    iget-object v7, v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 248
    .line 249
    invoke-static {v7}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->d(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    .line 250
    .line 251
    .line 252
    move-result v7

    .line 253
    if-eqz v7, :cond_6

    .line 254
    .line 255
    iget-object v7, v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 256
    .line 257
    invoke-static {v7}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    .line 258
    .line 259
    .line 260
    move-result v7

    .line 261
    if-eqz v7, :cond_6

    .line 262
    .line 263
    iget-object v7, v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 264
    .line 265
    invoke-static {v7}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcvodplayer/renderer/a;

    .line 266
    .line 267
    .line 268
    move-result-object v7

    .line 269
    if-eqz v7, :cond_5

    .line 270
    .line 271
    iget-object v7, v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 272
    .line 273
    invoke-static {v7}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcvodplayer/renderer/a;

    .line 274
    .line 275
    .line 276
    move-result-object v7

    .line 277
    iget-object v8, v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 278
    .line 279
    invoke-static {v8}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->d(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    .line 280
    .line 281
    .line 282
    move-result v8

    .line 283
    iget-object v9, v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 284
    .line 285
    invoke-static {v9}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    .line 286
    .line 287
    .line 288
    move-result v9

    .line 289
    invoke-interface {v7, v8, v9}, Lcom/tencent/liteav/txcvodplayer/renderer/a;->a(II)V

    .line 290
    .line 291
    .line 292
    iget-object v7, v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 293
    .line 294
    invoke-static {v7}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcvodplayer/renderer/a;

    .line 295
    .line 296
    .line 297
    move-result-object v7

    .line 298
    iget-object v8, v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 299
    .line 300
    invoke-static {v8}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->f(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    .line 301
    .line 302
    .line 303
    move-result v8

    .line 304
    iget-object v9, v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 305
    .line 306
    invoke-static {v9}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->g(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    .line 307
    .line 308
    .line 309
    move-result v9

    .line 310
    invoke-interface {v7, v8, v9}, Lcom/tencent/liteav/txcvodplayer/renderer/a;->b(II)V

    .line 311
    .line 312
    .line 313
    :cond_5
    iget-object v7, v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 314
    .line 315
    invoke-virtual {v7}, Landroid/view/View;->requestLayout()V

    .line 316
    .line 317
    .line 318
    :cond_6
    const-string v7, "EVT_KEY_VIDEO_ROTATION"

    .line 319
    .line 320
    const-string v8, "EVT_PARAM3"

    .line 321
    .line 322
    const-string v9, ")"

    .line 323
    .line 324
    const-string v10, " Crop(width,height,crop_left,crop_top,crop_right,crop_bottom):("

    .line 325
    .line 326
    const-string v11, "EVT_PARAM2"

    .line 327
    .line 328
    const-string v12, "EVT_PARAM1"

    .line 329
    .line 330
    const-string v15, "*"

    .line 331
    .line 332
    const-string v13, "Resolution change:"

    .line 333
    .line 334
    const-string v14, "description"

    .line 335
    .line 336
    move/from16 v16, v4

    .line 337
    .line 338
    const-string v4, ","

    .line 339
    .line 340
    if-eqz v16, :cond_9

    .line 341
    .line 342
    move-wide/from16 v16, v5

    .line 343
    .line 344
    new-instance v5, Landroid/os/Message;

    .line 345
    .line 346
    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 347
    .line 348
    .line 349
    const/16 v6, 0x65

    .line 350
    .line 351
    iput v6, v5, Landroid/os/Message;->what:I

    .line 352
    .line 353
    const/16 v6, 0x7d9

    .line 354
    .line 355
    iput v6, v5, Landroid/os/Message;->arg1:I

    .line 356
    .line 357
    new-instance v6, Landroid/os/Bundle;

    .line 358
    .line 359
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 360
    .line 361
    .line 362
    move-object/from16 p1, v5

    .line 363
    .line 364
    iget-object v5, v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 365
    .line 366
    invoke-static {v5}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->d(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    .line 367
    .line 368
    .line 369
    move-result v5

    .line 370
    invoke-virtual {v6, v12, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 371
    .line 372
    .line 373
    iget-object v5, v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 374
    .line 375
    invoke-static {v5}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    .line 376
    .line 377
    .line 378
    move-result v5

    .line 379
    invoke-virtual {v6, v11, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 380
    .line 381
    .line 382
    iget-object v5, v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 383
    .line 384
    invoke-static {v5}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->h(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Z

    .line 385
    .line 386
    .line 387
    move-result v5

    .line 388
    if-nez v5, :cond_8

    .line 389
    .line 390
    if-nez v3, :cond_7

    .line 391
    .line 392
    goto :goto_3

    .line 393
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    .line 394
    .line 395
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v1

    .line 417
    new-instance v2, Ljava/lang/StringBuilder;

    .line 418
    .line 419
    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    iget-object v3, v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 423
    .line 424
    invoke-static {v3}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->d(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    .line 425
    .line 426
    .line 427
    move-result v3

    .line 428
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    iget-object v3, v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 435
    .line 436
    invoke-static {v3}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    .line 437
    .line 438
    .line 439
    move-result v3

    .line 440
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v2

    .line 456
    invoke-virtual {v6, v14, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    invoke-virtual {v6, v8, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    :goto_2
    move-wide/from16 v1, v16

    .line 463
    .line 464
    goto :goto_4

    .line 465
    :cond_8
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 466
    .line 467
    invoke-direct {v1, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    iget-object v2, v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 471
    .line 472
    invoke-static {v2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->d(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    .line 473
    .line 474
    .line 475
    move-result v2

    .line 476
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    iget-object v2, v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 483
    .line 484
    invoke-static {v2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    .line 485
    .line 486
    .line 487
    move-result v2

    .line 488
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v1

    .line 495
    invoke-virtual {v6, v14, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    goto :goto_2

    .line 499
    :goto_4
    invoke-virtual {v6, v7, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 500
    .line 501
    .line 502
    move-object/from16 v1, p1

    .line 503
    .line 504
    invoke-virtual {v1, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 505
    .line 506
    .line 507
    iget-object v2, v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 508
    .line 509
    invoke-static {v2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->i(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Landroid/os/Handler;

    .line 510
    .line 511
    .line 512
    move-result-object v2

    .line 513
    if-eqz v2, :cond_a

    .line 514
    .line 515
    iget-object v2, v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 516
    .line 517
    invoke-static {v2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->i(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Landroid/os/Handler;

    .line 518
    .line 519
    .line 520
    move-result-object v2

    .line 521
    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 522
    .line 523
    .line 524
    return-void

    .line 525
    :cond_9
    move-wide/from16 v16, v5

    .line 526
    .line 527
    iget-object v5, v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 528
    .line 529
    invoke-static {v5}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->h(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Z

    .line 530
    .line 531
    .line 532
    move-result v5

    .line 533
    if-nez v5, :cond_a

    .line 534
    .line 535
    if-eqz v3, :cond_a

    .line 536
    .line 537
    new-instance v5, Landroid/os/Message;

    .line 538
    .line 539
    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 540
    .line 541
    .line 542
    const/16 v6, 0x65

    .line 543
    .line 544
    iput v6, v5, Landroid/os/Message;->what:I

    .line 545
    .line 546
    const/16 v6, 0x7d9

    .line 547
    .line 548
    iput v6, v5, Landroid/os/Message;->arg1:I

    .line 549
    .line 550
    new-instance v6, Landroid/os/Bundle;

    .line 551
    .line 552
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 553
    .line 554
    .line 555
    move-object/from16 p1, v5

    .line 556
    .line 557
    new-instance v5, Ljava/lang/StringBuilder;

    .line 558
    .line 559
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 560
    .line 561
    .line 562
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 563
    .line 564
    .line 565
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    .line 567
    .line 568
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 569
    .line 570
    .line 571
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    .line 573
    .line 574
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    .line 576
    .line 577
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 578
    .line 579
    .line 580
    move-result-object v1

    .line 581
    new-instance v2, Ljava/lang/StringBuilder;

    .line 582
    .line 583
    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 584
    .line 585
    .line 586
    iget-object v3, v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 587
    .line 588
    invoke-static {v3}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->d(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    .line 589
    .line 590
    .line 591
    move-result v3

    .line 592
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 593
    .line 594
    .line 595
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    .line 597
    .line 598
    iget-object v3, v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 599
    .line 600
    invoke-static {v3}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    .line 601
    .line 602
    .line 603
    move-result v3

    .line 604
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 605
    .line 606
    .line 607
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    .line 609
    .line 610
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    .line 612
    .line 613
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    .line 615
    .line 616
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 617
    .line 618
    .line 619
    move-result-object v2

    .line 620
    invoke-virtual {v6, v14, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    .line 622
    .line 623
    iget-object v2, v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 624
    .line 625
    invoke-static {v2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->d(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    .line 626
    .line 627
    .line 628
    move-result v2

    .line 629
    invoke-virtual {v6, v12, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 630
    .line 631
    .line 632
    iget-object v2, v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 633
    .line 634
    invoke-static {v2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    .line 635
    .line 636
    .line 637
    move-result v2

    .line 638
    invoke-virtual {v6, v11, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 639
    .line 640
    .line 641
    invoke-virtual {v6, v8, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    .line 643
    .line 644
    move-wide/from16 v1, v16

    .line 645
    .line 646
    invoke-virtual {v6, v7, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 647
    .line 648
    .line 649
    move-object/from16 v1, p1

    .line 650
    .line 651
    invoke-virtual {v1, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 652
    .line 653
    .line 654
    iget-object v2, v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 655
    .line 656
    invoke-static {v2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->i(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Landroid/os/Handler;

    .line 657
    .line 658
    .line 659
    move-result-object v2

    .line 660
    if-eqz v2, :cond_a

    .line 661
    .line 662
    iget-object v2, v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 663
    .line 664
    invoke-static {v2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->i(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Landroid/os/Handler;

    .line 665
    .line 666
    .line 667
    move-result-object v2

    .line 668
    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 669
    .line 670
    .line 671
    :cond_a
    return-void
.end method
