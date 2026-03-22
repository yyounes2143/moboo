.class final Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;
.super Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$ModuleSizeComparator;
    }
.end annotation


# static fields
.field private static final DIFF_MODSIZE_CUTOFF:F = 0.5f

.field private static final DIFF_MODSIZE_CUTOFF_PERCENT:F = 0.05f

.field private static final EMPTY_RESULT_ARRAY:[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

.field private static final MAX_MODULE_COUNT_PER_EDGE:F = 180.0f

.field private static final MIN_MODULE_COUNT_PER_EDGE:F = 9.0f


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    .line 3
    .line 4
    sput-object v0, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->EMPTY_RESULT_ARRAY:[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V

    return-void
.end method

.method private selectMutipleBestPatterns()[[Lcom/google/zxing/qrcode/detector/FinderPattern;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->getPossibleCenters()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v3

    .line 8
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    const/4 v5, 0x3

    .line 13
    if-lt v4, v5, :cond_a

    .line 14
    .line 15
    if-ne v4, v5, :cond_0

    .line 16
    .line 17
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    check-cast v4, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 22
    .line 23
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    check-cast v6, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 28
    .line 29
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 34
    .line 35
    new-array v5, v5, [Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 36
    .line 37
    aput-object v4, v5, v1

    .line 38
    .line 39
    aput-object v6, v5, v2

    .line 40
    .line 41
    aput-object v3, v5, v0

    .line 42
    .line 43
    new-array v0, v2, [[Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 44
    .line 45
    aput-object v5, v0, v1

    .line 46
    .line 47
    return-object v0

    .line 48
    :cond_0
    new-instance v6, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$ModuleSizeComparator;

    .line 49
    .line 50
    const/4 v7, 0x0

    .line 51
    invoke-direct {v6, v7}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$ModuleSizeComparator;-><init>(Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$1;)V

    .line 52
    .line 53
    .line 54
    invoke-static {v3, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 55
    .line 56
    .line 57
    new-instance v6, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .line 61
    .line 62
    move v7, v1

    .line 63
    :goto_0
    add-int/lit8 v8, v4, -0x2

    .line 64
    .line 65
    if-ge v7, v8, :cond_8

    .line 66
    .line 67
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    check-cast v8, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 72
    .line 73
    if-eqz v8, :cond_1

    .line 74
    .line 75
    add-int/lit8 v9, v7, 0x1

    .line 76
    .line 77
    :goto_1
    add-int/lit8 v10, v4, -0x1

    .line 78
    .line 79
    if-ge v9, v10, :cond_1

    .line 80
    .line 81
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v10

    .line 85
    check-cast v10, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 86
    .line 87
    if-eqz v10, :cond_7

    .line 88
    .line 89
    invoke-virtual {v8}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    .line 90
    .line 91
    .line 92
    move-result v11

    .line 93
    invoke-virtual {v10}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    .line 94
    .line 95
    .line 96
    move-result v12

    .line 97
    sub-float/2addr v11, v12

    .line 98
    invoke-virtual {v8}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    .line 99
    .line 100
    .line 101
    move-result v12

    .line 102
    invoke-virtual {v10}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    .line 103
    .line 104
    .line 105
    move-result v13

    .line 106
    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    .line 107
    .line 108
    .line 109
    move-result v12

    .line 110
    div-float/2addr v11, v12

    .line 111
    invoke-virtual {v8}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    .line 112
    .line 113
    .line 114
    move-result v12

    .line 115
    invoke-virtual {v10}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    .line 116
    .line 117
    .line 118
    move-result v13

    .line 119
    sub-float/2addr v12, v13

    .line 120
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    .line 121
    .line 122
    .line 123
    move-result v12

    .line 124
    const/high16 v13, 0x3f000000    # 0.5f

    .line 125
    .line 126
    cmpl-float v12, v12, v13

    .line 127
    .line 128
    const v14, 0x3d4ccccd    # 0.05f

    .line 129
    .line 130
    .line 131
    if-lez v12, :cond_2

    .line 132
    .line 133
    cmpl-float v11, v11, v14

    .line 134
    .line 135
    if-gez v11, :cond_1

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_1
    move/from16 v16, v0

    .line 139
    .line 140
    move/from16 v17, v1

    .line 141
    .line 142
    move/from16 v18, v2

    .line 143
    .line 144
    goto/16 :goto_8

    .line 145
    .line 146
    :cond_2
    :goto_2
    add-int/lit8 v11, v9, 0x1

    .line 147
    .line 148
    :goto_3
    if-ge v11, v4, :cond_7

    .line 149
    .line 150
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v12

    .line 154
    check-cast v12, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 155
    .line 156
    if-eqz v12, :cond_5

    .line 157
    .line 158
    invoke-virtual {v10}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    .line 159
    .line 160
    .line 161
    move-result v15

    .line 162
    invoke-virtual {v12}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    .line 163
    .line 164
    .line 165
    move-result v16

    .line 166
    sub-float v15, v15, v16

    .line 167
    .line 168
    move/from16 v16, v0

    .line 169
    .line 170
    invoke-virtual {v10}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    move/from16 v17, v1

    .line 175
    .line 176
    invoke-virtual {v12}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    div-float/2addr v15, v0

    .line 185
    invoke-virtual {v10}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    invoke-virtual {v12}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    sub-float/2addr v0, v1

    .line 194
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    cmpl-float v0, v0, v13

    .line 199
    .line 200
    if-lez v0, :cond_4

    .line 201
    .line 202
    cmpl-float v0, v15, v14

    .line 203
    .line 204
    if-gez v0, :cond_3

    .line 205
    .line 206
    goto :goto_5

    .line 207
    :cond_3
    :goto_4
    move/from16 v18, v2

    .line 208
    .line 209
    goto/16 :goto_7

    .line 210
    .line 211
    :cond_4
    :goto_5
    new-array v0, v5, [Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 212
    .line 213
    aput-object v8, v0, v17

    .line 214
    .line 215
    aput-object v10, v0, v2

    .line 216
    .line 217
    aput-object v12, v0, v16

    .line 218
    .line 219
    invoke-static {v0}, Lcom/google/zxing/ResultPoint;->orderBestPatterns([Lcom/google/zxing/ResultPoint;)V

    .line 220
    .line 221
    .line 222
    new-instance v1, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    .line 223
    .line 224
    invoke-direct {v1, v0}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;-><init>([Lcom/google/zxing/qrcode/detector/FinderPattern;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 228
    .line 229
    .line 230
    move-result-object v12

    .line 231
    invoke-virtual {v1}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getBottomLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 232
    .line 233
    .line 234
    move-result-object v15

    .line 235
    invoke-static {v12, v15}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    .line 236
    .line 237
    .line 238
    move-result v12

    .line 239
    invoke-virtual {v1}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopRight()Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 240
    .line 241
    .line 242
    move-result-object v15

    .line 243
    move/from16 v18, v2

    .line 244
    .line 245
    invoke-virtual {v1}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getBottomLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    invoke-static {v15, v2}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    .line 250
    .line 251
    .line 252
    move-result v2

    .line 253
    invoke-virtual {v1}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 254
    .line 255
    .line 256
    move-result-object v15

    .line 257
    invoke-virtual {v1}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopRight()Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    invoke-static {v15, v1}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    add-float v15, v12, v1

    .line 266
    .line 267
    invoke-virtual {v8}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    .line 268
    .line 269
    .line 270
    move-result v19

    .line 271
    const/high16 v20, 0x40000000    # 2.0f

    .line 272
    .line 273
    mul-float v19, v19, v20

    .line 274
    .line 275
    div-float v15, v15, v19

    .line 276
    .line 277
    const/high16 v19, 0x43340000    # 180.0f

    .line 278
    .line 279
    cmpl-float v19, v15, v19

    .line 280
    .line 281
    if-gtz v19, :cond_6

    .line 282
    .line 283
    const/high16 v19, 0x41100000    # 9.0f

    .line 284
    .line 285
    cmpg-float v15, v15, v19

    .line 286
    .line 287
    if-ltz v15, :cond_6

    .line 288
    .line 289
    sub-float v15, v12, v1

    .line 290
    .line 291
    invoke-static {v12, v1}, Ljava/lang/Math;->min(FF)F

    .line 292
    .line 293
    .line 294
    move-result v19

    .line 295
    div-float v15, v15, v19

    .line 296
    .line 297
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    .line 298
    .line 299
    .line 300
    move-result v15

    .line 301
    const v19, 0x3dcccccd    # 0.1f

    .line 302
    .line 303
    .line 304
    cmpl-float v15, v15, v19

    .line 305
    .line 306
    if-gez v15, :cond_6

    .line 307
    .line 308
    mul-float/2addr v12, v12

    .line 309
    mul-float/2addr v1, v1

    .line 310
    add-float/2addr v12, v1

    .line 311
    float-to-double v13, v12

    .line 312
    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    .line 313
    .line 314
    .line 315
    move-result-wide v12

    .line 316
    double-to-float v12, v12

    .line 317
    sub-float v13, v2, v12

    .line 318
    .line 319
    invoke-static {v2, v12}, Ljava/lang/Math;->min(FF)F

    .line 320
    .line 321
    .line 322
    move-result v2

    .line 323
    div-float/2addr v13, v2

    .line 324
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    .line 325
    .line 326
    .line 327
    move-result v2

    .line 328
    cmpl-float v2, v2, v19

    .line 329
    .line 330
    if-gez v2, :cond_6

    .line 331
    .line 332
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    goto :goto_6

    .line 336
    :cond_5
    move/from16 v16, v0

    .line 337
    .line 338
    move/from16 v17, v1

    .line 339
    .line 340
    move/from16 v18, v2

    .line 341
    .line 342
    :cond_6
    :goto_6
    add-int/lit8 v11, v11, 0x1

    .line 343
    .line 344
    move/from16 v0, v16

    .line 345
    .line 346
    move/from16 v1, v17

    .line 347
    .line 348
    move/from16 v2, v18

    .line 349
    .line 350
    const/high16 v13, 0x3f000000    # 0.5f

    .line 351
    .line 352
    const v14, 0x3d4ccccd    # 0.05f

    .line 353
    .line 354
    .line 355
    goto/16 :goto_3

    .line 356
    .line 357
    :cond_7
    move/from16 v16, v0

    .line 358
    .line 359
    move/from16 v17, v1

    .line 360
    .line 361
    goto/16 :goto_4

    .line 362
    .line 363
    :goto_7
    add-int/lit8 v9, v9, 0x1

    .line 364
    .line 365
    move/from16 v0, v16

    .line 366
    .line 367
    move/from16 v1, v17

    .line 368
    .line 369
    move/from16 v2, v18

    .line 370
    .line 371
    goto/16 :goto_1

    .line 372
    .line 373
    :goto_8
    add-int/lit8 v7, v7, 0x1

    .line 374
    .line 375
    move/from16 v0, v16

    .line 376
    .line 377
    move/from16 v1, v17

    .line 378
    .line 379
    move/from16 v2, v18

    .line 380
    .line 381
    goto/16 :goto_0

    .line 382
    .line 383
    :cond_8
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 384
    .line 385
    .line 386
    move-result v0

    .line 387
    if-nez v0, :cond_9

    .line 388
    .line 389
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 390
    .line 391
    .line 392
    move-result v0

    .line 393
    new-array v0, v0, [[Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 394
    .line 395
    invoke-interface {v6, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    check-cast v0, [[Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 400
    .line 401
    return-object v0

    .line 402
    :cond_9
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    throw v0

    .line 407
    :cond_a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    throw v0
.end method


# virtual methods
.method public findMulti(Ljava/util/Map;)[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)[",
            "Lcom/google/zxing/qrcode/detector/FinderPatternInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    sget-object v2, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    .line 6
    .line 7
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    move p1, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move p1, v0

    .line 16
    :goto_0
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->getImage()Lcom/google/zxing/common/BitMatrix;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    invoke-virtual {v2}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    mul-int/lit8 v5, v3, 0x3

    .line 29
    .line 30
    div-int/lit16 v5, v5, 0x184

    .line 31
    .line 32
    const/4 v6, 0x3

    .line 33
    if-lt v5, v6, :cond_1

    .line 34
    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    :cond_1
    move v5, v6

    .line 38
    :cond_2
    const/4 p1, 0x5

    .line 39
    new-array p1, p1, [I

    .line 40
    .line 41
    add-int/lit8 v7, v5, -0x1

    .line 42
    .line 43
    :goto_1
    if-ge v7, v3, :cond_a

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->clearCounts([I)V

    .line 46
    .line 47
    .line 48
    move v8, v0

    .line 49
    move v9, v8

    .line 50
    :goto_2
    if-ge v8, v4, :cond_8

    .line 51
    .line 52
    invoke-virtual {v2, v8, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    .line 53
    .line 54
    .line 55
    move-result v10

    .line 56
    if-eqz v10, :cond_4

    .line 57
    .line 58
    and-int/lit8 v10, v9, 0x1

    .line 59
    .line 60
    if-ne v10, v1, :cond_3

    .line 61
    .line 62
    add-int/lit8 v9, v9, 0x1

    .line 63
    .line 64
    :cond_3
    aget v10, p1, v9

    .line 65
    .line 66
    add-int/2addr v10, v1

    .line 67
    aput v10, p1, v9

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_4
    and-int/lit8 v10, v9, 0x1

    .line 71
    .line 72
    if-nez v10, :cond_7

    .line 73
    .line 74
    const/4 v10, 0x4

    .line 75
    if-ne v9, v10, :cond_6

    .line 76
    .line 77
    invoke-static {p1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    .line 78
    .line 79
    .line 80
    move-result v9

    .line 81
    if-eqz v9, :cond_5

    .line 82
    .line 83
    invoke-virtual {p0, p1, v7, v8}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->handlePossibleCenter([III)Z

    .line 84
    .line 85
    .line 86
    move-result v9

    .line 87
    if-eqz v9, :cond_5

    .line 88
    .line 89
    invoke-virtual {p0, p1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->clearCounts([I)V

    .line 90
    .line 91
    .line 92
    move v9, v0

    .line 93
    goto :goto_3

    .line 94
    :cond_5
    invoke-virtual {p0, p1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->shiftCounts2([I)V

    .line 95
    .line 96
    .line 97
    move v9, v6

    .line 98
    goto :goto_3

    .line 99
    :cond_6
    add-int/lit8 v9, v9, 0x1

    .line 100
    .line 101
    aget v10, p1, v9

    .line 102
    .line 103
    add-int/2addr v10, v1

    .line 104
    aput v10, p1, v9

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_7
    aget v10, p1, v9

    .line 108
    .line 109
    add-int/2addr v10, v1

    .line 110
    aput v10, p1, v9

    .line 111
    .line 112
    :goto_3
    add-int/lit8 v8, v8, 0x1

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_8
    invoke-static {p1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    .line 116
    .line 117
    .line 118
    move-result v8

    .line 119
    if-eqz v8, :cond_9

    .line 120
    .line 121
    invoke-virtual {p0, p1, v7, v4}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->handlePossibleCenter([III)Z

    .line 122
    .line 123
    .line 124
    :cond_9
    add-int/2addr v7, v5

    .line 125
    goto :goto_1

    .line 126
    :cond_a
    invoke-direct {p0}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->selectMutipleBestPatterns()[[Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    new-instance v1, Ljava/util/ArrayList;

    .line 131
    .line 132
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .line 134
    .line 135
    array-length v2, p1

    .line 136
    :goto_4
    if-ge v0, v2, :cond_b

    .line 137
    .line 138
    aget-object v3, p1, v0

    .line 139
    .line 140
    invoke-static {v3}, Lcom/google/zxing/ResultPoint;->orderBestPatterns([Lcom/google/zxing/ResultPoint;)V

    .line 141
    .line 142
    .line 143
    new-instance v4, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    .line 144
    .line 145
    invoke-direct {v4, v3}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;-><init>([Lcom/google/zxing/qrcode/detector/FinderPattern;)V

    .line 146
    .line 147
    .line 148
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    add-int/lit8 v0, v0, 0x1

    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_b
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    if-eqz p1, :cond_c

    .line 159
    .line 160
    sget-object p1, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->EMPTY_RESULT_ARRAY:[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    .line 161
    .line 162
    return-object p1

    .line 163
    :cond_c
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    new-array p1, p1, [Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    .line 168
    .line 169
    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    check-cast p1, [Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    .line 174
    .line 175
    return-object p1
.end method
