.class public Lcom/applovin/impl/v1;
.super Lcom/applovin/impl/r1;
.source "Proguard"

# interfaces
.implements Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/v1$e;,
        Lcom/applovin/impl/v1$d;,
        Lcom/applovin/impl/v1$f;
    }
.end annotation


# instance fields
.field private final N:Lcom/applovin/impl/w1;

.field private O:Landroid/media/MediaPlayer;

.field private final P:Landroid/view/View;

.field protected final Q:Lcom/applovin/impl/adview/AppLovinVideoView;

.field protected final R:Lcom/applovin/impl/a;

.field protected final S:Lcom/applovin/impl/adview/g;

.field protected T:Lcom/applovin/impl/e0;

.field protected final U:Landroid/widget/ImageView;

.field protected V:Lcom/applovin/impl/adview/l;

.field protected final W:Landroid/widget/ProgressBar;

.field protected X:Landroid/widget/ProgressBar;

.field protected Y:Landroid/widget/ImageView;

.field private final Z:Lcom/applovin/impl/v1$e;

.field private final a0:Lcom/applovin/impl/v1$d;

.field private final b0:Landroid/os/Handler;

.field private final c0:Landroid/os/Handler;

.field protected final d0:Lcom/applovin/impl/w0;

.field protected final e0:Lcom/applovin/impl/w0;

.field private final f0:Z

.field protected g0:Z

.field protected h0:J

.field private i0:I

.field private j0:I

.field protected k0:Z

.field private l0:Z

.field private final m0:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final n0:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private o0:J

