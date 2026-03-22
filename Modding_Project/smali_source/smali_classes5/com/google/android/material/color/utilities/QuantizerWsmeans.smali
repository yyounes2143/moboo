.class public final Lcom/google/android/material/color/utilities/QuantizerWsmeans;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;
    }
.end annotation


# static fields
.field private static final MAX_ITERATIONS:I = 0xa

.field private static final MIN_MOVEMENT_DISTANCE:D = 3.0


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

.method public static quantize([I[II)Ljava/util/Map;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[II)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    new-instance v3, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    array-length v4, v0

    .line 12
    new-array v4, v4, [[D

    .line 13
    .line 14
    array-length v5, v0

    .line 15
    new-array v5, v5, [I

    .line 16
    .line 17
    new-instance v6, Lcom/google/android/material/color/utilities/PointProviderLab;

    .line 18
    .line 19
    invoke-direct {v6}, Lcom/google/android/material/color/utilities/PointProviderLab;-><init>()V

    .line 20
    .line 21
    .line 22
    const/4 v8, 0x0

    .line 23
    const/4 v9, 0x0

    .line 24
    :goto_0
    array-length v10, v0

    .line 25
    if-ge v8, v10, :cond_1

    .line 26
    .line 27
    aget v10, v0, v8

    .line 28
    .line 29
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v11

    .line 33
    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v11

    .line 37
    check-cast v11, Ljava/lang/Integer;

    .line 38
    .line 39
    if-nez v11, :cond_0

    .line 40
    .line 41
    invoke-interface {v6, v10}, Lcom/google/android/material/color/utilities/PointProvider;->fromInt(I)[D

    .line 42
    .line 43
    .line 44
    move-result-object v11

    .line 45
    aput-object v11, v4, v9

    .line 46
    .line 47
    aput v10, v5, v9

    .line 48
    .line 49
    add-int/2addr v9, v2

    .line 50
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v10

    .line 54
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v11

    .line 58
    invoke-interface {v3, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_0
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v10

    .line 66
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 67
    .line 68
    .line 69
    move-result v11

    .line 70
    add-int/2addr v11, v2

    .line 71
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v11

    .line 75
    invoke-interface {v3, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    :goto_1
    add-int/2addr v8, v2

    .line 79
    goto :goto_0

    .line 80
    :cond_1
    new-array v0, v9, [I

    .line 81
    .line 82
    const/4 v8, 0x0

    .line 83
    :goto_2
    if-ge v8, v9, :cond_2

    .line 84
    .line 85
    aget v10, v5, v8

    .line 86
    .line 87
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v10

    .line 91
    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v10

    .line 95
    check-cast v10, Ljava/lang/Integer;

    .line 96
    .line 97
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 98
    .line 99
    .line 100
    move-result v10

    .line 101
    aput v10, v0, v8

    .line 102
    .line 103
    add-int/2addr v8, v2

    .line 104
    goto :goto_2

    .line 105
    :cond_2
    move/from16 v8, p2

    .line 106
    .line 107
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    array-length v5, v1

    .line 112
    if-eqz v5, :cond_3

    .line 113
    .line 114
    array-length v5, v1

    .line 115
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    :cond_3
    new-array v5, v3, [[D

    .line 120
    .line 121
    const/4 v8, 0x0

    .line 122
    const/4 v10, 0x0

    .line 123
    :goto_3
    array-length v11, v1

    .line 124
    if-ge v8, v11, :cond_4

    .line 125
    .line 126
    aget v11, v1, v8

    .line 127
    .line 128
    invoke-interface {v6, v11}, Lcom/google/android/material/color/utilities/PointProvider;->fromInt(I)[D

    .line 129
    .line 130
    .line 131
    move-result-object v11

    .line 132
    aput-object v11, v5, v8

    .line 133
    .line 134
    add-int/2addr v10, v2

    .line 135
    add-int/2addr v8, v2

    .line 136
    goto :goto_3

    .line 137
    :cond_4
    sub-int v1, v3, v10

    .line 138
    .line 139
    if-lez v1, :cond_5

    .line 140
    .line 141
    const/4 v8, 0x0

    .line 142
    :goto_4
    if-ge v8, v1, :cond_5

    .line 143
    .line 144
    add-int/2addr v8, v2

    .line 145
    goto :goto_4

    .line 146
    :cond_5
    new-array v1, v9, [I

    .line 147
    .line 148
    const/4 v8, 0x0

    .line 149
    :goto_5
    if-ge v8, v9, :cond_6

    .line 150
    .line 151
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 152
    .line 153
    .line 154
    move-result-wide v10

    .line 155
    int-to-double v12, v3

    .line 156
    mul-double/2addr v10, v12

    .line 157
    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    .line 158
    .line 159
    .line 160
    move-result-wide v10

    .line 161
    double-to-int v10, v10

    .line 162
    aput v10, v1, v8

    .line 163
    .line 164
    add-int/2addr v8, v2

    .line 165
    goto :goto_5

    .line 166
    :cond_6
    new-array v8, v3, [[I

    .line 167
    .line 168
    const/4 v10, 0x0

    .line 169
    :goto_6
    if-ge v10, v3, :cond_7

    .line 170
    .line 171
    new-array v11, v3, [I

    .line 172
    .line 173
    aput-object v11, v8, v10

    .line 174
    .line 175
    add-int/2addr v10, v2

    .line 176
    goto :goto_6

    .line 177
    :cond_7
    new-array v10, v3, [[Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;

    .line 178
    .line 179
    const/4 v11, 0x0

    .line 180
    :goto_7
    if-ge v11, v3, :cond_9

    .line 181
    .line 182
    new-array v12, v3, [Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;

    .line 183
    .line 184
    aput-object v12, v10, v11

    .line 185
    .line 186
    const/4 v12, 0x0

    .line 187
    :goto_8
    if-ge v12, v3, :cond_8

    .line 188
    .line 189
    aget-object v13, v10, v11

    .line 190
    .line 191
    new-instance v14, Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;

    .line 192
    .line 193
    invoke-direct {v14}, Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;-><init>()V

    .line 194
    .line 195
    .line 196
    aput-object v14, v13, v12

    .line 197
    .line 198
    add-int/2addr v12, v2

    .line 199
    goto :goto_8

    .line 200
    :cond_8
    add-int/2addr v11, v2

    .line 201
    goto :goto_7

    .line 202
    :cond_9
    new-array v11, v3, [I

    .line 203
    .line 204
    const/4 v12, 0x0

    .line 205
    :goto_9
    const/16 v13, 0xa

    .line 206
    .line 207
    if-ge v12, v13, :cond_16

    .line 208
    .line 209
    const/4 v13, 0x0

    .line 210
    :goto_a
    if-ge v13, v3, :cond_c

    .line 211
    .line 212
    add-int/lit8 v14, v13, 0x1

    .line 213
    .line 214
    move v15, v14

    .line 215
    :goto_b
    if-ge v15, v3, :cond_a

    .line 216
    .line 217
    move/from16 v16, v2

    .line 218
    .line 219
    aget-object v2, v5, v13

    .line 220
    .line 221
    aget-object v7, v5, v15

    .line 222
    .line 223
    move-object/from16 p0, v0

    .line 224
    .line 225
    move-object/from16 p1, v1

    .line 226
    .line 227
    invoke-interface {v6, v2, v7}, Lcom/google/android/material/color/utilities/PointProvider;->distance([D[D)D

    .line 228
    .line 229
    .line 230
    move-result-wide v0

    .line 231
    aget-object v2, v10, v15

    .line 232
    .line 233
    aget-object v2, v2, v13

    .line 234
    .line 235
    iput-wide v0, v2, Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;->distance:D

    .line 236
    .line 237
    iput v13, v2, Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;->index:I

    .line 238
    .line 239
    aget-object v2, v10, v13

    .line 240
    .line 241
    aget-object v2, v2, v15

    .line 242
    .line 243
    iput-wide v0, v2, Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;->distance:D

    .line 244
    .line 245
    iput v15, v2, Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;->index:I

    .line 246
    .line 247
    add-int/lit8 v15, v15, 0x1

    .line 248
    .line 249
    move-object/from16 v0, p0

    .line 250
    .line 251
    move-object/from16 v1, p1

    .line 252
    .line 253
    move/from16 v2, v16

    .line 254
    .line 255
    goto :goto_b

    .line 256
    :cond_a
    move-object/from16 p0, v0

    .line 257
    .line 258
    move-object/from16 p1, v1

    .line 259
    .line 260
    move/from16 v16, v2

    .line 261
    .line 262
    aget-object v0, v10, v13

    .line 263
    .line 264
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 265
    .line 266
    .line 267
    const/4 v0, 0x0

    .line 268
    :goto_c
    if-ge v0, v3, :cond_b

    .line 269
    .line 270
    aget-object v1, v8, v13

    .line 271
    .line 272
    aget-object v2, v10, v13

    .line 273
    .line 274
    aget-object v2, v2, v0

    .line 275
    .line 276
    iget v2, v2, Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;->index:I

    .line 277
    .line 278
    aput v2, v1, v0

    .line 279
    .line 280
    add-int/lit8 v0, v0, 0x1

    .line 281
    .line 282
    goto :goto_c

    .line 283
    :cond_b
    move-object/from16 v0, p0

    .line 284
    .line 285
    move-object/from16 v1, p1

    .line 286
    .line 287
    move v13, v14

    .line 288
    move/from16 v2, v16

    .line 289
    .line 290
    goto :goto_a

    .line 291
    :cond_c
    move-object/from16 p0, v0

    .line 292
    .line 293
    move-object/from16 p1, v1

    .line 294
    .line 295
    move/from16 v16, v2

    .line 296
    .line 297
    const/4 v0, 0x0

    .line 298
    const/4 v1, 0x0

    .line 299
    :goto_d
    if-ge v0, v9, :cond_11

    .line 300
    .line 301
    aget-object v2, v4, v0

    .line 302
    .line 303
    aget v7, p1, v0

    .line 304
    .line 305
    aget-object v13, v5, v7

    .line 306
    .line 307
    invoke-interface {v6, v2, v13}, Lcom/google/android/material/color/utilities/PointProvider;->distance([D[D)D

    .line 308
    .line 309
    .line 310
    move-result-wide v13

    .line 311
    move/from16 v18, v0

    .line 312
    .line 313
    move-wide/from16 v19, v13

    .line 314
    .line 315
    const/4 v0, -0x1

    .line 316
    const/4 v15, 0x0

    .line 317
    :goto_e
    if-ge v15, v3, :cond_f

    .line 318
    .line 319
    aget-object v21, v10, v7

    .line 320
    .line 321
    move/from16 v22, v1

    .line 322
    .line 323
    aget-object v1, v21, v15

    .line 324
    .line 325
    move-object/from16 v21, v4

    .line 326
    .line 327
    move-object/from16 v23, v5

    .line 328
    .line 329
    iget-wide v4, v1, Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;->distance:D

    .line 330
    .line 331
    const-wide/high16 v24, 0x4010000000000000L    # 4.0

    .line 332
    .line 333
    mul-double v24, v24, v13

    .line 334
    .line 335
    cmpl-double v1, v4, v24

    .line 336
    .line 337
    if-ltz v1, :cond_d

    .line 338
    .line 339
    goto :goto_f

    .line 340
    :cond_d
    aget-object v1, v23, v15

    .line 341
    .line 342
    invoke-interface {v6, v2, v1}, Lcom/google/android/material/color/utilities/PointProvider;->distance([D[D)D

    .line 343
    .line 344
    .line 345
    move-result-wide v4

    .line 346
    cmpg-double v1, v4, v19

    .line 347
    .line 348
    if-gez v1, :cond_e

    .line 349
    .line 350
    move-wide/from16 v19, v4

    .line 351
    .line 352
    move v0, v15

    .line 353
    :cond_e
    :goto_f
    add-int/lit8 v15, v15, 0x1

    .line 354
    .line 355
    move-object/from16 v4, v21

    .line 356
    .line 357
    move/from16 v1, v22

    .line 358
    .line 359
    move-object/from16 v5, v23

    .line 360
    .line 361
    goto :goto_e

    .line 362
    :cond_f
    move/from16 v22, v1

    .line 363
    .line 364
    move-object/from16 v21, v4

    .line 365
    .line 366
    move-object/from16 v23, v5

    .line 367
    .line 368
    const/4 v1, -0x1

    .line 369
    if-eq v0, v1, :cond_10

    .line 370
    .line 371
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sqrt(D)D

    .line 372
    .line 373
    .line 374
    move-result-wide v1

    .line 375
    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    .line 376
    .line 377
    .line 378
    move-result-wide v4

    .line 379
    sub-double/2addr v1, v4

    .line 380
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    .line 381
    .line 382
    .line 383
    move-result-wide v1

    .line 384
    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    .line 385
    .line 386
    cmpl-double v1, v1, v4

    .line 387
    .line 388
    if-lez v1, :cond_10

    .line 389
    .line 390
    add-int/lit8 v1, v22, 0x1

    .line 391
    .line 392
    aput v0, p1, v18

    .line 393
    .line 394
    goto :goto_10

    .line 395
    :cond_10
    move/from16 v1, v22

    .line 396
    .line 397
    :goto_10
    add-int/lit8 v0, v18, 0x1

    .line 398
    .line 399
    move-object/from16 v4, v21

    .line 400
    .line 401
    move-object/from16 v5, v23

    .line 402
    .line 403
    goto :goto_d

    .line 404
    :cond_11
    move/from16 v22, v1

    .line 405
    .line 406
    move-object/from16 v21, v4

    .line 407
    .line 408
    move-object/from16 v23, v5

    .line 409
    .line 410
    if-nez v22, :cond_12

    .line 411
    .line 412
    if-eqz v12, :cond_12

    .line 413
    .line 414
    :goto_11
    const/16 v17, 0x0

    .line 415
    .line 416
    goto/16 :goto_15

    .line 417
    .line 418
    :cond_12
    new-array v0, v3, [D

    .line 419
    .line 420
    new-array v1, v3, [D

    .line 421
    .line 422
    new-array v2, v3, [D

    .line 423
    .line 424
    const/4 v4, 0x0

    .line 425
    invoke-static {v11, v4}, Ljava/util/Arrays;->fill([II)V

    .line 426
    .line 427
    .line 428
    move v5, v4

    .line 429
    :goto_12
    if-ge v5, v9, :cond_13

    .line 430
    .line 431
    aget v13, p1, v5

    .line 432
    .line 433
    aget-object v14, v21, v5

    .line 434
    .line 435
    aget v15, p0, v5

    .line 436
    .line 437
    aget v17, v11, v13

    .line 438
    .line 439
    add-int v17, v17, v15

    .line 440
    .line 441
    aput v17, v11, v13

    .line 442
    .line 443
    aget-wide v18, v0, v13

    .line 444
    .line 445
    aget-wide v24, v14, v4

    .line 446
    .line 447
    move-object v4, v8

    .line 448
    const/16 p2, 0x2

    .line 449
    .line 450
    int-to-double v7, v15

    .line 451
    mul-double v24, v24, v7

    .line 452
    .line 453
    add-double v18, v18, v24

    .line 454
    .line 455
    aput-wide v18, v0, v13

    .line 456
    .line 457
    aget-wide v18, v1, v13

    .line 458
    .line 459
    aget-wide v24, v14, v16

    .line 460
    .line 461
    mul-double v24, v24, v7

    .line 462
    .line 463
    add-double v18, v18, v24

    .line 464
    .line 465
    aput-wide v18, v1, v13

    .line 466
    .line 467
    aget-wide v18, v2, v13

    .line 468
    .line 469
    aget-wide v24, v14, p2

    .line 470
    .line 471
    mul-double v24, v24, v7

    .line 472
    .line 473
    add-double v18, v18, v24

    .line 474
    .line 475
    aput-wide v18, v2, v13

    .line 476
    .line 477
    add-int/lit8 v5, v5, 0x1

    .line 478
    .line 479
    move-object v8, v4

    .line 480
    const/4 v4, 0x0

    .line 481
    goto :goto_12

    .line 482
    :cond_13
    move-object v4, v8

    .line 483
    const/16 p2, 0x2

    .line 484
    .line 485
    const/4 v5, 0x0

    .line 486
    :goto_13
    if-ge v5, v3, :cond_15

    .line 487
    .line 488
    aget v7, v11, v5

    .line 489
    .line 490
    if-nez v7, :cond_14

    .line 491
    .line 492
    const/4 v7, 0x3

    .line 493
    new-array v7, v7, [D

    .line 494
    .line 495
    fill-array-data v7, :array_0

    .line 496
    .line 497
    .line 498
    aput-object v7, v23, v5

    .line 499
    .line 500
    const/16 v17, 0x0

    .line 501
    .line 502
    goto :goto_14

    .line 503
    :cond_14
    aget-wide v13, v0, v5

    .line 504
    .line 505
    int-to-double v7, v7

    .line 506
    div-double/2addr v13, v7

    .line 507
    aget-wide v18, v1, v5

    .line 508
    .line 509
    div-double v18, v18, v7

    .line 510
    .line 511
    aget-wide v24, v2, v5

    .line 512
    .line 513
    div-double v24, v24, v7

    .line 514
    .line 515
    aget-object v7, v23, v5

    .line 516
    .line 517
    const/16 v17, 0x0

    .line 518
    .line 519
    aput-wide v13, v7, v17

    .line 520
    .line 521
    aput-wide v18, v7, v16

    .line 522
    .line 523
    aput-wide v24, v7, p2

    .line 524
    .line 525
    :goto_14
    add-int/lit8 v5, v5, 0x1

    .line 526
    .line 527
    goto :goto_13

    .line 528
    :cond_15
    const/16 v17, 0x0

    .line 529
    .line 530
    add-int/lit8 v12, v12, 0x1

    .line 531
    .line 532
    move-object/from16 v0, p0

    .line 533
    .line 534
    move-object/from16 v1, p1

    .line 535
    .line 536
    move-object v8, v4

    .line 537
    move/from16 v2, v16

    .line 538
    .line 539
    move-object/from16 v4, v21

    .line 540
    .line 541
    move-object/from16 v5, v23

    .line 542
    .line 543
    goto/16 :goto_9

    .line 544
    .line 545
    :cond_16
    move/from16 v16, v2

    .line 546
    .line 547
    move-object/from16 v23, v5

    .line 548
    .line 549
    goto/16 :goto_11

    .line 550
    .line 551
    :goto_15
    new-instance v0, Ljava/util/HashMap;

    .line 552
    .line 553
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 554
    .line 555
    .line 556
    move/from16 v7, v17

    .line 557
    .line 558
    :goto_16
    if-ge v7, v3, :cond_19

    .line 559
    .line 560
    aget v1, v11, v7

    .line 561
    .line 562
    if-nez v1, :cond_17

    .line 563
    .line 564
    goto :goto_17

    .line 565
    :cond_17
    aget-object v2, v23, v7

    .line 566
    .line 567
    invoke-interface {v6, v2}, Lcom/google/android/material/color/utilities/PointProvider;->toInt([D)I

    .line 568
    .line 569
    .line 570
    move-result v2

    .line 571
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 572
    .line 573
    .line 574
    move-result-object v4

    .line 575
    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 576
    .line 577
    .line 578
    move-result v4

    .line 579
    if-eqz v4, :cond_18

    .line 580
    .line 581
    goto :goto_17

    .line 582
    :cond_18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 583
    .line 584
    .line 585
    move-result-object v2

    .line 586
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 587
    .line 588
    .line 589
    move-result-object v1

    .line 590
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    .line 592
    .line 593
    :goto_17
    add-int/lit8 v7, v7, 0x1

    .line 594
    .line 595
    goto :goto_16

    .line 596
    :cond_19
    return-object v0

    .line 597
    :array_0
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method
