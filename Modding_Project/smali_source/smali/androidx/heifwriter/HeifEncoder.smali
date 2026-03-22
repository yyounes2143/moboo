.class public final Landroidx/heifwriter/HeifEncoder;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/AutoCloseable;
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/heifwriter/HeifEncoder$EncoderCallback;,
        Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;,
        Landroidx/heifwriter/HeifEncoder$Callback;,
        Landroidx/heifwriter/HeifEncoder$InputMode;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final GRID_HEIGHT:I = 0x200

.field private static final GRID_WIDTH:I = 0x200

.field private static final INPUT_BUFFER_POOL_SIZE:I = 0x2

.field public static final INPUT_MODE_BITMAP:I = 0x2

.field public static final INPUT_MODE_BUFFER:I = 0x0

.field public static final INPUT_MODE_SURFACE:I = 0x1

.field private static final MAX_COMPRESS_RATIO:D = 0.25

.field private static final TAG:Ljava/lang/String; = "HeifEncoder"


# instance fields
.field final mCallback:Landroidx/heifwriter/HeifEncoder$Callback;

.field final mCodecInputBuffers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentBuffer:Ljava/nio/ByteBuffer;

.field private final mDstRect:Landroid/graphics/Rect;

.field mEOSTracker:Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;

.field private final mEmptyBuffers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field mEncoder:Landroid/media/MediaCodec;

.field private mEncoderEglSurface:Landroidx/heifwriter/EglWindowSurface;

.field private mEncoderSurface:Landroid/view/Surface;

.field private final mFilledBuffers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field final mGridCols:I

.field final mGridHeight:I

.field final mGridRows:I

.field final mGridWidth:I

.field final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field final mHeight:I

.field mInputEOS:Z

.field private mInputIndex:I

.field private final mInputMode:I

.field private mInputSurface:Landroid/view/Surface;

.field private mInputTexture:Landroid/graphics/SurfaceTexture;

.field private final mNumTiles:I

.field private mRectBlt:Landroidx/heifwriter/EglRectBlt;

.field private final mSrcRect:Landroid/graphics/Rect;

.field private mTextureId:I