.field private p0:J


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/ad/b;Landroid/app/Activity;Ljava/util/Map;Lcom/applovin/impl/sdk/k;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V
    .locals 14

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v1, p4

    .line 4
    .line 5
    invoke-direct/range {p0 .. p7}, Lcom/applovin/impl/r1;-><init>(Lcom/applovin/impl/sdk/ad/b;Landroid/app/Activity;Ljava/util/Map;Lcom/applovin/impl/sdk/k;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V

    .line 6
    .line 7
    .line 8
    new-instance v2, Lcom/applovin/impl/w1;

    .line 9
    .line 10
    iget-object v3, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 11
    .line 12
    iget-object v4, p0, Lcom/applovin/impl/r1;->d:Landroid/app/Activity;

    .line 13
    .line 14
    iget-object v5, p0, Lcom/applovin/impl/r1;->b:Lcom/applovin/impl/sdk/k;

    .line 15
    .line 16
    invoke-direct {v2, v3, v4, v5}, Lcom/applovin/impl/w1;-><init>(Lcom/applovin/impl/sdk/ad/b;Landroid/app/Activity;Lcom/applovin/impl/sdk/k;)V

    .line 17
    .line 18
    .line 19
    iput-object v2, p0, Lcom/applovin/impl/v1;->N:Lcom/applovin/impl/w1;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    iput-object v2, p0, Lcom/applovin/impl/v1;->Y:Landroid/widget/ImageView;

    .line 23
    .line 24
    new-instance v3, Lcom/applovin/impl/v1$e;

    .line 25
    .line 26
    invoke-direct {v3, p0, v2}, Lcom/applovin/impl/v1$e;-><init>(Lcom/applovin/impl/v1;Lcom/applovin/impl/v1$a;)V

    .line 27
    .line 28
    .line 29
    iput-object v3, p0, Lcom/applovin/impl/v1;->Z:Lcom/applovin/impl/v1$e;

    .line 30
    .line 31
    new-instance v4, Lcom/applovin/impl/v1$d;

    .line 32
    .line 33
    invoke-direct {v4, p0, v2}, Lcom/applovin/impl/v1$d;-><init>(Lcom/applovin/impl/v1;Lcom/applovin/impl/v1$a;)V

    .line 34
    .line 35
    .line 36
    iput-object v4, p0, Lcom/applovin/impl/v1;->a0:Lcom/applovin/impl/v1$d;

    .line 37
    .line 38
    new-instance v5, Landroid/os/Handler;

    .line 39
    .line 40
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 45
    .line 46
    .line 47
    iput-object v5, p0, Lcom/applovin/impl/v1;->b0:Landroid/os/Handler;

    .line 48
    .line 49
    new-instance v6, Landroid/os/Handler;

    .line 50
    .line 51
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 56
    .line 57
    .line 58
    iput-object v6, p0, Lcom/applovin/impl/v1;->c0:Landroid/os/Handler;

    .line 59
    .line 60
    new-instance v7, Lcom/applovin/impl/w0;

    .line 61
    .line 62
    iget-object v8, p0, Lcom/applovin/impl/r1;->b:Lcom/applovin/impl/sdk/k;

    .line 63
    .line 64
    invoke-direct {v7, v5, v8}, Lcom/applovin/impl/w0;-><init>(Landroid/os/Handler;Lcom/applovin/impl/sdk/k;)V

    .line 65
    .line 66
    .line 67
    iput-object v7, p0, Lcom/applovin/impl/v1;->d0:Lcom/applovin/impl/w0;

    .line 68
    .line 69
    new-instance v5, Lcom/applovin/impl/w0;

    .line 70
    .line 71
    iget-object v8, p0, Lcom/applovin/impl/r1;->b:Lcom/applovin/impl/sdk/k;

    .line 72
    .line 73
    invoke-direct {v5, v6, v8}, Lcom/applovin/impl/w0;-><init>(Landroid/os/Handler;Lcom/applovin/impl/sdk/k;)V

    .line 74
    .line 75
    .line 76
    iput-object v5, p0, Lcom/applovin/impl/v1;->e0:Lcom/applovin/impl/w0;

    .line 77
    .line 78
    iget-object v5, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 79
    .line 80
    invoke-virtual {v5}, Lcom/applovin/impl/sdk/ad/b;->Q0()Z

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    iput-boolean v5, p0, Lcom/applovin/impl/v1;->f0:Z

    .line 85
    .line 86
    iget-object v6, p0, Lcom/applovin/impl/r1;->b:Lcom/applovin/impl/sdk/k;

    .line 87
    .line 88
    invoke-static {v6}, Lcom/applovin/impl/z6;->e(Lcom/applovin/impl/sdk/k;)Z

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    iput-boolean v6, p0, Lcom/applovin/impl/v1;->g0:Z

    .line 93
    .line 94
    const/4 v6, -0x1

    .line 95
    iput v6, p0, Lcom/applovin/impl/v1;->j0:I

    .line 96
    .line 97
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 98
    .line 99
    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 100
    .line 101
    .line 102
    iput-object v6, p0, Lcom/applovin/impl/v1;->m0:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 103
    .line 104
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 105
    .line 106
    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 107
    .line 108
    .line 109
    iput-object v6, p0, Lcom/applovin/impl/v1;->n0:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 110
    .line 111
    const-wide/16 v8, -0x2

    .line 112
    .line 113
    iput-wide v8, p0, Lcom/applovin/impl/v1;->o0:J

    .line 114
    .line 115
    const-wide/16 v8, 0x0

    .line 116
    .line 117
    iput-wide v8, p0, Lcom/applovin/impl/v1;->p0:J

    .line 118
    .line 119
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->hasVideoUrl()Z

    .line 120
    .line 121
    .line 122
    move-result v6

    .line 123
    if-eqz v6, :cond_8

    .line 124
    .line 125
    new-instance v6, Lcom/applovin/impl/adview/AppLovinVideoView;

    .line 126
    .line 127
    invoke-direct {v6, v0}, Lcom/applovin/impl/adview/AppLovinVideoView;-><init>(Landroid/content/Context;)V

    .line 128
    .line 129
    .line 130
    iput-object v6, p0, Lcom/applovin/impl/v1;->Q:Lcom/applovin/impl/adview/AppLovinVideoView;

    .line 131
    .line 132
    invoke-virtual {v6, v3}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v6, v3}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v6, v3}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->h()Landroid/os/Bundle;

    .line 142
    .line 143
    .line 144
    move-result-object v10

    .line 145
    invoke-static {v6}, Lcom/applovin/impl/q7;->a(Landroid/view/View;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v11

    .line 149
    const-string v12, "video_view_address"

    .line 150
    .line 151
    invoke-virtual {v10, v12, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    new-instance v10, Landroid/view/View;

    .line 155
    .line 156
    invoke-direct {v10, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 157
    .line 158
    .line 159
    iput-object v10, p0, Lcom/applovin/impl/v1;->P:Landroid/view/View;

    .line 160
    .line 161
    const/16 v11, 0xfe

    .line 162
    .line 163
    const/4 v12, 0x0

    .line 164
    invoke-static {v11, v12, v12, v12}, Landroid/graphics/Color;->argb(IIII)I

    .line 165
    .line 166
    .line 167
    move-result v11

    .line 168
    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundColor(I)V

    .line 169
    .line 170
    .line 171
    sget-object v11, Lcom/applovin/impl/l4;->k1:Lcom/applovin/impl/l4;

    .line 172
    .line 173
    invoke-virtual {v1, v11}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/l4;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v11

    .line 177
    check-cast v11, Ljava/lang/Boolean;

    .line 178
    .line 179
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    .line 180
    .line 181
    .line 182
    move-result v11

    .line 183
    if-eqz v11, :cond_0

    .line 184
    .line 185
    new-instance v6, Lcom/applovin/impl/adview/AppLovinTouchToClickListener;

    .line 186
    .line 187
    sget-object v11, Lcom/applovin/impl/l4;->i0:Lcom/applovin/impl/l4;

    .line 188
    .line 189
    invoke-direct {v6, v1, v11, v0, v3}, Lcom/applovin/impl/adview/AppLovinTouchToClickListener;-><init>(Lcom/applovin/impl/sdk/k;Lcom/applovin/impl/l4;Landroid/content/Context;Lcom/applovin/impl/adview/AppLovinTouchToClickListener$OnClickListener;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v10, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 193
    .line 194
    .line 195
    goto :goto_0

    .line 196
    :cond_0
    new-instance v11, Lcom/applovin/impl/adview/AppLovinTouchToClickListener;

    .line 197
    .line 198
    sget-object v13, Lcom/applovin/impl/l4;->i0:Lcom/applovin/impl/l4;

    .line 199
    .line 200
    invoke-direct {v11, v1, v13, v0, v3}, Lcom/applovin/impl/adview/AppLovinTouchToClickListener;-><init>(Lcom/applovin/impl/sdk/k;Lcom/applovin/impl/l4;Landroid/content/Context;Lcom/applovin/impl/adview/AppLovinTouchToClickListener$OnClickListener;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v6, v11}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 204
    .line 205
    .line 206
    new-instance v3, Lcom/applovin/impl/Uuuuuuuuuuu;

    .line 207
    .line 208
    invoke-direct {v3}, Lcom/applovin/impl/Uuuuuuuuuuu;-><init>()V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v10, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 212
    .line 213
    .line 214
    :goto_0
    new-instance v3, Lcom/applovin/impl/v1$f;

    .line 215
    .line 216
    invoke-direct {v3, p0, v2}, Lcom/applovin/impl/v1$f;-><init>(Lcom/applovin/impl/v1;Lcom/applovin/impl/v1$a;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->o0()J

    .line 220
    .line 221
    .line 222
    move-result-wide v10

    .line 223
    cmp-long v6, v10, v8

    .line 224
    .line 225
    const/16 v8, 0x8

    .line 226
    .line 227
    if-ltz v6, :cond_1

    .line 228
    .line 229
    new-instance v6, Lcom/applovin/impl/adview/g;

    .line 230
    .line 231
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->e0()Lcom/applovin/impl/adview/e$a;

    .line 232
    .line 233
    .line 234
    move-result-object v9

    .line 235
    invoke-direct {v6, v9, v0}, Lcom/applovin/impl/adview/g;-><init>(Lcom/applovin/impl/adview/e$a;Landroid/app/Activity;)V

    .line 236
    .line 237
    .line 238
    iput-object v6, p0, Lcom/applovin/impl/v1;->S:Lcom/applovin/impl/adview/g;

    .line 239
    .line 240
    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v6, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    .line 245
    .line 246
    goto :goto_1

    .line 247
    :cond_1
    iput-object v2, p0, Lcom/applovin/impl/v1;->S:Lcom/applovin/impl/adview/g;

    .line 248
    .line 249
    :goto_1
    iget-boolean v6, p0, Lcom/applovin/impl/v1;->g0:Z

    .line 250
    .line 251
    invoke-static {v6, v1}, Lcom/applovin/impl/v1;->a(ZLcom/applovin/impl/sdk/k;)Z

    .line 252
    .line 253
    .line 254
    move-result v6

    .line 255
    const/4 v9, 0x1

    .line 256
    if-eqz v6, :cond_2

    .line 257
    .line 258
    new-instance v6, Landroid/widget/ImageView;

    .line 259
    .line 260
    invoke-direct {v6, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 261
    .line 262
    .line 263
    iput-object v6, p0, Lcom/applovin/impl/v1;->U:Landroid/widget/ImageView;

    .line 264
    .line 265
    sget-object v10, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 266
    .line 267
    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v6, v9}, Landroid/view/View;->setClickable(Z)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v6, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    .line 275
    .line 276
    iget-boolean v3, p0, Lcom/applovin/impl/v1;->g0:Z

    .line 277
    .line 278
    invoke-direct {p0, v3}, Lcom/applovin/impl/v1;->e(Z)V

    .line 279
    .line 280
    .line 281
    goto :goto_2

    .line 282
    :cond_2
    iput-object v2, p0, Lcom/applovin/impl/v1;->U:Landroid/widget/ImageView;

    .line 283
    .line 284
    :goto_2
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->l0()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v3

    .line 288
    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    .line 289
    .line 290
    .line 291
    move-result v6

    .line 292
    if-eqz v6, :cond_3

    .line 293
    .line 294
    new-instance v6, Lcom/applovin/impl/y7;

    .line 295
    .line 296
    invoke-direct {v6, v1}, Lcom/applovin/impl/y7;-><init>(Lcom/applovin/impl/sdk/k;)V

    .line 297
    .line 298
    .line 299
    new-instance v10, Ljava/lang/ref/WeakReference;

    .line 300
    .line 301
    invoke-direct {v10, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v6, v10}, Lcom/applovin/impl/y7;->a(Ljava/lang/ref/WeakReference;)V

    .line 305
    .line 306
    .line 307
    new-instance v4, Lcom/applovin/impl/adview/l;

    .line 308
    .line 309
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->k0()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v10

    .line 313
    invoke-direct {v4, v10, p1, v6, v0}, Lcom/applovin/impl/adview/l;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/impl/y7;Landroid/content/Context;)V

    .line 314
    .line 315
    .line 316
    iput-object v4, p0, Lcom/applovin/impl/v1;->V:Lcom/applovin/impl/adview/l;

    .line 317
    .line 318
    invoke-virtual {v4, v3}, Lcom/applovin/impl/adview/l;->a(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    goto :goto_3

    .line 322
    :cond_3
    iput-object v2, p0, Lcom/applovin/impl/v1;->V:Lcom/applovin/impl/adview/l;

    .line 323
    .line 324
    :goto_3
    if-eqz v5, :cond_4

    .line 325
    .line 326
    new-instance v3, Lcom/applovin/impl/a;

    .line 327
    .line 328
    sget-object v4, Lcom/applovin/impl/l4;->n2:Lcom/applovin/impl/l4;

    .line 329
    .line 330
    invoke-virtual {v1, v4}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/l4;)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v4

    .line 334
    check-cast v4, Ljava/lang/Integer;

    .line 335
    .line 336
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 337
    .line 338
    .line 339
    move-result v4

    .line 340
    const v5, 0x101007a

    .line 341
    .line 342
    .line 343
    invoke-direct {v3, v0, v4, v5}, Lcom/applovin/impl/a;-><init>(Landroid/content/Context;II)V

    .line 344
    .line 345
    .line 346
    iput-object v3, p0, Lcom/applovin/impl/v1;->R:Lcom/applovin/impl/a;

    .line 347
    .line 348
    const-string v4, "#75FFFFFF"

    .line 349
    .line 350
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 351
    .line 352
    .line 353
    move-result v4

    .line 354
    invoke-virtual {v3, v4}, Lcom/applovin/impl/a;->setColor(I)V

    .line 355
    .line 356
    .line 357
    const-string v4, "#00000000"

    .line 358
    .line 359
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 360
    .line 361
    .line 362
    move-result v4

    .line 363
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 367
    .line 368
    .line 369
    invoke-static {v0}, Lcom/applovin/communicator/AppLovinCommunicator;->getInstance(Landroid/content/Context;)Lcom/applovin/communicator/AppLovinCommunicator;

    .line 370
    .line 371
    .line 372
    move-result-object v3

    .line 373
    const-string v4, "video_caching_failed"

    .line 374
    .line 375
    invoke-virtual {v3, p0, v4}, Lcom/applovin/communicator/AppLovinCommunicator;->subscribe(Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    goto :goto_4

    .line 379
    :cond_4
    iput-object v2, p0, Lcom/applovin/impl/v1;->R:Lcom/applovin/impl/a;

    .line 380
    .line 381
    :goto_4
    invoke-virtual {p0}, Lcom/applovin/impl/r1;->d()I

    .line 382
    .line 383
    .line 384
    move-result v3

    .line 385
    sget-object v4, Lcom/applovin/impl/l4;->S1:Lcom/applovin/impl/l4;

    .line 386
    .line 387
    invoke-virtual {v1, v4}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/l4;)Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v4

    .line 391
    check-cast v4, Ljava/lang/Boolean;

    .line 392
    .line 393
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 394
    .line 395
    .line 396
    move-result v4

    .line 397
    if-eqz v4, :cond_5

    .line 398
    .line 399
    if-lez v3, :cond_5

    .line 400
    .line 401
    move v12, v9

    .line 402
    :cond_5
    iget-object v4, p0, Lcom/applovin/impl/v1;->T:Lcom/applovin/impl/e0;

    .line 403
    .line 404
    if-nez v4, :cond_6

    .line 405
    .line 406
    if-eqz v12, :cond_6

    .line 407
    .line 408
    new-instance v4, Lcom/applovin/impl/e0;

    .line 409
    .line 410
    invoke-direct {v4, v0}, Lcom/applovin/impl/e0;-><init>(Landroid/content/Context;)V

    .line 411
    .line 412
    .line 413
    iput-object v4, p0, Lcom/applovin/impl/v1;->T:Lcom/applovin/impl/e0;

    .line 414
    .line 415
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->t()I

    .line 416
    .line 417
    .line 418
    move-result v4

    .line 419
    iget-object v5, p0, Lcom/applovin/impl/v1;->T:Lcom/applovin/impl/e0;

    .line 420
    .line 421
    invoke-virtual {v5, v4}, Lcom/applovin/impl/e0;->setTextColor(I)V

    .line 422
    .line 423
    .line 424
    iget-object v5, p0, Lcom/applovin/impl/v1;->T:Lcom/applovin/impl/e0;

    .line 425
    .line 426
    sget-object v6, Lcom/applovin/impl/l4;->R1:Lcom/applovin/impl/l4;

    .line 427
    .line 428
    invoke-virtual {v1, v6}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/l4;)Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object v6

    .line 432
    check-cast v6, Ljava/lang/Integer;

    .line 433
    .line 434
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 435
    .line 436
    .line 437
    move-result v6

    .line 438
    int-to-float v6, v6

    .line 439
    invoke-virtual {v5, v6}, Lcom/applovin/impl/e0;->setTextSize(F)V

    .line 440
    .line 441
    .line 442
    iget-object v5, p0, Lcom/applovin/impl/v1;->T:Lcom/applovin/impl/e0;

    .line 443
    .line 444
    invoke-virtual {v5, v4}, Lcom/applovin/impl/e0;->setFinishedStrokeColor(I)V

    .line 445
    .line 446
    .line 447
    iget-object v4, p0, Lcom/applovin/impl/v1;->T:Lcom/applovin/impl/e0;

    .line 448
    .line 449
    sget-object v5, Lcom/applovin/impl/l4;->Q1:Lcom/applovin/impl/l4;

    .line 450
    .line 451
    invoke-virtual {v1, v5}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/l4;)Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    move-result-object v5

    .line 455
    check-cast v5, Ljava/lang/Integer;

    .line 456
    .line 457
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 458
    .line 459
    .line 460
    move-result v5

    .line 461
    int-to-float v5, v5

    .line 462
    invoke-virtual {v4, v5}, Lcom/applovin/impl/e0;->setFinishedStrokeWidth(F)V

    .line 463
    .line 464
    .line 465
    iget-object v4, p0, Lcom/applovin/impl/v1;->T:Lcom/applovin/impl/e0;

    .line 466
    .line 467
    invoke-virtual {v4, v3}, Lcom/applovin/impl/e0;->setMax(I)V

    .line 468
    .line 469
    .line 470
    iget-object v4, p0, Lcom/applovin/impl/v1;->T:Lcom/applovin/impl/e0;

    .line 471
    .line 472
    invoke-virtual {v4, v3}, Lcom/applovin/impl/e0;->setProgress(I)V

    .line 473
    .line 474
    .line 475
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 476
    .line 477
    const-wide/16 v5, 0x1

    .line 478
    .line 479
    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 480
    .line 481
    .line 482
    move-result-wide v4

    .line 483
    new-instance v6, Lcom/applovin/impl/v1$a;

    .line 484
    .line 485
    invoke-direct {v6, p0, v3}, Lcom/applovin/impl/v1$a;-><init>(Lcom/applovin/impl/v1;I)V

    .line 486
    .line 487
    .line 488
    const-string v3, "COUNTDOWN_CLOCK"

    .line 489
    .line 490
    invoke-virtual {v7, v3, v4, v5, v6}, Lcom/applovin/impl/w0;->a(Ljava/lang/String;JLcom/applovin/impl/w0$b;)V

    .line 491
    .line 492
    .line 493
    :cond_6
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->v0()Z

    .line 494
    .line 495
    .line 496
    move-result v3

    .line 497
    if-eqz v3, :cond_7

    .line 498
    .line 499
    sget-object v3, Lcom/applovin/impl/l4;->k2:Lcom/applovin/impl/l4;

    .line 500
    .line 501
    invoke-virtual {v1, v3}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/l4;)Ljava/lang/Object;

    .line 502
    .line 503
    .line 504
    move-result-object v3

    .line 505
    check-cast v3, Ljava/lang/Long;

    .line 506
    .line 507
    sget-object v4, Lcom/applovin/impl/l4;->l2:Lcom/applovin/impl/l4;

    .line 508
    .line 509
    invoke-virtual {v1, v4}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/l4;)Ljava/lang/Object;

    .line 510
    .line 511
    .line 512
    move-result-object v1

    .line 513
    check-cast v1, Ljava/lang/Integer;

    .line 514
    .line 515
    new-instance v4, Landroid/widget/ProgressBar;

    .line 516
    .line 517
    const v5, 0x1010078

    .line 518
    .line 519
    .line 520
    invoke-direct {v4, v0, v2, v5}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 521
    .line 522
    .line 523
    iput-object v4, p0, Lcom/applovin/impl/v1;->W:Landroid/widget/ProgressBar;

    .line 524
    .line 525
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->u0()I

    .line 526
    .line 527
    .line 528
    move-result p1

    .line 529
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 530
    .line 531
    .line 532
    move-result v0

    .line 533
    invoke-direct {p0, v4, p1, v0}, Lcom/applovin/impl/v1;->a(Landroid/widget/ProgressBar;II)V

    .line 534
    .line 535
    .line 536
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 537
    .line 538
    .line 539
    move-result-wide v2

    .line 540
    new-instance p1, Lcom/applovin/impl/v1$b;

    .line 541
    .line 542
    invoke-direct {p1, p0, v1}, Lcom/applovin/impl/v1$b;-><init>(Lcom/applovin/impl/v1;Ljava/lang/Integer;)V

    .line 543
    .line 544
    .line 545
    const-string v0, "PROGRESS_BAR"

    .line 546
    .line 547
    invoke-virtual {v7, v0, v2, v3, p1}, Lcom/applovin/impl/w0;->a(Ljava/lang/String;JLcom/applovin/impl/w0$b;)V

    .line 548
    .line 549
    .line 550
    return-void

    .line 551
    :cond_7
    iput-object v2, p0, Lcom/applovin/impl/v1;->W:Landroid/widget/ProgressBar;

    .line 552
    .line 553
    return-void

    .line 554
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 555
    .line 556
    const-string v0, "Attempting to use fullscreen video ad presenter for non-video ad"

    .line 557
    .line 558
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 559
    .line 560
    .line 561
    throw p1
