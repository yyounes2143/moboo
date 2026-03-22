.class final Lcom/google/android/gms/internal/ads/zzani;
.super Ljava/lang/Object;
.source "Proguard"


# direct methods
.method public static zza(Lcom/google/android/gms/internal/ads/zzej;)Lcom/google/android/gms/internal/ads/zzang;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    const/4 v2, 0x5

    .line 10
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    const/16 v5, 0x1f

    .line 15
    .line 16
    if-ne v4, v5, :cond_0

    .line 17
    .line 18
    const/16 v4, 0x18

    .line 19
    .line 20
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    goto/16 :goto_0

    .line 25
    .line 26
    :cond_0
    packed-switch v4, :pswitch_data_0

    .line 27
    .line 28
    .line 29
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v1, "Unsupported sampling rate index "

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    throw v0

    .line 51
    :pswitch_1
    const/16 v4, 0x2580

    .line 52
    .line 53
    goto/16 :goto_0

    .line 54
    .line 55
    :pswitch_2
    const/16 v4, 0x3200

    .line 56
    .line 57
    goto/16 :goto_0

    .line 58
    .line 59
    :pswitch_3
    const/16 v4, 0x3840

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :pswitch_4
    const/16 v4, 0x42b3

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :pswitch_5
    const/16 v4, 0x4b00

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :pswitch_6
    const/16 v4, 0x4e20

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :pswitch_7
    const/16 v4, 0x6400

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :pswitch_8
    const/16 v4, 0x7080

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :pswitch_9
    const v4, 0x8566

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :pswitch_a
    const v4, 0x9600

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :pswitch_b
    const v4, 0x9c40

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :pswitch_c
    const v4, 0xc800

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :pswitch_d
    const v4, 0xe100

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :pswitch_e
    const/16 v4, 0x1cb6

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :pswitch_f
    const/16 v4, 0x1f40

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :pswitch_10
    const/16 v4, 0x2b11

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :pswitch_11
    const/16 v4, 0x2ee0

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :pswitch_12
    const/16 v4, 0x3e80

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :pswitch_13
    const/16 v4, 0x5622

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :pswitch_14
    const/16 v4, 0x5dc0

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :pswitch_15
    const/16 v4, 0x7d00

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :pswitch_16
    const v4, 0xac44

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :pswitch_17
    const v4, 0xbb80

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :pswitch_18
    const v4, 0xfa00

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :pswitch_19
    const v4, 0x15888

    .line 134
    .line 135
    .line 136
    goto :goto_0

    .line 137
    :pswitch_1a
    const v4, 0x17700

    .line 138
    .line 139
    .line 140
    :goto_0
    const/4 v5, 0x3

    .line 141
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 142
    .line 143
    .line 144
    move-result v6

    .line 145
    const-string v7, "Unsupported coreSbrFrameLengthIndex "

    .line 146
    .line 147
    const/4 v8, 0x4

    .line 148
    const/4 v9, 0x2

    .line 149
    const/4 v10, 0x1

    .line 150
    if-eqz v6, :cond_4

    .line 151
    .line 152
    if-eq v6, v10, :cond_3

    .line 153
    .line 154
    if-eq v6, v9, :cond_2

    .line 155
    .line 156
    if-eq v6, v5, :cond_2

    .line 157
    .line 158
    if-ne v6, v8, :cond_1

    .line 159
    .line 160
    const/16 v11, 0x1000

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    throw v0

    .line 183
    :cond_2
    const/16 v11, 0x800

    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_3
    const/16 v11, 0x400

    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_4
    const/16 v11, 0x300

    .line 190
    .line 191
    :goto_1
    if-eqz v6, :cond_8

    .line 192
    .line 193
    if-eq v6, v10, :cond_8

    .line 194
    .line 195
    if-eq v6, v9, :cond_7

    .line 196
    .line 197
    if-eq v6, v5, :cond_6

    .line 198
    .line 199
    if-ne v6, v8, :cond_5

    .line 200
    .line 201
    move v6, v10

    .line 202
    goto :goto_2

    .line 203
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    throw v0

    .line 223
    :cond_6
    move v6, v5

    .line 224
    goto :goto_2

    .line 225
    :cond_7
    move v6, v9

    .line 226
    goto :goto_2

    .line 227
    :cond_8
    const/4 v6, 0x0

    .line 228
    :goto_2
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 229
    .line 230
    .line 231
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzani;->zze(Lcom/google/android/gms/internal/ads/zzej;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 235
    .line 236
    .line 237
    move-result v7

    .line 238
    const/4 v13, 0x0

    .line 239
    const/4 v14, 0x0

    .line 240
    :goto_3
    add-int/lit8 v15, v7, 0x1

    .line 241
    .line 242
    const/16 v12, 0x10

    .line 243
    .line 244
    if-ge v13, v15, :cond_b

    .line 245
    .line 246
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 247
    .line 248
    .line 249
    move-result v15

    .line 250
    invoke-static {v0, v2, v1, v12}, Lcom/google/android/gms/internal/ads/zzani;->zzc(Lcom/google/android/gms/internal/ads/zzej;III)I

    .line 251
    .line 252
    .line 253
    move-result v12

    .line 254
    add-int/2addr v12, v10

    .line 255
    add-int/2addr v14, v12

    .line 256
    if-eqz v15, :cond_9

    .line 257
    .line 258
    if-ne v15, v9, :cond_a

    .line 259
    .line 260
    :cond_9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzej;->zzp()Z

    .line 261
    .line 262
    .line 263
    move-result v12

    .line 264
    if-eqz v12, :cond_a

    .line 265
    .line 266
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzani;->zze(Lcom/google/android/gms/internal/ads/zzej;)V

    .line 267
    .line 268
    .line 269
    :cond_a
    add-int/lit8 v13, v13, 0x1

    .line 270
    .line 271
    goto :goto_3

    .line 272
    :cond_b
    invoke-static {v0, v8, v1, v12}, Lcom/google/android/gms/internal/ads/zzani;->zzc(Lcom/google/android/gms/internal/ads/zzej;III)I

    .line 273
    .line 274
    .line 275
    move-result v7

    .line 276
    add-int/2addr v7, v10

    .line 277
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzej;->zzm()V

    .line 278
    .line 279
    .line 280
    const/4 v13, 0x0

    .line 281
    :goto_4
    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    .line 282
    .line 283
    if-ge v13, v7, :cond_1a

    .line 284
    .line 285
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 286
    .line 287
    .line 288
    move-result v15

    .line 289
    if-eqz v15, :cond_18

    .line 290
    .line 291
    if-eq v15, v10, :cond_f

    .line 292
    .line 293
    if-eq v15, v5, :cond_c

    .line 294
    .line 295
    move v12, v3

    .line 296
    move/from16 v19, v10

    .line 297
    .line 298
    goto/16 :goto_6

    .line 299
    .line 300
    :cond_c
    invoke-static {v0, v8, v1, v12}, Lcom/google/android/gms/internal/ads/zzani;->zzc(Lcom/google/android/gms/internal/ads/zzej;III)I

    .line 301
    .line 302
    .line 303
    invoke-static {v0, v8, v1, v12}, Lcom/google/android/gms/internal/ads/zzani;->zzc(Lcom/google/android/gms/internal/ads/zzej;III)I

    .line 304
    .line 305
    .line 306
    move-result v15

    .line 307
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzej;->zzp()Z

    .line 308
    .line 309
    .line 310
    move-result v17

    .line 311
    move/from16 v19, v10

    .line 312
    .line 313
    const/4 v10, 0x0

    .line 314
    if-eqz v17, :cond_d

    .line 315
    .line 316
    invoke-static {v0, v1, v12, v10}, Lcom/google/android/gms/internal/ads/zzani;->zzc(Lcom/google/android/gms/internal/ads/zzej;III)I

    .line 317
    .line 318
    .line 319
    :cond_d
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzej;->zzm()V

    .line 320
    .line 321
    .line 322
    if-lez v15, :cond_e

    .line 323
    .line 324
    mul-int/lit8 v15, v15, 0x8

    .line 325
    .line 326
    invoke-virtual {v0, v15}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 327
    .line 328
    .line 329
    :cond_e
    move v12, v3

    .line 330
    goto/16 :goto_6

    .line 331
    .line 332
    :cond_f
    move/from16 v19, v10

    .line 333
    .line 334
    const/4 v10, 0x0

    .line 335
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzani;->zzf(Lcom/google/android/gms/internal/ads/zzej;)Z

    .line 336
    .line 337
    .line 338
    move-result v15

    .line 339
    if-eqz v15, :cond_10

    .line 340
    .line 341
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzej;->zzm()V

    .line 342
    .line 343
    .line 344
    :cond_10
    if-lez v6, :cond_11

    .line 345
    .line 346
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzani;->zzd(Lcom/google/android/gms/internal/ads/zzej;)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 350
    .line 351
    .line 352
    move-result v15

    .line 353
    move/from16 v16, v6

    .line 354
    .line 355
    goto :goto_5

    .line 356
    :cond_11
    move v15, v10

    .line 357
    move/from16 v16, v15

    .line 358
    .line 359
    :goto_5
    if-lez v15, :cond_15

    .line 360
    .line 361
    const/4 v10, 0x6

    .line 362
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 366
    .line 367
    .line 368
    move-result v12

    .line 369
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzej;->zzp()Z

    .line 373
    .line 374
    .line 375
    move-result v20

    .line 376
    if-eqz v20, :cond_12

    .line 377
    .line 378
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 379
    .line 380
    .line 381
    :cond_12
    if-eq v15, v9, :cond_13

    .line 382
    .line 383
    if-ne v15, v5, :cond_14

    .line 384
    .line 385
    :cond_13
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 386
    .line 387
    .line 388
    :cond_14
    if-ne v12, v9, :cond_15

    .line 389
    .line 390
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzej;->zzm()V

    .line 391
    .line 392
    .line 393
    :cond_15
    add-int/lit8 v10, v14, -0x1

    .line 394
    .line 395
    move v12, v3

    .line 396
    int-to-double v2, v10

    .line 397
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    .line 398
    .line 399
    .line 400
    move-result-wide v2

    .line 401
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->log(D)D

    .line 402
    .line 403
    .line 404
    move-result-wide v17

    .line 405
    div-double v2, v2, v17

    .line 406
    .line 407
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    .line 408
    .line 409
    .line 410
    move-result-wide v2

    .line 411
    double-to-int v2, v2

    .line 412
    add-int/lit8 v2, v2, 0x1

    .line 413
    .line 414
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 415
    .line 416
    .line 417
    move-result v3

    .line 418
    if-lez v3, :cond_16

    .line 419
    .line 420
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzej;->zzp()Z

    .line 421
    .line 422
    .line 423
    move-result v10

    .line 424
    if-eqz v10, :cond_16

    .line 425
    .line 426
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 427
    .line 428
    .line 429
    :cond_16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzej;->zzp()Z

    .line 430
    .line 431
    .line 432
    move-result v10

    .line 433
    if-eqz v10, :cond_17

    .line 434
    .line 435
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 436
    .line 437
    .line 438
    :cond_17
    if-nez v16, :cond_19

    .line 439
    .line 440
    if-nez v3, :cond_19

    .line 441
    .line 442
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzej;->zzm()V

    .line 443
    .line 444
    .line 445
    goto :goto_6

    .line 446
    :cond_18
    move v12, v3

    .line 447
    move/from16 v19, v10

    .line 448
    .line 449
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzani;->zzf(Lcom/google/android/gms/internal/ads/zzej;)Z

    .line 450
    .line 451
    .line 452
    if-lez v6, :cond_19

    .line 453
    .line 454
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzani;->zzd(Lcom/google/android/gms/internal/ads/zzej;)V

    .line 455
    .line 456
    .line 457
    :cond_19
    :goto_6
    add-int/lit8 v13, v13, 0x1

    .line 458
    .line 459
    move v3, v12

    .line 460
    move/from16 v10, v19

    .line 461
    .line 462
    const/4 v2, 0x5

    .line 463
    const/16 v12, 0x10

    .line 464
    .line 465
    goto/16 :goto_4

    .line 466
    .line 467
    :cond_1a
    move v12, v3

    .line 468
    move/from16 v19, v10

    .line 469
    .line 470
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzej;->zzp()Z

    .line 471
    .line 472
    .line 473
    move-result v2

    .line 474
    const/4 v3, 0x0

    .line 475
    if-eqz v2, :cond_1d

    .line 476
    .line 477
    invoke-static {v0, v9, v8, v1}, Lcom/google/android/gms/internal/ads/zzani;->zzc(Lcom/google/android/gms/internal/ads/zzej;III)I

    .line 478
    .line 479
    .line 480
    move-result v2

    .line 481
    add-int/lit8 v2, v2, 0x1

    .line 482
    .line 483
    const/4 v5, 0x0

    .line 484
    :goto_7
    if-ge v5, v2, :cond_1d

    .line 485
    .line 486
    const/16 v6, 0x10

    .line 487
    .line 488
    invoke-static {v0, v8, v1, v6}, Lcom/google/android/gms/internal/ads/zzani;->zzc(Lcom/google/android/gms/internal/ads/zzej;III)I

    .line 489
    .line 490
    .line 491
    move-result v7

    .line 492
    invoke-static {v0, v8, v1, v6}, Lcom/google/android/gms/internal/ads/zzani;->zzc(Lcom/google/android/gms/internal/ads/zzej;III)I

    .line 493
    .line 494
    .line 495
    move-result v9

    .line 496
    const/4 v10, 0x7

    .line 497
    if-ne v7, v10, :cond_1c

    .line 498
    .line 499
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 500
    .line 501
    .line 502
    move-result v3

    .line 503
    add-int/lit8 v3, v3, 0x1

    .line 504
    .line 505
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 506
    .line 507
    .line 508
    new-array v7, v3, [B

    .line 509
    .line 510
    const/4 v9, 0x0

    .line 511
    :goto_8
    if-ge v9, v3, :cond_1b

    .line 512
    .line 513
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 514
    .line 515
    .line 516
    move-result v10

    .line 517
    int-to-byte v10, v10

    .line 518
    aput-byte v10, v7, v9

    .line 519
    .line 520
    add-int/lit8 v9, v9, 0x1

    .line 521
    .line 522
    goto :goto_8

    .line 523
    :cond_1b
    move-object v3, v7

    .line 524
    goto :goto_9

    .line 525
    :cond_1c
    mul-int/2addr v9, v1

    .line 526
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 527
    .line 528
    .line 529
    :goto_9
    add-int/lit8 v5, v5, 0x1

    .line 530
    .line 531
    goto :goto_7

    .line 532
    :cond_1d
    move-object v6, v3

    .line 533
    sparse-switch v4, :sswitch_data_0

    .line 534
    .line 535
    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    .line 537
    .line 538
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 539
    .line 540
    .line 541
    const-string v1, "Unsupported sampling rate "

    .line 542
    .line 543
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    .line 545
    .line 546
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 547
    .line 548
    .line 549
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    move-result-object v0

    .line 553
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 554
    .line 555
    .line 556
    move-result-object v0

    .line 557
    throw v0

    .line 558
    :sswitch_0
    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    .line 559
    .line 560
    goto :goto_a

    .line 561
    :sswitch_1
    const-wide/high16 v17, 0x3ff8000000000000L    # 1.5

    .line 562
    .line 563
    goto :goto_a

    .line 564
    :sswitch_2
    const-wide/high16 v17, 0x4008000000000000L    # 3.0

    .line 565
    .line 566
    :goto_a
    :sswitch_3
    int-to-double v0, v4

    .line 567
    int-to-double v2, v11

    .line 568
    move-wide v3, v2

    .line 569
    new-instance v2, Lcom/google/android/gms/internal/ads/zzang;

    .line 570
    .line 571
    mul-double v3, v3, v17

    .line 572
    .line 573
    mul-double v0, v0, v17

    .line 574
    .line 575
    double-to-int v0, v0

    .line 576
    double-to-int v5, v3

    .line 577
    const/4 v7, 0x0

    .line 578
    move v4, v0

    .line 579
    move v3, v12

    .line 580
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzang;-><init>(III[BLcom/google/android/gms/internal/ads/zzanh;)V

    .line 581
    .line 582
    .line 583
    return-object v2

    .line 584
    nop

    .line 585
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
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
        :pswitch_0
        :pswitch_0
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
    .end packed-switch

    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    :sswitch_data_0
    .sparse-switch
        0x396c -> :sswitch_2
        0x3e80 -> :sswitch_2
        0x5622 -> :sswitch_3
        0x5dc0 -> :sswitch_3
        0x72d8 -> :sswitch_1
        0x7d00 -> :sswitch_1
        0xac44 -> :sswitch_0
        0xbb80 -> :sswitch_0
        0xe5b0 -> :sswitch_1
        0xfa00 -> :sswitch_1
        0x15888 -> :sswitch_0
        0x17700 -> :sswitch_0
    .end sparse-switch
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzej;Lcom/google/android/gms/internal/ads/zzanf;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzej;->zzb()I

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x3

    .line 9
    const/16 v3, 0x8

    .line 10
    .line 11
    invoke-static {v0, v2, v3, v3}, Lcom/google/android/gms/internal/ads/zzani;->zzc(Lcom/google/android/gms/internal/ads/zzej;III)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    iput v2, v1, Lcom/google/android/gms/internal/ads/zzanf;->zza:I

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, -0x1

    .line 19
    if-eq v2, v5, :cond_d

    .line 20
    .line 21
    const/4 v2, 0x2

    .line 22
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    const/16 v7, 0x20

    .line 27
    .line 28
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    const/16 v8, 0x3f

    .line 33
    .line 34
    const/4 v9, 0x1

    .line 35
    if-gt v6, v8, :cond_0

    .line 36
    .line 37
    move v6, v9

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move v6, v4

    .line 40
    :goto_0
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzdc;->zzd(Z)V

    .line 41
    .line 42
    .line 43
    const-wide/16 v10, 0x3

    .line 44
    .line 45
    const-wide/16 v12, 0xff

    .line 46
    .line 47
    invoke-static {v10, v11, v12, v13}, Lcom/google/android/gms/internal/ads/zzgba;->zza(JJ)J

    .line 48
    .line 49
    .line 50
    move-result-wide v14

    .line 51
    move-wide/from16 v16, v10

    .line 52
    .line 53
    const-wide v10, 0x100000000L

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    invoke-static {v14, v15, v10, v11}, Lcom/google/android/gms/internal/ads/zzgba;->zza(JJ)J

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzej;->zza()I

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    const-wide/16 v10, -0x1

    .line 66
    .line 67
    if-ge v6, v2, :cond_1

    .line 68
    .line 69
    :goto_1
    move-wide v14, v10

    .line 70
    goto :goto_2

    .line 71
    :cond_1
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzej;->zze(I)J

    .line 72
    .line 73
    .line 74
    move-result-wide v14

    .line 75
    cmp-long v6, v14, v16

    .line 76
    .line 77
    if-nez v6, :cond_5

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzej;->zza()I

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    if-ge v6, v3, :cond_2

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzej;->zze(I)J

    .line 87
    .line 88
    .line 89
    move-result-wide v14

    .line 90
    add-long v16, v14, v16

    .line 91
    .line 92
    cmp-long v3, v14, v12

    .line 93
    .line 94
    if-nez v3, :cond_4

    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzej;->zza()I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-ge v3, v7, :cond_3

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_3
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzej;->zze(I)J

    .line 104
    .line 105
    .line 106
    move-result-wide v6

    .line 107
    add-long v14, v16, v6

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_4
    move-wide/from16 v14, v16

    .line 111
    .line 112
    :cond_5
    :goto_2
    iput-wide v14, v1, Lcom/google/android/gms/internal/ads/zzanf;->zzb:J

    .line 113
    .line 114
    cmp-long v3, v14, v10

    .line 115
    .line 116
    if-nez v3, :cond_6

    .line 117
    .line 118
    return v4

    .line 119
    :cond_6
    const-wide/16 v6, 0x10

    .line 120
    .line 121
    cmp-long v3, v14, v6

    .line 122
    .line 123
    if-gtz v3, :cond_c

    .line 124
    .line 125
    const-wide/16 v6, 0x0

    .line 126
    .line 127
    cmp-long v3, v14, v6

    .line 128
    .line 129
    if-nez v3, :cond_a

    .line 130
    .line 131
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzanf;->zza:I

    .line 132
    .line 133
    const/4 v6, 0x0

    .line 134
    if-eq v3, v9, :cond_9

    .line 135
    .line 136
    if-eq v3, v2, :cond_8

    .line 137
    .line 138
    const/16 v2, 0x11

    .line 139
    .line 140
    if-eq v3, v2, :cond_7

    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_7
    const-string v0, "AudioTruncation packet with invalid packet label 0"

    .line 144
    .line 145
    invoke-static {v0, v6}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    throw v0

    .line 150
    :cond_8
    const-string v0, "Mpegh3daFrame packet with invalid packet label 0"

    .line 151
    .line 152
    invoke-static {v0, v6}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    throw v0

    .line 157
    :cond_9
    const-string v0, "Mpegh3daConfig packet with invalid packet label 0"

    .line 158
    .line 159
    invoke-static {v0, v6}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    throw v0

    .line 164
    :cond_a
    :goto_3
    const/16 v2, 0xb

    .line 165
    .line 166
    const/16 v3, 0x18

    .line 167
    .line 168
    invoke-static {v0, v2, v3, v3}, Lcom/google/android/gms/internal/ads/zzani;->zzc(Lcom/google/android/gms/internal/ads/zzej;III)I

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    iput v0, v1, Lcom/google/android/gms/internal/ads/zzanf;->zzc:I

    .line 173
    .line 174
    if-eq v0, v5, :cond_b

    .line 175
    .line 176
    return v9

    .line 177
    :cond_b
    return v4

    .line 178
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .line 182
    .line 183
    const-string v1, "Contains sub-stream with an invalid packet label "

    .line 184
    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    throw v0

    .line 200
    :cond_d
    return v4
.end method

.method private static zzc(Lcom/google/android/gms/internal/ads/zzej;III)I
    .locals 5

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x1f

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-gt v0, v1, :cond_0

    .line 13
    .line 14
    move v0, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdc;->zzd(Z)V

    .line 18
    .line 19
    .line 20
    shl-int v0, v2, p1

    .line 21
    .line 22
    shl-int v1, v2, p2

    .line 23
    .line 24
    const/4 v3, -0x1

    .line 25
    add-int/2addr v0, v3

    .line 26
    add-int/2addr v1, v3

    .line 27
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgay;->zza(II)I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    shl-int/2addr v2, p3

    .line 32
    invoke-static {v4, v2}, Lcom/google/android/gms/internal/ads/zzgay;->zza(II)I

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzej;->zza()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-ge v2, p1, :cond_1

    .line 40
    .line 41
    return v3

    .line 42
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-ne p1, v0, :cond_4

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzej;->zza()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-ge v0, p2, :cond_2

    .line 53
    .line 54
    return v3

    .line 55
    :cond_2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    add-int/2addr p1, p2

    .line 60
    if-ne p2, v1, :cond_4

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzej;->zza()I

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    if-ge p2, p3, :cond_3

    .line 67
    .line 68
    return v3

    .line 69
    :cond_3
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    add-int/2addr p1, p0

    .line 74
    :cond_4
    return p1
.end method

.method private static zzd(Lcom/google/android/gms/internal/ads/zzej;)V
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 3
    .line 4
    .line 5
    const/16 v0, 0x8

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzej;->zzp()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzej;->zzp()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x5

    .line 21
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 22
    .line 23
    .line 24
    :cond_0
    if-eqz v1, :cond_1

    .line 25
    .line 26
    const/4 v0, 0x6

    .line 27
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method private static zze(Lcom/google/android/gms/internal/ads/zzej;)V
    .locals 12

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x6

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/16 v3, 0x10

    .line 14
    .line 15
    const/4 v4, 0x5

    .line 16
    const/16 v5, 0x8

    .line 17
    .line 18
    invoke-static {p0, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzani;->zzc(Lcom/google/android/gms/internal/ads/zzej;III)I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    const/4 v6, 0x1

    .line 23
    add-int/2addr v3, v6

    .line 24
    const/4 v7, 0x7

    .line 25
    if-ne v1, v6, :cond_1

    .line 26
    .line 27
    mul-int/2addr v3, v7

    .line 28
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    if-ne v1, v0, :cond_9

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzej;->zzp()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eq v6, v1, :cond_2

    .line 39
    .line 40
    move v8, v4

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    move v8, v6

    .line 43
    :goto_0
    if-eq v6, v1, :cond_3

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_3
    move v4, v7

    .line 47
    :goto_1
    if-eq v6, v1, :cond_4

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_4
    move v2, v5

    .line 51
    :goto_2
    const/4 v1, 0x0

    .line 52
    move v5, v1

    .line 53
    :goto_3
    if-ge v5, v3, :cond_9

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzej;->zzp()Z

    .line 56
    .line 57
    .line 58
    move-result v9

    .line 59
    const/16 v10, 0xb4

    .line 60
    .line 61
    if-eqz v9, :cond_5

    .line 62
    .line 63
    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 64
    .line 65
    .line 66
    move v9, v1

    .line 67
    goto :goto_4

    .line 68
    :cond_5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    const/4 v11, 0x3

    .line 73
    if-ne v9, v11, :cond_6

    .line 74
    .line 75
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 76
    .line 77
    .line 78
    move-result v9

    .line 79
    mul-int/2addr v9, v8

    .line 80
    if-eqz v9, :cond_6

    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzej;->zzm()V

    .line 83
    .line 84
    .line 85
    :cond_6
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 86
    .line 87
    .line 88
    move-result v9

    .line 89
    mul-int/2addr v9, v8

    .line 90
    if-eqz v9, :cond_7

    .line 91
    .line 92
    if-eq v9, v10, :cond_7

    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzej;->zzm()V

    .line 95
    .line 96
    .line 97
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzej;->zzm()V

    .line 98
    .line 99
    .line 100
    :goto_4
    if-eqz v9, :cond_8

    .line 101
    .line 102
    if-eq v9, v10, :cond_8

    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzej;->zzp()Z

    .line 105
    .line 106
    .line 107
    move-result v9

    .line 108
    if-eqz v9, :cond_8

    .line 109
    .line 110
    add-int/lit8 v5, v5, 0x1

    .line 111
    .line 112
    :cond_8
    add-int/2addr v5, v6

    .line 113
    goto :goto_3

    .line 114
    :cond_9
    return-void
.end method

.method private static zzf(Lcom/google/android/gms/internal/ads/zzej;)Z
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzej;->zzp()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/16 v1, 0xd

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return v0
.end method