.field private final mTmpMatrix:[F

.field final mUseGrid:Z

.field final mWidth:I


# direct methods
.method public constructor <init>(IIZIILandroid/os/Handler;Landroidx/heifwriter/HeifEncoder$Callback;)V
    .locals 20
    .param p6    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Landroidx/heifwriter/HeifEncoder$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p4

    .line 8
    .line 9
    move/from16 v4, p5

    .line 10
    .line 11
    const-string v5, "video/hevc"

    .line 12
    .line 13
    const-string v6, "image/vnd.android.heic"

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v7, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v7, v0, Landroidx/heifwriter/HeifEncoder;->mEmptyBuffers:Ljava/util/ArrayList;

    .line 24
    .line 25
    new-instance v7, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v7, v0, Landroidx/heifwriter/HeifEncoder;->mFilledBuffers:Ljava/util/ArrayList;

    .line 31
    .line 32
    new-instance v7, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v7, v0, Landroidx/heifwriter/HeifEncoder;->mCodecInputBuffers:Ljava/util/ArrayList;

    .line 38
    .line 39
    const/16 v7, 0x10

    .line 40
    .line 41
    new-array v7, v7, [F

    .line 42
    .line 43
    iput-object v7, v0, Landroidx/heifwriter/HeifEncoder;->mTmpMatrix:[F

    .line 44
    .line 45
    if-ltz v1, :cond_16

    .line 46
    .line 47
    if-ltz v2, :cond_16

    .line 48
    .line 49
    if-ltz v3, :cond_16

    .line 50
    .line 51
    const/16 v7, 0x64

    .line 52
    .line 53
    if-gt v3, v7, :cond_16

    .line 54
    .line 55
    const/16 v7, 0x200

    .line 56
    .line 57
    const/4 v9, 0x1

    .line 58
    if-gt v1, v7, :cond_1

    .line 59
    .line 60
    if-le v2, v7, :cond_0

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    const/4 v10, 0x0

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    :goto_0
    move v10, v9

    .line 66
    :goto_1
    and-int v10, p3, v10

    .line 67
    .line 68
    const/4 v11, 0x0

    .line 69
    :try_start_0
    invoke-static {v6}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    .line 70
    .line 71
    .line 72
    move-result-object v12

    .line 73
    iput-object v12, v0, Landroidx/heifwriter/HeifEncoder;->mEncoder:Landroid/media/MediaCodec;

    .line 74
    .line 75
    invoke-virtual {v12}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    .line 76
    .line 77
    .line 78
    move-result-object v12

    .line 79
    invoke-virtual {v12, v6}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 80
    .line 81
    .line 82
    move-result-object v12

    .line 83
    invoke-virtual {v12}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    .line 84
    .line 85
    .line 86
    move-result-object v13

    .line 87
    invoke-virtual {v13, v1, v2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    .line 88
    .line 89
    .line 90
    move-result v13

    .line 91
    if-eqz v13, :cond_2

    .line 92
    .line 93
    move v13, v9

    .line 94
    goto :goto_2

    .line 95
    :cond_2
    iget-object v12, v0, Landroidx/heifwriter/HeifEncoder;->mEncoder:Landroid/media/MediaCodec;

    .line 96
    .line 97
    invoke-virtual {v12}, Landroid/media/MediaCodec;->release()V

    .line 98
    .line 99
    .line 100
    iput-object v11, v0, Landroidx/heifwriter/HeifEncoder;->mEncoder:Landroid/media/MediaCodec;

    .line 101
    .line 102
    new-instance v12, Ljava/lang/Exception;

    .line 103
    .line 104
    invoke-direct {v12}, Ljava/lang/Exception;-><init>()V

    .line 105
    .line 106
    .line 107
    throw v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :catch_0
    invoke-static {v5}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    .line 109
    .line 110
    .line 111
    move-result-object v12

    .line 112
    iput-object v12, v0, Landroidx/heifwriter/HeifEncoder;->mEncoder:Landroid/media/MediaCodec;

    .line 113
    .line 114
    invoke-virtual {v12}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    .line 115
    .line 116
    .line 117
    move-result-object v12

    .line 118
    invoke-virtual {v12, v5}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 119
    .line 120
    .line 121
    move-result-object v12

    .line 122
    invoke-virtual {v12}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    .line 123
    .line 124
    .line 125
    move-result-object v13

    .line 126
    invoke-virtual {v13, v1, v2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    .line 127
    .line 128
    .line 129
    move-result v13

    .line 130
    xor-int/2addr v13, v9

    .line 131
    or-int/2addr v10, v13

    .line 132
    const/4 v13, 0x0

    .line 133
    :goto_2
    iput v4, v0, Landroidx/heifwriter/HeifEncoder;->mInputMode:I

    .line 134
    .line 135
    move-object/from16 v14, p7

    .line 136
    .line 137
    iput-object v14, v0, Landroidx/heifwriter/HeifEncoder;->mCallback:Landroidx/heifwriter/HeifEncoder$Callback;

    .line 138
    .line 139
    if-eqz p6, :cond_3

    .line 140
    .line 141
    invoke-virtual/range {p6 .. p6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 142
    .line 143
    .line 144
    move-result-object v14

    .line 145
    goto :goto_3

    .line 146
    :cond_3
    move-object v14, v11

    .line 147
    :goto_3
    if-nez v14, :cond_4

    .line 148
    .line 149
    new-instance v14, Landroid/os/HandlerThread;

    .line 150
    .line 151
    const-string v15, "HeifEncoderThread"

    .line 152
    .line 153
    const/4 v8, -0x2

    .line 154
    invoke-direct {v14, v15, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 155
    .line 156
    .line 157
    iput-object v14, v0, Landroidx/heifwriter/HeifEncoder;->mHandlerThread:Landroid/os/HandlerThread;

    .line 158
    .line 159
    invoke-virtual {v14}, Ljava/lang/Thread;->start()V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v14}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 163
    .line 164
    .line 165
    move-result-object v14

    .line 166
    goto :goto_4

    .line 167
    :cond_4
    iput-object v11, v0, Landroidx/heifwriter/HeifEncoder;->mHandlerThread:Landroid/os/HandlerThread;

    .line 168
    .line 169
    :goto_4
    new-instance v8, Landroid/os/Handler;

    .line 170
    .line 171
    invoke-direct {v8, v14}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 172
    .line 173
    .line 174
    iput-object v8, v0, Landroidx/heifwriter/HeifEncoder;->mHandler:Landroid/os/Handler;

    .line 175
    .line 176
    const/4 v14, 0x2

    .line 177
    if-eq v4, v9, :cond_6

    .line 178
    .line 179
    if-ne v4, v14, :cond_5

    .line 180
    .line 181
    goto :goto_5

    .line 182
    :cond_5
    const/4 v15, 0x0

    .line 183
    goto :goto_6

    .line 184
    :cond_6
    :goto_5
    move v15, v9

    .line 185
    :goto_6
    if-eqz v15, :cond_7

    .line 186
    .line 187
    const v16, 0x7f000789

    .line 188
    .line 189
    .line 190
    :goto_7
    move/from16 v11, v16

    .line 191
    .line 192
    goto :goto_8

    .line 193
    :cond_7
    const v16, 0x7f420888

    .line 194
    .line 195
    .line 196
    goto :goto_7

    .line 197
    :goto_8
    iput v1, v0, Landroidx/heifwriter/HeifEncoder;->mWidth:I

    .line 198
    .line 199
    iput v2, v0, Landroidx/heifwriter/HeifEncoder;->mHeight:I

    .line 200
    .line 201
    iput-boolean v10, v0, Landroidx/heifwriter/HeifEncoder;->mUseGrid:Z

    .line 202
    .line 203
    if-eqz v10, :cond_8

    .line 204
    .line 205
    add-int/lit16 v14, v2, 0x1ff

    .line 206
    .line 207
    div-int/2addr v14, v7

    .line 208
    add-int/lit16 v9, v1, 0x1ff

    .line 209
    .line 210
    div-int/2addr v9, v7

    .line 211
    move/from16 v17, v10

    .line 212
    .line 213
    move v10, v9

    .line 214
    move v9, v7

    .line 215
    goto :goto_9

    .line 216
    :cond_8
    move v7, v1

    .line 217
    move v9, v2

    .line 218
    move/from16 v17, v10

    .line 219
    .line 220
    const/4 v10, 0x1

    .line 221
    const/4 v14, 0x1

    .line 222
    :goto_9
    if-eqz v13, :cond_9

    .line 223
    .line 224
    invoke-static {v6, v1, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    .line 225
    .line 226
    .line 227
    move-result-object v5

    .line 228
    goto :goto_a

    .line 229
    :cond_9
    invoke-static {v5, v7, v9}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    .line 230
    .line 231
    .line 232
    move-result-object v5

    .line 233
    :goto_a
    if-eqz v17, :cond_a

    .line 234
    .line 235
    const-string v6, "tile-width"

    .line 236
    .line 237
    invoke-virtual {v5, v6, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 238
    .line 239
    .line 240
    const-string v6, "tile-height"

    .line 241
    .line 242
    invoke-virtual {v5, v6, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 243
    .line 244
    .line 245
    const-string v6, "grid-cols"

    .line 246
    .line 247
    invoke-virtual {v5, v6, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 248
    .line 249
    .line 250
    const-string v6, "grid-rows"

    .line 251
    .line 252
    invoke-virtual {v5, v6, v14}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 253
    .line 254
    .line 255
    :cond_a
    if-eqz v13, :cond_b

    .line 256
    .line 257
    iput v1, v0, Landroidx/heifwriter/HeifEncoder;->mGridWidth:I

    .line 258
    .line 259
    iput v2, v0, Landroidx/heifwriter/HeifEncoder;->mGridHeight:I

    .line 260
    .line 261
    const/4 v6, 0x1

    .line 262
    iput v6, v0, Landroidx/heifwriter/HeifEncoder;->mGridRows:I

    .line 263
    .line 264
    iput v6, v0, Landroidx/heifwriter/HeifEncoder;->mGridCols:I

    .line 265
    .line 266
    goto :goto_b

    .line 267
    :cond_b
    iput v7, v0, Landroidx/heifwriter/HeifEncoder;->mGridWidth:I

    .line 268
    .line 269
    iput v9, v0, Landroidx/heifwriter/HeifEncoder;->mGridHeight:I

    .line 270
    .line 271
    iput v14, v0, Landroidx/heifwriter/HeifEncoder;->mGridRows:I

    .line 272
    .line 273
    iput v10, v0, Landroidx/heifwriter/HeifEncoder;->mGridCols:I

    .line 274
    .line 275
    :goto_b
    iget v6, v0, Landroidx/heifwriter/HeifEncoder;->mGridRows:I

    .line 276
    .line 277
    iget v7, v0, Landroidx/heifwriter/HeifEncoder;->mGridCols:I

    .line 278
    .line 279
    mul-int/2addr v6, v7

    .line 280
    iput v6, v0, Landroidx/heifwriter/HeifEncoder;->mNumTiles:I

    .line 281
    .line 282
    const-string v7, "i-frame-interval"

    .line 283
    .line 284
    const/4 v9, 0x0

    .line 285
    invoke-virtual {v5, v7, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 286
    .line 287
    .line 288
    const-string v7, "color-format"

    .line 289
    .line 290
    invoke-virtual {v5, v7, v11}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 291
    .line 292
    .line 293
    const-string v7, "frame-rate"

    .line 294
    .line 295
    invoke-virtual {v5, v7, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 296
    .line 297
    .line 298
    mul-int/lit8 v6, v6, 0x1e

    .line 299
    .line 300
    const-string v7, "capture-rate"

    .line 301
    .line 302
    invoke-virtual {v5, v7, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v12}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getEncoderCapabilities()Landroid/media/MediaCodecInfo$EncoderCapabilities;

    .line 306
    .line 307
    .line 308
    move-result-object v6

    .line 309
    invoke-virtual {v6, v9}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->isBitrateModeSupported(I)Z

    .line 310
    .line 311
    .line 312
    move-result v7

    .line 313
    const-string v12, "bitrate-mode"

    .line 314
    .line 315
    if-eqz v7, :cond_c

    .line 316
    .line 317
    invoke-static {v6}, Landroidx/heifwriter/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/media/MediaCodecInfo$EncoderCapabilities;)Landroid/util/Range;

    .line 318
    .line 319
    .line 320
    move-result-object v6

    .line 321
    invoke-static {v6}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v5, v12, v9}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v6}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 328
    .line 329
    .line 330
    move-result-object v7

    .line 331
    check-cast v7, Ljava/lang/Integer;

    .line 332
    .line 333
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 334
    .line 335
    .line 336
    move-result v7

    .line 337
    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    .line 338
    .line 339
    int-to-double v10, v7

    .line 340
    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 341
    .line 342
    .line 343
    move-result-object v7

    .line 344
    check-cast v7, Ljava/lang/Integer;

    .line 345
    .line 346
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 347
    .line 348
    .line 349
    move-result v7

    .line 350
    invoke-virtual {v6}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 351
    .line 352
    .line 353
    move-result-object v6

    .line 354
    check-cast v6, Ljava/lang/Integer;

    .line 355
    .line 356
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 357
    .line 358
    .line 359
    move-result v6

    .line 360
    sub-int/2addr v7, v6

    .line 361
    mul-int/2addr v7, v3

    .line 362
    int-to-double v6, v7

    .line 363
    div-double v6, v6, v18

    .line 364
    .line 365
    add-double/2addr v10, v6

    .line 366
    double-to-int v3, v10

    .line 367
    const-string v6, "quality"

    .line 368
    .line 369
    invoke-virtual {v5, v6, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 370
    .line 371
    .line 372
    goto :goto_d

    .line 373
    :cond_c
    const/4 v7, 0x2

    .line 374
    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    .line 375
    .line 376
    invoke-virtual {v6, v7}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->isBitrateModeSupported(I)Z

    .line 377
    .line 378
    .line 379
    move-result v6

    .line 380
    if-eqz v6, :cond_d

    .line 381
    .line 382
    invoke-virtual {v5, v12, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 383
    .line 384
    .line 385
    goto :goto_c

    .line 386
    :cond_d
    const/4 v6, 0x1

    .line 387
    invoke-virtual {v5, v12, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 388
    .line 389
    .line 390
    :goto_c
    mul-int v6, v1, v2

    .line 391
    .line 392
    int-to-double v6, v6

    .line 393
    const-wide/high16 v9, 0x3ff8000000000000L    # 1.5

    .line 394
    .line 395
    mul-double/2addr v6, v9

    .line 396
    const-wide/high16 v9, 0x4020000000000000L    # 8.0

    .line 397
    .line 398
    mul-double/2addr v6, v9

    .line 399
    const-wide/high16 v9, 0x3fd0000000000000L    # 0.25

    .line 400
    .line 401
    mul-double/2addr v6, v9

    .line 402
    int-to-double v9, v3

    .line 403
    mul-double/2addr v6, v9

    .line 404
    div-double v6, v6, v18

    .line 405
    .line 406
    double-to-int v3, v6

    .line 407
    const-string v6, "bitrate"

    .line 408
    .line 409
    invoke-virtual {v5, v6, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 410
    .line 411
    .line 412
    :goto_d
    iget-object v3, v0, Landroidx/heifwriter/HeifEncoder;->mEncoder:Landroid/media/MediaCodec;

    .line 413
    .line 414
    new-instance v6, Landroidx/heifwriter/HeifEncoder$EncoderCallback;

    .line 415
    .line 416
    invoke-direct {v6, v0}, Landroidx/heifwriter/HeifEncoder$EncoderCallback;-><init>(Landroidx/heifwriter/HeifEncoder;)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v3, v6, v8}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    .line 420
    .line 421
    .line 422
    iget-object v3, v0, Landroidx/heifwriter/HeifEncoder;->mEncoder:Landroid/media/MediaCodec;

    .line 423
    .line 424
    const/4 v6, 0x1

    .line 425
    const/4 v7, 0x0

    .line 426
    invoke-virtual {v3, v5, v7, v7, v6}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 427
    .line 428
    .line 429
    if-eqz v15, :cond_14

    .line 430
    .line 431
    iget-object v3, v0, Landroidx/heifwriter/HeifEncoder;->mEncoder:Landroid/media/MediaCodec;

    .line 432
    .line 433
    invoke-virtual {v3}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    .line 434
    .line 435
    .line 436
    move-result-object v3

    .line 437
    iput-object v3, v0, Landroidx/heifwriter/HeifEncoder;->mEncoderSurface:Landroid/view/Surface;

    .line 438
    .line 439
    if-eqz v17, :cond_e

    .line 440
    .line 441
    if-eqz v13, :cond_f

    .line 442
    .line 443
    :cond_e
    const/4 v7, 0x2

    .line 444
    if-ne v4, v7, :cond_10

    .line 445
    .line 446
    :cond_f
    const/4 v6, 0x1

    .line 447
    goto :goto_e

    .line 448
    :cond_10
    const/4 v6, 0x0

    .line 449
    :goto_e
    new-instance v3, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;

    .line 450
    .line 451
    invoke-direct {v3, v0, v6}, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;-><init>(Landroidx/heifwriter/HeifEncoder;Z)V

    .line 452
    .line 453
    .line 454
    iput-object v3, v0, Landroidx/heifwriter/HeifEncoder;->mEOSTracker:Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;

    .line 455
    .line 456
    if-eqz v6, :cond_13

    .line 457
    .line 458
    new-instance v3, Landroidx/heifwriter/EglWindowSurface;

    .line 459
    .line 460
    iget-object v5, v0, Landroidx/heifwriter/HeifEncoder;->mEncoderSurface:Landroid/view/Surface;

    .line 461
    .line 462
    invoke-direct {v3, v5}, Landroidx/heifwriter/EglWindowSurface;-><init>(Landroid/view/Surface;)V

    .line 463
    .line 464
    .line 465
    iput-object v3, v0, Landroidx/heifwriter/HeifEncoder;->mEncoderEglSurface:Landroidx/heifwriter/EglWindowSurface;

    .line 466
    .line 467
    invoke-virtual {v3}, Landroidx/heifwriter/EglWindowSurface;->makeCurrent()V

    .line 468
    .line 469
    .line 470
    new-instance v3, Landroidx/heifwriter/EglRectBlt;

    .line 471
    .line 472
    new-instance v5, Landroidx/heifwriter/Texture2dProgram;

    .line 473
    .line 474
    const/4 v7, 0x2

    .line 475
    if-ne v4, v7, :cond_11

    .line 476
    .line 477
    const/4 v6, 0x0

    .line 478
    goto :goto_f

    .line 479
    :cond_11
    const/4 v6, 0x1

    .line 480
    :goto_f
    invoke-direct {v5, v6}, Landroidx/heifwriter/Texture2dProgram;-><init>(I)V

    .line 481
    .line 482
    .line 483
    invoke-direct {v3, v5, v1, v2}, Landroidx/heifwriter/EglRectBlt;-><init>(Landroidx/heifwriter/Texture2dProgram;II)V

    .line 484
    .line 485
    .line 486
    iput-object v3, v0, Landroidx/heifwriter/HeifEncoder;->mRectBlt:Landroidx/heifwriter/EglRectBlt;

    .line 487
    .line 488
    invoke-virtual {v3}, Landroidx/heifwriter/EglRectBlt;->createTextureObject()I

    .line 489
    .line 490
    .line 491
    move-result v3

    .line 492
    iput v3, v0, Landroidx/heifwriter/HeifEncoder;->mTextureId:I

    .line 493
    .line 494
    const/4 v6, 0x1

    .line 495
    if-ne v4, v6, :cond_12

    .line 496
    .line 497
    new-instance v3, Landroid/graphics/SurfaceTexture;

    .line 498
    .line 499
    iget v4, v0, Landroidx/heifwriter/HeifEncoder;->mTextureId:I

    .line 500
    .line 501
    invoke-direct {v3, v4, v6}, Landroid/graphics/SurfaceTexture;-><init>(IZ)V

    .line 502
    .line 503
    .line 504
    iput-object v3, v0, Landroidx/heifwriter/HeifEncoder;->mInputTexture:Landroid/graphics/SurfaceTexture;

    .line 505
    .line 506
    invoke-virtual {v3, v0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 507
    .line 508
    .line 509
    iget-object v3, v0, Landroidx/heifwriter/HeifEncoder;->mInputTexture:Landroid/graphics/SurfaceTexture;

    .line 510
    .line 511
    invoke-virtual {v3, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 512
    .line 513
    .line 514
    new-instance v1, Landroid/view/Surface;

    .line 515
    .line 516
    iget-object v2, v0, Landroidx/heifwriter/HeifEncoder;->mInputTexture:Landroid/graphics/SurfaceTexture;

    .line 517
    .line 518
    invoke-direct {v1, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 519
    .line 520
    .line 521
    iput-object v1, v0, Landroidx/heifwriter/HeifEncoder;->mInputSurface:Landroid/view/Surface;

    .line 522
    .line 523
    :cond_12
    iget-object v1, v0, Landroidx/heifwriter/HeifEncoder;->mEncoderEglSurface:Landroidx/heifwriter/EglWindowSurface;

    .line 524
    .line 525
    invoke-virtual {v1}, Landroidx/heifwriter/EglWindowSurface;->makeUnCurrent()V

    .line 526
    .line 527
    .line 528
    goto :goto_11

    .line 529
    :cond_13
    iget-object v1, v0, Landroidx/heifwriter/HeifEncoder;->mEncoderSurface:Landroid/view/Surface;

    .line 530
    .line 531
    iput-object v1, v0, Landroidx/heifwriter/HeifEncoder;->mInputSurface:Landroid/view/Surface;

    .line 532
    .line 533
    goto :goto_11

    .line 534
    :cond_14
    const/4 v7, 0x2

    .line 535
    const/4 v9, 0x0

    .line 536
    :goto_10
    if-ge v9, v7, :cond_15

    .line 537
    .line 538
    iget-object v1, v0, Landroidx/heifwriter/HeifEncoder;->mEmptyBuffers:Ljava/util/ArrayList;

    .line 539
    .line 540
    iget v2, v0, Landroidx/heifwriter/HeifEncoder;->mWidth:I

    .line 541
    .line 542
    iget v3, v0, Landroidx/heifwriter/HeifEncoder;->mHeight:I

    .line 543
    .line 544
    mul-int/2addr v2, v3

    .line 545
    mul-int/lit8 v2, v2, 0x3

    .line 546
    .line 547
    div-int/2addr v2, v7

    .line 548
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 549
    .line 550
    .line 551
    move-result-object v2

    .line 552
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    .line 554
    .line 555
    add-int/lit8 v9, v9, 0x1

    .line 556
    .line 557
    goto :goto_10

    .line 558
    :cond_15
    :goto_11
    new-instance v1, Landroid/graphics/Rect;

    .line 559
    .line 560
    iget v2, v0, Landroidx/heifwriter/HeifEncoder;->mGridWidth:I

    .line 561
    .line 562
    iget v3, v0, Landroidx/heifwriter/HeifEncoder;->mGridHeight:I

    .line 563
    .line 564
    const/4 v9, 0x0

    .line 565
    invoke-direct {v1, v9, v9, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 566
    .line 567
    .line 568
    iput-object v1, v0, Landroidx/heifwriter/HeifEncoder;->mDstRect:Landroid/graphics/Rect;

    .line 569
    .line 570
    new-instance v1, Landroid/graphics/Rect;

    .line 571
    .line 572
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 573
    .line 574
    .line 575
    iput-object v1, v0, Landroidx/heifwriter/HeifEncoder;->mSrcRect:Landroid/graphics/Rect;

    .line 576
    .line 577
    return-void

    .line 578
    :cond_16
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 579
    .line 580
    const-string v2, "invalid encoder inputs"

    .line 581
    .line 582
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 583
    .line 584
    .line 585
    throw v1
.end method

.method private acquireEmptyBuffer()Ljava/nio/ByteBuffer;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/heifwriter/HeifEncoder;->mEmptyBuffers:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :catch_0
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Landroidx/heifwriter/HeifEncoder;->mInputEOS:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/heifwriter/HeifEncoder;->mEmptyBuffers:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    :try_start_1
    iget-object v1, p0, Landroidx/heifwriter/HeifEncoder;->mEmptyBuffers:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v1

    .line 23
    goto :goto_2

    .line 24
    :cond_0
    :try_start_2
    iget-boolean v1, p0, Landroidx/heifwriter/HeifEncoder;->mInputEOS:Z

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    iget-object v1, p0, Landroidx/heifwriter/HeifEncoder;->mEmptyBuffers:Ljava/util/ArrayList;

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Ljava/nio/ByteBuffer;

    .line 38
    .line 39
    :goto_1
    monitor-exit v0

    .line 40
    return-object v1

    .line 41
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    throw v1
.end method

.method private addYuvBufferInternal([B)V
    .locals 2
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Landroidx/heifwriter/HeifEncoder;->acquireEmptyBuffer()Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 9
    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    .line 16
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Landroidx/heifwriter/HeifEncoder;->mFilledBuffers:Ljava/util/ArrayList;

    .line 20
    .line 21
    monitor-enter p1

    .line 22
    :try_start_0
    iget-object v1, p0, Landroidx/heifwriter/HeifEncoder;->mFilledBuffers:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    iget-object p1, p0, Landroidx/heifwriter/HeifEncoder;->mHandler:Landroid/os/Handler;

    .line 29
    .line 30
    new-instance v0, Landroidx/heifwriter/HeifEncoder$1;

    .line 31
    .line 32
    invoke-direct {v0, p0}, Landroidx/heifwriter/HeifEncoder$1;-><init>(Landroidx/heifwriter/HeifEncoder;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    throw v0
.end method

.method private computePresentationTime(I)J
    .locals 4

    .line 1
    int-to-long v0, p1

    .line 2
    const-wide/32 v2, 0xf4240

    .line 3
    .line 4
    .line 5
    mul-long/2addr v0, v2

    .line 6
    iget p1, p0, Landroidx/heifwriter/HeifEncoder;->mNumTiles:I

    .line 7
    .line 8
    int-to-long v2, p1

    .line 9
    div-long/2addr v0, v2

    .line 10
    const-wide/16 v2, 0x84

    .line 11
    .line 12
    add-long/2addr v0, v2

    .line 13
    return-wide v0
.end method

.method private static copyOneTileYUV(Ljava/nio/ByteBuffer;Landroid/media/Image;IILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 17

    .line 1
    move-object/from16 v0, p4

    .line 2
    .line 3
    move-object/from16 v1, p5

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-ne v2, v3, :cond_6

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-ne v2, v3, :cond_6

    .line 24
    .line 25
    rem-int/lit8 v2, p2, 0x2

    .line 26
    .line 27
    if-nez v2, :cond_5

    .line 28
    .line 29
    rem-int/lit8 v2, p3, 0x2

    .line 30
    .line 31
    if-nez v2, :cond_5

    .line 32
    .line 33
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 34
    .line 35
    const/4 v3, 0x2

    .line 36
    rem-int/2addr v2, v3

    .line 37
    if-nez v2, :cond_5

    .line 38
    .line 39
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 40
    .line 41
    rem-int/2addr v2, v3

    .line 42
    if-nez v2, :cond_5

    .line 43
    .line 44
    iget v2, v0, Landroid/graphics/Rect;->right:I

    .line 45
    .line 46
    rem-int/2addr v2, v3

    .line 47
    if-nez v2, :cond_5

    .line 48
    .line 49
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 50
    .line 51
    rem-int/2addr v2, v3

    .line 52
    if-nez v2, :cond_5

    .line 53
    .line 54
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 55
    .line 56
    rem-int/2addr v2, v3

    .line 57
    if-nez v2, :cond_5

    .line 58
    .line 59
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 60
    .line 61
    rem-int/2addr v2, v3

    .line 62
    if-nez v2, :cond_5

    .line 63
    .line 64
    iget v2, v1, Landroid/graphics/Rect;->right:I

    .line 65
    .line 66
    rem-int/2addr v2, v3

    .line 67
    if-nez v2, :cond_5

    .line 68
    .line 69
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 70
    .line 71
    rem-int/2addr v2, v3

    .line 72
    if-nez v2, :cond_5

    .line 73
    .line 74
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    const/4 v5, 0x0

    .line 79
    :goto_0
    array-length v6, v2

    .line 80
    if-ge v5, v6, :cond_4

    .line 81
    .line 82
    aget-object v6, v2, v5

    .line 83
    .line 84
    invoke-virtual {v6}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    aget-object v7, v2, v5

    .line 89
    .line 90
    invoke-virtual {v7}, Landroid/media/Image$Plane;->getPixelStride()I

    .line 91
    .line 92
    .line 93
    move-result v7

    .line 94
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 95
    .line 96
    .line 97
    move-result v8

    .line 98
    iget v9, v0, Landroid/graphics/Rect;->left:I

    .line 99
    .line 100
    sub-int v9, p2, v9

    .line 101
    .line 102
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    .line 103
    .line 104
    .line 105
    move-result v8

    .line 106
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 107
    .line 108
    .line 109
    move-result v9

    .line 110
    iget v10, v0, Landroid/graphics/Rect;->top:I

    .line 111
    .line 112
    sub-int v10, p3, v10

    .line 113
    .line 114
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    .line 115
    .line 116
    .line 117
    move-result v9

    .line 118
    const/4 v10, 0x1

    .line 119
    if-lez v5, :cond_0

    .line 120
    .line 121
    mul-int v11, p2, p3

    .line 122
    .line 123
    add-int/lit8 v12, v5, 0x3

    .line 124
    .line 125
    mul-int/2addr v11, v12

    .line 126
    div-int/lit8 v11, v11, 0x4

    .line 127
    .line 128
    move v12, v3

    .line 129
    goto :goto_1

    .line 130
    :cond_0
    move v12, v10

    .line 131
    const/4 v11, 0x0

    .line 132
    :goto_1
    const/4 v13, 0x0

    .line 133
    :goto_2
    div-int v14, v9, v12

    .line 134
    .line 135
    if-ge v13, v14, :cond_3

    .line 136
    .line 137
    iget v14, v0, Landroid/graphics/Rect;->top:I

    .line 138
    .line 139
    div-int/2addr v14, v12

    .line 140
    add-int/2addr v14, v13

    .line 141
    mul-int v14, v14, p2

    .line 142
    .line 143
    div-int/2addr v14, v12

    .line 144
    add-int/2addr v14, v11

    .line 145
    iget v15, v0, Landroid/graphics/Rect;->left:I

    .line 146
    .line 147
    div-int/2addr v15, v12

    .line 148
    add-int/2addr v14, v15

    .line 149
    move-object/from16 v15, p0

    .line 150
    .line 151
    invoke-virtual {v15, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 152
    .line 153
    .line 154
    iget v14, v1, Landroid/graphics/Rect;->top:I

    .line 155
    .line 156
    div-int/2addr v14, v12

    .line 157
    add-int/2addr v14, v13

    .line 158
    aget-object v16, v2, v5

    .line 159
    .line 160
    invoke-virtual/range {v16 .. v16}, Landroid/media/Image$Plane;->getRowStride()I

    .line 161
    .line 162
    .line 163
    move-result v16

    .line 164
    mul-int v14, v14, v16

    .line 165
    .line 166
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 167
    .line 168
    mul-int/2addr v3, v7

    .line 169
    div-int/2addr v3, v12

    .line 170
    add-int/2addr v14, v3

    .line 171
    invoke-virtual {v6, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 172
    .line 173
    .line 174
    const/4 v3, 0x0

    .line 175
    :goto_3
    div-int v14, v8, v12

    .line 176
    .line 177
    if-ge v3, v14, :cond_2

    .line 178
    .line 179
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->get()B

    .line 180
    .line 181
    .line 182
    move-result v4

    .line 183
    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 184
    .line 185
    .line 186
    if-le v7, v10, :cond_1

    .line 187
    .line 188
    add-int/lit8 v14, v14, -0x1

    .line 189
    .line 190
    if-eq v3, v14, :cond_1

    .line 191
    .line 192
    invoke-virtual {v6}, Ljava/nio/Buffer;->position()I

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    add-int/2addr v4, v7

    .line 197
    sub-int/2addr v4, v10

    .line 198
    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 199
    .line 200
    .line 201
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 202
    .line 203
    goto :goto_3

    .line 204
    :cond_2
    add-int/lit8 v13, v13, 0x1

    .line 205
    .line 206
    const/4 v3, 0x2

    .line 207
    goto :goto_2

    .line 208
    :cond_3
    move-object/from16 v15, p0

    .line 209
    .line 210
    add-int/lit8 v5, v5, 0x1

    .line 211
    .line 212
    const/4 v3, 0x2

    .line 213
    goto/16 :goto_0

    .line 214
    .line 215
    :cond_4
    return-void

    .line 216
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 217
    .line 218
    const-string v1, "src or dst are not aligned!"

    .line 219
    .line 220
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    throw v0

    .line 224
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 225
    .line 226
    const-string v1, "src and dst rect size are different!"

    .line 227
    .line 228
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    throw v0
.end method

.method private copyTilesGL()V
    .locals 8

    .line 1
    iget v0, p0, Landroidx/heifwriter/HeifEncoder;->mGridWidth:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/heifwriter/HeifEncoder;->mGridHeight:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v2, v2, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 7
    .line 8
    .line 9
    move v0, v2

    .line 10
    :goto_0
    iget v1, p0, Landroidx/heifwriter/HeifEncoder;->mGridRows:I

    .line 11
    .line 12
    if-ge v0, v1, :cond_1

    .line 13
    .line 14
    move v1, v2

    .line 15
    :goto_1
    iget v3, p0, Landroidx/heifwriter/HeifEncoder;->mGridCols:I

    .line 16
    .line 17
    if-ge v1, v3, :cond_0

    .line 18
    .line 19
    iget v3, p0, Landroidx/heifwriter/HeifEncoder;->mGridWidth:I

    .line 20
    .line 21
    mul-int v4, v1, v3

    .line 22
    .line 23
    iget v5, p0, Landroidx/heifwriter/HeifEncoder;->mGridHeight:I

    .line 24
    .line 25
    mul-int v6, v0, v5

    .line 26
    .line 27
    iget-object v7, p0, Landroidx/heifwriter/HeifEncoder;->mSrcRect:Landroid/graphics/Rect;

    .line 28
    .line 29
    add-int/2addr v3, v4

    .line 30
    add-int/2addr v5, v6

    .line 31
    invoke-virtual {v7, v4, v6, v3, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 32
    .line 33
    .line 34
    iget-object v3, p0, Landroidx/heifwriter/HeifEncoder;->mRectBlt:Landroidx/heifwriter/EglRectBlt;

    .line 35
    .line 36
    iget v4, p0, Landroidx/heifwriter/HeifEncoder;->mTextureId:I

    .line 37
    .line 38
    sget-object v5, Landroidx/heifwriter/Texture2dProgram;->V_FLIP_MATRIX:[F

    .line 39
    .line 40
    iget-object v6, p0, Landroidx/heifwriter/HeifEncoder;->mSrcRect:Landroid/graphics/Rect;

    .line 41
    .line 42
    invoke-virtual {v3, v4, v5, v6}, Landroidx/heifwriter/EglRectBlt;->copyRect(I[FLandroid/graphics/Rect;)V

    .line 43
    .line 44
    .line 45
    iget-object v3, p0, Landroidx/heifwriter/HeifEncoder;->mEncoderEglSurface:Landroidx/heifwriter/EglWindowSurface;

    .line 46
    .line 47
    iget v4, p0, Landroidx/heifwriter/HeifEncoder;->mInputIndex:I

    .line 48
    .line 49
    add-int/lit8 v5, v4, 0x1

    .line 50
    .line 51
    iput v5, p0, Landroidx/heifwriter/HeifEncoder;->mInputIndex:I

    .line 52
    .line 53
    invoke-direct {p0, v4}, Landroidx/heifwriter/HeifEncoder;->computePresentationTime(I)J

    .line 54
    .line 55
    .line 56
    move-result-wide v4

    .line 57
    const-wide/16 v6, 0x3e8

    .line 58
    .line 59
    mul-long/2addr v4, v6

    .line 60
    invoke-virtual {v3, v4, v5}, Landroidx/heifwriter/EglWindowSurface;->setPresentationTime(J)V

    .line 61
    .line 62
    .line 63
    iget-object v3, p0, Landroidx/heifwriter/HeifEncoder;->mEncoderEglSurface:Landroidx/heifwriter/EglWindowSurface;

    .line 64
    .line 65
    invoke-virtual {v3}, Landroidx/heifwriter/EglWindowSurface;->swapBuffers()Z

    .line 66
    .line 67
    .line 68
    add-int/lit8 v1, v1, 0x1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    return-void
.end method

.method private getCurrentBuffer()Ljava/nio/ByteBuffer;
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/heifwriter/HeifEncoder;->mInputEOS:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/heifwriter/HeifEncoder;->mCurrentBuffer:Ljava/nio/ByteBuffer;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/heifwriter/HeifEncoder;->mFilledBuffers:Ljava/util/ArrayList;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object v2, p0, Landroidx/heifwriter/HeifEncoder;->mFilledBuffers:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    move-object v2, v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v2, p0, Landroidx/heifwriter/HeifEncoder;->mFilledBuffers:Ljava/util/ArrayList;

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Ljava/nio/ByteBuffer;

    .line 31
    .line 32
    :goto_0
    iput-object v2, p0, Landroidx/heifwriter/HeifEncoder;->mCurrentBuffer:Ljava/nio/ByteBuffer;

    .line 33
    .line 34
    monitor-exit v0

    .line 35
    goto :goto_1

    .line 36
    :catchall_0
    move-exception v1

    .line 37
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw v1

    .line 39
    :cond_1
    :goto_1
    iget-boolean v0, p0, Landroidx/heifwriter/HeifEncoder;->mInputEOS:Z

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    return-object v1

    .line 44
    :cond_2
    iget-object v0, p0, Landroidx/heifwriter/HeifEncoder;->mCurrentBuffer:Ljava/nio/ByteBuffer;

    .line 45
    .line 46
    return-object v0
.end method

.method private returnEmptyBufferAndNotify(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/heifwriter/HeifEncoder;->mEmptyBuffers:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Landroidx/heifwriter/HeifEncoder;->mInputEOS:Z

    .line 5
    .line 6
    or-int/2addr p1, v1

    .line 7
    iput-boolean p1, p0, Landroidx/heifwriter/HeifEncoder;->mInputEOS:Z

    .line 8
    .line 9
    iget-object p1, p0, Landroidx/heifwriter/HeifEncoder;->mEmptyBuffers:Ljava/util/ArrayList;

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/heifwriter/HeifEncoder;->mCurrentBuffer:Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Landroidx/heifwriter/HeifEncoder;->mEmptyBuffers:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 19
    .line 20
    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Landroidx/heifwriter/HeifEncoder;->mCurrentBuffer:Ljava/nio/ByteBuffer;

    .line 24
    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    throw p1
.end method


# virtual methods
.method public addBitmap(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Landroidx/heifwriter/HeifEncoder;->mInputMode:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/heifwriter/HeifEncoder;->mEOSTracker:Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;

    .line 7
    .line 8
    iget v1, p0, Landroidx/heifwriter/HeifEncoder;->mInputIndex:I

    .line 9
    .line 10
    invoke-direct {p0, v1}, Landroidx/heifwriter/HeifEncoder;->computePresentationTime(I)J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    const-wide/16 v3, 0x3e8

    .line 15
    .line 16
    mul-long/2addr v1, v3

    .line 17
    iget v3, p0, Landroidx/heifwriter/HeifEncoder;->mInputIndex:I

    .line 18
    .line 19
    iget v4, p0, Landroidx/heifwriter/HeifEncoder;->mNumTiles:I

    .line 20
    .line 21
    add-int/2addr v3, v4

    .line 22
    add-int/lit8 v3, v3, -0x1

    .line 23
    .line 24
    invoke-direct {p0, v3}, Landroidx/heifwriter/HeifEncoder;->computePresentationTime(I)J

    .line 25
    .line 26
    .line 27
    move-result-wide v3

    .line 28
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->updateLastInputAndEncoderTime(JJ)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    monitor-enter p0

    .line 36
    :try_start_0
    iget-object v0, p0, Landroidx/heifwriter/HeifEncoder;->mEncoderEglSurface:Landroidx/heifwriter/EglWindowSurface;

    .line 37
    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    monitor-exit p0

    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {v0}, Landroidx/heifwriter/EglWindowSurface;->makeCurrent()V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Landroidx/heifwriter/HeifEncoder;->mRectBlt:Landroidx/heifwriter/EglRectBlt;

    .line 48
    .line 49
    iget v1, p0, Landroidx/heifwriter/HeifEncoder;->mTextureId:I

    .line 50
    .line 51
    invoke-virtual {v0, v1, p1}, Landroidx/heifwriter/EglRectBlt;->loadTexture(ILandroid/graphics/Bitmap;)V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0}, Landroidx/heifwriter/HeifEncoder;->copyTilesGL()V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Landroidx/heifwriter/HeifEncoder;->mEncoderEglSurface:Landroidx/heifwriter/EglWindowSurface;

    .line 58
    .line 59
    invoke-virtual {p1}, Landroidx/heifwriter/EglWindowSurface;->makeUnCurrent()V

    .line 60
    .line 61
    .line 62
    monitor-exit p0

    .line 63
    return-void

    .line 64
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    throw p1

    .line 66
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 67
    .line 68
    const-string v0, "addBitmap is only allowed in bitmap input mode"

    .line 69
    .line 70
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p1
.end method

.method public addYuvBuffer(I[B)V
    .locals 2
    .param p2    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget p1, p0, Landroidx/heifwriter/HeifEncoder;->mInputMode:I

    .line 2
    .line 3
    if-nez p1, :cond_1

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    array-length p1, p2

    .line 8
    iget v0, p0, Landroidx/heifwriter/HeifEncoder;->mWidth:I

    .line 9
    .line 10
    iget v1, p0, Landroidx/heifwriter/HeifEncoder;->mHeight:I

    .line 11
    .line 12
    mul-int/2addr v0, v1

    .line 13
    mul-int/lit8 v0, v0, 0x3

    .line 14
    .line 15
    div-int/lit8 v0, v0, 0x2

    .line 16
    .line 17
    if-ne p1, v0, :cond_0

    .line 18
    .line 19
    invoke-direct {p0, p2}, Landroidx/heifwriter/HeifEncoder;->addYuvBufferInternal([B)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    const-string p2, "invalid data"

    .line 26
    .line 27
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1

    .line 31
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    const-string p2, "addYuvBuffer is only allowed in buffer input mode"

    .line 34
    .line 35
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1
.end method

.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/heifwriter/HeifEncoder;->mEmptyBuffers:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, p0, Landroidx/heifwriter/HeifEncoder;->mInputEOS:Z

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/heifwriter/HeifEncoder;->mEmptyBuffers:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 10
    .line 11
    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    iget-object v0, p0, Landroidx/heifwriter/HeifEncoder;->mHandler:Landroid/os/Handler;

    .line 14
    .line 15
    new-instance v1, Landroidx/heifwriter/HeifEncoder$2;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Landroidx/heifwriter/HeifEncoder$2;-><init>(Landroidx/heifwriter/HeifEncoder;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception v1

    .line 25
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw v1
.end method

.method public getInputSurface()Landroid/view/Surface;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget v0, p0, Landroidx/heifwriter/HeifEncoder;->mInputMode:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/heifwriter/HeifEncoder;->mInputSurface:Landroid/view/Surface;

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    const-string v1, "getInputSurface is only allowed in surface input mode"

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw v0
.end method

.method public maybeCopyOneTileYUV()V
    .locals 15

    .line 1
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroidx/heifwriter/HeifEncoder;->getCurrentBuffer()Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_6

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/heifwriter/HeifEncoder;->mCodecInputBuffers:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_6

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/heifwriter/HeifEncoder;->mCodecInputBuffers:Ljava/util/ArrayList;

    .line 16
    .line 17
    const/4 v6, 0x0

    .line 18
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Ljava/lang/Integer;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result v8

    .line 28
    iget v1, p0, Landroidx/heifwriter/HeifEncoder;->mInputIndex:I

    .line 29
    .line 30
    iget v2, p0, Landroidx/heifwriter/HeifEncoder;->mNumTiles:I

    .line 31
    .line 32
    rem-int/2addr v1, v2

    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_1

    .line 40
    .line 41
    const/4 v1, 0x1

    .line 42
    move v14, v1

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    move v14, v6

    .line 45
    :goto_1
    if-nez v14, :cond_2

    .line 46
    .line 47
    iget-object v1, p0, Landroidx/heifwriter/HeifEncoder;->mEncoder:Landroid/media/MediaCodec;

    .line 48
    .line 49
    invoke-virtual {v1, v8}, Landroid/media/MediaCodec;->getInputImage(I)Landroid/media/Image;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iget v2, p0, Landroidx/heifwriter/HeifEncoder;->mGridWidth:I

    .line 54
    .line 55
    iget v3, p0, Landroidx/heifwriter/HeifEncoder;->mInputIndex:I

    .line 56
    .line 57
    iget v4, p0, Landroidx/heifwriter/HeifEncoder;->mGridCols:I

    .line 58
    .line 59
    rem-int v5, v3, v4

    .line 60
    .line 61
    mul-int/2addr v5, v2

    .line 62
    iget v7, p0, Landroidx/heifwriter/HeifEncoder;->mGridHeight:I

    .line 63
    .line 64
    div-int/2addr v3, v4

    .line 65
    iget v4, p0, Landroidx/heifwriter/HeifEncoder;->mGridRows:I

    .line 66
    .line 67
    rem-int/2addr v3, v4

    .line 68
    mul-int/2addr v3, v7

    .line 69
    iget-object v4, p0, Landroidx/heifwriter/HeifEncoder;->mSrcRect:Landroid/graphics/Rect;

    .line 70
    .line 71
    add-int/2addr v2, v5

    .line 72
    add-int/2addr v7, v3

    .line 73
    invoke-virtual {v4, v5, v3, v2, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 74
    .line 75
    .line 76
    iget v2, p0, Landroidx/heifwriter/HeifEncoder;->mWidth:I

    .line 77
    .line 78
    iget v3, p0, Landroidx/heifwriter/HeifEncoder;->mHeight:I

    .line 79
    .line 80
    iget-object v4, p0, Landroidx/heifwriter/HeifEncoder;->mSrcRect:Landroid/graphics/Rect;

    .line 81
    .line 82
    iget-object v5, p0, Landroidx/heifwriter/HeifEncoder;->mDstRect:Landroid/graphics/Rect;

    .line 83
    .line 84
    invoke-static/range {v0 .. v5}, Landroidx/heifwriter/HeifEncoder;->copyOneTileYUV(Ljava/nio/ByteBuffer;Landroid/media/Image;IILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 85
    .line 86
    .line 87
    :cond_2
    iget-object v7, p0, Landroidx/heifwriter/HeifEncoder;->mEncoder:Landroid/media/MediaCodec;

    .line 88
    .line 89
    if-eqz v14, :cond_3

    .line 90
    .line 91
    move v10, v6

    .line 92
    goto :goto_2

    .line 93
    :cond_3
    invoke-virtual {v7, v8}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    move v10, v0

    .line 102
    :goto_2
    iget v0, p0, Landroidx/heifwriter/HeifEncoder;->mInputIndex:I

    .line 103
    .line 104
    add-int/lit8 v1, v0, 0x1

    .line 105
    .line 106
    iput v1, p0, Landroidx/heifwriter/HeifEncoder;->mInputIndex:I

    .line 107
    .line 108
    invoke-direct {p0, v0}, Landroidx/heifwriter/HeifEncoder;->computePresentationTime(I)J

    .line 109
    .line 110
    .line 111
    move-result-wide v11

    .line 112
    if-eqz v14, :cond_4

    .line 113
    .line 114
    const/4 v6, 0x4

    .line 115
    :cond_4
    move v13, v6

    .line 116
    const/4 v9, 0x0

    .line 117
    invoke-virtual/range {v7 .. v13}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 118
    .line 119
    .line 120
    if-nez v14, :cond_5

    .line 121
    .line 122
    iget v0, p0, Landroidx/heifwriter/HeifEncoder;->mInputIndex:I

    .line 123
    .line 124
    iget v1, p0, Landroidx/heifwriter/HeifEncoder;->mNumTiles:I

    .line 125
    .line 126
    rem-int/2addr v0, v1

    .line 127
    if-nez v0, :cond_0

    .line 128
    .line 129
    :cond_5
    invoke-direct {p0, v14}, Landroidx/heifwriter/HeifEncoder;->returnEmptyBufferAndNotify(Z)V

    .line 130
    .line 131
    .line 132
    goto/16 :goto_0

    .line 133
    .line 134
    :cond_6
    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/heifwriter/HeifEncoder;->mEncoderEglSurface:Landroidx/heifwriter/EglWindowSurface;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Landroidx/heifwriter/EglWindowSurface;->makeCurrent()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroidx/heifwriter/HeifEncoder;->mTmpMatrix:[F

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    iget-object v2, p0, Landroidx/heifwriter/HeifEncoder;->mEOSTracker:Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;

    .line 26
    .line 27
    iget v3, p0, Landroidx/heifwriter/HeifEncoder;->mInputIndex:I

    .line 28
    .line 29
    iget v4, p0, Landroidx/heifwriter/HeifEncoder;->mNumTiles:I

    .line 30
    .line 31
    add-int/2addr v3, v4

    .line 32
    add-int/lit8 v3, v3, -0x1

    .line 33
    .line 34
    invoke-direct {p0, v3}, Landroidx/heifwriter/HeifEncoder;->computePresentationTime(I)J

    .line 35
    .line 36
    .line 37
    move-result-wide v3

    .line 38
    invoke-virtual {v2, v0, v1, v3, v4}, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->updateLastInputAndEncoderTime(JJ)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    invoke-direct {p0}, Landroidx/heifwriter/HeifEncoder;->copyTilesGL()V

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->releaseTexImage()V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Landroidx/heifwriter/HeifEncoder;->mEncoderEglSurface:Landroidx/heifwriter/EglWindowSurface;

    .line 51
    .line 52
    invoke-virtual {p1}, Landroidx/heifwriter/EglWindowSurface;->makeUnCurrent()V

    .line 53
    .line 54
    .line 55
    monitor-exit p0

    .line 56
    return-void

    .line 57
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw p1
.end method

.method public setEndOfInputStreamTimestamp(J)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/heifwriter/HeifEncoder;->mInputMode:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/heifwriter/HeifEncoder;->mEOSTracker:Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1, p2}, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->updateInputEOSTime(J)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void

    .line 14
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    const-string p2, "setEndOfInputStreamTimestamp is only allowed in surface input mode"

    .line 17
    .line 18
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1
.end method

.method public start()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/heifwriter/HeifEncoder;->mEncoder:Landroid/media/MediaCodec;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public stopAsync()V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/heifwriter/HeifEncoder;->mInputMode:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/heifwriter/HeifEncoder;->mEOSTracker:Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;

    .line 7
    .line 8
    const-wide/16 v1, 0x0

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroidx/heifwriter/HeifEncoder$SurfaceEOSTracker;->updateInputEOSTime(J)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    if-nez v0, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, v0}, Landroidx/heifwriter/HeifEncoder;->addYuvBufferInternal([B)V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public stopInternal()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/heifwriter/HeifEncoder;->mEncoder:Landroid/media/MediaCodec;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroidx/heifwriter/HeifEncoder;->mEncoder:Landroid/media/MediaCodec;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Landroidx/heifwriter/HeifEncoder;->mEncoder:Landroid/media/MediaCodec;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Landroidx/heifwriter/HeifEncoder;->mEmptyBuffers:Ljava/util/ArrayList;

    .line 17
    .line 18
    monitor-enter v0

    .line 19
    const/4 v2, 0x1

    .line 20
    :try_start_0
    iput-boolean v2, p0, Landroidx/heifwriter/HeifEncoder;->mInputEOS:Z

    .line 21
    .line 22
    iget-object v2, p0, Landroidx/heifwriter/HeifEncoder;->mEmptyBuffers:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 25
    .line 26
    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 28
    monitor-enter p0

    .line 29
    :try_start_1
    iget-object v0, p0, Landroidx/heifwriter/HeifEncoder;->mRectBlt:Landroidx/heifwriter/EglRectBlt;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-virtual {v0, v2}, Landroidx/heifwriter/EglRectBlt;->release(Z)V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Landroidx/heifwriter/HeifEncoder;->mRectBlt:Landroidx/heifwriter/EglRectBlt;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/heifwriter/HeifEncoder;->mEncoderEglSurface:Landroidx/heifwriter/EglWindowSurface;

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-virtual {v0}, Landroidx/heifwriter/EglWindowSurface;->release()V

    .line 47
    .line 48
    .line 49
    iput-object v1, p0, Landroidx/heifwriter/HeifEncoder;->mEncoderEglSurface:Landroidx/heifwriter/EglWindowSurface;

    .line 50
    .line 51
    :cond_2
    iget-object v0, p0, Landroidx/heifwriter/HeifEncoder;->mInputTexture:Landroid/graphics/SurfaceTexture;

    .line 52
    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 56
    .line 57
    .line 58
    iput-object v1, p0, Landroidx/heifwriter/HeifEncoder;->mInputTexture:Landroid/graphics/SurfaceTexture;

    .line 59
    .line 60
    :cond_3
    monitor-exit p0

    .line 61
    return-void

    .line 62
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    throw v0

    .line 64
    :catchall_1
    move-exception v1

    .line 65
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 66
    throw v1
.end method
