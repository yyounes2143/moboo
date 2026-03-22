.class public final Landroidx/core/graphics/BitmapCompat;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/graphics/BitmapCompat$Api27Impl;,
        Landroidx/core/graphics/BitmapCompat$Api29Impl;,
        Landroidx/core/graphics/BitmapCompat$Api31Impl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static createScaledBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Rect;Z)Landroid/graphics/Bitmap;
    .locals 20

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
    move-object/from16 v3, p3

    .line 8
    .line 9
    if-lez v1, :cond_23

    .line 10
    .line 11
    if-lez v2, :cond_23

    .line 12
    .line 13
    if-eqz v3, :cond_1

    .line 14
    .line 15
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-nez v4, :cond_0

    .line 20
    .line 21
    iget v4, v3, Landroid/graphics/Rect;->left:I

    .line 22
    .line 23
    if-ltz v4, :cond_0

    .line 24
    .line 25
    iget v4, v3, Landroid/graphics/Rect;->right:I

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-gt v4, v5, :cond_0

    .line 32
    .line 33
    iget v4, v3, Landroid/graphics/Rect;->top:I

    .line 34
    .line 35
    if-ltz v4, :cond_0

    .line 36
    .line 37
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-gt v4, v5, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 47
    .line 48
    const-string v1, "srcRect must be contained by srcBm!"

    .line 49
    .line 50
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v0

    .line 54
    :cond_1
    :goto_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 55
    .line 56
    const/16 v5, 0x1b

    .line 57
    .line 58
    if-lt v4, v5, :cond_2

    .line 59
    .line 60
    invoke-static {v0}, Landroidx/core/graphics/BitmapCompat$Api27Impl;->copyBitmapIfHardware(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    move-object v6, v0

    .line 66
    :goto_1
    if-eqz v3, :cond_3

    .line 67
    .line 68
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    goto :goto_2

    .line 73
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    :goto_2
    if-eqz v3, :cond_4

    .line 78
    .line 79
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 80
    .line 81
    .line 82
    move-result v8

    .line 83
    goto :goto_3

    .line 84
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 85
    .line 86
    .line 87
    move-result v8

    .line 88
    :goto_3
    int-to-float v9, v1

    .line 89
    int-to-float v10, v7

    .line 90
    div-float/2addr v9, v10

    .line 91
    int-to-float v10, v2

    .line 92
    int-to-float v11, v8

    .line 93
    div-float/2addr v10, v11

    .line 94
    if-eqz v3, :cond_5

    .line 95
    .line 96
    iget v12, v3, Landroid/graphics/Rect;->left:I

    .line 97
    .line 98
    goto :goto_4

    .line 99
    :cond_5
    const/4 v12, 0x0

    .line 100
    :goto_4
    if-eqz v3, :cond_6

    .line 101
    .line 102
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 103
    .line 104
    goto :goto_5

    .line 105
    :cond_6
    const/4 v3, 0x0

    .line 106
    :goto_5
    const/4 v13, 0x1

    .line 107
    if-nez v12, :cond_8

    .line 108
    .line 109
    if-nez v3, :cond_8

    .line 110
    .line 111
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 112
    .line 113
    .line 114
    move-result v14

    .line 115
    if-ne v1, v14, :cond_8

    .line 116
    .line 117
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 118
    .line 119
    .line 120
    move-result v14

    .line 121
    if-ne v2, v14, :cond_8

    .line 122
    .line 123
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isMutable()Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-eqz v1, :cond_7

    .line 128
    .line 129
    if-ne v0, v6, :cond_7

    .line 130
    .line 131
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {v0, v1, v13}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    return-object v0

    .line 140
    :cond_7
    return-object v6

    .line 141
    :cond_8
    new-instance v14, Landroid/graphics/Paint;

    .line 142
    .line 143
    invoke-direct {v14, v13}, Landroid/graphics/Paint;-><init>(I)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v14, v13}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 147
    .line 148
    .line 149
    const/16 v15, 0x1d

    .line 150
    .line 151
    if-lt v4, v15, :cond_9

    .line 152
    .line 153
    invoke-static {v14}, Landroidx/core/graphics/BitmapCompat$Api29Impl;->setPaintBlendMode(Landroid/graphics/Paint;)V

    .line 154
    .line 155
    .line 156
    goto :goto_6

    .line 157
    :cond_9
    new-instance v15, Landroid/graphics/PorterDuffXfermode;

    .line 158
    .line 159
    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    .line 160
    .line 161
    invoke-direct {v15, v11}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 165
    .line 166
    .line 167
    :goto_6
    if-ne v7, v1, :cond_a

    .line 168
    .line 169
    if-ne v8, v2, :cond_a

    .line 170
    .line 171
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    new-instance v1, Landroid/graphics/Canvas;

    .line 180
    .line 181
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 182
    .line 183
    .line 184
    neg-int v2, v12

    .line 185
    int-to-float v2, v2

    .line 186
    neg-int v3, v3

    .line 187
    int-to-float v3, v3

    .line 188
    invoke-virtual {v1, v6, v2, v3, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 189
    .line 190
    .line 191
    return-object v0

    .line 192
    :cond_a
    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    .line 193
    .line 194
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->log(D)D

    .line 195
    .line 196
    .line 197
    move-result-wide v16

    .line 198
    const/high16 v11, 0x3f800000    # 1.0f

    .line 199
    .line 200
    cmpl-float v15, v9, v11

    .line 201
    .line 202
    if-lez v15, :cond_b

    .line 203
    .line 204
    move/from16 p3, v11

    .line 205
    .line 206
    move v15, v12

    .line 207
    float-to-double v11, v9

    .line 208
    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    .line 209
    .line 210
    .line 211
    move-result-wide v11

    .line 212
    div-double v11, v11, v16

    .line 213
    .line 214
    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    .line 215
    .line 216
    .line 217
    move-result-wide v11

    .line 218
    :goto_7
    double-to-int v9, v11

    .line 219
    goto :goto_8

    .line 220
    :cond_b
    move/from16 p3, v11

    .line 221
    .line 222
    move v15, v12

    .line 223
    float-to-double v11, v9

    .line 224
    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    .line 225
    .line 226
    .line 227
    move-result-wide v11

    .line 228
    div-double v11, v11, v16

    .line 229
    .line 230
    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    .line 231
    .line 232
    .line 233
    move-result-wide v11

    .line 234
    goto :goto_7

    .line 235
    :goto_8
    cmpl-float v11, v10, p3

    .line 236
    .line 237
    if-lez v11, :cond_c

    .line 238
    .line 239
    float-to-double v10, v10

    .line 240
    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    .line 241
    .line 242
    .line 243
    move-result-wide v10

    .line 244
    div-double v10, v10, v16

    .line 245
    .line 246
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    .line 247
    .line 248
    .line 249
    move-result-wide v10

    .line 250
    :goto_9
    double-to-int v10, v10

    .line 251
    goto :goto_a

    .line 252
    :cond_c
    float-to-double v10, v10

    .line 253
    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    .line 254
    .line 255
    .line 256
    move-result-wide v10

    .line 257
    div-double v10, v10, v16

    .line 258
    .line 259
    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    .line 260
    .line 261
    .line 262
    move-result-wide v10

    .line 263
    goto :goto_9

    .line 264
    :goto_a
    if-eqz p4, :cond_f

    .line 265
    .line 266
    if-lt v4, v5, :cond_f

    .line 267
    .line 268
    invoke-static {v0}, Landroidx/core/graphics/BitmapCompat$Api27Impl;->isAlreadyF16AndLinear(Landroid/graphics/Bitmap;)Z

    .line 269
    .line 270
    .line 271
    move-result v4

    .line 272
    if-nez v4, :cond_f

    .line 273
    .line 274
    if-lez v9, :cond_d

    .line 275
    .line 276
    invoke-static {v7, v1, v13, v9}, Landroidx/core/graphics/BitmapCompat;->sizeAtStep(IIII)I

    .line 277
    .line 278
    .line 279
    move-result v4

    .line 280
    goto :goto_b

    .line 281
    :cond_d
    move v4, v7

    .line 282
    :goto_b
    if-lez v10, :cond_e

    .line 283
    .line 284
    invoke-static {v8, v2, v13, v10}, Landroidx/core/graphics/BitmapCompat;->sizeAtStep(IIII)I

    .line 285
    .line 286
    .line 287
    move-result v11

    .line 288
    goto :goto_c

    .line 289
    :cond_e
    move v11, v8

    .line 290
    :goto_c
    invoke-static {v4, v11, v0, v13}, Landroidx/core/graphics/BitmapCompat$Api27Impl;->createBitmapWithSourceColorspace(IILandroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    .line 291
    .line 292
    .line 293
    move-result-object v4

    .line 294
    new-instance v11, Landroid/graphics/Canvas;

    .line 295
    .line 296
    invoke-direct {v11, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 297
    .line 298
    .line 299
    neg-int v12, v15

    .line 300
    int-to-float v12, v12

    .line 301
    neg-int v3, v3

    .line 302
    int-to-float v3, v3

    .line 303
    invoke-virtual {v11, v6, v12, v3, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 304
    .line 305
    .line 306
    move-object v3, v6

    .line 307
    move-object v6, v4

    .line 308
    move-object v4, v3

    .line 309
    move v11, v13

    .line 310
    const/4 v3, 0x0

    .line 311
    const/4 v12, 0x0

    .line 312
    goto :goto_d

    .line 313
    :cond_f
    const/4 v4, 0x0

    .line 314
    move v12, v15

    .line 315
    const/4 v11, 0x0

    .line 316
    :goto_d
    new-instance v15, Landroid/graphics/Rect;

    .line 317
    .line 318
    invoke-direct {v15, v12, v3, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 319
    .line 320
    .line 321
    new-instance v3, Landroid/graphics/Rect;

    .line 322
    .line 323
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 324
    .line 325
    .line 326
    move v12, v9

    .line 327
    move/from16 v16, v10

    .line 328
    .line 329
    :goto_e
    if-nez v12, :cond_12

    .line 330
    .line 331
    if-eqz v16, :cond_10

    .line 332
    .line 333
    goto :goto_f

    .line 334
    :cond_10
    if-eq v4, v0, :cond_11

    .line 335
    .line 336
    if-eqz v4, :cond_11

    .line 337
    .line 338
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 339
    .line 340
    .line 341
    :cond_11
    return-object v6

    .line 342
    :cond_12
    :goto_f
    if-gez v12, :cond_13

    .line 343
    .line 344
    add-int/lit8 v12, v12, 0x1

    .line 345
    .line 346
    goto :goto_10

    .line 347
    :cond_13
    if-lez v12, :cond_14

    .line 348
    .line 349
    add-int/lit8 v12, v12, -0x1

    .line 350
    .line 351
    :cond_14
    :goto_10
    if-gez v16, :cond_16

    .line 352
    .line 353
    add-int/lit8 v16, v16, 0x1

    .line 354
    .line 355
    :cond_15
    :goto_11
    move/from16 v13, v16

    .line 356
    .line 357
    goto :goto_12

    .line 358
    :cond_16
    if-lez v16, :cond_15

    .line 359
    .line 360
    add-int/lit8 v16, v16, -0x1

    .line 361
    .line 362
    goto :goto_11

    .line 363
    :goto_12
    invoke-static {v7, v1, v12, v9}, Landroidx/core/graphics/BitmapCompat;->sizeAtStep(IIII)I

    .line 364
    .line 365
    .line 366
    move-result v5

    .line 367
    move/from16 v17, v11

    .line 368
    .line 369
    invoke-static {v8, v2, v13, v10}, Landroidx/core/graphics/BitmapCompat;->sizeAtStep(IIII)I

    .line 370
    .line 371
    .line 372
    move-result v11

    .line 373
    move/from16 v18, v12

    .line 374
    .line 375
    const/4 v12, 0x0

    .line 376
    invoke-virtual {v3, v12, v12, v5, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 377
    .line 378
    .line 379
    if-nez v18, :cond_17

    .line 380
    .line 381
    if-nez v13, :cond_17

    .line 382
    .line 383
    const/4 v5, 0x1

    .line 384
    goto :goto_13

    .line 385
    :cond_17
    move v5, v12

    .line 386
    :goto_13
    if-eqz v4, :cond_18

    .line 387
    .line 388
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 389
    .line 390
    .line 391
    move-result v11

    .line 392
    if-ne v11, v1, :cond_18

    .line 393
    .line 394
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 395
    .line 396
    .line 397
    move-result v11

    .line 398
    if-ne v11, v2, :cond_18

    .line 399
    .line 400
    const/4 v11, 0x1

    .line 401
    goto :goto_14

    .line 402
    :cond_18
    move v11, v12

    .line 403
    :goto_14
    if-eqz v4, :cond_1c

    .line 404
    .line 405
    if-eq v4, v0, :cond_1c

    .line 406
    .line 407
    if-eqz p4, :cond_19

    .line 408
    .line 409
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 410
    .line 411
    move/from16 v19, v5

    .line 412
    .line 413
    const/16 v5, 0x1b

    .line 414
    .line 415
    if-lt v12, v5, :cond_1a

    .line 416
    .line 417
    invoke-static {v4}, Landroidx/core/graphics/BitmapCompat$Api27Impl;->isAlreadyF16AndLinear(Landroid/graphics/Bitmap;)Z

    .line 418
    .line 419
    .line 420
    move-result v5

    .line 421
    if-eqz v5, :cond_1d

    .line 422
    .line 423
    goto :goto_15

    .line 424
    :cond_19
    move/from16 v19, v5

    .line 425
    .line 426
    :cond_1a
    :goto_15
    if-eqz v19, :cond_1b

    .line 427
    .line 428
    if-eqz v11, :cond_1d

    .line 429
    .line 430
    if-eqz v17, :cond_1b

    .line 431
    .line 432
    goto :goto_16

    .line 433
    :cond_1b
    const/16 v12, 0x1b

    .line 434
    .line 435
    goto :goto_1a

    .line 436
    :cond_1c
    move/from16 v19, v5

    .line 437
    .line 438
    :cond_1d
    :goto_16
    if-eq v4, v0, :cond_1e

    .line 439
    .line 440
    if-eqz v4, :cond_1e

    .line 441
    .line 442
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 443
    .line 444
    .line 445
    :cond_1e
    if-lez v18, :cond_1f

    .line 446
    .line 447
    move/from16 v4, v17

    .line 448
    .line 449
    goto :goto_17

    .line 450
    :cond_1f
    move/from16 v4, v18

    .line 451
    .line 452
    :goto_17
    invoke-static {v7, v1, v4, v9}, Landroidx/core/graphics/BitmapCompat;->sizeAtStep(IIII)I

    .line 453
    .line 454
    .line 455
    move-result v4

    .line 456
    if-lez v13, :cond_20

    .line 457
    .line 458
    move/from16 v5, v17

    .line 459
    .line 460
    goto :goto_18

    .line 461
    :cond_20
    move v5, v13

    .line 462
    :goto_18
    invoke-static {v8, v2, v5, v10}, Landroidx/core/graphics/BitmapCompat;->sizeAtStep(IIII)I

    .line 463
    .line 464
    .line 465
    move-result v5

    .line 466
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 467
    .line 468
    const/16 v12, 0x1b

    .line 469
    .line 470
    if-lt v11, v12, :cond_22

    .line 471
    .line 472
    if-eqz p4, :cond_21

    .line 473
    .line 474
    if-nez v19, :cond_21

    .line 475
    .line 476
    const/4 v11, 0x1

    .line 477
    goto :goto_19

    .line 478
    :cond_21
    const/4 v11, 0x0

    .line 479
    :goto_19
    invoke-static {v4, v5, v0, v11}, Landroidx/core/graphics/BitmapCompat$Api27Impl;->createBitmapWithSourceColorspace(IILandroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    .line 480
    .line 481
    .line 482
    move-result-object v4

    .line 483
    goto :goto_1a

    .line 484
    :cond_22
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 485
    .line 486
    .line 487
    move-result-object v11

    .line 488
    invoke-static {v4, v5, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 489
    .line 490
    .line 491
    move-result-object v4

    .line 492
    :goto_1a
    new-instance v5, Landroid/graphics/Canvas;

    .line 493
    .line 494
    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 495
    .line 496
    .line 497
    invoke-virtual {v5, v6, v15, v3, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {v15, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 501
    .line 502
    .line 503
    move-object v5, v6

    .line 504
    move-object v6, v4

    .line 505
    move-object v4, v5

    .line 506
    move v5, v12

    .line 507
    move/from16 v16, v13

    .line 508
    .line 509
    move/from16 v11, v17

    .line 510
    .line 511
    move/from16 v12, v18

    .line 512
    .line 513
    const/4 v13, 0x1

    .line 514
    goto/16 :goto_e

    .line 515
    .line 516
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 517
    .line 518
    const-string v1, "dstW and dstH must be > 0!"

    .line 519
    .line 520
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 521
    .line 522
    .line 523
    throw v0
.end method

.method public static getAllocationByteCount(Landroid/graphics/Bitmap;)I
    .locals 0
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "bitmap.getAllocationByteCount()"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static hasMipMap(Landroid/graphics/Bitmap;)Z
    .locals 0
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "bitmap.hasMipMap()"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasMipMap()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static setHasMipMap(Landroid/graphics/Bitmap;Z)V
    .locals 0
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "bitmap.setHasMipMap(hasMipMap)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/graphics/Bitmap;->setHasMipMap(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static sizeAtStep(IIII)I
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return p1

    .line 4
    :cond_0
    const/4 v0, 0x1

    .line 5
    if-lez p2, :cond_1

    .line 6
    .line 7
    sub-int/2addr p3, p2

    .line 8
    shl-int p1, v0, p3

    .line 9
    .line 10
    mul-int/2addr p0, p1

    .line 11
    return p0

    .line 12
    :cond_1
    neg-int p0, p2

    .line 13
    sub-int/2addr p0, v0

    .line 14
    shl-int p0, p1, p0

    .line 15
    .line 16
    return p0
.end method
