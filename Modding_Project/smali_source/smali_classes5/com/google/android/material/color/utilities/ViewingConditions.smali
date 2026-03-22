.class public final Lcom/google/android/material/color/utilities/ViewingConditions;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lcom/google/android/material/color/utilities/ViewingConditions;


# instance fields
.field private final aw:D

.field private final c:D

.field private final fl:D

.field private final flRoot:D

.field private final n:D

.field private final nbb:D

.field private final nc:D

.field private final ncb:D

.field private final rgbD:[D

.field private final z:D


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 1
    invoke-static {}, Lcom/google/android/material/color/utilities/ColorUtils;->whitePointD65()[D

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    aget-wide v2, v0, v1

    .line 7
    .line 8
    invoke-static {}, Lcom/google/android/material/color/utilities/ColorUtils;->whitePointD65()[D

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v4, 0x1

    .line 13
    aget-wide v5, v0, v4

    .line 14
    .line 15
    invoke-static {}, Lcom/google/android/material/color/utilities/ColorUtils;->whitePointD65()[D

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v7, 0x2

    .line 20
    aget-wide v8, v0, v7

    .line 21
    .line 22
    const/4 v0, 0x3

    .line 23
    new-array v10, v0, [D

    .line 24
    .line 25
    aput-wide v2, v10, v1

    .line 26
    .line 27
    aput-wide v5, v10, v4

    .line 28
    .line 29
    aput-wide v8, v10, v7

    .line 30
    .line 31
    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    .line 32
    .line 33
    invoke-static {v0, v1}, Lcom/google/android/material/color/utilities/ColorUtils;->yFromLstar(D)D

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    const-wide v2, 0x404fd4bbab8b494cL    # 63.66197723675813

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    mul-double/2addr v0, v2

    .line 43
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 44
    .line 45
    div-double v11, v0, v2

    .line 46
    .line 47
    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    .line 48
    .line 49
    const/16 v17, 0x0

    .line 50
    .line 51
    const-wide/high16 v13, 0x4049000000000000L    # 50.0

    .line 52
    .line 53
    invoke-static/range {v10 .. v17}, Lcom/google/android/material/color/utilities/ViewingConditions;->make([DDDDZ)Lcom/google/android/material/color/utilities/ViewingConditions;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    sput-object v0, Lcom/google/android/material/color/utilities/ViewingConditions;->DEFAULT:Lcom/google/android/material/color/utilities/ViewingConditions;

    .line 58
    .line 59
    return-void
.end method

.method private constructor <init>(DDDDDD[DDDD)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->n:D

    .line 5
    .line 6
    iput-wide p3, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->aw:D

    .line 7
    .line 8
    iput-wide p5, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->nbb:D

    .line 9
    .line 10
    iput-wide p7, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->ncb:D

    .line 11
    .line 12
    iput-wide p9, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->c:D

    .line 13
    .line 14
    iput-wide p11, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->nc:D

    .line 15
    .line 16
    iput-object p13, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->rgbD:[D

    .line 17
    .line 18
    iput-wide p14, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->fl:D

    .line 19
    .line 20
    move-wide/from16 p1, p16

    .line 21
    .line 22
    iput-wide p1, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->flRoot:D

    .line 23
    .line 24
    move-wide/from16 p1, p18

    .line 25
    .line 26
    iput-wide p1, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->z:D

    .line 27
    .line 28
    return-void
.end method

.method public static make([DDDDZ)Lcom/google/android/material/color/utilities/ViewingConditions;
    .locals 40

    .line 1
    move-wide/from16 v0, p1

    .line 2
    .line 3
    const/4 v2, 0x3

    .line 4
    sget-object v3, Lcom/google/android/material/color/utilities/Cam16;->XYZ_TO_CAM16RGB:[[D

    .line 5
    .line 6
    const/4 v4, 0x0

    .line 7
    aget-wide v5, p0, v4

    .line 8
    .line 9
    aget-object v7, v3, v4

    .line 10
    .line 11
    aget-wide v8, v7, v4

    .line 12
    .line 13
    mul-double/2addr v8, v5

    .line 14
    const/4 v10, 0x1

    .line 15
    aget-wide v11, p0, v10

    .line 16
    .line 17
    aget-wide v13, v7, v10

    .line 18
    .line 19
    mul-double/2addr v13, v11

    .line 20
    add-double/2addr v8, v13

    .line 21
    const/4 v13, 0x2

    .line 22
    aget-wide v14, p0, v13

    .line 23
    .line 24
    aget-wide v16, v7, v13

    .line 25
    .line 26
    mul-double v16, v16, v14

    .line 27
    .line 28
    add-double v8, v8, v16

    .line 29
    .line 30
    aget-object v7, v3, v10

    .line 31
    .line 32
    aget-wide v16, v7, v4

    .line 33
    .line 34
    mul-double v16, v16, v5

    .line 35
    .line 36
    aget-wide v18, v7, v10

    .line 37
    .line 38
    mul-double v18, v18, v11

    .line 39
    .line 40
    add-double v16, v16, v18

    .line 41
    .line 42
    aget-wide v18, v7, v13

    .line 43
    .line 44
    mul-double v18, v18, v14

    .line 45
    .line 46
    add-double v16, v16, v18

    .line 47
    .line 48
    aget-object v3, v3, v13

    .line 49
    .line 50
    aget-wide v18, v3, v4

    .line 51
    .line 52
    mul-double v5, v5, v18

    .line 53
    .line 54
    aget-wide v18, v3, v10

    .line 55
    .line 56
    mul-double v11, v11, v18

    .line 57
    .line 58
    add-double/2addr v5, v11

    .line 59
    aget-wide v11, v3, v13

    .line 60
    .line 61
    mul-double/2addr v14, v11

    .line 62
    add-double/2addr v5, v14

    .line 63
    const-wide/high16 v11, 0x4024000000000000L    # 10.0

    .line 64
    .line 65
    div-double v14, p5, v11

    .line 66
    .line 67
    const-wide v18, 0x3fe999999999999aL    # 0.8

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    add-double v31, v14, v18

    .line 73
    .line 74
    const-wide v14, 0x3feccccccccccccdL    # 0.9

    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    cmpl-double v3, v31, v14

    .line 80
    .line 81
    if-ltz v3, :cond_0

    .line 82
    .line 83
    sub-double v14, v31, v14

    .line 84
    .line 85
    mul-double v22, v14, v11

    .line 86
    .line 87
    const-wide v18, 0x3fe2e147ae147ae1L    # 0.59

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    const-wide v20, 0x3fe6147ae147ae14L    # 0.69

    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    invoke-static/range {v18 .. v23}, Lcom/google/android/material/color/utilities/MathUtils;->lerp(DDD)D

    .line 98
    .line 99
    .line 100
    move-result-wide v11

    .line 101
    :goto_0
    move-wide/from16 v29, v11

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_0
    sub-double v14, v31, v18

    .line 105
    .line 106
    mul-double v22, v14, v11

    .line 107
    .line 108
    const-wide v18, 0x3fe0cccccccccccdL    # 0.525

    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    const-wide v20, 0x3fe2e147ae147ae1L    # 0.59

    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    invoke-static/range {v18 .. v23}, Lcom/google/android/material/color/utilities/MathUtils;->lerp(DDD)D

    .line 119
    .line 120
    .line 121
    move-result-wide v11

    .line 122
    goto :goto_0

    .line 123
    :goto_1
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    .line 124
    .line 125
    if-eqz p7, :cond_1

    .line 126
    .line 127
    move-wide/from16 v22, v11

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_1
    neg-double v14, v0

    .line 131
    const-wide/high16 v18, 0x4045000000000000L    # 42.0

    .line 132
    .line 133
    sub-double v14, v14, v18

    .line 134
    .line 135
    const-wide/high16 v18, 0x4057000000000000L    # 92.0

    .line 136
    .line 137
    div-double v14, v14, v18

    .line 138
    .line 139
    invoke-static {v14, v15}, Ljava/lang/Math;->exp(D)D

    .line 140
    .line 141
    .line 142
    move-result-wide v14

    .line 143
    const-wide v18, 0x3fd1c71c71c71c72L    # 0.2777777777777778

    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    mul-double v14, v14, v18

    .line 149
    .line 150
    sub-double v14, v11, v14

    .line 151
    .line 152
    mul-double v14, v14, v31

    .line 153
    .line 154
    move-wide/from16 v22, v14

    .line 155
    .line 156
    :goto_2
    const-wide/16 v18, 0x0

    .line 157
    .line 158
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    .line 159
    .line 160
    invoke-static/range {v18 .. v23}, Lcom/google/android/material/color/utilities/MathUtils;->clampDouble(DDD)D

    .line 161
    .line 162
    .line 163
    move-result-wide v14

    .line 164
    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    .line 165
    .line 166
    div-double v20, v18, v8

    .line 167
    .line 168
    mul-double v20, v20, v14

    .line 169
    .line 170
    add-double v20, v20, v11

    .line 171
    .line 172
    sub-double v20, v20, v14

    .line 173
    .line 174
    div-double v22, v18, v16

    .line 175
    .line 176
    mul-double v22, v22, v14

    .line 177
    .line 178
    add-double v22, v22, v11

    .line 179
    .line 180
    sub-double v22, v22, v14

    .line 181
    .line 182
    div-double v24, v18, v5

    .line 183
    .line 184
    mul-double v24, v24, v14

    .line 185
    .line 186
    add-double v24, v24, v11

    .line 187
    .line 188
    sub-double v24, v24, v14

    .line 189
    .line 190
    new-array v3, v2, [D

    .line 191
    .line 192
    aput-wide v20, v3, v4

    .line 193
    .line 194
    aput-wide v22, v3, v10

    .line 195
    .line 196
    aput-wide v24, v3, v13

    .line 197
    .line 198
    const-wide/high16 v14, 0x4014000000000000L    # 5.0

    .line 199
    .line 200
    mul-double/2addr v14, v0

    .line 201
    add-double v20, v14, v11

    .line 202
    .line 203
    div-double v20, v11, v20

    .line 204
    .line 205
    mul-double v22, v20, v20

    .line 206
    .line 207
    mul-double v22, v22, v20

    .line 208
    .line 209
    mul-double v22, v22, v20

    .line 210
    .line 211
    sub-double v11, v11, v22

    .line 212
    .line 213
    mul-double v22, v22, v0

    .line 214
    .line 215
    const-wide v0, 0x3fb999999999999aL    # 0.1

    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    mul-double/2addr v0, v11

    .line 221
    mul-double/2addr v0, v11

    .line 222
    invoke-static {v14, v15}, Ljava/lang/Math;->cbrt(D)D

    .line 223
    .line 224
    .line 225
    move-result-wide v11

    .line 226
    mul-double/2addr v0, v11

    .line 227
    add-double v0, v22, v0

    .line 228
    .line 229
    invoke-static/range {p3 .. p4}, Lcom/google/android/material/color/utilities/ColorUtils;->yFromLstar(D)D

    .line 230
    .line 231
    .line 232
    move-result-wide v11

    .line 233
    aget-wide v14, p0, v10

    .line 234
    .line 235
    div-double/2addr v11, v14

    .line 236
    const-wide v14, 0x3ff7ae147ae147aeL    # 1.48

    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    .line 242
    .line 243
    .line 244
    move-result-wide v20

    .line 245
    add-double v38, v20, v14

    .line 246
    .line 247
    const-wide v14, 0x3fc999999999999aL    # 0.2

    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    invoke-static {v11, v12, v14, v15}, Ljava/lang/Math;->pow(DD)D

    .line 253
    .line 254
    .line 255
    move-result-wide v14

    .line 256
    const-wide v20, 0x3fe7333333333333L    # 0.725

    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    div-double v25, v20, v14

    .line 262
    .line 263
    aget-wide v14, v3, v4

    .line 264
    .line 265
    mul-double/2addr v14, v0

    .line 266
    mul-double/2addr v14, v8

    .line 267
    div-double v14, v14, v18

    .line 268
    .line 269
    const-wide v7, 0x3fdae147ae147ae1L    # 0.42

    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    invoke-static {v14, v15, v7, v8}, Ljava/lang/Math;->pow(DD)D

    .line 275
    .line 276
    .line 277
    move-result-wide v14

    .line 278
    aget-wide v20, v3, v10

    .line 279
    .line 280
    mul-double v20, v20, v0

    .line 281
    .line 282
    mul-double v20, v20, v16

    .line 283
    .line 284
    move v9, v4

    .line 285
    move-wide/from16 v16, v5

    .line 286
    .line 287
    div-double v4, v20, v18

    .line 288
    .line 289
    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->pow(DD)D

    .line 290
    .line 291
    .line 292
    move-result-wide v4

    .line 293
    aget-wide v20, v3, v13

    .line 294
    .line 295
    mul-double v20, v20, v0

    .line 296
    .line 297
    mul-double v20, v20, v16

    .line 298
    .line 299
    move/from16 p0, v9

    .line 300
    .line 301
    move v6, v10

    .line 302
    div-double v9, v20, v18

    .line 303
    .line 304
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    .line 305
    .line 306
    .line 307
    move-result-wide v7

    .line 308
    new-array v9, v2, [D

    .line 309
    .line 310
    aput-wide v14, v9, p0

    .line 311
    .line 312
    aput-wide v4, v9, v6

    .line 313
    .line 314
    aput-wide v7, v9, v13

    .line 315
    .line 316
    aget-wide v4, v9, p0

    .line 317
    .line 318
    const-wide/high16 v7, 0x4079000000000000L    # 400.0

    .line 319
    .line 320
    mul-double v14, v4, v7

    .line 321
    .line 322
    const-wide v16, 0x403b2147ae147ae1L    # 27.13

    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    add-double v4, v4, v16

    .line 328
    .line 329
    div-double/2addr v14, v4

    .line 330
    aget-wide v4, v9, v6

    .line 331
    .line 332
    mul-double v18, v4, v7

    .line 333
    .line 334
    add-double v4, v4, v16

    .line 335
    .line 336
    div-double v18, v18, v4

    .line 337
    .line 338
    aget-wide v4, v9, v13

    .line 339
    .line 340
    mul-double/2addr v7, v4

    .line 341
    add-double v4, v4, v16

    .line 342
    .line 343
    div-double/2addr v7, v4

    .line 344
    new-array v2, v2, [D

    .line 345
    .line 346
    aput-wide v14, v2, p0

    .line 347
    .line 348
    aput-wide v18, v2, v6

    .line 349
    .line 350
    aput-wide v7, v2, v13

    .line 351
    .line 352
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 353
    .line 354
    aget-wide v7, v2, p0

    .line 355
    .line 356
    mul-double/2addr v7, v4

    .line 357
    aget-wide v4, v2, v6

    .line 358
    .line 359
    add-double/2addr v7, v4

    .line 360
    const-wide v4, 0x3fa999999999999aL    # 0.05

    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    aget-wide v9, v2, v13

    .line 366
    .line 367
    mul-double/2addr v9, v4

    .line 368
    add-double/2addr v7, v9

    .line 369
    mul-double v23, v7, v25

    .line 370
    .line 371
    new-instance v20, Lcom/google/android/material/color/utilities/ViewingConditions;

    .line 372
    .line 373
    const-wide/high16 v4, 0x3fd0000000000000L    # 0.25

    .line 374
    .line 375
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    .line 376
    .line 377
    .line 378
    move-result-wide v36

    .line 379
    move-wide/from16 v27, v25

    .line 380
    .line 381
    move-wide/from16 v34, v0

    .line 382
    .line 383
    move-object/from16 v33, v3

    .line 384
    .line 385
    move-wide/from16 v21, v11

    .line 386
    .line 387
    invoke-direct/range {v20 .. v39}, Lcom/google/android/material/color/utilities/ViewingConditions;-><init>(DDDDDD[DDDD)V

    .line 388
    .line 389
    .line 390
    return-object v20
.end method


# virtual methods
.method public getAw()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->aw:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getC()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->c:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getFl()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->fl:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getFlRoot()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->flRoot:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getN()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->n:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getNbb()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->nbb:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getNc()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->nc:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getNcb()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->ncb:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getRgbD()[D
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->rgbD:[D

    .line 2
    .line 3
    return-object v0
.end method

.method public getZ()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->z:D

    .line 2
    .line 3
    return-wide v0
.end method
