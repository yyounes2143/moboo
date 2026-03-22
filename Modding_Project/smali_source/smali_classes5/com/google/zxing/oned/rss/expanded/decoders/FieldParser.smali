.class final Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field private static final FOUR_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

.field private static final THREE_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

.field private static final THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

.field private static final TWO_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

.field private static final VARIABLE_LENGTH:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 88

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    .line 7
    .line 8
    const/16 v1, 0x12

    .line 9
    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x2

    .line 15
    new-array v4, v3, [Ljava/lang/Object;

    .line 16
    .line 17
    const-string v5, "00"

    .line 18
    .line 19
    const/4 v6, 0x0

    .line 20
    aput-object v5, v4, v6

    .line 21
    .line 22
    const/4 v5, 0x1

    .line 23
    aput-object v2, v4, v5

    .line 24
    .line 25
    const/16 v7, 0xe

    .line 26
    .line 27
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v8

    .line 31
    new-array v9, v3, [Ljava/lang/Object;

    .line 32
    .line 33
    const-string v10, "01"

    .line 34
    .line 35
    aput-object v10, v9, v6

    .line 36
    .line 37
    aput-object v8, v9, v5

    .line 38
    .line 39
    new-array v10, v3, [Ljava/lang/Object;

    .line 40
    .line 41
    const-string v11, "02"

    .line 42
    .line 43
    aput-object v11, v10, v6

    .line 44
    .line 45
    aput-object v8, v10, v5

    .line 46
    .line 47
    const/16 v11, 0x14

    .line 48
    .line 49
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v12

    .line 53
    const/4 v13, 0x3

    .line 54
    new-array v14, v13, [Ljava/lang/Object;

    .line 55
    .line 56
    const-string v15, "10"

    .line 57
    .line 58
    aput-object v15, v14, v6

    .line 59
    .line 60
    aput-object v0, v14, v5

    .line 61
    .line 62
    aput-object v12, v14, v3

    .line 63
    .line 64
    const/4 v15, 0x6

    .line 65
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v16

    .line 69
    move/from16 v17, v5

    .line 70
    .line 71
    new-array v5, v3, [Ljava/lang/Object;

    .line 72
    .line 73
    const-string v18, "11"

    .line 74
    .line 75
    aput-object v18, v5, v6

    .line 76
    .line 77
    aput-object v16, v5, v17

    .line 78
    .line 79
    move/from16 v18, v6

    .line 80
    .line 81
    new-array v6, v3, [Ljava/lang/Object;

    .line 82
    .line 83
    const-string v19, "12"

    .line 84
    .line 85
    aput-object v19, v6, v18

    .line 86
    .line 87
    aput-object v16, v6, v17

    .line 88
    .line 89
    move/from16 v19, v7

    .line 90
    .line 91
    new-array v7, v3, [Ljava/lang/Object;

    .line 92
    .line 93
    const-string v20, "13"

    .line 94
    .line 95
    aput-object v20, v7, v18

    .line 96
    .line 97
    aput-object v16, v7, v17

    .line 98
    .line 99
    move/from16 v20, v11

    .line 100
    .line 101
    new-array v11, v3, [Ljava/lang/Object;

    .line 102
    .line 103
    const-string v21, "15"

    .line 104
    .line 105
    aput-object v21, v11, v18

    .line 106
    .line 107
    aput-object v16, v11, v17

    .line 108
    .line 109
    move/from16 v21, v15

    .line 110
    .line 111
    new-array v15, v3, [Ljava/lang/Object;

    .line 112
    .line 113
    const-string v22, "17"

    .line 114
    .line 115
    aput-object v22, v15, v18

    .line 116
    .line 117
    aput-object v16, v15, v17

    .line 118
    .line 119
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object v22

    .line 123
    move/from16 v23, v1

    .line 124
    .line 125
    new-array v1, v3, [Ljava/lang/Object;

    .line 126
    .line 127
    const-string v24, "20"

    .line 128
    .line 129
    aput-object v24, v1, v18

    .line 130
    .line 131
    aput-object v22, v1, v17

    .line 132
    .line 133
    move/from16 v24, v3

    .line 134
    .line 135
    new-array v3, v13, [Ljava/lang/Object;

    .line 136
    .line 137
    const-string v25, "21"

    .line 138
    .line 139
    aput-object v25, v3, v18

    .line 140
    .line 141
    aput-object v0, v3, v17

    .line 142
    .line 143
    aput-object v12, v3, v24

    .line 144
    .line 145
    const/16 v25, 0x1d

    .line 146
    .line 147
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object v25

    .line 151
    move-object/from16 v26, v0

    .line 152
    .line 153
    new-array v0, v13, [Ljava/lang/Object;

    .line 154
    .line 155
    const-string v27, "22"

    .line 156
    .line 157
    aput-object v27, v0, v18

    .line 158
    .line 159
    aput-object v26, v0, v17

    .line 160
    .line 161
    aput-object v25, v0, v24

    .line 162
    .line 163
    const/16 v25, 0x8

    .line 164
    .line 165
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 166
    .line 167
    .line 168
    move-result-object v27

    .line 169
    move-object/from16 v28, v0

    .line 170
    .line 171
    new-array v0, v13, [Ljava/lang/Object;

    .line 172
    .line 173
    const-string v29, "30"

    .line 174
    .line 175
    aput-object v29, v0, v18

    .line 176
    .line 177
    aput-object v26, v0, v17

    .line 178
    .line 179
    aput-object v27, v0, v24

    .line 180
    .line 181
    move-object/from16 v29, v0

    .line 182
    .line 183
    new-array v0, v13, [Ljava/lang/Object;

    .line 184
    .line 185
    const-string v30, "37"

    .line 186
    .line 187
    aput-object v30, v0, v18

    .line 188
    .line 189
    aput-object v26, v0, v17

    .line 190
    .line 191
    aput-object v27, v0, v24

    .line 192
    .line 193
    const/16 v27, 0x1e

    .line 194
    .line 195
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 196
    .line 197
    .line 198
    move-result-object v27

    .line 199
    move-object/from16 v30, v0

    .line 200
    .line 201
    new-array v0, v13, [Ljava/lang/Object;

    .line 202
    .line 203
    const-string v31, "90"

    .line 204
    .line 205
    aput-object v31, v0, v18

    .line 206
    .line 207
    aput-object v26, v0, v17

    .line 208
    .line 209
    aput-object v27, v0, v24

    .line 210
    .line 211
    move-object/from16 v31, v0

    .line 212
    .line 213
    new-array v0, v13, [Ljava/lang/Object;

    .line 214
    .line 215
    const-string v32, "91"

    .line 216
    .line 217
    aput-object v32, v0, v18

    .line 218
    .line 219
    aput-object v26, v0, v17

    .line 220
    .line 221
    aput-object v27, v0, v24

    .line 222
    .line 223
    move-object/from16 v32, v0

    .line 224
    .line 225
    new-array v0, v13, [Ljava/lang/Object;

    .line 226
    .line 227
    const-string v33, "92"

    .line 228
    .line 229
    aput-object v33, v0, v18

    .line 230
    .line 231
    aput-object v26, v0, v17

    .line 232
    .line 233
    aput-object v27, v0, v24

    .line 234
    .line 235
    move-object/from16 v33, v0

    .line 236
    .line 237
    new-array v0, v13, [Ljava/lang/Object;

    .line 238
    .line 239
    const-string v34, "93"

    .line 240
    .line 241
    aput-object v34, v0, v18

    .line 242
    .line 243
    aput-object v26, v0, v17

    .line 244
    .line 245
    aput-object v27, v0, v24

    .line 246
    .line 247
    move-object/from16 v34, v0

    .line 248
    .line 249
    new-array v0, v13, [Ljava/lang/Object;

    .line 250
    .line 251
    const-string v35, "94"

    .line 252
    .line 253
    aput-object v35, v0, v18

    .line 254
    .line 255
    aput-object v26, v0, v17

    .line 256
    .line 257
    aput-object v27, v0, v24

    .line 258
    .line 259
    move-object/from16 v35, v0

    .line 260
    .line 261
    new-array v0, v13, [Ljava/lang/Object;

    .line 262
    .line 263
    const-string v36, "95"

    .line 264
    .line 265
    aput-object v36, v0, v18

    .line 266
    .line 267
    aput-object v26, v0, v17

    .line 268
    .line 269
    aput-object v27, v0, v24

    .line 270
    .line 271
    move-object/from16 v36, v0

    .line 272
    .line 273
    new-array v0, v13, [Ljava/lang/Object;

    .line 274
    .line 275
    const-string v37, "96"

    .line 276
    .line 277
    aput-object v37, v0, v18

    .line 278
    .line 279
    aput-object v26, v0, v17

    .line 280
    .line 281
    aput-object v27, v0, v24

    .line 282
    .line 283
    move-object/from16 v37, v0

    .line 284
    .line 285
    new-array v0, v13, [Ljava/lang/Object;

    .line 286
    .line 287
    const-string v38, "97"

    .line 288
    .line 289
    aput-object v38, v0, v18

    .line 290
    .line 291
    aput-object v26, v0, v17

    .line 292
    .line 293
    aput-object v27, v0, v24

    .line 294
    .line 295
    move-object/from16 v38, v0

    .line 296
    .line 297
    new-array v0, v13, [Ljava/lang/Object;

    .line 298
    .line 299
    const-string v39, "98"

    .line 300
    .line 301
    aput-object v39, v0, v18

    .line 302
    .line 303
    aput-object v26, v0, v17

    .line 304
    .line 305
    aput-object v27, v0, v24

    .line 306
    .line 307
    move-object/from16 v39, v0

    .line 308
    .line 309
    new-array v0, v13, [Ljava/lang/Object;

    .line 310
    .line 311
    const-string v40, "99"

    .line 312
    .line 313
    aput-object v40, v0, v18

    .line 314
    .line 315
    aput-object v26, v0, v17

    .line 316
    .line 317
    aput-object v27, v0, v24

    .line 318
    .line 319
    move/from16 v40, v13

    .line 320
    .line 321
    const/16 v13, 0x18

    .line 322
    .line 323
    new-array v13, v13, [[Ljava/lang/Object;

    .line 324
    .line 325
    aput-object v4, v13, v18

    .line 326
    .line 327
    aput-object v9, v13, v17

    .line 328
    .line 329
    aput-object v10, v13, v24

    .line 330
    .line 331
    aput-object v14, v13, v40

    .line 332
    .line 333
    const/4 v4, 0x4

    .line 334
    aput-object v5, v13, v4

    .line 335
    .line 336
    const/4 v5, 0x5

    .line 337
    aput-object v6, v13, v5

    .line 338
    .line 339
    aput-object v7, v13, v21

    .line 340
    .line 341
    const/4 v6, 0x7

    .line 342
    aput-object v11, v13, v6

    .line 343
    .line 344
    aput-object v15, v13, v25

    .line 345
    .line 346
    const/16 v7, 0x9

    .line 347
    .line 348
    aput-object v1, v13, v7

    .line 349
    .line 350
    const/16 v1, 0xa

    .line 351
    .line 352
    aput-object v3, v13, v1

    .line 353
    .line 354
    const/16 v3, 0xb

    .line 355
    .line 356
    aput-object v28, v13, v3

    .line 357
    .line 358
    const/16 v9, 0xc

    .line 359
    .line 360
    aput-object v29, v13, v9

    .line 361
    .line 362
    const/16 v10, 0xd

    .line 363
    .line 364
    aput-object v30, v13, v10

    .line 365
    .line 366
    aput-object v31, v13, v19

    .line 367
    .line 368
    const/16 v11, 0xf

    .line 369
    .line 370
    aput-object v32, v13, v11

    .line 371
    .line 372
    const/16 v14, 0x10

    .line 373
    .line 374
    aput-object v33, v13, v14

    .line 375
    .line 376
    const/16 v15, 0x11

    .line 377
    .line 378
    aput-object v34, v13, v15

    .line 379
    .line 380
    aput-object v35, v13, v23

    .line 381
    .line 382
    const/16 v28, 0x13

    .line 383
    .line 384
    aput-object v36, v13, v28

    .line 385
    .line 386
    aput-object v37, v13, v20

    .line 387
    .line 388
    const/16 v29, 0x15

    .line 389
    .line 390
    aput-object v38, v13, v29

    .line 391
    .line 392
    const/16 v30, 0x16

    .line 393
    .line 394
    aput-object v39, v13, v30

    .line 395
    .line 396
    const/16 v30, 0x17

    .line 397
    .line 398
    aput-object v0, v13, v30

    .line 399
    .line 400
    sput-object v13, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->TWO_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    .line 401
    .line 402
    move/from16 v0, v40

    .line 403
    .line 404
    new-array v13, v0, [Ljava/lang/Object;

    .line 405
    .line 406
    const-string v30, "240"

    .line 407
    .line 408
    aput-object v30, v13, v18

    .line 409
    .line 410
    aput-object v26, v13, v17

    .line 411
    .line 412
    aput-object v27, v13, v24

    .line 413
    .line 414
    move/from16 v30, v1

    .line 415
    .line 416
    new-array v1, v0, [Ljava/lang/Object;

    .line 417
    .line 418
    const-string v31, "241"

    .line 419
    .line 420
    aput-object v31, v1, v18

    .line 421
    .line 422
    aput-object v26, v1, v17

    .line 423
    .line 424
    aput-object v27, v1, v24

    .line 425
    .line 426
    move/from16 v31, v3

    .line 427
    .line 428
    new-array v3, v0, [Ljava/lang/Object;

    .line 429
    .line 430
    const-string v32, "242"

    .line 431
    .line 432
    aput-object v32, v3, v18

    .line 433
    .line 434
    aput-object v26, v3, v17

    .line 435
    .line 436
    aput-object v16, v3, v24

    .line 437
    .line 438
    move/from16 v32, v4

    .line 439
    .line 440
    new-array v4, v0, [Ljava/lang/Object;

    .line 441
    .line 442
    const-string v33, "250"

    .line 443
    .line 444
    aput-object v33, v4, v18

    .line 445
    .line 446
    aput-object v26, v4, v17

    .line 447
    .line 448
    aput-object v27, v4, v24

    .line 449
    .line 450
    move/from16 v33, v5

    .line 451
    .line 452
    new-array v5, v0, [Ljava/lang/Object;

    .line 453
    .line 454
    const-string v34, "251"

    .line 455
    .line 456
    aput-object v34, v5, v18

    .line 457
    .line 458
    aput-object v26, v5, v17

    .line 459
    .line 460
    aput-object v27, v5, v24

    .line 461
    .line 462
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 463
    .line 464
    .line 465
    move-result-object v34

    .line 466
    move/from16 v35, v6

    .line 467
    .line 468
    new-array v6, v0, [Ljava/lang/Object;

    .line 469
    .line 470
    const-string v36, "253"

    .line 471
    .line 472
    aput-object v36, v6, v18

    .line 473
    .line 474
    aput-object v26, v6, v17

    .line 475
    .line 476
    aput-object v34, v6, v24

    .line 477
    .line 478
    move/from16 v36, v7

    .line 479
    .line 480
    new-array v7, v0, [Ljava/lang/Object;

    .line 481
    .line 482
    const-string v37, "254"

    .line 483
    .line 484
    aput-object v37, v7, v18

    .line 485
    .line 486
    aput-object v26, v7, v17

    .line 487
    .line 488
    aput-object v12, v7, v24

    .line 489
    .line 490
    move/from16 v37, v9

    .line 491
    .line 492
    new-array v9, v0, [Ljava/lang/Object;

    .line 493
    .line 494
    const-string v38, "400"

    .line 495
    .line 496
    aput-object v38, v9, v18

    .line 497
    .line 498
    aput-object v26, v9, v17

    .line 499
    .line 500
    aput-object v27, v9, v24

    .line 501
    .line 502
    move/from16 v38, v10

    .line 503
    .line 504
    new-array v10, v0, [Ljava/lang/Object;

    .line 505
    .line 506
    const-string v39, "401"

    .line 507
    .line 508
    aput-object v39, v10, v18

    .line 509
    .line 510
    aput-object v26, v10, v17

    .line 511
    .line 512
    aput-object v27, v10, v24

    .line 513
    .line 514
    move/from16 v39, v11

    .line 515
    .line 516
    move/from16 v41, v14

    .line 517
    .line 518
    move/from16 v11, v24

    .line 519
    .line 520
    new-array v14, v11, [Ljava/lang/Object;

    .line 521
    .line 522
    const-string v24, "402"

    .line 523
    .line 524
    aput-object v24, v14, v18

    .line 525
    .line 526
    aput-object v34, v14, v17

    .line 527
    .line 528
    move/from16 v34, v15

    .line 529
    .line 530
    new-array v15, v0, [Ljava/lang/Object;

    .line 531
    .line 532
    const-string v0, "403"

    .line 533
    .line 534
    aput-object v0, v15, v18

    .line 535
    .line 536
    aput-object v26, v15, v17

    .line 537
    .line 538
    aput-object v27, v15, v11

    .line 539
    .line 540
    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 541
    .line 542
    .line 543
    move-result-object v0

    .line 544
    move-object/from16 v42, v0

    .line 545
    .line 546
    new-array v0, v11, [Ljava/lang/Object;

    .line 547
    .line 548
    const-string v24, "410"

    .line 549
    .line 550
    aput-object v24, v0, v18

    .line 551
    .line 552
    aput-object v42, v0, v17

    .line 553
    .line 554
    move-object/from16 v43, v0

    .line 555
    .line 556
    new-array v0, v11, [Ljava/lang/Object;

    .line 557
    .line 558
    const-string v24, "411"

    .line 559
    .line 560
    aput-object v24, v0, v18

    .line 561
    .line 562
    aput-object v42, v0, v17

    .line 563
    .line 564
    move-object/from16 v44, v0

    .line 565
    .line 566
    new-array v0, v11, [Ljava/lang/Object;

    .line 567
    .line 568
    const-string v24, "412"

    .line 569
    .line 570
    aput-object v24, v0, v18

    .line 571
    .line 572
    aput-object v42, v0, v17

    .line 573
    .line 574
    move-object/from16 v45, v0

    .line 575
    .line 576
    new-array v0, v11, [Ljava/lang/Object;

    .line 577
    .line 578
    const-string v24, "413"

    .line 579
    .line 580
    aput-object v24, v0, v18

    .line 581
    .line 582
    aput-object v42, v0, v17

    .line 583
    .line 584
    move-object/from16 v46, v0

    .line 585
    .line 586
    new-array v0, v11, [Ljava/lang/Object;

    .line 587
    .line 588
    const-string v24, "414"

    .line 589
    .line 590
    aput-object v24, v0, v18

    .line 591
    .line 592
    aput-object v42, v0, v17

    .line 593
    .line 594
    move-object/from16 v47, v0

    .line 595
    .line 596
    move/from16 v24, v11

    .line 597
    .line 598
    const/4 v11, 0x3

    .line 599
    new-array v0, v11, [Ljava/lang/Object;

    .line 600
    .line 601
    const-string v40, "420"

    .line 602
    .line 603
    aput-object v40, v0, v18

    .line 604
    .line 605
    aput-object v26, v0, v17

    .line 606
    .line 607
    aput-object v12, v0, v24

    .line 608
    .line 609
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 610
    .line 611
    .line 612
    move-result-object v48

    .line 613
    move-object/from16 v49, v0

    .line 614
    .line 615
    new-array v0, v11, [Ljava/lang/Object;

    .line 616
    .line 617
    const-string v40, "421"

    .line 618
    .line 619
    aput-object v40, v0, v18

    .line 620
    .line 621
    aput-object v26, v0, v17

    .line 622
    .line 623
    aput-object v48, v0, v24

    .line 624
    .line 625
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 626
    .line 627
    .line 628
    move-result-object v50

    .line 629
    move-object/from16 v51, v0

    .line 630
    .line 631
    move/from16 v11, v24

    .line 632
    .line 633
    new-array v0, v11, [Ljava/lang/Object;

    .line 634
    .line 635
    const-string v24, "422"

    .line 636
    .line 637
    aput-object v24, v0, v18

    .line 638
    .line 639
    aput-object v50, v0, v17

    .line 640
    .line 641
    move-object/from16 v52, v0

    .line 642
    .line 643
    move/from16 v24, v11

    .line 644
    .line 645
    const/4 v11, 0x3

    .line 646
    new-array v0, v11, [Ljava/lang/Object;

    .line 647
    .line 648
    const-string v11, "423"

    .line 649
    .line 650
    aput-object v11, v0, v18

    .line 651
    .line 652
    aput-object v26, v0, v17

    .line 653
    .line 654
    aput-object v48, v0, v24

    .line 655
    .line 656
    move-object/from16 v53, v0

    .line 657
    .line 658
    move/from16 v11, v24

    .line 659
    .line 660
    new-array v0, v11, [Ljava/lang/Object;

    .line 661
    .line 662
    const-string v24, "424"

    .line 663
    .line 664
    aput-object v24, v0, v18

    .line 665
    .line 666
    aput-object v50, v0, v17

    .line 667
    .line 668
    move-object/from16 v54, v0

    .line 669
    .line 670
    new-array v0, v11, [Ljava/lang/Object;

    .line 671
    .line 672
    const-string v24, "425"

    .line 673
    .line 674
    aput-object v24, v0, v18

    .line 675
    .line 676
    aput-object v50, v0, v17

    .line 677
    .line 678
    move-object/from16 v55, v0

    .line 679
    .line 680
    new-array v0, v11, [Ljava/lang/Object;

    .line 681
    .line 682
    const-string v24, "426"

    .line 683
    .line 684
    aput-object v24, v0, v18

    .line 685
    .line 686
    aput-object v50, v0, v17

    .line 687
    .line 688
    move/from16 v24, v11

    .line 689
    .line 690
    const/16 v11, 0x17

    .line 691
    .line 692
    new-array v11, v11, [[Ljava/lang/Object;

    .line 693
    .line 694
    aput-object v13, v11, v18

    .line 695
    .line 696
    aput-object v1, v11, v17

    .line 697
    .line 698
    aput-object v3, v11, v24

    .line 699
    .line 700
    const/16 v40, 0x3

    .line 701
    .line 702
    aput-object v4, v11, v40

    .line 703
    .line 704
    aput-object v5, v11, v32

    .line 705
    .line 706
    aput-object v6, v11, v33

    .line 707
    .line 708
    aput-object v7, v11, v21

    .line 709
    .line 710
    aput-object v9, v11, v35

    .line 711
    .line 712
    aput-object v10, v11, v25

    .line 713
    .line 714
    aput-object v14, v11, v36

    .line 715
    .line 716
    aput-object v15, v11, v30

    .line 717
    .line 718
    aput-object v43, v11, v31

    .line 719
    .line 720
    aput-object v44, v11, v37

    .line 721
    .line 722
    aput-object v45, v11, v38

    .line 723
    .line 724
    aput-object v46, v11, v19

    .line 725
    .line 726
    aput-object v47, v11, v39

    .line 727
    .line 728
    aput-object v49, v11, v41

    .line 729
    .line 730
    aput-object v51, v11, v34

    .line 731
    .line 732
    aput-object v52, v11, v23

    .line 733
    .line 734
    aput-object v53, v11, v28

    .line 735
    .line 736
    aput-object v54, v11, v20

    .line 737
    .line 738
    aput-object v55, v11, v29

    .line 739
    .line 740
    const/16 v1, 0x16

    .line 741
    .line 742
    aput-object v0, v11, v1

    .line 743
    .line 744
    sput-object v11, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    .line 745
    .line 746
    const/4 v11, 0x2

    .line 747
    new-array v0, v11, [Ljava/lang/Object;

    .line 748
    .line 749
    const-string v1, "310"

    .line 750
    .line 751
    aput-object v1, v0, v18

    .line 752
    .line 753
    aput-object v16, v0, v17

    .line 754
    .line 755
    new-array v1, v11, [Ljava/lang/Object;

    .line 756
    .line 757
    const-string v3, "311"

    .line 758
    .line 759
    aput-object v3, v1, v18

    .line 760
    .line 761
    aput-object v16, v1, v17

    .line 762
    .line 763
    new-array v3, v11, [Ljava/lang/Object;

    .line 764
    .line 765
    const-string v4, "312"

    .line 766
    .line 767
    aput-object v4, v3, v18

    .line 768
    .line 769
    aput-object v16, v3, v17

    .line 770
    .line 771
    new-array v4, v11, [Ljava/lang/Object;

    .line 772
    .line 773
    const-string v5, "313"

    .line 774
    .line 775
    aput-object v5, v4, v18

    .line 776
    .line 777
    aput-object v16, v4, v17

    .line 778
    .line 779
    new-array v5, v11, [Ljava/lang/Object;

    .line 780
    .line 781
    const-string v6, "314"

    .line 782
    .line 783
    aput-object v6, v5, v18

    .line 784
    .line 785
    aput-object v16, v5, v17

    .line 786
    .line 787
    new-array v6, v11, [Ljava/lang/Object;

    .line 788
    .line 789
    const-string v7, "315"

    .line 790
    .line 791
    aput-object v7, v6, v18

    .line 792
    .line 793
    aput-object v16, v6, v17

    .line 794
    .line 795
    new-array v7, v11, [Ljava/lang/Object;

    .line 796
    .line 797
    const-string v9, "316"

    .line 798
    .line 799
    aput-object v9, v7, v18

    .line 800
    .line 801
    aput-object v16, v7, v17

    .line 802
    .line 803
    new-array v9, v11, [Ljava/lang/Object;

    .line 804
    .line 805
    const-string v10, "320"

    .line 806
    .line 807
    aput-object v10, v9, v18

    .line 808
    .line 809
    aput-object v16, v9, v17

    .line 810
    .line 811
    new-array v10, v11, [Ljava/lang/Object;

    .line 812
    .line 813
    const-string v13, "321"

    .line 814
    .line 815
    aput-object v13, v10, v18

    .line 816
    .line 817
    aput-object v16, v10, v17

    .line 818
    .line 819
    new-array v13, v11, [Ljava/lang/Object;

    .line 820
    .line 821
    const-string v14, "322"

    .line 822
    .line 823
    aput-object v14, v13, v18

    .line 824
    .line 825
    aput-object v16, v13, v17

    .line 826
    .line 827
    new-array v14, v11, [Ljava/lang/Object;

    .line 828
    .line 829
    const-string v15, "323"

    .line 830
    .line 831
    aput-object v15, v14, v18

    .line 832
    .line 833
    aput-object v16, v14, v17

    .line 834
    .line 835
    new-array v15, v11, [Ljava/lang/Object;

    .line 836
    .line 837
    const-string v24, "324"

    .line 838
    .line 839
    aput-object v24, v15, v18

    .line 840
    .line 841
    aput-object v16, v15, v17

    .line 842
    .line 843
    move-object/from16 v24, v0

    .line 844
    .line 845
    new-array v0, v11, [Ljava/lang/Object;

    .line 846
    .line 847
    const-string v43, "325"

    .line 848
    .line 849
    aput-object v43, v0, v18

    .line 850
    .line 851
    aput-object v16, v0, v17

    .line 852
    .line 853
    move-object/from16 v43, v0

    .line 854
    .line 855
    new-array v0, v11, [Ljava/lang/Object;

    .line 856
    .line 857
    const-string v44, "326"

    .line 858
    .line 859
    aput-object v44, v0, v18

    .line 860
    .line 861
    aput-object v16, v0, v17

    .line 862
    .line 863
    move-object/from16 v44, v0

    .line 864
    .line 865
    new-array v0, v11, [Ljava/lang/Object;

    .line 866
    .line 867
    const-string v45, "327"

    .line 868
    .line 869
    aput-object v45, v0, v18

    .line 870
    .line 871
    aput-object v16, v0, v17

    .line 872
    .line 873
    move-object/from16 v45, v0

    .line 874
    .line 875
    new-array v0, v11, [Ljava/lang/Object;

    .line 876
    .line 877
    const-string v46, "328"

    .line 878
    .line 879
    aput-object v46, v0, v18

    .line 880
    .line 881
    aput-object v16, v0, v17

    .line 882
    .line 883
    move-object/from16 v46, v0

    .line 884
    .line 885
    new-array v0, v11, [Ljava/lang/Object;

    .line 886
    .line 887
    const-string v47, "329"

    .line 888
    .line 889
    aput-object v47, v0, v18

    .line 890
    .line 891
    aput-object v16, v0, v17

    .line 892
    .line 893
    move-object/from16 v47, v0

    .line 894
    .line 895
    new-array v0, v11, [Ljava/lang/Object;

    .line 896
    .line 897
    const-string v49, "330"

    .line 898
    .line 899
    aput-object v49, v0, v18

    .line 900
    .line 901
    aput-object v16, v0, v17

    .line 902
    .line 903
    move-object/from16 v49, v0

    .line 904
    .line 905
    new-array v0, v11, [Ljava/lang/Object;

    .line 906
    .line 907
    const-string v50, "331"

    .line 908
    .line 909
    aput-object v50, v0, v18

    .line 910
    .line 911
    aput-object v16, v0, v17

    .line 912
    .line 913
    move-object/from16 v50, v0

    .line 914
    .line 915
    new-array v0, v11, [Ljava/lang/Object;

    .line 916
    .line 917
    const-string v51, "332"

    .line 918
    .line 919
    aput-object v51, v0, v18

    .line 920
    .line 921
    aput-object v16, v0, v17

    .line 922
    .line 923
    move-object/from16 v51, v0

    .line 924
    .line 925
    new-array v0, v11, [Ljava/lang/Object;

    .line 926
    .line 927
    const-string v52, "333"

    .line 928
    .line 929
    aput-object v52, v0, v18

    .line 930
    .line 931
    aput-object v16, v0, v17

    .line 932
    .line 933
    move-object/from16 v52, v0

    .line 934
    .line 935
    new-array v0, v11, [Ljava/lang/Object;

    .line 936
    .line 937
    const-string v53, "334"

    .line 938
    .line 939
    aput-object v53, v0, v18

    .line 940
    .line 941
    aput-object v16, v0, v17

    .line 942
    .line 943
    move-object/from16 v53, v0

    .line 944
    .line 945
    new-array v0, v11, [Ljava/lang/Object;

    .line 946
    .line 947
    const-string v54, "335"

    .line 948
    .line 949
    aput-object v54, v0, v18

    .line 950
    .line 951
    aput-object v16, v0, v17

    .line 952
    .line 953
    move-object/from16 v54, v0

    .line 954
    .line 955
    new-array v0, v11, [Ljava/lang/Object;

    .line 956
    .line 957
    const-string v55, "336"

    .line 958
    .line 959
    aput-object v55, v0, v18

    .line 960
    .line 961
    aput-object v16, v0, v17

    .line 962
    .line 963
    move-object/from16 v55, v0

    .line 964
    .line 965
    new-array v0, v11, [Ljava/lang/Object;

    .line 966
    .line 967
    const-string v56, "340"

    .line 968
    .line 969
    aput-object v56, v0, v18

    .line 970
    .line 971
    aput-object v16, v0, v17

    .line 972
    .line 973
    move-object/from16 v56, v0

    .line 974
    .line 975
    new-array v0, v11, [Ljava/lang/Object;

    .line 976
    .line 977
    const-string v57, "341"

    .line 978
    .line 979
    aput-object v57, v0, v18

    .line 980
    .line 981
    aput-object v16, v0, v17

    .line 982
    .line 983
    move-object/from16 v57, v0

    .line 984
    .line 985
    new-array v0, v11, [Ljava/lang/Object;

    .line 986
    .line 987
    const-string v58, "342"

    .line 988
    .line 989
    aput-object v58, v0, v18

    .line 990
    .line 991
    aput-object v16, v0, v17

    .line 992
    .line 993
    move-object/from16 v58, v0

    .line 994
    .line 995
    new-array v0, v11, [Ljava/lang/Object;

    .line 996
    .line 997
    const-string v59, "343"

    .line 998
    .line 999
    aput-object v59, v0, v18

    .line 1000
    .line 1001
    aput-object v16, v0, v17

    .line 1002
    .line 1003
    move-object/from16 v59, v0

    .line 1004
    .line 1005
    new-array v0, v11, [Ljava/lang/Object;

    .line 1006
    .line 1007
    const-string v60, "344"

    .line 1008
    .line 1009
    aput-object v60, v0, v18

    .line 1010
    .line 1011
    aput-object v16, v0, v17

    .line 1012
    .line 1013
    move-object/from16 v60, v0

    .line 1014
    .line 1015
    new-array v0, v11, [Ljava/lang/Object;

    .line 1016
    .line 1017
    const-string v61, "345"

    .line 1018
    .line 1019
    aput-object v61, v0, v18

    .line 1020
    .line 1021
    aput-object v16, v0, v17

    .line 1022
    .line 1023
    move-object/from16 v61, v0

    .line 1024
    .line 1025
    new-array v0, v11, [Ljava/lang/Object;

    .line 1026
    .line 1027
    const-string v62, "346"

    .line 1028
    .line 1029
    aput-object v62, v0, v18

    .line 1030
    .line 1031
    aput-object v16, v0, v17

    .line 1032
    .line 1033
    move-object/from16 v62, v0

    .line 1034
    .line 1035
    new-array v0, v11, [Ljava/lang/Object;

    .line 1036
    .line 1037
    const-string v63, "347"

    .line 1038
    .line 1039
    aput-object v63, v0, v18

    .line 1040
    .line 1041
    aput-object v16, v0, v17

    .line 1042
    .line 1043
    move-object/from16 v63, v0

    .line 1044
    .line 1045
    new-array v0, v11, [Ljava/lang/Object;

    .line 1046
    .line 1047
    const-string v64, "348"

    .line 1048
    .line 1049
    aput-object v64, v0, v18

    .line 1050
    .line 1051
    aput-object v16, v0, v17

    .line 1052
    .line 1053
    move-object/from16 v64, v0

    .line 1054
    .line 1055
    new-array v0, v11, [Ljava/lang/Object;

    .line 1056
    .line 1057
    const-string v65, "349"

    .line 1058
    .line 1059
    aput-object v65, v0, v18

    .line 1060
    .line 1061
    aput-object v16, v0, v17

    .line 1062
    .line 1063
    move-object/from16 v65, v0

    .line 1064
    .line 1065
    new-array v0, v11, [Ljava/lang/Object;

    .line 1066
    .line 1067
    const-string v66, "350"

    .line 1068
    .line 1069
    aput-object v66, v0, v18

    .line 1070
    .line 1071
    aput-object v16, v0, v17

    .line 1072
    .line 1073
    move-object/from16 v66, v0

    .line 1074
    .line 1075
    new-array v0, v11, [Ljava/lang/Object;

    .line 1076
    .line 1077
    const-string v67, "351"

    .line 1078
    .line 1079
    aput-object v67, v0, v18

    .line 1080
    .line 1081
    aput-object v16, v0, v17

    .line 1082
    .line 1083
    move-object/from16 v67, v0

    .line 1084
    .line 1085
    new-array v0, v11, [Ljava/lang/Object;

    .line 1086
    .line 1087
    const-string v68, "352"

    .line 1088
    .line 1089
    aput-object v68, v0, v18

    .line 1090
    .line 1091
    aput-object v16, v0, v17

    .line 1092
    .line 1093
    move-object/from16 v68, v0

    .line 1094
    .line 1095
    new-array v0, v11, [Ljava/lang/Object;

    .line 1096
    .line 1097
    const-string v69, "353"

    .line 1098
    .line 1099
    aput-object v69, v0, v18

    .line 1100
    .line 1101
    aput-object v16, v0, v17

    .line 1102
    .line 1103
    move-object/from16 v69, v0

    .line 1104
    .line 1105
    new-array v0, v11, [Ljava/lang/Object;

    .line 1106
    .line 1107
    const-string v70, "354"

    .line 1108
    .line 1109
    aput-object v70, v0, v18

    .line 1110
    .line 1111
    aput-object v16, v0, v17

    .line 1112
    .line 1113
    move-object/from16 v70, v0

    .line 1114
    .line 1115
    new-array v0, v11, [Ljava/lang/Object;

    .line 1116
    .line 1117
    const-string v71, "355"

    .line 1118
    .line 1119
    aput-object v71, v0, v18

    .line 1120
    .line 1121
    aput-object v16, v0, v17

    .line 1122
    .line 1123
    move-object/from16 v71, v0

    .line 1124
    .line 1125
    new-array v0, v11, [Ljava/lang/Object;

    .line 1126
    .line 1127
    const-string v72, "356"

    .line 1128
    .line 1129
    aput-object v72, v0, v18

    .line 1130
    .line 1131
    aput-object v16, v0, v17

    .line 1132
    .line 1133
    move-object/from16 v72, v0

    .line 1134
    .line 1135
    new-array v0, v11, [Ljava/lang/Object;

    .line 1136
    .line 1137
    const-string v73, "357"

    .line 1138
    .line 1139
    aput-object v73, v0, v18

    .line 1140
    .line 1141
    aput-object v16, v0, v17

    .line 1142
    .line 1143
    move-object/from16 v73, v0

    .line 1144
    .line 1145
    new-array v0, v11, [Ljava/lang/Object;

    .line 1146
    .line 1147
    const-string v74, "360"

    .line 1148
    .line 1149
    aput-object v74, v0, v18

    .line 1150
    .line 1151
    aput-object v16, v0, v17

    .line 1152
    .line 1153
    move-object/from16 v74, v0

    .line 1154
    .line 1155
    new-array v0, v11, [Ljava/lang/Object;

    .line 1156
    .line 1157
    const-string v75, "361"

    .line 1158
    .line 1159
    aput-object v75, v0, v18

    .line 1160
    .line 1161
    aput-object v16, v0, v17

    .line 1162
    .line 1163
    move-object/from16 v75, v0

    .line 1164
    .line 1165
    new-array v0, v11, [Ljava/lang/Object;

    .line 1166
    .line 1167
    const-string v76, "362"

    .line 1168
    .line 1169
    aput-object v76, v0, v18

    .line 1170
    .line 1171
    aput-object v16, v0, v17

    .line 1172
    .line 1173
    move-object/from16 v76, v0

    .line 1174
    .line 1175
    new-array v0, v11, [Ljava/lang/Object;

    .line 1176
    .line 1177
    const-string v77, "363"

    .line 1178
    .line 1179
    aput-object v77, v0, v18

    .line 1180
    .line 1181
    aput-object v16, v0, v17

    .line 1182
    .line 1183
    move-object/from16 v77, v0

    .line 1184
    .line 1185
    new-array v0, v11, [Ljava/lang/Object;

    .line 1186
    .line 1187
    const-string v78, "364"

    .line 1188
    .line 1189
    aput-object v78, v0, v18

    .line 1190
    .line 1191
    aput-object v16, v0, v17

    .line 1192
    .line 1193
    move-object/from16 v78, v0

    .line 1194
    .line 1195
    new-array v0, v11, [Ljava/lang/Object;

    .line 1196
    .line 1197
    const-string v79, "365"

    .line 1198
    .line 1199
    aput-object v79, v0, v18

    .line 1200
    .line 1201
    aput-object v16, v0, v17

    .line 1202
    .line 1203
    move-object/from16 v79, v0

    .line 1204
    .line 1205
    new-array v0, v11, [Ljava/lang/Object;

    .line 1206
    .line 1207
    const-string v80, "366"

    .line 1208
    .line 1209
    aput-object v80, v0, v18

    .line 1210
    .line 1211
    aput-object v16, v0, v17

    .line 1212
    .line 1213
    move-object/from16 v80, v0

    .line 1214
    .line 1215
    new-array v0, v11, [Ljava/lang/Object;

    .line 1216
    .line 1217
    const-string v81, "367"

    .line 1218
    .line 1219
    aput-object v81, v0, v18

    .line 1220
    .line 1221
    aput-object v16, v0, v17

    .line 1222
    .line 1223
    move-object/from16 v81, v0

    .line 1224
    .line 1225
    new-array v0, v11, [Ljava/lang/Object;

    .line 1226
    .line 1227
    const-string v82, "368"

    .line 1228
    .line 1229
    aput-object v82, v0, v18

    .line 1230
    .line 1231
    aput-object v16, v0, v17

    .line 1232
    .line 1233
    move-object/from16 v82, v0

    .line 1234
    .line 1235
    new-array v0, v11, [Ljava/lang/Object;

    .line 1236
    .line 1237
    const-string v83, "369"

    .line 1238
    .line 1239
    aput-object v83, v0, v18

    .line 1240
    .line 1241
    aput-object v16, v0, v17

    .line 1242
    .line 1243
    move-object/from16 v84, v0

    .line 1244
    .line 1245
    move/from16 v83, v11

    .line 1246
    .line 1247
    const/4 v11, 0x3

    .line 1248
    new-array v0, v11, [Ljava/lang/Object;

    .line 1249
    .line 1250
    const-string v40, "390"

    .line 1251
    .line 1252
    aput-object v40, v0, v18

    .line 1253
    .line 1254
    aput-object v26, v0, v17

    .line 1255
    .line 1256
    aput-object v48, v0, v83

    .line 1257
    .line 1258
    move-object/from16 v85, v0

    .line 1259
    .line 1260
    new-array v0, v11, [Ljava/lang/Object;

    .line 1261
    .line 1262
    const-string v40, "391"

    .line 1263
    .line 1264
    aput-object v40, v0, v18

    .line 1265
    .line 1266
    aput-object v26, v0, v17

    .line 1267
    .line 1268
    aput-object v2, v0, v83

    .line 1269
    .line 1270
    move-object/from16 v86, v0

    .line 1271
    .line 1272
    new-array v0, v11, [Ljava/lang/Object;

    .line 1273
    .line 1274
    const-string v40, "392"

    .line 1275
    .line 1276
    aput-object v40, v0, v18

    .line 1277
    .line 1278
    aput-object v26, v0, v17

    .line 1279
    .line 1280
    aput-object v48, v0, v83

    .line 1281
    .line 1282
    move-object/from16 v48, v0

    .line 1283
    .line 1284
    new-array v0, v11, [Ljava/lang/Object;

    .line 1285
    .line 1286
    const-string v40, "393"

    .line 1287
    .line 1288
    aput-object v40, v0, v18

    .line 1289
    .line 1290
    aput-object v26, v0, v17

    .line 1291
    .line 1292
    aput-object v2, v0, v83

    .line 1293
    .line 1294
    move-object/from16 v87, v0

    .line 1295
    .line 1296
    new-array v0, v11, [Ljava/lang/Object;

    .line 1297
    .line 1298
    const-string v40, "703"

    .line 1299
    .line 1300
    aput-object v40, v0, v18

    .line 1301
    .line 1302
    aput-object v26, v0, v17

    .line 1303
    .line 1304
    aput-object v27, v0, v83

    .line 1305
    .line 1306
    move/from16 v40, v11

    .line 1307
    .line 1308
    const/16 v11, 0x39

    .line 1309
    .line 1310
    new-array v11, v11, [[Ljava/lang/Object;

    .line 1311
    .line 1312
    aput-object v24, v11, v18

    .line 1313
    .line 1314
    aput-object v1, v11, v17

    .line 1315
    .line 1316
    aput-object v3, v11, v83

    .line 1317
    .line 1318
    aput-object v4, v11, v40

    .line 1319
    .line 1320
    aput-object v5, v11, v32

    .line 1321
    .line 1322
    aput-object v6, v11, v33

    .line 1323
    .line 1324
    aput-object v7, v11, v21

    .line 1325
    .line 1326
    aput-object v9, v11, v35

    .line 1327
    .line 1328
    aput-object v10, v11, v25

    .line 1329
    .line 1330
    aput-object v13, v11, v36

    .line 1331
    .line 1332
    aput-object v14, v11, v30

    .line 1333
    .line 1334
    aput-object v15, v11, v31

    .line 1335
    .line 1336
    aput-object v43, v11, v37

    .line 1337
    .line 1338
    aput-object v44, v11, v38

    .line 1339
    .line 1340
    aput-object v45, v11, v19

    .line 1341
    .line 1342
    aput-object v46, v11, v39

    .line 1343
    .line 1344
    aput-object v47, v11, v41

    .line 1345
    .line 1346
    aput-object v49, v11, v34

    .line 1347
    .line 1348
    aput-object v50, v11, v23

    .line 1349
    .line 1350
    aput-object v51, v11, v28

    .line 1351
    .line 1352
    aput-object v52, v11, v20

    .line 1353
    .line 1354
    aput-object v53, v11, v29

    .line 1355
    .line 1356
    const/16 v1, 0x16

    .line 1357
    .line 1358
    aput-object v54, v11, v1

    .line 1359
    .line 1360
    const/16 v1, 0x17

    .line 1361
    .line 1362
    aput-object v55, v11, v1

    .line 1363
    .line 1364
    const/16 v1, 0x18

    .line 1365
    .line 1366
    aput-object v56, v11, v1

    .line 1367
    .line 1368
    const/16 v1, 0x19

    .line 1369
    .line 1370
    aput-object v57, v11, v1

    .line 1371
    .line 1372
    const/16 v1, 0x1a

    .line 1373
    .line 1374
    aput-object v58, v11, v1

    .line 1375
    .line 1376
    const/16 v1, 0x1b

    .line 1377
    .line 1378
    aput-object v59, v11, v1

    .line 1379
    .line 1380
    const/16 v1, 0x1c

    .line 1381
    .line 1382
    aput-object v60, v11, v1

    .line 1383
    .line 1384
    const/16 v1, 0x1d

    .line 1385
    .line 1386
    aput-object v61, v11, v1

    .line 1387
    .line 1388
    const/16 v1, 0x1e

    .line 1389
    .line 1390
    aput-object v62, v11, v1

    .line 1391
    .line 1392
    const/16 v1, 0x1f

    .line 1393
    .line 1394
    aput-object v63, v11, v1

    .line 1395
    .line 1396
    const/16 v1, 0x20

    .line 1397
    .line 1398
    aput-object v64, v11, v1

    .line 1399
    .line 1400
    const/16 v1, 0x21

    .line 1401
    .line 1402
    aput-object v65, v11, v1

    .line 1403
    .line 1404
    const/16 v1, 0x22

    .line 1405
    .line 1406
    aput-object v66, v11, v1

    .line 1407
    .line 1408
    const/16 v1, 0x23

    .line 1409
    .line 1410
    aput-object v67, v11, v1

    .line 1411
    .line 1412
    const/16 v1, 0x24

    .line 1413
    .line 1414
    aput-object v68, v11, v1

    .line 1415
    .line 1416
    const/16 v1, 0x25

    .line 1417
    .line 1418
    aput-object v69, v11, v1

    .line 1419
    .line 1420
    const/16 v1, 0x26

    .line 1421
    .line 1422
    aput-object v70, v11, v1

    .line 1423
    .line 1424
    const/16 v1, 0x27

    .line 1425
    .line 1426
    aput-object v71, v11, v1

    .line 1427
    .line 1428
    const/16 v1, 0x28

    .line 1429
    .line 1430
    aput-object v72, v11, v1

    .line 1431
    .line 1432
    const/16 v1, 0x29

    .line 1433
    .line 1434
    aput-object v73, v11, v1

    .line 1435
    .line 1436
    const/16 v1, 0x2a

    .line 1437
    .line 1438
    aput-object v74, v11, v1

    .line 1439
    .line 1440
    const/16 v1, 0x2b

    .line 1441
    .line 1442
    aput-object v75, v11, v1

    .line 1443
    .line 1444
    const/16 v1, 0x2c

    .line 1445
    .line 1446
    aput-object v76, v11, v1

    .line 1447
    .line 1448
    const/16 v1, 0x2d

    .line 1449
    .line 1450
    aput-object v77, v11, v1

    .line 1451
    .line 1452
    const/16 v1, 0x2e

    .line 1453
    .line 1454
    aput-object v78, v11, v1

    .line 1455
    .line 1456
    const/16 v1, 0x2f

    .line 1457
    .line 1458
    aput-object v79, v11, v1

    .line 1459
    .line 1460
    const/16 v1, 0x30

    .line 1461
    .line 1462
    aput-object v80, v11, v1

    .line 1463
    .line 1464
    const/16 v1, 0x31

    .line 1465
    .line 1466
    aput-object v81, v11, v1

    .line 1467
    .line 1468
    const/16 v1, 0x32

    .line 1469
    .line 1470
    aput-object v82, v11, v1

    .line 1471
    .line 1472
    const/16 v1, 0x33

    .line 1473
    .line 1474
    aput-object v84, v11, v1

    .line 1475
    .line 1476
    const/16 v1, 0x34

    .line 1477
    .line 1478
    aput-object v85, v11, v1

    .line 1479
    .line 1480
    const/16 v1, 0x35

    .line 1481
    .line 1482
    aput-object v86, v11, v1

    .line 1483
    .line 1484
    const/16 v1, 0x36

    .line 1485
    .line 1486
    aput-object v48, v11, v1

    .line 1487
    .line 1488
    const/16 v1, 0x37

    .line 1489
    .line 1490
    aput-object v87, v11, v1

    .line 1491
    .line 1492
    const/16 v1, 0x38

    .line 1493
    .line 1494
    aput-object v0, v11, v1

    .line 1495
    .line 1496
    sput-object v11, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    .line 1497
    .line 1498
    const/4 v11, 0x2

    .line 1499
    new-array v0, v11, [Ljava/lang/Object;

    .line 1500
    .line 1501
    const-string v1, "7001"

    .line 1502
    .line 1503
    aput-object v1, v0, v18

    .line 1504
    .line 1505
    aput-object v42, v0, v17

    .line 1506
    .line 1507
    const/4 v1, 0x3

    .line 1508
    new-array v3, v1, [Ljava/lang/Object;

    .line 1509
    .line 1510
    const-string v1, "7002"

    .line 1511
    .line 1512
    aput-object v1, v3, v18

    .line 1513
    .line 1514
    aput-object v26, v3, v17

    .line 1515
    .line 1516
    aput-object v27, v3, v11

    .line 1517
    .line 1518
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1519
    .line 1520
    .line 1521
    move-result-object v1

    .line 1522
    new-array v4, v11, [Ljava/lang/Object;

    .line 1523
    .line 1524
    const-string v5, "7003"

    .line 1525
    .line 1526
    aput-object v5, v4, v18

    .line 1527
    .line 1528
    aput-object v1, v4, v17

    .line 1529
    .line 1530
    new-array v5, v11, [Ljava/lang/Object;

    .line 1531
    .line 1532
    const-string v6, "8001"

    .line 1533
    .line 1534
    aput-object v6, v5, v18

    .line 1535
    .line 1536
    aput-object v8, v5, v17

    .line 1537
    .line 1538
    const/4 v6, 0x3

    .line 1539
    new-array v7, v6, [Ljava/lang/Object;

    .line 1540
    .line 1541
    const-string v8, "8002"

    .line 1542
    .line 1543
    aput-object v8, v7, v18

    .line 1544
    .line 1545
    aput-object v26, v7, v17

    .line 1546
    .line 1547
    aput-object v12, v7, v11

    .line 1548
    .line 1549
    new-array v8, v6, [Ljava/lang/Object;

    .line 1550
    .line 1551
    const-string v9, "8003"

    .line 1552
    .line 1553
    aput-object v9, v8, v18

    .line 1554
    .line 1555
    aput-object v26, v8, v17

    .line 1556
    .line 1557
    aput-object v27, v8, v11

    .line 1558
    .line 1559
    new-array v9, v6, [Ljava/lang/Object;

    .line 1560
    .line 1561
    const-string v6, "8004"

    .line 1562
    .line 1563
    aput-object v6, v9, v18

    .line 1564
    .line 1565
    aput-object v26, v9, v17

    .line 1566
    .line 1567
    aput-object v27, v9, v11

    .line 1568
    .line 1569
    new-array v6, v11, [Ljava/lang/Object;

    .line 1570
    .line 1571
    const-string v10, "8005"

    .line 1572
    .line 1573
    aput-object v10, v6, v18

    .line 1574
    .line 1575
    aput-object v16, v6, v17

    .line 1576
    .line 1577
    new-array v10, v11, [Ljava/lang/Object;

    .line 1578
    .line 1579
    const-string v12, "8006"

    .line 1580
    .line 1581
    aput-object v12, v10, v18

    .line 1582
    .line 1583
    aput-object v2, v10, v17

    .line 1584
    .line 1585
    const/4 v12, 0x3

    .line 1586
    new-array v13, v12, [Ljava/lang/Object;

    .line 1587
    .line 1588
    const-string v14, "8007"

    .line 1589
    .line 1590
    aput-object v14, v13, v18

    .line 1591
    .line 1592
    aput-object v26, v13, v17

    .line 1593
    .line 1594
    aput-object v27, v13, v11

    .line 1595
    .line 1596
    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1597
    .line 1598
    .line 1599
    move-result-object v14

    .line 1600
    new-array v15, v12, [Ljava/lang/Object;

    .line 1601
    .line 1602
    const-string v20, "8008"

    .line 1603
    .line 1604
    aput-object v20, v15, v18

    .line 1605
    .line 1606
    aput-object v26, v15, v17

    .line 1607
    .line 1608
    aput-object v14, v15, v11

    .line 1609
    .line 1610
    new-array v14, v11, [Ljava/lang/Object;

    .line 1611
    .line 1612
    const-string v20, "8018"

    .line 1613
    .line 1614
    aput-object v20, v14, v18

    .line 1615
    .line 1616
    aput-object v2, v14, v17

    .line 1617
    .line 1618
    const/16 v2, 0x19

    .line 1619
    .line 1620
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1621
    .line 1622
    .line 1623
    move-result-object v2

    .line 1624
    move/from16 v24, v11

    .line 1625
    .line 1626
    new-array v11, v12, [Ljava/lang/Object;

    .line 1627
    .line 1628
    const-string v12, "8020"

    .line 1629
    .line 1630
    aput-object v12, v11, v18

    .line 1631
    .line 1632
    aput-object v26, v11, v17

    .line 1633
    .line 1634
    aput-object v2, v11, v24

    .line 1635
    .line 1636
    move/from16 v2, v24

    .line 1637
    .line 1638
    new-array v12, v2, [Ljava/lang/Object;

    .line 1639
    .line 1640
    const-string v20, "8100"

    .line 1641
    .line 1642
    aput-object v20, v12, v18

    .line 1643
    .line 1644
    aput-object v16, v12, v17

    .line 1645
    .line 1646
    move-object/from16 v16, v0

    .line 1647
    .line 1648
    new-array v0, v2, [Ljava/lang/Object;

    .line 1649
    .line 1650
    const-string v20, "8101"

    .line 1651
    .line 1652
    aput-object v20, v0, v18

    .line 1653
    .line 1654
    aput-object v1, v0, v17

    .line 1655
    .line 1656
    new-array v1, v2, [Ljava/lang/Object;

    .line 1657
    .line 1658
    const-string v20, "8102"

    .line 1659
    .line 1660
    aput-object v20, v1, v18

    .line 1661
    .line 1662
    aput-object v22, v1, v17

    .line 1663
    .line 1664
    const/16 v20, 0x46

    .line 1665
    .line 1666
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1667
    .line 1668
    .line 1669
    move-result-object v20

    .line 1670
    move-object/from16 v22, v0

    .line 1671
    .line 1672
    const/4 v2, 0x3

    .line 1673
    new-array v0, v2, [Ljava/lang/Object;

    .line 1674
    .line 1675
    const-string v27, "8110"

    .line 1676
    .line 1677
    aput-object v27, v0, v18

    .line 1678
    .line 1679
    aput-object v26, v0, v17

    .line 1680
    .line 1681
    aput-object v20, v0, v24

    .line 1682
    .line 1683
    move-object/from16 v27, v0

    .line 1684
    .line 1685
    new-array v0, v2, [Ljava/lang/Object;

    .line 1686
    .line 1687
    const-string v28, "8200"

    .line 1688
    .line 1689
    aput-object v28, v0, v18

    .line 1690
    .line 1691
    aput-object v26, v0, v17

    .line 1692
    .line 1693
    aput-object v20, v0, v24

    .line 1694
    .line 1695
    move/from16 v40, v2

    .line 1696
    .line 1697
    move/from16 v2, v23

    .line 1698
    .line 1699
    new-array v2, v2, [[Ljava/lang/Object;

    .line 1700
    .line 1701
    aput-object v16, v2, v18

    .line 1702
    .line 1703
    aput-object v3, v2, v17

    .line 1704
    .line 1705
    aput-object v4, v2, v24

    .line 1706
    .line 1707
    aput-object v5, v2, v40

    .line 1708
    .line 1709
    aput-object v7, v2, v32

    .line 1710
    .line 1711
    aput-object v8, v2, v33

    .line 1712
    .line 1713
    aput-object v9, v2, v21

    .line 1714
    .line 1715
    aput-object v6, v2, v35

    .line 1716
    .line 1717
    aput-object v10, v2, v25

    .line 1718
    .line 1719
    aput-object v13, v2, v36

    .line 1720
    .line 1721
    aput-object v15, v2, v30

    .line 1722
    .line 1723
    aput-object v14, v2, v31

    .line 1724
    .line 1725
    aput-object v11, v2, v37

    .line 1726
    .line 1727
    aput-object v12, v2, v38

    .line 1728
    .line 1729
    aput-object v22, v2, v19

    .line 1730
    .line 1731
    aput-object v1, v2, v39

    .line 1732
    .line 1733
    aput-object v27, v2, v41

    .line 1734
    .line 1735
    aput-object v0, v2, v34

    .line 1736
    .line 1737
    sput-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    .line 1738
    .line 1739
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static parseFieldsInGeneralPurpose(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x2

    .line 14
    if-lt v0, v1, :cond_f

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->TWO_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    .line 22
    .line 23
    array-length v4, v3

    .line 24
    move v5, v0

    .line 25
    :goto_0
    const/4 v6, 0x1

    .line 26
    if-ge v5, v4, :cond_3

    .line 27
    .line 28
    aget-object v7, v3, v5

    .line 29
    .line 30
    aget-object v8, v7, v0

    .line 31
    .line 32
    invoke-virtual {v8, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v8

    .line 36
    if-eqz v8, :cond_2

    .line 37
    .line 38
    aget-object v0, v7, v6

    .line 39
    .line 40
    sget-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    .line 41
    .line 42
    if-ne v0, v2, :cond_1

    .line 43
    .line 44
    aget-object v0, v7, v1

    .line 45
    .line 46
    check-cast v0, Ljava/lang/Integer;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    invoke-static {v1, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processVariableAI(IILjava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0

    .line 57
    :cond_1
    check-cast v0, Ljava/lang/Integer;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    invoke-static {v1, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processFixedAI(IILjava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0

    .line 68
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    const/4 v3, 0x3

    .line 76
    if-lt v2, v3, :cond_e

    .line 77
    .line 78
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    sget-object v4, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    .line 83
    .line 84
    array-length v5, v4

    .line 85
    move v7, v0

    .line 86
    :goto_1
    if-ge v7, v5, :cond_6

    .line 87
    .line 88
    aget-object v8, v4, v7

    .line 89
    .line 90
    aget-object v9, v8, v0

    .line 91
    .line 92
    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v9

    .line 96
    if-eqz v9, :cond_5

    .line 97
    .line 98
    aget-object v0, v8, v6

    .line 99
    .line 100
    sget-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    .line 101
    .line 102
    if-ne v0, v2, :cond_4

    .line 103
    .line 104
    aget-object v0, v8, v1

    .line 105
    .line 106
    check-cast v0, Ljava/lang/Integer;

    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    invoke-static {v3, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processVariableAI(IILjava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    return-object p0

    .line 117
    :cond_4
    check-cast v0, Ljava/lang/Integer;

    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    invoke-static {v3, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processFixedAI(IILjava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    return-object p0

    .line 128
    :cond_5
    add-int/lit8 v7, v7, 0x1

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_6
    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    .line 132
    .line 133
    array-length v4, v3

    .line 134
    move v5, v0

    .line 135
    :goto_2
    const/4 v7, 0x4

    .line 136
    if-ge v5, v4, :cond_9

    .line 137
    .line 138
    aget-object v8, v3, v5

    .line 139
    .line 140
    aget-object v9, v8, v0

    .line 141
    .line 142
    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v9

    .line 146
    if-eqz v9, :cond_8

    .line 147
    .line 148
    aget-object v0, v8, v6

    .line 149
    .line 150
    sget-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    .line 151
    .line 152
    if-ne v0, v2, :cond_7

    .line 153
    .line 154
    aget-object v0, v8, v1

    .line 155
    .line 156
    check-cast v0, Ljava/lang/Integer;

    .line 157
    .line 158
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    invoke-static {v7, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processVariableAI(IILjava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    return-object p0

    .line 167
    :cond_7
    check-cast v0, Ljava/lang/Integer;

    .line 168
    .line 169
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    invoke-static {v7, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processFixedAI(IILjava/lang/String;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    return-object p0

    .line 178
    :cond_8
    add-int/lit8 v5, v5, 0x1

    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    if-lt v2, v7, :cond_d

    .line 186
    .line 187
    invoke-virtual {p0, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    .line 192
    .line 193
    array-length v4, v3

    .line 194
    move v5, v0

    .line 195
    :goto_3
    if-ge v5, v4, :cond_c

    .line 196
    .line 197
    aget-object v8, v3, v5

    .line 198
    .line 199
    aget-object v9, v8, v0

    .line 200
    .line 201
    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v9

    .line 205
    if-eqz v9, :cond_b

    .line 206
    .line 207
    aget-object v0, v8, v6

    .line 208
    .line 209
    sget-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    .line 210
    .line 211
    if-ne v0, v2, :cond_a

    .line 212
    .line 213
    aget-object v0, v8, v1

    .line 214
    .line 215
    check-cast v0, Ljava/lang/Integer;

    .line 216
    .line 217
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    invoke-static {v7, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processVariableAI(IILjava/lang/String;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    return-object p0

    .line 226
    :cond_a
    check-cast v0, Ljava/lang/Integer;

    .line 227
    .line 228
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    invoke-static {v7, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processFixedAI(IILjava/lang/String;)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p0

    .line 236
    return-object p0

    .line 237
    :cond_b
    add-int/lit8 v5, v5, 0x1

    .line 238
    .line 239
    goto :goto_3

    .line 240
    :cond_c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 241
    .line 242
    .line 243
    move-result-object p0

    .line 244
    throw p0

    .line 245
    :cond_d
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 246
    .line 247
    .line 248
    move-result-object p0

    .line 249
    throw p0

    .line 250
    :cond_e
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 251
    .line 252
    .line 253
    move-result-object p0

    .line 254
    throw p0

    .line 255
    :cond_f
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 256
    .line 257
    .line 258
    move-result-object p0

    .line 259
    throw p0
.end method

.method private static processFixedAI(IILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lt v0, p0, :cond_2

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p2, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    add-int/2addr p1, p0

    .line 17
    if-lt v1, p1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p2, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    new-instance p2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v1, "("

    .line 30
    .line 31
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const/16 v0, 0x29

    .line 38
    .line 39
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-static {p1}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->parseFieldsInGeneralPurpose(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-nez p1, :cond_0

    .line 54
    .line 55
    return-object p0

    .line 56
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    return-object p0

    .line 72
    :cond_1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    throw p0

    .line 77
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    throw p0
.end method

.method private static processVariableAI(IILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p2, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    add-int/2addr p1, p0

    .line 11
    if-ge v1, p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    :cond_0
    invoke-virtual {p2, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    new-instance p2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v1, "("

    .line 28
    .line 29
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const/16 v0, 0x29

    .line 36
    .line 37
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-static {p1}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->parseFieldsInGeneralPurpose(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-nez p1, :cond_1

    .line 52
    .line 53
    return-object p0

    .line 54
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    return-object p0
.end method
