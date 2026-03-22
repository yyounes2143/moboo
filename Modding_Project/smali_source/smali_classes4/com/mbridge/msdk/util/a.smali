.class public Lcom/mbridge/msdk/util/a;
.super Ljava/lang/Object;
.source "Proguard"


# direct methods
.method public static a(ILjava/lang/String;)I
    .locals 17

    .line 1
    move/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    goto/16 :goto_11

    .line 12
    .line 13
    :cond_0
    const-string v2, "errorCode: "

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/16 v3, 0xf

    .line 20
    .line 21
    const/16 v4, 0x10

    .line 22
    .line 23
    const/16 v5, 0xb

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-le v2, v4, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    return v0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    goto/16 :goto_10

    .line 44
    .line 45
    :cond_1
    const-string v2, "do not have sorceList"

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    const/4 v6, 0x1

    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    add-int/lit16 v0, v1, 0x258

    .line 55
    .line 56
    :goto_0
    move v3, v6

    .line 57
    goto/16 :goto_f

    .line 58
    .line 59
    :cond_2
    const-string v2, "Network error,UnknownHostException"

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    const/4 v7, 0x2

    .line 66
    if-eqz v2, :cond_3

    .line 67
    .line 68
    add-int/lit16 v0, v1, 0x258

    .line 69
    .line 70
    :goto_1
    move v3, v7

    .line 71
    goto/16 :goto_f

    .line 72
    .line 73
    :cond_3
    const-string v2, "v3 is timeout"

    .line 74
    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    const/4 v8, 0x3

    .line 80
    if-eqz v2, :cond_4

    .line 81
    .line 82
    add-int/lit16 v0, v1, 0x258

    .line 83
    .line 84
    :goto_2
    move v3, v8

    .line 85
    goto/16 :goto_f

    .line 86
    .line 87
    :cond_4
    const-string v2, "Current unit is loading!"

    .line 88
    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    const/4 v9, 0x4

    .line 94
    if-nez v2, :cond_2a

    .line 95
    .line 96
    const-string v2, "current unit is loading"

    .line 97
    .line 98
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-eqz v2, :cond_5

    .line 103
    .line 104
    goto/16 :goto_e

    .line 105
    .line 106
    :cond_5
    const-string v2, "Network error,I/O exception response null"

    .line 107
    .line 108
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    const/4 v10, 0x5

    .line 113
    if-eqz v2, :cond_6

    .line 114
    .line 115
    add-int/lit16 v0, v1, 0x258

    .line 116
    .line 117
    :goto_3
    move v3, v10

    .line 118
    goto/16 :goto_f

    .line 119
    .line 120
    :cond_6
    const-string v2, "Network error,ConnectException"

    .line 121
    .line 122
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    const/4 v11, 0x6

    .line 127
    if-eqz v2, :cond_7

    .line 128
    .line 129
    add-int/lit16 v0, v1, 0x258

    .line 130
    .line 131
    :goto_4
    move v3, v11

    .line 132
    goto/16 :goto_f

    .line 133
    .line 134
    :cond_7
    const-string v2, "Network error,socket timeout exception"

    .line 135
    .line 136
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    const/4 v12, 0x7

    .line 141
    if-eqz v2, :cond_8

    .line 142
    .line 143
    add-int/lit16 v0, v1, 0x258

    .line 144
    .line 145
    :goto_5
    move v3, v12

    .line 146
    goto/16 :goto_f

    .line 147
    .line 148
    :cond_8
    const-string v2, "Network error,disconnected network exception"

    .line 149
    .line 150
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    const/16 v13, 0x8

    .line 155
    .line 156
    if-eqz v2, :cond_9

    .line 157
    .line 158
    add-int/lit16 v0, v1, 0x258

    .line 159
    .line 160
    :goto_6
    move v3, v13

    .line 161
    goto/16 :goto_f

    .line 162
    .line 163
    :cond_9
    const-string v2, "Network error,timeout exception"

    .line 164
    .line 165
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    const/16 v14, 0x9

    .line 170
    .line 171
    if-eqz v2, :cond_a

    .line 172
    .line 173
    add-int/lit16 v0, v1, 0x258

    .line 174
    .line 175
    :goto_7
    move v3, v14

    .line 176
    goto/16 :goto_f

    .line 177
    .line 178
    :cond_a
    const-string v2, "Network error,please check state code"

    .line 179
    .line 180
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    const/16 v15, 0xa

    .line 185
    .line 186
    if-eqz v2, :cond_b

    .line 187
    .line 188
    add-int/lit16 v0, v1, 0x258

    .line 189
    .line 190
    :goto_8
    move v3, v15

    .line 191
    goto/16 :goto_f

    .line 192
    .line 193
    :cond_b
    const-string v2, "Network error,I/O exception contents null"

    .line 194
    .line 195
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    if-eqz v2, :cond_c

    .line 200
    .line 201
    add-int/lit16 v0, v1, 0x258

    .line 202
    .line 203
    :goto_9
    move v3, v5

    .line 204
    goto/16 :goto_f

    .line 205
    .line 206
    :cond_c
    const-string v2, "Network unknown error"

    .line 207
    .line 208
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    const/16 v16, 0xc

    .line 213
    .line 214
    if-eqz v2, :cond_d

    .line 215
    .line 216
    add-int/lit16 v0, v1, 0x258

    .line 217
    .line 218
    :goto_a
    move/from16 v3, v16

    .line 219
    .line 220
    goto/16 :goto_f

    .line 221
    .line 222
    :cond_d
    const-string v2, "Network error,I/O exception"

    .line 223
    .line 224
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    if-eqz v2, :cond_e

    .line 229
    .line 230
    add-int/lit16 v0, v1, 0x258

    .line 231
    .line 232
    const/16 v3, 0xd

    .line 233
    .line 234
    goto/16 :goto_f

    .line 235
    .line 236
    :cond_e
    const-string v2, "web env is not support"

    .line 237
    .line 238
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result v2

    .line 242
    if-eqz v2, :cond_f

    .line 243
    .line 244
    add-int/lit16 v0, v1, 0x258

    .line 245
    .line 246
    const/16 v3, 0xe

    .line 247
    .line 248
    goto/16 :goto_f

    .line 249
    .line 250
    :cond_f
    const-string v2, "Network error,unknown"

    .line 251
    .line 252
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result v2

    .line 256
    if-eqz v2, :cond_10

    .line 257
    .line 258
    add-int/lit16 v0, v1, 0x258

    .line 259
    .line 260
    goto/16 :goto_f

    .line 261
    .line 262
    :cond_10
    const-string v2, "Network error\uff0csslp exception"

    .line 263
    .line 264
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result v2

    .line 268
    if-eqz v2, :cond_11

    .line 269
    .line 270
    add-int/lit16 v0, v1, 0x258

    .line 271
    .line 272
    move v3, v4

    .line 273
    goto/16 :goto_f

    .line 274
    .line 275
    :cond_11
    const-string v2, "Cast exception, return data"

    .line 276
    .line 277
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 278
    .line 279
    .line 280
    move-result v2

    .line 281
    if-eqz v2, :cond_12

    .line 282
    .line 283
    add-int/lit16 v0, v1, 0x258

    .line 284
    .line 285
    const/16 v3, 0x11

    .line 286
    .line 287
    goto/16 :goto_f

    .line 288
    .line 289
    :cond_12
    const-string v2, "REQUEST_TIMEOUT"

    .line 290
    .line 291
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    move-result v2

    .line 295
    if-eqz v2, :cond_13

    .line 296
    .line 297
    add-int/lit16 v0, v1, 0x2bc

    .line 298
    .line 299
    goto/16 :goto_0

    .line 300
    .line 301
    :cond_13
    const-string v2, "The server returns an exception"

    .line 302
    .line 303
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 304
    .line 305
    .line 306
    move-result v2

    .line 307
    if-eqz v2, :cond_14

    .line 308
    .line 309
    add-int/lit16 v0, v1, 0x2bc

    .line 310
    .line 311
    goto/16 :goto_1

    .line 312
    .line 313
    :cond_14
    const-string v2, "APP ALREADY INSTALLED"

    .line 314
    .line 315
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    move-result v2

    .line 319
    if-nez v2, :cond_29

    .line 320
    .line 321
    const-string v2, "Need show campaign list is NULL!"

    .line 322
    .line 323
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    move-result v2

    .line 327
    if-eqz v2, :cond_15

    .line 328
    .line 329
    goto/16 :goto_d

    .line 330
    .line 331
    :cond_15
    const-string v2, "load no ad"

    .line 332
    .line 333
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 334
    .line 335
    .line 336
    move-result v2

    .line 337
    if-eqz v2, :cond_16

    .line 338
    .line 339
    add-int/lit16 v0, v1, 0x2bc

    .line 340
    .line 341
    :goto_b
    move v3, v9

    .line 342
    goto/16 :goto_f

    .line 343
    .line 344
    :cond_16
    const-string v2, "EXCEPTION_UNIT_NOT_FOUND_IN_APP"

    .line 345
    .line 346
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    move-result v2

    .line 350
    if-eqz v2, :cond_17

    .line 351
    .line 352
    add-int/lit16 v0, v1, 0x2bc

    .line 353
    .line 354
    goto/16 :goto_3

    .line 355
    .line 356
    :cond_17
    const-string v2, "EXCEPTION_UNIT_BIDDING_TYPE_ERROR"

    .line 357
    .line 358
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 359
    .line 360
    .line 361
    move-result v2

    .line 362
    if-eqz v2, :cond_18

    .line 363
    .line 364
    add-int/lit16 v0, v1, 0x2bc

    .line 365
    .line 366
    goto/16 :goto_4

    .line 367
    .line 368
    :cond_18
    const-string v2, "No video campaign"

    .line 369
    .line 370
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 371
    .line 372
    .line 373
    move-result v2

    .line 374
    if-eqz v2, :cond_19

    .line 375
    .line 376
    add-int/lit16 v0, v1, 0x2bc

    .line 377
    .line 378
    goto/16 :goto_5

    .line 379
    .line 380
    :cond_19
    const-string v2, "EXCEPTION_RETURN_EMPTY"

    .line 381
    .line 382
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 383
    .line 384
    .line 385
    move-result v2

    .line 386
    if-eqz v2, :cond_1a

    .line 387
    .line 388
    add-int/lit16 v0, v1, 0x2bc

    .line 389
    .line 390
    goto/16 :goto_6

    .line 391
    .line 392
    :cond_1a
    const-string v2, "EXCEPTION_APP_PLATFORM_ERROR"

    .line 393
    .line 394
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 395
    .line 396
    .line 397
    move-result v2

    .line 398
    if-eqz v2, :cond_1b

    .line 399
    .line 400
    add-int/lit16 v0, v1, 0x2bc

    .line 401
    .line 402
    goto/16 :goto_7

    .line 403
    .line 404
    :cond_1b
    const-string v2, "EXCEPTION_SERVICE_REQUEST_OS_VERSION_REQUIRED"

    .line 405
    .line 406
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 407
    .line 408
    .line 409
    move-result v2

    .line 410
    if-eqz v2, :cond_1c

    .line 411
    .line 412
    add-int/lit16 v0, v1, 0x2bc

    .line 413
    .line 414
    goto/16 :goto_8

    .line 415
    .line 416
    :cond_1c
    const-string v2, "banner res load failed"

    .line 417
    .line 418
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 419
    .line 420
    .line 421
    move-result v2

    .line 422
    if-eqz v2, :cond_1d

    .line 423
    .line 424
    add-int/lit16 v0, v1, 0x320

    .line 425
    .line 426
    goto/16 :goto_0

    .line 427
    .line 428
    :cond_1d
    const-string v2, "resource load timeout is tpl: false"

    .line 429
    .line 430
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 431
    .line 432
    .line 433
    move-result v2

    .line 434
    if-eqz v2, :cond_1e

    .line 435
    .line 436
    add-int/lit16 v0, v1, 0x320

    .line 437
    .line 438
    goto/16 :goto_1

    .line 439
    .line 440
    :cond_1e
    const-string v2, "resource download failed"

    .line 441
    .line 442
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 443
    .line 444
    .line 445
    move-result v2

    .line 446
    if-eqz v2, :cond_1f

    .line 447
    .line 448
    add-int/lit16 v0, v1, 0x320

    .line 449
    .line 450
    goto/16 :goto_2

    .line 451
    .line 452
    :cond_1f
    const-string v2, "temp preload success but isReady false"

    .line 453
    .line 454
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 455
    .line 456
    .line 457
    move-result v2

    .line 458
    if-eqz v2, :cond_20

    .line 459
    .line 460
    add-int/lit16 v0, v1, 0x320

    .line 461
    .line 462
    goto :goto_b

    .line 463
    :cond_20
    const-string v2, "temp resource download failed"

    .line 464
    .line 465
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 466
    .line 467
    .line 468
    move-result v2

    .line 469
    if-eqz v2, :cond_21

    .line 470
    .line 471
    add-int/lit16 v0, v1, 0x320

    .line 472
    .line 473
    goto/16 :goto_3

    .line 474
    .line 475
    :cond_21
    const-string v2, "tpl temp resource download failed"

    .line 476
    .line 477
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 478
    .line 479
    .line 480
    move-result v2

    .line 481
    if-eqz v2, :cond_22

    .line 482
    .line 483
    add-int/lit16 v0, v1, 0x320

    .line 484
    .line 485
    goto/16 :goto_4

    .line 486
    .line 487
    :cond_22
    const-string v2, "resource load timeout is tpl: true"

    .line 488
    .line 489
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 490
    .line 491
    .line 492
    move-result v2

    .line 493
    if-eqz v2, :cond_23

    .line 494
    .line 495
    add-int/lit16 v0, v1, 0x320

    .line 496
    .line 497
    goto/16 :goto_5

    .line 498
    .line 499
    :cond_23
    const-string v2, "https://"

    .line 500
    .line 501
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 502
    .line 503
    .line 504
    move-result v2

    .line 505
    if-nez v2, :cond_28

    .line 506
    .line 507
    const-string v2, "http://"

    .line 508
    .line 509
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 510
    .line 511
    .line 512
    move-result v2

    .line 513
    if-eqz v2, :cond_24

    .line 514
    .line 515
    goto :goto_c

    .line 516
    :cond_24
    const-string v2, "mraid resource write fail"

    .line 517
    .line 518
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 519
    .line 520
    .line 521
    move-result v2

    .line 522
    if-eqz v2, :cond_25

    .line 523
    .line 524
    add-int/lit16 v0, v1, 0x320

    .line 525
    .line 526
    goto/16 :goto_7

    .line 527
    .line 528
    :cond_25
    const-string v2, "data save failed:"

    .line 529
    .line 530
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 531
    .line 532
    .line 533
    move-result v2

    .line 534
    if-eqz v2, :cond_26

    .line 535
    .line 536
    add-int/lit16 v0, v1, 0x320

    .line 537
    .line 538
    goto/16 :goto_8

    .line 539
    .line 540
    :cond_26
    const-string v2, "resource load timeout"

    .line 541
    .line 542
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 543
    .line 544
    .line 545
    move-result v2

    .line 546
    if-eqz v2, :cond_27

    .line 547
    .line 548
    add-int/lit16 v0, v1, 0x320

    .line 549
    .line 550
    goto/16 :goto_9

    .line 551
    .line 552
    :cond_27
    const-string v2, "tpl temp preload failed"

    .line 553
    .line 554
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 555
    .line 556
    .line 557
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    if-eqz v0, :cond_2b

    .line 559
    .line 560
    add-int/lit16 v0, v1, 0x320

    .line 561
    .line 562
    goto/16 :goto_a

    .line 563
    .line 564
    :cond_28
    :goto_c
    add-int/lit16 v0, v1, 0x320

    .line 565
    .line 566
    goto/16 :goto_6

    .line 567
    .line 568
    :cond_29
    :goto_d
    add-int/lit16 v0, v1, 0x2bc

    .line 569
    .line 570
    goto/16 :goto_2

    .line 571
    .line 572
    :cond_2a
    :goto_e
    add-int/lit16 v0, v1, 0x258

    .line 573
    .line 574
    goto/16 :goto_b

    .line 575
    .line 576
    :goto_f
    add-int/2addr v0, v3

    .line 577
    return v0

    .line 578
    :goto_10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 579
    .line 580
    .line 581
    :cond_2b
    :goto_11
    return v1
.end method

.method public static b(ILjava/lang/String;)I
    .locals 0

    .line 1
    add-int/lit16 p0, p0, 0x384

    .line 2
    .line 3
    return p0
.end method