.end method

.method private synthetic I()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/v1;->R:Lcom/applovin/impl/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/applovin/impl/a;->b()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private synthetic J()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/v1;->R:Lcom/applovin/impl/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/applovin/impl/a;->a()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/applovin/impl/v1;->R:Lcom/applovin/impl/a;

    .line 9
    .line 10
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    new-instance v1, Lcom/applovin/impl/Uuuuuuu;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Lcom/applovin/impl/Uuuuuuu;-><init>(Lcom/applovin/impl/a;)V

    .line 16
    .line 17
    .line 18
    const-wide/16 v2, 0x7d0

    .line 19
    .line 20
    invoke-virtual {p0, v1, v2, v3}, Lcom/applovin/impl/r1;->a(Ljava/lang/Runnable;J)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method private synthetic K()V
    .locals 2

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/applovin/impl/v1;->o0:J

    .line 4
    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iput-wide v0, p0, Lcom/applovin/impl/v1;->p0:J

    .line 10
    .line 11
    return-void
.end method

.method private synthetic L()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/v1;->R:Lcom/applovin/impl/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/applovin/impl/a;->a()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private synthetic M()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/applovin/impl/r1;->q:J

    .line 6
    .line 7
    return-void
.end method

.method private N()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->m0()Lcom/applovin/impl/p7;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/applovin/impl/p7;->j()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget-boolean v1, p0, Lcom/applovin/impl/v1;->k0:Z

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    iget-object v1, p0, Lcom/applovin/impl/v1;->V:Lcom/applovin/impl/adview/l;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x4

    .line 28
    if-ne v1, v2, :cond_0

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v1, 0x0

    .line 33
    :goto_0
    invoke-virtual {v0}, Lcom/applovin/impl/p7;->h()J

    .line 34
    .line 35
    .line 36
    move-result-wide v2

    .line 37
    new-instance v0, Lcom/applovin/impl/Uuuuu;

    .line 38
    .line 39
    invoke-direct {v0, p0, v1, v2, v3}, Lcom/applovin/impl/Uuuuu;-><init>(Lcom/applovin/impl/v1;ZJ)V

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method

