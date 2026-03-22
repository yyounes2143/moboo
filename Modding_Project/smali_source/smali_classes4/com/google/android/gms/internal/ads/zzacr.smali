.class public final Lcom/google/android/gms/internal/ads/zzacr;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0xe

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/google/android/gms/internal/ads/zzacr;->zzb:[I

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 4
        0x7d2
        0x7d0
        0x780
        0x641
        0x640
        0x3e9
        0x3e8
        0x3c0
        0x320
        0x320
        0x1e0
        0x190
        0x190
        0x800
    .end array-data
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzek;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzs;)Lcom/google/android/gms/internal/ads/zzz;
    .locals 22
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/internal/ads/zzs;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    const/16 v1, 0x8

    .line 3
    .line 4
    new-instance v3, Lcom/google/android/gms/internal/ads/zzej;

    .line 5
    .line 6
    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzej;-><init>()V

    .line 7
    .line 8
    .line 9
    move-object/from16 v4, p0

    .line 10
    .line 11
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzej;->zzj(Lcom/google/android/gms/internal/ads/zzek;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzej;->zza()I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    const/4 v5, 0x3

    .line 19
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    const/4 v7, 0x1

    .line 24
    if-gt v6, v7, :cond_35

    .line 25
    .line 26
    const/4 v8, 0x7

    .line 27
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 28
    .line 29
    .line 30
    move-result v9

    .line 31
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzej;->zzp()Z

    .line 32
    .line 33
    .line 34
    move-result v10

    .line 35
    if-eq v7, v10, :cond_0

    .line 36
    .line 37
    const v10, 0xac44

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const v10, 0xbb80

    .line 42
    .line 43
    .line 44
    :goto_0
    const/4 v11, 0x4

    .line 45
    invoke-virtual {v3, v11}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 46
    .line 47
    .line 48
    const/16 v12, 0x9

    .line 49
    .line 50
    invoke-virtual {v3, v12}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 51
    .line 52
    .line 53
    move-result v12

    .line 54
    const/16 v13, 0x10

    .line 55
    .line 56
    if-le v9, v7, :cond_2

    .line 57
    .line 58
    if-eqz v6, :cond_1

    .line 59
    .line 60
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzej;->zzp()Z

    .line 61
    .line 62
    .line 63
    move-result v14

    .line 64
    if-eqz v14, :cond_2

    .line 65
    .line 66
    invoke-virtual {v3, v13}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzej;->zzp()Z

    .line 70
    .line 71
    .line 72
    move-result v14

    .line 73
    if-eqz v14, :cond_2

    .line 74
    .line 75
    const/16 v14, 0x80

    .line 76
    .line 77
    invoke-virtual {v3, v14}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_1
    const-string v0, "Invalid AC-4 DSI version: 0"

    .line 82
    .line 83
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    throw v0

    .line 88
    :cond_2
    :goto_1
    if-ne v6, v7, :cond_4

    .line 89
    .line 90
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzacr;->zzg(Lcom/google/android/gms/internal/ads/zzej;)Z

    .line 91
    .line 92
    .line 93
    move-result v14

    .line 94
    if-eqz v14, :cond_3

    .line 95
    .line 96
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzej;->zzf()V

    .line 97
    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_3
    const-string v0, "Invalid AC-4 DSI bitrate."

    .line 101
    .line 102
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    throw v0

    .line 107
    :cond_4
    :goto_2
    new-instance v14, Lcom/google/android/gms/internal/ads/zzaco;

    .line 108
    .line 109
    const/4 v15, 0x0

    .line 110
    invoke-direct {v14, v15}, Lcom/google/android/gms/internal/ads/zzaco;-><init>(Lcom/google/android/gms/internal/ads/zzacq;)V

    .line 111
    .line 112
    .line 113
    const/4 v15, 0x0

    .line 114
    const/16 v16, 0x0

    .line 115
    .line 116
    :goto_3
    const/4 v8, 0x6

    .line 117
    const/4 v11, 0x5

    .line 118
    if-ge v15, v12, :cond_2d

    .line 119
    .line 120
    if-nez v6, :cond_5

    .line 121
    .line 122
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzej;->zzp()Z

    .line 123
    .line 124
    .line 125
    move-result v12

    .line 126
    invoke-virtual {v3, v11}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 127
    .line 128
    .line 129
    move-result v17

    .line 130
    invoke-virtual {v3, v11}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 131
    .line 132
    .line 133
    move-result v18

    .line 134
    move/from16 v19, v1

    .line 135
    .line 136
    move/from16 v1, v16

    .line 137
    .line 138
    move v13, v1

    .line 139
    move/from16 v2, v17

    .line 140
    .line 141
    move/from16 v0, v18

    .line 142
    .line 143
    move/from16 v18, v7

    .line 144
    .line 145
    move v7, v13

    .line 146
    goto :goto_5

    .line 147
    :cond_5
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    move/from16 v18, v7

    .line 152
    .line 153
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 154
    .line 155
    .line 156
    move-result v7

    .line 157
    move/from16 v19, v1

    .line 158
    .line 159
    const/16 v1, 0xff

    .line 160
    .line 161
    if-ne v7, v1, :cond_6

    .line 162
    .line 163
    invoke-virtual {v3, v13}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 164
    .line 165
    .line 166
    move-result v7

    .line 167
    add-int/2addr v7, v1

    .line 168
    :cond_6
    if-le v2, v0, :cond_7

    .line 169
    .line 170
    mul-int/lit8 v7, v7, 0x8

    .line 171
    .line 172
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 173
    .line 174
    .line 175
    add-int/lit8 v15, v15, 0x1

    .line 176
    .line 177
    move/from16 v7, v18

    .line 178
    .line 179
    move/from16 v1, v19

    .line 180
    .line 181
    const/4 v8, 0x7

    .line 182
    const/4 v11, 0x4

    .line 183
    goto :goto_3

    .line 184
    :cond_7
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzej;->zza()I

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    sub-int v1, v4, v1

    .line 189
    .line 190
    div-int/lit8 v1, v1, 0x8

    .line 191
    .line 192
    invoke-virtual {v3, v11}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 193
    .line 194
    .line 195
    move-result v12

    .line 196
    const/16 v13, 0x1f

    .line 197
    .line 198
    if-ne v12, v13, :cond_8

    .line 199
    .line 200
    move/from16 v13, v18

    .line 201
    .line 202
    goto :goto_4

    .line 203
    :cond_8
    move/from16 v13, v16

    .line 204
    .line 205
    :goto_4
    move v0, v2

    .line 206
    move v2, v12

    .line 207
    move/from16 v12, v16

    .line 208
    .line 209
    :goto_5
    iput v0, v14, Lcom/google/android/gms/internal/ads/zzaco;->zzf:I

    .line 210
    .line 211
    const/16 v11, 0xf

    .line 212
    .line 213
    if-nez v12, :cond_a

    .line 214
    .line 215
    if-nez v13, :cond_a

    .line 216
    .line 217
    if-eq v2, v8, :cond_9

    .line 218
    .line 219
    goto :goto_7

    .line 220
    :cond_9
    move/from16 v21, v1

    .line 221
    .line 222
    :goto_6
    const/4 v1, 0x7

    .line 223
    goto/16 :goto_18

    .line 224
    .line 225
    :cond_a
    :goto_7
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 226
    .line 227
    .line 228
    move-result v8

    .line 229
    iput v8, v14, Lcom/google/android/gms/internal/ads/zzaco;->zzg:I

    .line 230
    .line 231
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzej;->zzp()Z

    .line 232
    .line 233
    .line 234
    move-result v8

    .line 235
    if-eqz v8, :cond_b

    .line 236
    .line 237
    const/4 v8, 0x5

    .line 238
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 239
    .line 240
    .line 241
    :cond_b
    const/4 v8, 0x2

    .line 242
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 243
    .line 244
    .line 245
    move/from16 v5, v18

    .line 246
    .line 247
    if-ne v6, v5, :cond_d

    .line 248
    .line 249
    if-eq v0, v5, :cond_c

    .line 250
    .line 251
    if-ne v0, v8, :cond_d

    .line 252
    .line 253
    move v0, v8

    .line 254
    :cond_c
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 255
    .line 256
    .line 257
    :cond_d
    const/4 v8, 0x5

    .line 258
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 259
    .line 260
    .line 261
    const/16 v5, 0xa

    .line 262
    .line 263
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 264
    .line 265
    .line 266
    const/4 v5, 0x1

    .line 267
    if-ne v6, v5, :cond_17

    .line 268
    .line 269
    if-lez v0, :cond_e

    .line 270
    .line 271
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzej;->zzp()Z

    .line 272
    .line 273
    .line 274
    move-result v8

    .line 275
    iput-boolean v8, v14, Lcom/google/android/gms/internal/ads/zzaco;->zza:Z

    .line 276
    .line 277
    :cond_e
    iget-boolean v8, v14, Lcom/google/android/gms/internal/ads/zzaco;->zza:Z

    .line 278
    .line 279
    if-eqz v8, :cond_13

    .line 280
    .line 281
    if-eq v0, v5, :cond_10

    .line 282
    .line 283
    const/4 v8, 0x2

    .line 284
    if-ne v0, v8, :cond_f

    .line 285
    .line 286
    const/4 v5, 0x2

    .line 287
    :goto_8
    move/from16 v21, v1

    .line 288
    .line 289
    const/4 v8, 0x5

    .line 290
    goto :goto_a

    .line 291
    :cond_f
    move v5, v0

    .line 292
    move/from16 v21, v1

    .line 293
    .line 294
    :goto_9
    const/16 v1, 0x18

    .line 295
    .line 296
    goto :goto_b

    .line 297
    :cond_10
    const/4 v5, 0x1

    .line 298
    goto :goto_8

    .line 299
    :goto_a
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 300
    .line 301
    .line 302
    move-result v1

    .line 303
    if-ltz v1, :cond_11

    .line 304
    .line 305
    if-gt v1, v11, :cond_11

    .line 306
    .line 307
    iput v1, v14, Lcom/google/android/gms/internal/ads/zzaco;->zzb:I

    .line 308
    .line 309
    :cond_11
    const/16 v8, 0xb

    .line 310
    .line 311
    if-lt v1, v8, :cond_12

    .line 312
    .line 313
    const/16 v8, 0xe

    .line 314
    .line 315
    if-gt v1, v8, :cond_12

    .line 316
    .line 317
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzej;->zzp()Z

    .line 318
    .line 319
    .line 320
    move-result v1

    .line 321
    iput-boolean v1, v14, Lcom/google/android/gms/internal/ads/zzaco;->zzd:Z

    .line 322
    .line 323
    const/4 v8, 0x2

    .line 324
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 325
    .line 326
    .line 327
    move-result v1

    .line 328
    iput v1, v14, Lcom/google/android/gms/internal/ads/zzaco;->zze:I

    .line 329
    .line 330
    goto :goto_9

    .line 331
    :cond_12
    const/4 v8, 0x2

    .line 332
    goto :goto_9

    .line 333
    :goto_b
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 334
    .line 335
    .line 336
    const/4 v1, 0x1

    .line 337
    goto :goto_c

    .line 338
    :cond_13
    move/from16 v21, v1

    .line 339
    .line 340
    const/4 v8, 0x2

    .line 341
    move v1, v5

    .line 342
    move v5, v0

    .line 343
    :goto_c
    if-eq v0, v1, :cond_14

    .line 344
    .line 345
    if-ne v0, v8, :cond_16

    .line 346
    .line 347
    :cond_14
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzej;->zzp()Z

    .line 348
    .line 349
    .line 350
    move-result v0

    .line 351
    if-eqz v0, :cond_15

    .line 352
    .line 353
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzej;->zzp()Z

    .line 354
    .line 355
    .line 356
    move-result v0

    .line 357
    if-eqz v0, :cond_15

    .line 358
    .line 359
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 360
    .line 361
    .line 362
    :cond_15
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzej;->zzp()Z

    .line 363
    .line 364
    .line 365
    move-result v0

    .line 366
    if-eqz v0, :cond_16

    .line 367
    .line 368
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzej;->zzm()V

    .line 369
    .line 370
    .line 371
    move/from16 v0, v19

    .line 372
    .line 373
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 374
    .line 375
    .line 376
    move-result v1

    .line 377
    move/from16 v8, v16

    .line 378
    .line 379
    :goto_d
    if-ge v8, v1, :cond_16

    .line 380
    .line 381
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 382
    .line 383
    .line 384
    const/16 v18, 0x1

    .line 385
    .line 386
    add-int/lit8 v8, v8, 0x1

    .line 387
    .line 388
    const/16 v0, 0x8

    .line 389
    .line 390
    goto :goto_d

    .line 391
    :cond_16
    move v0, v5

    .line 392
    goto :goto_e

    .line 393
    :cond_17
    move/from16 v21, v1

    .line 394
    .line 395
    :goto_e
    if-nez v12, :cond_20

    .line 396
    .line 397
    if-eqz v13, :cond_18

    .line 398
    .line 399
    goto/16 :goto_16

    .line 400
    .line 401
    :cond_18
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzej;->zzm()V

    .line 402
    .line 403
    .line 404
    const/4 v5, 0x1

    .line 405
    if-eqz v2, :cond_1e

    .line 406
    .line 407
    if-eq v2, v5, :cond_1e

    .line 408
    .line 409
    const/4 v8, 0x2

    .line 410
    if-eq v2, v8, :cond_1e

    .line 411
    .line 412
    const/4 v1, 0x3

    .line 413
    if-eq v2, v1, :cond_1c

    .line 414
    .line 415
    const/4 v1, 0x4

    .line 416
    if-eq v2, v1, :cond_1c

    .line 417
    .line 418
    const/4 v8, 0x5

    .line 419
    if-eq v2, v8, :cond_19

    .line 420
    .line 421
    const/4 v1, 0x7

    .line 422
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 423
    .line 424
    .line 425
    move-result v2

    .line 426
    move/from16 v1, v16

    .line 427
    .line 428
    :goto_f
    if-ge v1, v2, :cond_22

    .line 429
    .line 430
    const/16 v8, 0x8

    .line 431
    .line 432
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 433
    .line 434
    .line 435
    add-int/2addr v1, v5

    .line 436
    goto :goto_f

    .line 437
    :cond_19
    if-nez v0, :cond_1b

    .line 438
    .line 439
    invoke-static {v3, v14}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzej;Lcom/google/android/gms/internal/ads/zzaco;)V

    .line 440
    .line 441
    .line 442
    :cond_1a
    :goto_10
    move/from16 v0, v16

    .line 443
    .line 444
    goto :goto_17

    .line 445
    :cond_1b
    const/4 v1, 0x3

    .line 446
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 447
    .line 448
    .line 449
    move-result v2

    .line 450
    move/from16 v1, v16

    .line 451
    .line 452
    :goto_11
    const/16 v20, 0x2

    .line 453
    .line 454
    add-int/lit8 v8, v2, 0x2

    .line 455
    .line 456
    if-ge v1, v8, :cond_22

    .line 457
    .line 458
    invoke-static {v3, v14}, Lcom/google/android/gms/internal/ads/zzacr;->zze(Lcom/google/android/gms/internal/ads/zzej;Lcom/google/android/gms/internal/ads/zzaco;)V

    .line 459
    .line 460
    .line 461
    add-int/2addr v1, v5

    .line 462
    goto :goto_11

    .line 463
    :cond_1c
    if-nez v0, :cond_1d

    .line 464
    .line 465
    move/from16 v0, v16

    .line 466
    .line 467
    const/4 v1, 0x3

    .line 468
    :goto_12
    if-ge v0, v1, :cond_1a

    .line 469
    .line 470
    invoke-static {v3, v14}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzej;Lcom/google/android/gms/internal/ads/zzaco;)V

    .line 471
    .line 472
    .line 473
    add-int/2addr v0, v5

    .line 474
    goto :goto_12

    .line 475
    :cond_1d
    move/from16 v2, v16

    .line 476
    .line 477
    :goto_13
    const/4 v1, 0x3

    .line 478
    if-ge v2, v1, :cond_22

    .line 479
    .line 480
    invoke-static {v3, v14}, Lcom/google/android/gms/internal/ads/zzacr;->zze(Lcom/google/android/gms/internal/ads/zzej;Lcom/google/android/gms/internal/ads/zzaco;)V

    .line 481
    .line 482
    .line 483
    add-int/2addr v2, v5

    .line 484
    goto :goto_13

    .line 485
    :cond_1e
    if-nez v0, :cond_1f

    .line 486
    .line 487
    move/from16 v0, v16

    .line 488
    .line 489
    const/4 v8, 0x2

    .line 490
    :goto_14
    if-ge v0, v8, :cond_1a

    .line 491
    .line 492
    invoke-static {v3, v14}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzej;Lcom/google/android/gms/internal/ads/zzaco;)V

    .line 493
    .line 494
    .line 495
    add-int/2addr v0, v5

    .line 496
    goto :goto_14

    .line 497
    :cond_1f
    move/from16 v1, v16

    .line 498
    .line 499
    :goto_15
    const/4 v8, 0x2

    .line 500
    if-ge v1, v8, :cond_22

    .line 501
    .line 502
    invoke-static {v3, v14}, Lcom/google/android/gms/internal/ads/zzacr;->zze(Lcom/google/android/gms/internal/ads/zzej;Lcom/google/android/gms/internal/ads/zzaco;)V

    .line 503
    .line 504
    .line 505
    add-int/2addr v1, v5

    .line 506
    goto :goto_15

    .line 507
    :cond_20
    :goto_16
    if-nez v0, :cond_21

    .line 508
    .line 509
    invoke-static {v3, v14}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzej;Lcom/google/android/gms/internal/ads/zzaco;)V

    .line 510
    .line 511
    .line 512
    goto :goto_10

    .line 513
    :cond_21
    invoke-static {v3, v14}, Lcom/google/android/gms/internal/ads/zzacr;->zze(Lcom/google/android/gms/internal/ads/zzej;Lcom/google/android/gms/internal/ads/zzaco;)V

    .line 514
    .line 515
    .line 516
    :cond_22
    :goto_17
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzej;->zzm()V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzej;->zzp()Z

    .line 520
    .line 521
    .line 522
    move-result v1

    .line 523
    if-eqz v1, :cond_23

    .line 524
    .line 525
    goto/16 :goto_6

    .line 526
    .line 527
    :goto_18
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 528
    .line 529
    .line 530
    move-result v2

    .line 531
    move/from16 v5, v16

    .line 532
    .line 533
    :goto_19
    if-ge v5, v2, :cond_24

    .line 534
    .line 535
    invoke-virtual {v3, v11}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 536
    .line 537
    .line 538
    const/16 v18, 0x1

    .line 539
    .line 540
    add-int/lit8 v5, v5, 0x1

    .line 541
    .line 542
    goto :goto_19

    .line 543
    :cond_23
    const/4 v1, 0x7

    .line 544
    :cond_24
    if-lez v0, :cond_28

    .line 545
    .line 546
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzej;->zzp()Z

    .line 547
    .line 548
    .line 549
    move-result v0

    .line 550
    if-eqz v0, :cond_26

    .line 551
    .line 552
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzacr;->zzg(Lcom/google/android/gms/internal/ads/zzej;)Z

    .line 553
    .line 554
    .line 555
    move-result v0

    .line 556
    if-eqz v0, :cond_25

    .line 557
    .line 558
    goto :goto_1a

    .line 559
    :cond_25
    const-string v0, "Can\'t parse bitrate DSI."

    .line 560
    .line 561
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 562
    .line 563
    .line 564
    move-result-object v0

    .line 565
    throw v0

    .line 566
    :cond_26
    :goto_1a
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzej;->zzp()Z

    .line 567
    .line 568
    .line 569
    move-result v0

    .line 570
    if-eqz v0, :cond_28

    .line 571
    .line 572
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzej;->zzf()V

    .line 573
    .line 574
    .line 575
    const/16 v0, 0x10

    .line 576
    .line 577
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 578
    .line 579
    .line 580
    move-result v0

    .line 581
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzej;->zzo(I)V

    .line 582
    .line 583
    .line 584
    const/4 v8, 0x5

    .line 585
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 586
    .line 587
    .line 588
    move-result v0

    .line 589
    move/from16 v2, v16

    .line 590
    .line 591
    :goto_1b
    if-ge v2, v0, :cond_27

    .line 592
    .line 593
    const/4 v5, 0x3

    .line 594
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 595
    .line 596
    .line 597
    const/16 v5, 0x8

    .line 598
    .line 599
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 600
    .line 601
    .line 602
    const/4 v11, 0x1

    .line 603
    add-int/2addr v2, v11

    .line 604
    goto :goto_1b

    .line 605
    :cond_27
    const/16 v5, 0x8

    .line 606
    .line 607
    :goto_1c
    const/4 v11, 0x1

    .line 608
    goto :goto_1d

    .line 609
    :cond_28
    const/16 v5, 0x8

    .line 610
    .line 611
    const/4 v8, 0x5

    .line 612
    goto :goto_1c

    .line 613
    :goto_1d
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzej;->zzf()V

    .line 614
    .line 615
    .line 616
    if-ne v6, v11, :cond_2a

    .line 617
    .line 618
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzej;->zza()I

    .line 619
    .line 620
    .line 621
    move-result v0

    .line 622
    sub-int/2addr v4, v0

    .line 623
    div-int/2addr v4, v5

    .line 624
    sub-int v4, v4, v21

    .line 625
    .line 626
    if-lt v7, v4, :cond_29

    .line 627
    .line 628
    sub-int/2addr v7, v4

    .line 629
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/zzej;->zzo(I)V

    .line 630
    .line 631
    .line 632
    goto :goto_1e

    .line 633
    :cond_29
    const-string v0, "pres_bytes is smaller than presentation bytes read."

    .line 634
    .line 635
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 636
    .line 637
    .line 638
    move-result-object v0

    .line 639
    throw v0

    .line 640
    :cond_2a
    :goto_1e
    iget-boolean v0, v14, Lcom/google/android/gms/internal/ads/zzaco;->zza:Z

    .line 641
    .line 642
    if-eqz v0, :cond_2c

    .line 643
    .line 644
    iget v0, v14, Lcom/google/android/gms/internal/ads/zzaco;->zzb:I

    .line 645
    .line 646
    const/4 v2, -0x1

    .line 647
    if-eq v0, v2, :cond_2b

    .line 648
    .line 649
    goto :goto_20

    .line 650
    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    .line 651
    .line 652
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 653
    .line 654
    .line 655
    const-string v1, "Can\'t determine channel mode of presentation "

    .line 656
    .line 657
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    .line 659
    .line 660
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 661
    .line 662
    .line 663
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 664
    .line 665
    .line 666
    move-result-object v0

    .line 667
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 668
    .line 669
    .line 670
    move-result-object v0

    .line 671
    throw v0

    .line 672
    :cond_2c
    :goto_1f
    const/4 v2, -0x1

    .line 673
    goto :goto_20

    .line 674
    :cond_2d
    move v5, v1

    .line 675
    move v8, v11

    .line 676
    const/4 v1, 0x7

    .line 677
    goto :goto_1f

    .line 678
    :goto_20
    iget-boolean v0, v14, Lcom/google/android/gms/internal/ads/zzaco;->zza:Z

    .line 679
    .line 680
    if-eqz v0, :cond_32

    .line 681
    .line 682
    iget v0, v14, Lcom/google/android/gms/internal/ads/zzaco;->zzb:I

    .line 683
    .line 684
    iget-boolean v3, v14, Lcom/google/android/gms/internal/ads/zzaco;->zzd:Z

    .line 685
    .line 686
    iget v4, v14, Lcom/google/android/gms/internal/ads/zzaco;->zze:I

    .line 687
    .line 688
    const/16 v6, 0xc

    .line 689
    .line 690
    const/16 v7, 0xd

    .line 691
    .line 692
    packed-switch v0, :pswitch_data_0

    .line 693
    .line 694
    .line 695
    move v1, v2

    .line 696
    :goto_21
    :pswitch_0
    const/16 v8, 0xb

    .line 697
    .line 698
    goto :goto_22

    .line 699
    :pswitch_1
    const/16 v1, 0x18

    .line 700
    .line 701
    goto :goto_21

    .line 702
    :pswitch_2
    const/16 v1, 0xe

    .line 703
    .line 704
    goto :goto_21

    .line 705
    :pswitch_3
    move v1, v7

    .line 706
    goto :goto_21

    .line 707
    :pswitch_4
    move v1, v6

    .line 708
    goto :goto_21

    .line 709
    :pswitch_5
    const/16 v1, 0xb

    .line 710
    .line 711
    goto :goto_21

    .line 712
    :pswitch_6
    move v1, v5

    .line 713
    goto :goto_21

    .line 714
    :pswitch_7
    const/4 v1, 0x6

    .line 715
    goto :goto_21

    .line 716
    :pswitch_8
    move v1, v8

    .line 717
    goto :goto_21

    .line 718
    :pswitch_9
    const/4 v1, 0x3

    .line 719
    goto :goto_21

    .line 720
    :pswitch_a
    const/4 v1, 0x2

    .line 721
    goto :goto_21

    .line 722
    :pswitch_b
    const/4 v1, 0x1

    .line 723
    goto :goto_21

    .line 724
    :goto_22
    if-eq v0, v8, :cond_2e

    .line 725
    .line 726
    if-eq v0, v6, :cond_2e

    .line 727
    .line 728
    if-eq v0, v7, :cond_2e

    .line 729
    .line 730
    const/16 v8, 0xe

    .line 731
    .line 732
    if-ne v0, v8, :cond_33

    .line 733
    .line 734
    :cond_2e
    if-nez v3, :cond_2f

    .line 735
    .line 736
    add-int/lit8 v1, v1, -0x2

    .line 737
    .line 738
    :cond_2f
    if-eqz v4, :cond_31

    .line 739
    .line 740
    const/4 v5, 0x1

    .line 741
    if-eq v4, v5, :cond_30

    .line 742
    .line 743
    goto :goto_23

    .line 744
    :cond_30
    add-int/lit8 v1, v1, -0x2

    .line 745
    .line 746
    goto :goto_23

    .line 747
    :cond_31
    const/4 v5, 0x1

    .line 748
    add-int/lit8 v1, v1, -0x4

    .line 749
    .line 750
    goto :goto_23

    .line 751
    :cond_32
    const/4 v5, 0x1

    .line 752
    iget v0, v14, Lcom/google/android/gms/internal/ads/zzaco;->zzc:I

    .line 753
    .line 754
    add-int/lit8 v1, v0, 0x1

    .line 755
    .line 756
    iget v0, v14, Lcom/google/android/gms/internal/ads/zzaco;->zzg:I

    .line 757
    .line 758
    const/4 v2, 0x4

    .line 759
    if-ne v0, v2, :cond_33

    .line 760
    .line 761
    const/16 v0, 0x11

    .line 762
    .line 763
    if-ne v1, v0, :cond_33

    .line 764
    .line 765
    const/16 v1, 0x15

    .line 766
    .line 767
    :cond_33
    :goto_23
    if-lez v1, :cond_34

    .line 768
    .line 769
    iget v0, v14, Lcom/google/android/gms/internal/ads/zzaco;->zzf:I

    .line 770
    .line 771
    iget v2, v14, Lcom/google/android/gms/internal/ads/zzaco;->zzg:I

    .line 772
    .line 773
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 774
    .line 775
    .line 776
    move-result-object v3

    .line 777
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 778
    .line 779
    .line 780
    move-result-object v0

    .line 781
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 782
    .line 783
    .line 784
    move-result-object v2

    .line 785
    const/4 v5, 0x3

    .line 786
    new-array v4, v5, [Ljava/lang/Object;

    .line 787
    .line 788
    aput-object v3, v4, v16

    .line 789
    .line 790
    const/16 v18, 0x1

    .line 791
    .line 792
    aput-object v0, v4, v18

    .line 793
    .line 794
    const/16 v20, 0x2

    .line 795
    .line 796
    aput-object v2, v4, v20

    .line 797
    .line 798
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeu;->zza:Ljava/lang/String;

    .line 799
    .line 800
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 801
    .line 802
    const-string v2, "ac-4.%02d.%02d.%02d"

    .line 803
    .line 804
    invoke-static {v0, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 805
    .line 806
    .line 807
    move-result-object v0

    .line 808
    new-instance v2, Lcom/google/android/gms/internal/ads/zzx;

    .line 809
    .line 810
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    .line 811
    .line 812
    .line 813
    move-object/from16 v3, p1

    .line 814
    .line 815
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzx;->zzO(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 816
    .line 817
    .line 818
    const-string v3, "audio/ac4"

    .line 819
    .line 820
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzx;->zzad(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 821
    .line 822
    .line 823
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzx;->zzB(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 824
    .line 825
    .line 826
    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/ads/zzx;->zzae(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 827
    .line 828
    .line 829
    move-object/from16 v1, p3

    .line 830
    .line 831
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzx;->zzH(Lcom/google/android/gms/internal/ads/zzs;)Lcom/google/android/gms/internal/ads/zzx;

    .line 832
    .line 833
    .line 834
    move-object/from16 v1, p2

    .line 835
    .line 836
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzx;->zzS(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 837
    .line 838
    .line 839
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzx;->zzC(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 840
    .line 841
    .line 842
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzx;->zzaj()Lcom/google/android/gms/internal/ads/zzz;

    .line 843
    .line 844
    .line 845
    move-result-object v0

    .line 846
    return-object v0

    .line 847
    :cond_34
    const-string v0, "Can\'t determine channel count of presentation."

    .line 848
    .line 849
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 850
    .line 851
    .line 852
    move-result-object v0

    .line 853
    throw v0

    .line 854
    :cond_35
    new-instance v0, Ljava/lang/StringBuilder;

    .line 855
    .line 856
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 857
    .line 858
    .line 859
    const-string v1, "Unsupported AC-4 DSI version: "

    .line 860
    .line 861
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    .line 863
    .line 864
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 865
    .line 866
    .line 867
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 868
    .line 869
    .line 870
    move-result-object v0

    .line 871
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 872
    .line 873
    .line 874
    move-result-object v0

    .line 875
    throw v0

    .line 876
    nop

    .line 877
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzej;)Lcom/google/android/gms/internal/ads/zzacp;
    .locals 11

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const v2, 0xffff

    .line 12
    .line 13
    .line 14
    const/4 v3, 0x4

    .line 15
    if-ne v0, v2, :cond_0

    .line 16
    .line 17
    const/16 v0, 0x18

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v2, 0x7

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v2, v3

    .line 26
    :goto_0
    add-int/2addr v0, v2

    .line 27
    const v2, 0xac41

    .line 28
    .line 29
    .line 30
    if-ne v1, v2, :cond_1

    .line 31
    .line 32
    add-int/lit8 v0, v0, 0x2

    .line 33
    .line 34
    :cond_1
    move v8, v0

    .line 35
    const/4 v0, 0x2

    .line 36
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    const/4 v2, 0x0

    .line 41
    const/4 v4, 0x3

    .line 42
    if-ne v1, v4, :cond_2

    .line 43
    .line 44
    move v1, v2

    .line 45
    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    add-int/2addr v1, v5

    .line 50
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzej;->zzp()Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-nez v5, :cond_3

    .line 55
    .line 56
    add-int/2addr v1, v4

    .line 57
    :cond_2
    move v5, v1

    .line 58
    goto :goto_2

    .line 59
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 60
    .line 61
    shl-int/2addr v1, v0

    .line 62
    goto :goto_1

    .line 63
    :goto_2
    const/16 v1, 0xa

    .line 64
    .line 65
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzej;->zzp()Z

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    if-eqz v6, :cond_4

    .line 74
    .line 75
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    if-lez v6, :cond_4

    .line 80
    .line 81
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 82
    .line 83
    .line 84
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzej;->zzp()Z

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    const v7, 0xbb80

    .line 89
    .line 90
    .line 91
    const v9, 0xac44

    .line 92
    .line 93
    .line 94
    const/4 v10, 0x1

    .line 95
    if-eq v10, v6, :cond_5

    .line 96
    .line 97
    move v6, v7

    .line 98
    move v7, v9

    .line 99
    goto :goto_3

    .line 100
    :cond_5
    move v6, v7

    .line 101
    :goto_3
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    if-ne v7, v9, :cond_7

    .line 106
    .line 107
    const/16 v9, 0xd

    .line 108
    .line 109
    if-ne p0, v9, :cond_7

    .line 110
    .line 111
    sget-object p0, Lcom/google/android/gms/internal/ads/zzacr;->zzb:[I

    .line 112
    .line 113
    aget v2, p0, v9

    .line 114
    .line 115
    :cond_6
    :goto_4
    move v9, v2

    .line 116
    goto :goto_6

    .line 117
    :cond_7
    if-ne v7, v6, :cond_6

    .line 118
    .line 119
    const/16 v6, 0xe

    .line 120
    .line 121
    if-ge p0, v6, :cond_6

    .line 122
    .line 123
    sget-object v2, Lcom/google/android/gms/internal/ads/zzacr;->zzb:[I

    .line 124
    .line 125
    aget v2, v2, p0

    .line 126
    .line 127
    rem-int/lit8 v1, v1, 0x5

    .line 128
    .line 129
    const/16 v6, 0x8

    .line 130
    .line 131
    if-eq v1, v10, :cond_b

    .line 132
    .line 133
    const/16 v9, 0xb

    .line 134
    .line 135
    if-eq v1, v0, :cond_a

    .line 136
    .line 137
    if-eq v1, v4, :cond_b

    .line 138
    .line 139
    if-eq v1, v3, :cond_8

    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_8
    if-eq p0, v4, :cond_9

    .line 143
    .line 144
    if-eq p0, v6, :cond_9

    .line 145
    .line 146
    if-ne p0, v9, :cond_6

    .line 147
    .line 148
    :cond_9
    :goto_5
    add-int/lit8 v2, v2, 0x1

    .line 149
    .line 150
    goto :goto_4

    .line 151
    :cond_a
    if-eq p0, v6, :cond_9

    .line 152
    .line 153
    if-ne p0, v9, :cond_6

    .line 154
    .line 155
    goto :goto_5

    .line 156
    :cond_b
    if-eq p0, v4, :cond_9

    .line 157
    .line 158
    if-ne p0, v6, :cond_6

    .line 159
    .line 160
    goto :goto_5

    .line 161
    :goto_6
    new-instance v4, Lcom/google/android/gms/internal/ads/zzacp;

    .line 162
    .line 163
    const/4 v6, 0x2

    .line 164
    const/4 v10, 0x0

    .line 165
    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzacp;-><init>(IIIIILcom/google/android/gms/internal/ads/zzacq;)V

    .line 166
    .line 167
    .line 168
    return-object v4
.end method

.method public static zzc(ILcom/google/android/gms/internal/ads/zzek;)V
    .locals 2

    .line 1
    const/4 v0, 0x7

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzek;->zzI(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x0

    .line 10
    const/16 v1, -0x54

    .line 11
    .line 12
    aput-byte v1, p1, v0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    const/16 v1, 0x40

    .line 16
    .line 17
    aput-byte v1, p1, v0

    .line 18
    .line 19
    const/4 v0, 0x2

    .line 20
    const/4 v1, -0x1

    .line 21
    aput-byte v1, p1, v0

    .line 22
    .line 23
    const/4 v0, 0x3

    .line 24
    aput-byte v1, p1, v0

    .line 25
    .line 26
    shr-int/lit8 v0, p0, 0x10

    .line 27
    .line 28
    and-int/lit16 v0, v0, 0xff

    .line 29
    .line 30
    int-to-byte v0, v0

    .line 31
    const/4 v1, 0x4

    .line 32
    aput-byte v0, p1, v1

    .line 33
    .line 34
    shr-int/lit8 v0, p0, 0x8

    .line 35
    .line 36
    and-int/lit16 v0, v0, 0xff

    .line 37
    .line 38
    int-to-byte v0, v0

    .line 39
    const/4 v1, 0x5

    .line 40
    aput-byte v0, p1, v1

    .line 41
    .line 42
    and-int/lit16 p0, p0, 0xff

    .line 43
    .line 44
    int-to-byte p0, p0

    .line 45
    const/4 v0, 0x6

    .line 46
    aput-byte p0, p1, v0

    .line 47
    .line 48
    return-void
.end method

.method private static zzd(Lcom/google/android/gms/internal/ads/zzej;Lcom/google/android/gms/internal/ads/zzaco;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x2

    .line 7
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzej;->zzp()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    const/4 v0, 0x7

    .line 20
    if-lt v1, v0, :cond_1

    .line 21
    .line 22
    const/16 v0, 0xa

    .line 23
    .line 24
    if-gt v1, v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzej;->zzm()V

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzej;->zzp()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_4

    .line 34
    .line 35
    const/4 v0, 0x3

    .line 36
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iget v2, p1, Lcom/google/android/gms/internal/ads/zzaco;->zzb:I

    .line 41
    .line 42
    const/4 v3, -0x1

    .line 43
    if-ne v2, v3, :cond_3

    .line 44
    .line 45
    if-ltz v1, :cond_3

    .line 46
    .line 47
    const/16 v2, 0xf

    .line 48
    .line 49
    if-gt v1, v2, :cond_3

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    const/4 v2, 0x1

    .line 54
    if-ne v0, v2, :cond_3

    .line 55
    .line 56
    :cond_2
    iput v1, p1, Lcom/google/android/gms/internal/ads/zzaco;->zzb:I

    .line 57
    .line 58
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzej;->zzp()Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_4

    .line 63
    .line 64
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzacr;->zzf(Lcom/google/android/gms/internal/ads/zzej;)V

    .line 65
    .line 66
    .line 67
    :cond_4
    return-void
.end method

.method private static zze(Lcom/google/android/gms/internal/ads/zzej;Lcom/google/android/gms/internal/ads/zzaco;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzej;->zzp()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/16 v2, 0x8

    .line 10
    .line 11
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    :goto_0
    if-ge v3, v2, :cond_4

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzej;->zzp()Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    const/4 v4, 0x5

    .line 28
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 29
    .line 30
    .line 31
    :cond_0
    if-eqz v1, :cond_1

    .line 32
    .line 33
    const/16 v4, 0x18

    .line 34
    .line 35
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzej;->zzp()Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    const/4 v5, 0x4

    .line 44
    if-eqz v4, :cond_3

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzej;->zzp()Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-nez v4, :cond_2

    .line 51
    .line 52
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 53
    .line 54
    .line 55
    :cond_2
    const/4 v4, 0x6

    .line 56
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    add-int/lit8 v4, v4, 0x1

    .line 61
    .line 62
    iput v4, p1, Lcom/google/android/gms/internal/ads/zzaco;->zzc:I

    .line 63
    .line 64
    :cond_3
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 65
    .line 66
    .line 67
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzej;->zzp()Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-eqz p1, :cond_5

    .line 75
    .line 76
    const/4 p1, 0x3

    .line 77
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzej;->zzp()Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_5

    .line 85
    .line 86
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzacr;->zzf(Lcom/google/android/gms/internal/ads/zzej;)V

    .line 87
    .line 88
    .line 89
    :cond_5
    return-void
.end method

.method private static zzf(Lcom/google/android/gms/internal/ads/zzej;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    .line 1
    const/4 v0, 0x6

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const/4 v1, 0x2

    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    const/16 v1, 0x2a

    .line 10
    .line 11
    if-gt v0, v1, :cond_0

    .line 12
    .line 13
    mul-int/lit8 v0, v0, 0x8

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const/4 v0, 0x1

    .line 24
    new-array v0, v0, [Ljava/lang/Object;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    aput-object p0, v0, v1

    .line 28
    .line 29
    const-string p0, "Invalid language tag bytes number: %d. Must be between 2 and 42."

    .line 30
    .line 31
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    throw p0
.end method

.method private static zzg(Lcom/google/android/gms/internal/ads/zzej;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzej;->zza()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x42

    .line 6
    .line 7
    if-ge v0, v1, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    return p0
.end method