.method private O()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/applovin/impl/v1;->k0:Z

    .line 2
    .line 3
    const-string v1, "AppLovinFullscreenActivity"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_4

    .line 12
    .line 13
    iget-object v0, p0, Lcom/applovin/impl/r1;->c:Lcom/applovin/impl/sdk/o;

    .line 14
    .line 15
    const-string v2, "Skip video resume - postitial shown"

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/r1;->b:Lcom/applovin/impl/sdk/k;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->m0()Lcom/applovin/impl/sdk/SessionTracker;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/SessionTracker;->isApplicationPaused()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_4

    .line 38
    .line 39
    iget-object v0, p0, Lcom/applovin/impl/r1;->c:Lcom/applovin/impl/sdk/o;

    .line 40
    .line 41
    const-string v2, "Skip video resume - app paused"

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    iget v0, p0, Lcom/applovin/impl/v1;->j0:I

    .line 48
    .line 49
    if-ltz v0, :cond_3

    .line 50
    .line 51
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    iget-object v0, p0, Lcom/applovin/impl/r1;->c:Lcom/applovin/impl/sdk/o;

    .line 58
    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v3, "Resuming video at position "

    .line 65
    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget v3, p0, Lcom/applovin/impl/v1;->j0:I

    .line 70
    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v3, "ms for MediaPlayer: "

    .line 75
    .line 76
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget-object v3, p0, Lcom/applovin/impl/v1;->O:Landroid/media/MediaPlayer;

    .line 80
    .line 81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/v1;->Q:Lcom/applovin/impl/adview/AppLovinVideoView;

    .line 92
    .line 93
    iget v1, p0, Lcom/applovin/impl/v1;->j0:I

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/applovin/impl/v1;->Q:Lcom/applovin/impl/adview/AppLovinVideoView;

    .line 99
    .line 100
    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/applovin/impl/v1;->d0:Lcom/applovin/impl/w0;

    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/applovin/impl/w0;->b()V

    .line 106
    .line 107
    .line 108
    const/4 v0, -0x1

    .line 109
    iput v0, p0, Lcom/applovin/impl/v1;->j0:I

    .line 110
    .line 111
    new-instance v0, Lcom/applovin/impl/Uuu;

    .line 112
    .line 113
    invoke-direct {v0, p0}, Lcom/applovin/impl/Uuu;-><init>(Lcom/applovin/impl/v1;)V

    .line 114
    .line 115
    .line 116
    const-wide/16 v1, 0xfa

    .line 117
    .line 118
    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/impl/r1;->a(Ljava/lang/Runnable;J)V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :cond_3
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_4

    .line 127
    .line 128
    iget-object v0, p0, Lcom/applovin/impl/r1;->c:Lcom/applovin/impl/sdk/o;

    .line 129
    .line 130
    const-string v2, "Invalid last video position"

    .line 131
    .line 132
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    :cond_4
    return-void
.end method

.method private Q()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/v1;->n0:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/applovin/impl/v1;->S:Lcom/applovin/impl/adview/g;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/b;->o0()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    new-instance v3, Lcom/applovin/impl/Uuuuuuuuuu;

    .line 20
    .line 21
    invoke-direct {v3, p0}, Lcom/applovin/impl/Uuuuuuuuuu;-><init>(Lcom/applovin/impl/v1;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/applovin/impl/r1;->a(Lcom/applovin/impl/adview/g;JLjava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwww(Lcom/applovin/impl/v1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/applovin/impl/v1;->L()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwww(Lcom/applovin/impl/v1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/applovin/impl/v1;->I()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwww(Lcom/applovin/impl/v1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/applovin/impl/v1;->M()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwww(Lcom/applovin/impl/v1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/applovin/impl/v1;->Q()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwww(Lcom/applovin/impl/v1;ZJ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/v1;->b(ZJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwww(Lcom/applovin/impl/v1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/applovin/impl/v1;->J()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwww(Lcom/applovin/impl/v1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/applovin/impl/v1;->O()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwww(Lcom/applovin/impl/v1;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/applovin/impl/v1;->h(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwww(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/applovin/impl/v1;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwww(Lcom/applovin/impl/v1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/applovin/impl/v1;->K()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lcom/applovin/impl/v1;)Landroid/media/MediaPlayer;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/applovin/impl/v1;->O:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method public static synthetic a(Lcom/applovin/impl/v1;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/applovin/impl/v1;->O:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method private a(Landroid/widget/ProgressBar;II)V
    .locals 0

    .line 27
    invoke-virtual {p1, p3}, Landroid/widget/ProgressBar;->setMax(I)V

    const/4 p3, 0x0

    .line 28
    invoke-virtual {p1, p3, p3, p3, p3}, Landroid/view/View;->setPadding(IIII)V

    .line 29
    invoke-static {}, Lcom/applovin/impl/k0;->d()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 30
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 31
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method private static synthetic a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic a(Lcom/applovin/impl/v1;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/applovin/impl/v1;->l0:Z

    return p1
.end method

.method private static a(ZLcom/applovin/impl/sdk/k;)Z
    .locals 2

    .line 50
    sget-object v0, Lcom/applovin/impl/l4;->c2:Lcom/applovin/impl/l4;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/l4;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 51
    :cond_0
    sget-object v0, Lcom/applovin/impl/l4;->d2:Lcom/applovin/impl/l4;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/l4;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eqz p0, :cond_1

    return v1

    .line 52
    :cond_1
    sget-object p0, Lcom/applovin/impl/l4;->f2:Lcom/applovin/impl/l4;

    invoke-virtual {p1, p0}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/l4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method public static synthetic b(Lcom/applovin/impl/v1;)Lcom/applovin/impl/v1$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/v1;->Z:Lcom/applovin/impl/v1$e;

    return-object p0
.end method

.method private synthetic b(ZJ)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/applovin/impl/v1;->V:Lcom/applovin/impl/adview/l;

    invoke-static {p1, p2, p3, v0}, Lcom/applovin/impl/q7;->a(Landroid/view/View;JLjava/lang/Runnable;)V

    return-void

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/v1;->V:Lcom/applovin/impl/adview/l;

    invoke-static {p1, p2, p3, v0}, Lcom/applovin/impl/q7;->b(Landroid/view/View;JLjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic c(Lcom/applovin/impl/v1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/applovin/impl/v1;->Q()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private e(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/applovin/impl/k0;->d()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/applovin/impl/r1;->d:Landroid/app/Activity;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    sget v1, Lcom/applovin/sdk/R$drawable;->applovin_ic_unmute_to_mute:I

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget v1, Lcom/applovin/sdk/R$drawable;->applovin_ic_mute_to_unmute:I

    .line 15
    .line 16
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object p1, p0, Lcom/applovin/impl/v1;->U:Landroid/widget/ImageView;

    .line 25
    .line 26
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/applovin/impl/v1;->U:Landroid/widget/ImageView;

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    if-eqz p1, :cond_2

    .line 41
    .line 42
    iget-object p1, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->Q()Landroid/net/Uri;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    iget-object p1, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->j0()Landroid/net/Uri;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    :goto_1
    iget-object v0, p0, Lcom/applovin/impl/v1;->U:Landroid/widget/ImageView;

    .line 56
    .line 57
    iget-object v1, p0, Lcom/applovin/impl/r1;->b:Lcom/applovin/impl/sdk/k;

    .line 58
    .line 59
    invoke-static {v0, p1, v1}, Lcom/applovin/impl/sdk/utils/ImageViewUtils;->setImageUri(Landroid/widget/ImageView;Landroid/net/Uri;Lcom/applovin/impl/sdk/k;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method private f(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/applovin/impl/v1;->D()I

    move-result v0

    iput v0, p0, Lcom/applovin/impl/v1;->i0:I

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/applovin/impl/v1;->Q:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->pause()V

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/v1;->Q:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->stopPlayback()V

    return-void
.end method

.method private synthetic h(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/v1;->V:Lcom/applovin/impl/adview/l;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/applovin/impl/r1;->b:Lcom/applovin/impl/sdk/k;

    .line 4
    .line 5
    const-string v2, "AppLovinFullscreenActivity"

    .line 6
    .line 7
    invoke-static {v0, p1, v2, v1}, Lcom/applovin/impl/a8;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/k;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public B()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/v1;->N:Lcom/applovin/impl/w1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/applovin/impl/r1;->l:Lcom/applovin/impl/adview/g;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/applovin/impl/w1;->a(Lcom/applovin/impl/adview/g;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iput-wide v0, p0, Lcom/applovin/impl/r1;->q:J

    .line 13
    .line 14
    return-void
.end method

.method public D()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/v1;->Q:Lcom/applovin/impl/adview/AppLovinVideoView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-long v0, v0

    .line 8
    iget-boolean v2, p0, Lcom/applovin/impl/v1;->l0:Z

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    const/16 v0, 0x64

    .line 13
    .line 14
    return v0

    .line 15
    :cond_0
    const-wide/16 v2, 0x0

    .line 16
    .line 17
    cmp-long v2, v0, v2

    .line 18
    .line 19
    if-lez v2, :cond_1

    .line 20
    .line 21
    long-to-float v0, v0

    .line 22
    iget-wide v1, p0, Lcom/applovin/impl/v1;->h0:J

    .line 23
    .line 24
    long-to-float v1, v1

    .line 25
    div-float/2addr v0, v1

    .line 26
    const/high16 v1, 0x42c80000    # 100.0f

    .line 27
    .line 28
    mul-float/2addr v0, v1

    .line 29
    float-to-int v0, v0

    .line 30
    return v0

    .line 31
    :cond_1
    iget v0, p0, Lcom/applovin/impl/v1;->i0:I

    .line 32
    .line 33
    return v0
.end method

.method public E()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/applovin/impl/r1;->y:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/applovin/impl/r1;->y:I

    .line 6
    .line 7
    iget-object v0, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->E()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const-string v1, "AppLovinFullscreenActivity"

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/applovin/impl/r1;->c:Lcom/applovin/impl/sdk/o;

    .line 24
    .line 25
    const-string v2, "Dismissing ad on video skip..."

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    const-string v0, "video_skip"

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lcom/applovin/impl/v1;->a(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    iget-object v0, p0, Lcom/applovin/impl/r1;->c:Lcom/applovin/impl/sdk/o;

    .line 43
    .line 44
    const-string v2, "Skipping video..."

    .line 45
    .line 46
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    invoke-virtual {p0}, Lcom/applovin/impl/v1;->U()V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public F()V
    .locals 1

    .line 1
    new-instance v0, Lcom/applovin/impl/Uuuuuu;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/applovin/impl/Uuuuuu;-><init>(Lcom/applovin/impl/v1;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public G()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/applovin/impl/r1;->K:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->j1()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/applovin/impl/v1;->H()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0
.end method

.method public H()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/applovin/impl/v1;->D()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/b;->q0()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-lt v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public P()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->Y()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v0, v0, v2

    .line 10
    .line 11
    if-gez v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->Z()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-ltz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void

    .line 23
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->Y()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    cmp-long v0, v0, v2

    .line 30
    .line 31
    if-ltz v0, :cond_2

    .line 32
    .line 33
    iget-object v0, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->Y()J

    .line 36
    .line 37
    .line 38
    move-result-wide v0

    .line 39
    goto :goto_3

    .line 40
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 41
    .line 42
    check-cast v0, Lcom/applovin/impl/sdk/ad/a;

    .line 43
    .line 44
    iget-wide v4, p0, Lcom/applovin/impl/v1;->h0:J

    .line 45
    .line 46
    cmp-long v1, v4, v2

    .line 47
    .line 48
    if-lez v1, :cond_3

    .line 49
    .line 50
    move-wide v2, v4

    .line 51
    :cond_3
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->f1()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_5

    .line 56
    .line 57
    iget-object v1, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 58
    .line 59
    check-cast v1, Lcom/applovin/impl/sdk/ad/a;

    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/a;->p1()F

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    float-to-int v1, v1

    .line 66
    if-lez v1, :cond_4

    .line 67
    .line 68
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 69
    .line 70
    int-to-long v4, v1

    .line 71
    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 72
    .line 73
    .line 74
    move-result-wide v0

    .line 75
    :goto_1
    add-long/2addr v2, v0

    .line 76
    goto :goto_2

    .line 77
    :cond_4
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->s()J

    .line 78
    .line 79
    .line 80
    move-result-wide v0

    .line 81
    long-to-int v0, v0

    .line 82
    if-lez v0, :cond_5

    .line 83
    .line 84
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 85
    .line 86
    int-to-long v4, v0

    .line 87
    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 88
    .line 89
    .line 90
    move-result-wide v0

    .line 91
    goto :goto_1

    .line 92
    :cond_5
    :goto_2
    long-to-double v0, v2

    .line 93
    iget-object v2, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 94
    .line 95
    invoke-virtual {v2}, Lcom/applovin/impl/sdk/ad/b;->Z()I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    int-to-double v2, v2

    .line 100
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    .line 101
    .line 102
    div-double/2addr v2, v4

    .line 103
    mul-double/2addr v0, v2

    .line 104
    double-to-long v0, v0

    .line 105
    :goto_3
    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/r1;->c(J)V

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method public R()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/applovin/impl/r1;->v:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/applovin/impl/v1;->k0:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/applovin/impl/v1;->Q:Lcom/applovin/impl/adview/AppLovinVideoView;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    return v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return v0
.end method

.method public S()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/applovin/impl/r1;->i()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/applovin/impl/v1;->G()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public T()V
    .locals 1

    .line 1
    new-instance v0, Lcom/applovin/impl/Uuuuuuuu;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/applovin/impl/Uuuuuuuu;-><init>(Lcom/applovin/impl/v1;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public U()V
    .locals 11

    .line 1
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/applovin/impl/r1;->c:Lcom/applovin/impl/sdk/o;

    .line 8
    .line 9
    const-string v1, "AppLovinFullscreenActivity"

    .line 10
    .line 11
    const-string v2, "Showing postitial..."

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->m1()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-direct {p0, v0}, Lcom/applovin/impl/v1;->f(Z)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->W()J

    .line 28
    .line 29
    .line 30
    move-result-wide v3

    .line 31
    const-wide/16 v7, 0x0

    .line 32
    .line 33
    cmp-long v0, v3, v7

    .line 34
    .line 35
    if-lez v0, :cond_1

    .line 36
    .line 37
    iput-wide v7, p0, Lcom/applovin/impl/r1;->r:J

    .line 38
    .line 39
    iget-object v0, p0, Lcom/applovin/impl/r1;->b:Lcom/applovin/impl/sdk/k;

    .line 40
    .line 41
    sget-object v1, Lcom/applovin/impl/l4;->t2:Lcom/applovin/impl/l4;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/l4;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    move-object v6, v0

    .line 48
    check-cast v6, Ljava/lang/Long;

    .line 49
    .line 50
    iget-object v0, p0, Lcom/applovin/impl/r1;->b:Lcom/applovin/impl/sdk/k;

    .line 51
    .line 52
    sget-object v1, Lcom/applovin/impl/l4;->w2:Lcom/applovin/impl/l4;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/l4;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    move-object v5, v0

    .line 59
    check-cast v5, Ljava/lang/Integer;

    .line 60
    .line 61
    new-instance v0, Landroid/widget/ProgressBar;

    .line 62
    .line 63
    iget-object v1, p0, Lcom/applovin/impl/r1;->d:Landroid/app/Activity;

    .line 64
    .line 65
    const/4 v2, 0x0

    .line 66
    const v9, 0x1010078

    .line 67
    .line 68
    .line 69
    invoke-direct {v0, v1, v2, v9}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Lcom/applovin/impl/v1;->X:Landroid/widget/ProgressBar;

    .line 73
    .line 74
    iget-object v1, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/b;->V()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    invoke-direct {p0, v0, v1, v2}, Lcom/applovin/impl/v1;->a(Landroid/widget/ProgressBar;II)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/applovin/impl/v1;->e0:Lcom/applovin/impl/w0;

    .line 88
    .line 89
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 90
    .line 91
    .line 92
    move-result-wide v9

    .line 93
    new-instance v1, Lcom/applovin/impl/v1$c;

    .line 94
    .line 95
    move-object v2, p0

    .line 96
    invoke-direct/range {v1 .. v6}, Lcom/applovin/impl/v1$c;-><init>(Lcom/applovin/impl/v1;JLjava/lang/Integer;Ljava/lang/Long;)V

    .line 97
    .line 98
    .line 99
    const-string v3, "POSTITIAL_PROGRESS_BAR"

    .line 100
    .line 101
    invoke-virtual {v0, v3, v9, v10, v1}, Lcom/applovin/impl/w0;->a(Ljava/lang/String;JLcom/applovin/impl/w0$b;)V

    .line 102
    .line 103
    .line 104
    iget-object v0, v2, Lcom/applovin/impl/v1;->e0:Lcom/applovin/impl/w0;

    .line 105
    .line 106
    invoke-virtual {v0}, Lcom/applovin/impl/w0;->b()V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_1
    move-object v2, p0

    .line 111
    :goto_0
    iget-object v0, v2, Lcom/applovin/impl/v1;->N:Lcom/applovin/impl/w1;

    .line 112
    .line 113
    iget-object v1, v2, Lcom/applovin/impl/r1;->k:Lcom/applovin/impl/adview/g;

    .line 114
    .line 115
    iget-object v3, v2, Lcom/applovin/impl/r1;->j:Lcom/applovin/impl/adview/k;

    .line 116
    .line 117
    iget-object v4, v2, Lcom/applovin/impl/r1;->i:Lcom/applovin/adview/AppLovinAdView;

    .line 118
    .line 119
    iget-object v5, v2, Lcom/applovin/impl/v1;->X:Landroid/widget/ProgressBar;

    .line 120
    .line 121
    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/applovin/impl/w1;->a(Lcom/applovin/impl/adview/g;Lcom/applovin/impl/adview/k;Landroid/view/View;Landroid/widget/ProgressBar;)V

    .line 122
    .line 123
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    const-string v1, "javascript:al_onPoststitialShow("

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    iget v1, v2, Lcom/applovin/impl/r1;->y:I

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v1, ","

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    iget v1, v2, Lcom/applovin/impl/r1;->z:I

    .line 145
    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string v1, ");"

    .line 150
    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    iget-object v1, v2, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 159
    .line 160
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/b;->H()I

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    int-to-long v3, v1

    .line 165
    invoke-virtual {p0, v0, v3, v4}, Lcom/applovin/impl/v1;->a(Ljava/lang/String;J)V

    .line 166
    .line 167
    .line 168
    iget-object v0, v2, Lcom/applovin/impl/r1;->k:Lcom/applovin/impl/adview/g;

    .line 169
    .line 170
    if-eqz v0, :cond_3

    .line 171
    .line 172
    iget-object v0, v2, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 173
    .line 174
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->s()J

    .line 175
    .line 176
    .line 177
    move-result-wide v0

    .line 178
    cmp-long v0, v0, v7

    .line 179
    .line 180
    if-ltz v0, :cond_2

    .line 181
    .line 182
    iget-object v0, v2, Lcom/applovin/impl/r1;->k:Lcom/applovin/impl/adview/g;

    .line 183
    .line 184
    iget-object v1, v2, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 185
    .line 186
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/b;->s()J

    .line 187
    .line 188
    .line 189
    move-result-wide v3

    .line 190
    new-instance v1, Lcom/applovin/impl/Xxxxxxxxxxx;

    .line 191
    .line 192
    invoke-direct {v1, p0}, Lcom/applovin/impl/Xxxxxxxxxxx;-><init>(Lcom/applovin/impl/v1;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0, v0, v3, v4, v1}, Lcom/applovin/impl/r1;->a(Lcom/applovin/impl/adview/g;JLjava/lang/Runnable;)V

    .line 196
    .line 197
    .line 198
    goto :goto_1

    .line 199
    :cond_2
    iget-object v0, v2, Lcom/applovin/impl/r1;->k:Lcom/applovin/impl/adview/g;

    .line 200
    .line 201
    const/4 v1, 0x0

    .line 202
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 203
    .line 204
    .line 205
    :cond_3
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    .line 206
    .line 207
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .line 209
    .line 210
    iget-object v1, v2, Lcom/applovin/impl/r1;->k:Lcom/applovin/impl/adview/g;

    .line 211
    .line 212
    if-eqz v1, :cond_4

    .line 213
    .line 214
    new-instance v3, Lcom/applovin/impl/u3;

    .line 215
    .line 216
    sget-object v4, Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;->CLOSE_AD:Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;

    .line 217
    .line 218
    const-string v5, "close button"

    .line 219
    .line 220
    invoke-direct {v3, v1, v4, v5}, Lcom/applovin/impl/u3;-><init>(Landroid/view/View;Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    :cond_4
    iget-object v1, v2, Lcom/applovin/impl/r1;->j:Lcom/applovin/impl/adview/k;

    .line 227
    .line 228
    if-eqz v1, :cond_5

    .line 229
    .line 230
    invoke-virtual {v1}, Lcom/applovin/impl/adview/k;->a()Z

    .line 231
    .line 232
    .line 233
    move-result v1

    .line 234
    if-eqz v1, :cond_5

    .line 235
    .line 236
    new-instance v1, Lcom/applovin/impl/u3;

    .line 237
    .line 238
    iget-object v3, v2, Lcom/applovin/impl/r1;->j:Lcom/applovin/impl/adview/k;

    .line 239
    .line 240
    sget-object v4, Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;->NOT_VISIBLE:Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;

    .line 241
    .line 242
    invoke-virtual {v3}, Lcom/applovin/impl/adview/k;->getIdentifier()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v5

    .line 246
    invoke-direct {v1, v3, v4, v5}, Lcom/applovin/impl/u3;-><init>(Landroid/view/View;Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    :cond_5
    iget-object v1, v2, Lcom/applovin/impl/v1;->X:Landroid/widget/ProgressBar;

    .line 253
    .line 254
    if-eqz v1, :cond_6

    .line 255
    .line 256
    new-instance v3, Lcom/applovin/impl/u3;

    .line 257
    .line 258
    sget-object v4, Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;->OTHER:Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;

    .line 259
    .line 260
    const-string v5, "postitial progress bar"

    .line 261
    .line 262
    invoke-direct {v3, v1, v4, v5}, Lcom/applovin/impl/u3;-><init>(Landroid/view/View;Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    :cond_6
    iget-object v1, v2, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 269
    .line 270
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/b;->getAdEventTracker()Lcom/applovin/impl/s3;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    iget-object v3, v2, Lcom/applovin/impl/r1;->i:Lcom/applovin/adview/AppLovinAdView;

    .line 275
    .line 276
    invoke-virtual {v1, v3, v0}, Lcom/applovin/impl/s3;->b(Landroid/view/View;Ljava/util/List;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {p0}, Lcom/applovin/impl/r1;->q()V

    .line 280
    .line 281
    .line 282
    const/4 v0, 0x1

    .line 283
    iput-boolean v0, v2, Lcom/applovin/impl/v1;->k0:Z

    .line 284
    .line 285
    return-void
.end method

.method public V()V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/applovin/impl/v1;->p0:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    iput-wide v0, p0, Lcom/applovin/impl/v1;->o0:J

    .line 9
    .line 10
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const-string v1, "AppLovinFullscreenActivity"

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/applovin/impl/r1;->c:Lcom/applovin/impl/sdk/o;

    .line 19
    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v3, "Attempting to skip video with skip time: "

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-wide v3, p0, Lcom/applovin/impl/v1;->o0:J

    .line 31
    .line 32
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v3, "ms"

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/applovin/impl/v1;->S()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/applovin/impl/v1;->w()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/applovin/impl/r1;->o()V

    .line 57
    .line 58
    .line 59
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_1

    .line 64
    .line 65
    iget-object v0, p0, Lcom/applovin/impl/r1;->c:Lcom/applovin/impl/sdk/o;

    .line 66
    .line 67
    const-string v2, "Prompting incentivized ad close warning"

    .line 68
    .line 69
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/r1;->H:Lcom/applovin/impl/c2;

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/applovin/impl/c2;->e()V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_2
    invoke-virtual {p0}, Lcom/applovin/impl/v1;->E()V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public W()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/v1;->O:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    :try_start_0
    iget-boolean v1, p0, Lcom/applovin/impl/v1;->g0:Z

    .line 7
    .line 8
    int-to-float v1, v1

    .line 9
    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 10
    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/applovin/impl/v1;->g0:Z

    .line 13
    .line 14
    xor-int/lit8 v0, v0, 0x1

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/applovin/impl/v1;->g0:Z

    .line 17
    .line 18
    invoke-direct {p0, v0}, Lcom/applovin/impl/v1;->e(Z)V

    .line 19
    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/applovin/impl/v1;->g0:Z

    .line 22
    .line 23
    const-wide/16 v1, 0x0

    .line 24
    .line 25
    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/impl/r1;->a(ZJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    :catchall_0
    :goto_0
    return-void
.end method

.method public a()V
    .locals 3

    .line 53
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/r1;->c:Lcom/applovin/impl/sdk/o;

    const-string v1, "AppLovinFullscreenActivity"

    const-string v2, "Skipping video from prompt"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/applovin/impl/v1;->E()V

    return-void
.end method

.method public a(Landroid/view/MotionEvent;Landroid/os/Bundle;)V
    .locals 8

    .line 41
    iget-object v0, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->P0()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 42
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/r1;->c:Lcom/applovin/impl/sdk/o;

    const-string v1, "AppLovinFullscreenActivity"

    const-string v2, "Clicking through video"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->n0()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 44
    iget-object v0, p0, Lcom/applovin/impl/r1;->b:Lcom/applovin/impl/sdk/k;

    sget-object v1, Lcom/applovin/impl/l4;->x:Lcom/applovin/impl/l4;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/l4;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/r1;->d:Landroid/app/Activity;

    if-eqz v0, :cond_1

    :goto_0
    move-object v7, v0

    goto :goto_1

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/r1;->i:Lcom/applovin/adview/AppLovinAdView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/applovin/impl/sdk/k;->o()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 46
    :goto_1
    iget-object v0, p0, Lcom/applovin/impl/r1;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->k()Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    move-object v6, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v7}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->trackAndLaunchVideoClick(Lcom/applovin/impl/sdk/ad/b;Landroid/net/Uri;Landroid/view/MotionEvent;Landroid/os/Bundle;Lcom/applovin/impl/r1;Landroid/content/Context;)V

    .line 47
    iget-object p1, v6, Lcom/applovin/impl/r1;->E:Lcom/applovin/sdk/AppLovinAdClickListener;

    iget-object p2, v6, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-static {p1, p2}, Lcom/applovin/impl/l2;->a(Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAd;)V

    .line 48
    iget p1, v6, Lcom/applovin/impl/r1;->z:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v6, Lcom/applovin/impl/r1;->z:I

    return-void

    :cond_3
    move-object v6, p0

    return-void

    :cond_4
    move-object v6, p0

    .line 49
    invoke-direct {p0}, Lcom/applovin/impl/v1;->N()V

    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 13

    .line 5
    iget-object v0, p0, Lcom/applovin/impl/v1;->N:Lcom/applovin/impl/w1;

    iget-object v1, p0, Lcom/applovin/impl/v1;->U:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/applovin/impl/v1;->S:Lcom/applovin/impl/adview/g;

    iget-object v3, p0, Lcom/applovin/impl/v1;->V:Lcom/applovin/impl/adview/l;

    iget-object v4, p0, Lcom/applovin/impl/v1;->R:Lcom/applovin/impl/a;

    iget-object v5, p0, Lcom/applovin/impl/v1;->W:Landroid/widget/ProgressBar;

    iget-object v6, p0, Lcom/applovin/impl/v1;->T:Lcom/applovin/impl/e0;

    iget-object v7, p0, Lcom/applovin/impl/v1;->Q:Lcom/applovin/impl/adview/AppLovinVideoView;

    iget-object v8, p0, Lcom/applovin/impl/v1;->P:Landroid/view/View;

    iget-object v9, p0, Lcom/applovin/impl/r1;->i:Lcom/applovin/adview/AppLovinAdView;

    iget-object v10, p0, Lcom/applovin/impl/r1;->j:Lcom/applovin/impl/adview/k;

    iget-object v11, p0, Lcom/applovin/impl/v1;->Y:Landroid/widget/ImageView;

    move-object v12, p1

    invoke-virtual/range {v0 .. v12}, Lcom/applovin/impl/w1;->a(Landroid/widget/ImageView;Lcom/applovin/impl/adview/g;Lcom/applovin/impl/adview/l;Lcom/applovin/impl/a;Landroid/widget/ProgressBar;Lcom/applovin/impl/e0;Landroid/view/View;Landroid/view/View;Lcom/applovin/adview/AppLovinAdView;Lcom/applovin/impl/adview/k;Landroid/widget/ImageView;Landroid/view/ViewGroup;)V

    .line 6
    invoke-static {}, Lcom/applovin/impl/k0;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/applovin/impl/r1;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->n0()Lcom/applovin/sdk/AppLovinSdkSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinSdkSettings;->getExtraParameters()Ljava/util/Map;

    move-result-object p1

    const-string v0, "audio_focus_request"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 8
    iget-object v0, p0, Lcom/applovin/impl/v1;->Q:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {v0, p1}, Lcom/applovin/impl/Uuuuuuuuuuuu;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/widget/VideoView;I)V

    .line 9
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object p1

    .line 10
    iget-boolean v0, p0, Lcom/applovin/impl/v1;->f0:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/applovin/impl/r1;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/v1;->Q:Lcom/applovin/impl/adview/AppLovinVideoView;

    iget-object v1, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/b;->w0()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 12
    invoke-static {p1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 13
    iget-object p1, p0, Lcom/applovin/impl/r1;->j:Lcom/applovin/impl/adview/k;

    if-eqz p1, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/applovin/impl/adview/k;->b()V

    .line 15
    :cond_2
    iget-object p1, p0, Lcom/applovin/impl/v1;->Q:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    .line 16
    iget-boolean p1, p0, Lcom/applovin/impl/v1;->f0:Z

    if-eqz p1, :cond_3

    .line 17
    invoke-virtual {p0}, Lcom/applovin/impl/v1;->T()V

    .line 18
    :cond_3
    iget-object p1, p0, Lcom/applovin/impl/r1;->i:Lcom/applovin/adview/AppLovinAdView;

    iget-object v0, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {p1, v0}, Lcom/applovin/adview/AppLovinAdView;->renderAd(Lcom/applovin/sdk/AppLovinAd;)V

    .line 19
    iget-object p1, p0, Lcom/applovin/impl/v1;->S:Lcom/applovin/impl/adview/g;

    if-eqz p1, :cond_4

    .line 20
    iget-object p1, p0, Lcom/applovin/impl/r1;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->q0()Lcom/applovin/impl/r5;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/f6;

    iget-object p1, p0, Lcom/applovin/impl/r1;->b:Lcom/applovin/impl/sdk/k;

    new-instance v2, Lcom/applovin/impl/Uu;

    invoke-direct {v2, p0}, Lcom/applovin/impl/Uu;-><init>(Lcom/applovin/impl/v1;)V

    const-string v3, "scheduleSkipButton"

    invoke-direct {v1, p1, v3, v2}, Lcom/applovin/impl/f6;-><init>(Lcom/applovin/impl/sdk/k;Ljava/lang/String;Ljava/lang/Runnable;)V

    sget-object v2, Lcom/applovin/impl/r5$b;->d:Lcom/applovin/impl/r5$b;

    iget-object p1, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 21
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->p0()J

    move-result-wide v3

    const/4 v5, 0x1

    .line 22
    invoke-virtual/range {v0 .. v5}, Lcom/applovin/impl/r5;->a(Lcom/applovin/impl/w4;Lcom/applovin/impl/r5$b;JZ)V

    .line 23
    :cond_4
    iget-boolean p1, p0, Lcom/applovin/impl/v1;->g0:Z

    invoke-super {p0, p1}, Lcom/applovin/impl/r1;->c(Z)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/applovin/impl/v1;->d0:Lcom/applovin/impl/w0;

    invoke-virtual {v0}, Lcom/applovin/impl/w0;->a()V

    .line 33
    iget-object v0, p0, Lcom/applovin/impl/v1;->e0:Lcom/applovin/impl/w0;

    invoke-virtual {v0}, Lcom/applovin/impl/w0;->a()V

    .line 34
    iget-object v0, p0, Lcom/applovin/impl/v1;->b0:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 35
    iget-object v0, p0, Lcom/applovin/impl/v1;->c0:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 36
    iget-object v0, p0, Lcom/applovin/impl/r1;->b:Lcom/applovin/impl/sdk/k;

    sget-object v1, Lcom/applovin/impl/l4;->k6:Lcom/applovin/impl/l4;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/l4;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/ad/b;->a(Ljava/lang/String;)V

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/applovin/impl/v1;->n()V

    .line 40
    :cond_1
    invoke-super {p0, p1}, Lcom/applovin/impl/r1;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 2

    .line 24
    invoke-super {p0, p1, p2, p3}, Lcom/applovin/impl/r1;->a(Ljava/lang/String;J)V

    .line 25
    iget-object v0, p0, Lcom/applovin/impl/v1;->V:Lcom/applovin/impl/adview/l;

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    new-instance v0, Lcom/applovin/impl/Uuuu;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/Uuuu;-><init>(Lcom/applovin/impl/v1;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/applovin/impl/r1;->a(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    .line 11
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/r1;->c:Lcom/applovin/impl/sdk/o;

    const-string v1, "AppLovinFullscreenActivity"

    const-string v2, "Continue video from prompt - will resume in onWindowFocusChanged(true) when alert dismisses"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(J)V
    .locals 1

    .line 10
    new-instance v0, Lcom/applovin/impl/Uuuuuuuuu;

    invoke-direct {v0, p0}, Lcom/applovin/impl/Uuuuuuuuu;-><init>(Lcom/applovin/impl/v1;)V

    invoke-virtual {p0, v0, p1, p2}, Lcom/applovin/impl/r1;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 2
    invoke-super {p0, p1}, Lcom/applovin/impl/r1;->b(Z)V

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/v1;->b(J)V

    .line 4
    iget-boolean p1, p0, Lcom/applovin/impl/v1;->k0:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/applovin/impl/v1;->e0:Lcom/applovin/impl/w0;

    invoke-virtual {p1}, Lcom/applovin/impl/w0;->b()V

    :cond_0
    return-void

    .line 5
    :cond_1
    iget-boolean p1, p0, Lcom/applovin/impl/v1;->k0:Z

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/applovin/impl/v1;->e0:Lcom/applovin/impl/w0;

    invoke-virtual {p1}, Lcom/applovin/impl/w0;->c()V

    return-void

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/applovin/impl/v1;->w()V

    return-void
.end method

.method public d(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/applovin/impl/v1;->h0:J

    .line 2
    .line 3
    return-void
.end method

.method public f()V
    .locals 0

    .line 4
    invoke-super {p0}, Lcom/applovin/impl/r1;->f()V

    .line 5
    invoke-virtual {p0}, Lcom/applovin/impl/v1;->B()V

    return-void
.end method

.method public g()V
    .locals 2

    .line 13
    invoke-super {p0}, Lcom/applovin/impl/r1;->g()V

    .line 14
    iget-object v0, p0, Lcom/applovin/impl/v1;->N:Lcom/applovin/impl/w1;

    iget-object v1, p0, Lcom/applovin/impl/v1;->V:Lcom/applovin/impl/adview/l;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/w1;->a(Landroid/view/View;)V

    .line 15
    iget-object v0, p0, Lcom/applovin/impl/v1;->N:Lcom/applovin/impl/w1;

    iget-object v1, p0, Lcom/applovin/impl/v1;->S:Lcom/applovin/impl/adview/g;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/w1;->a(Landroid/view/View;)V

    .line 16
    invoke-virtual {p0}, Lcom/applovin/impl/r1;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/applovin/impl/v1;->k0:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 17
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/applovin/impl/v1;->B()V

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/r1;->c:Lcom/applovin/impl/sdk/o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encountered media error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for ad: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLovinFullscreenActivity"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/v1;->m0:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3
    iget-object v0, p0, Lcom/applovin/impl/r1;->b:Lcom/applovin/impl/sdk/k;

    sget-object v1, Lcom/applovin/impl/l4;->L0:Lcom/applovin/impl/l4;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/l4;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/applovin/impl/r1;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->H()Lcom/applovin/impl/sdk/m;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-static {}, Lcom/applovin/impl/sdk/k;->o()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/m;->d(Lcom/applovin/impl/sdk/ad/b;Landroid/content/Context;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/r1;->F:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    instance-of v1, v0, Lcom/applovin/impl/f2;

    if-eqz v1, :cond_2

    .line 6
    check-cast v0, Lcom/applovin/impl/f2;

    invoke-interface {v0, p1}, Lcom/applovin/impl/f2;->onAdDisplayFailed(Ljava/lang/String;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    instance-of v0, v0, Lcom/applovin/impl/a7;

    if-eqz v0, :cond_3

    const-string v0, "handleVastVideoError"

    goto :goto_0

    :cond_3
    const-string v0, "handleVideoError"

    .line 8
    :goto_0
    iget-object v1, p0, Lcom/applovin/impl/r1;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/m1;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v1, v0, p1, v2}, Lcom/applovin/impl/m1;->a(Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/ad/b;)V

    .line 9
    const-string v1, "source"

    invoke-static {v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->hashMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 10
    const-string v1, "error_message"

    invoke-static {v1, p1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 11
    iget-object p1, p0, Lcom/applovin/impl/r1;->b:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->g()Lcom/applovin/impl/f;

    move-result-object p1

    sget-object v1, Lcom/applovin/impl/y1;->s:Lcom/applovin/impl/y1;

    iget-object v2, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {p1, v1, v2, v0}, Lcom/applovin/impl/f;->a(Lcom/applovin/impl/y1;Lcom/applovin/impl/sdk/ad/b;Ljava/util/Map;)V

    .line 12
    const-string p1, "media_error"

    invoke-virtual {p0, p1}, Lcom/applovin/impl/v1;->a(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public getCommunicatorId()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "FullscreenVideoAdPresenter"

    .line 2
    .line 3
    return-object v0
.end method

.method public n()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/applovin/impl/v1;->D()I

    .line 2
    .line 3
    .line 4
    move-result v1

    .line 5
    iget-boolean v2, p0, Lcom/applovin/impl/v1;->f0:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/applovin/impl/v1;->G()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    iget-wide v4, p0, Lcom/applovin/impl/v1;->o0:J

    .line 12
    .line 13
    move-object v0, p0

    .line 14
    invoke-super/range {v0 .. v5}, Lcom/applovin/impl/r1;->a(IZZJ)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onMessageReceived(Lcom/applovin/communicator/AppLovinCommunicatorMessage;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/applovin/communicator/AppLovinCommunicatorMessage;->getTopic()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "video_caching_failed"

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/applovin/communicator/AppLovinCommunicatorMessage;->getMessageData()Landroid/os/Bundle;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v0, "ad_id"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    iget-object v2, p0, Lcom/applovin/impl/r1;->a:Lcom/applovin/impl/sdk/ad/b;

    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->getAdIdNumber()J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    cmp-long v0, v0, v2

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    iget-boolean v0, p0, Lcom/applovin/impl/v1;->f0:Z

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    const-string v0, "load_response_code"

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    const-string v1, "load_exception_message"

    .line 44
    .line 45
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-nez p1, :cond_0

    .line 50
    .line 51
    const/16 v1, 0xc8

    .line 52
    .line 53
    if-lt v0, v1, :cond_0

    .line 54
    .line 55
    const/16 v1, 0x12c

    .line 56
    .line 57
    if-lt v0, v1, :cond_1

    .line 58
    .line 59
    :cond_0
    iget-boolean v1, p0, Lcom/applovin/impl/v1;->l0:Z

    .line 60
    .line 61
    if-nez v1, :cond_1

    .line 62
    .line 63
    iget-object v1, p0, Lcom/applovin/impl/v1;->Q:Lcom/applovin/impl/adview/AppLovinVideoView;

    .line 64
    .line 65
    invoke-virtual {v1}, Landroid/widget/VideoView;->isPlaying()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-nez v1, :cond_1

    .line 70
    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v2, "Video cache error during stream. ResponseCode="

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v0, ", exception="

    .line 85
    .line 86
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p0, p1}, Lcom/applovin/impl/v1;->g(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :cond_1
    return-void
.end method

.method public s()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "AppLovinFullscreenActivity"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/applovin/impl/r1;->c:Lcom/applovin/impl/sdk/o;

    .line 10
    .line 11
    const-string v2, "Destroying video components"

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/r1;->b:Lcom/applovin/impl/sdk/k;

    .line 17
    .line 18
    sget-object v2, Lcom/applovin/impl/l4;->Q5:Lcom/applovin/impl/l4;

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/l4;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Ljava/lang/Boolean;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/applovin/impl/v1;->V:Lcom/applovin/impl/adview/l;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/applovin/impl/a8;->b(Landroid/webkit/WebView;)V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/applovin/impl/v1;->V:Lcom/applovin/impl/adview/l;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/applovin/impl/v1;->f0:Z

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    iget-object v0, p0, Lcom/applovin/impl/r1;->d:Landroid/app/Activity;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/applovin/communicator/AppLovinCommunicator;->getInstance(Landroid/content/Context;)Lcom/applovin/communicator/AppLovinCommunicator;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-string v2, "video_caching_failed"

    .line 54
    .line 55
    invoke-virtual {v0, p0, v2}, Lcom/applovin/communicator/AppLovinCommunicator;->unsubscribe(Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/v1;->Q:Lcom/applovin/impl/adview/AppLovinVideoView;

    .line 59
    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/applovin/impl/v1;->Q:Lcom/applovin/impl/adview/AppLovinVideoView;

    .line 66
    .line 67
    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 68
    .line 69
    .line 70
    :cond_3
    iget-object v0, p0, Lcom/applovin/impl/v1;->O:Landroid/media/MediaPlayer;

    .line 71
    .line 72
    if-eqz v0, :cond_4

    .line 73
    .line 74
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :goto_1
    const-string v2, "Unable to destroy presenter"

    .line 79
    .line 80
    invoke-static {v1, v2, v0}, Lcom/applovin/impl/sdk/o;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    .line 82
    .line 83
    :cond_4
    :goto_2
    invoke-super {p0}, Lcom/applovin/impl/r1;->s()V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public w()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "AppLovinFullscreenActivity"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/applovin/impl/r1;->c:Lcom/applovin/impl/sdk/o;

    .line 10
    .line 11
    const-string v2, "Pausing video"

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/v1;->Q:Lcom/applovin/impl/adview/AppLovinVideoView;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput v0, p0, Lcom/applovin/impl/v1;->j0:I

    .line 23
    .line 24
    iget-object v0, p0, Lcom/applovin/impl/v1;->Q:Lcom/applovin/impl/adview/AppLovinVideoView;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/applovin/impl/v1;->d0:Lcom/applovin/impl/w0;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/applovin/impl/w0;->c()V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    iget-object v0, p0, Lcom/applovin/impl/r1;->c:Lcom/applovin/impl/sdk/o;

    .line 41
    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v3, "Paused video at position "

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget v3, p0, Lcom/applovin/impl/v1;->j0:I

    .line 53
    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v3, "ms"

    .line 58
    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    return-void
.end method

.method public x()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/applovin/impl/v1;->a(Landroid/view/ViewGroup;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method
