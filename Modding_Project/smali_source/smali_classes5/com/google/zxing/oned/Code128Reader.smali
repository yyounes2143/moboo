.class public final Lcom/google/zxing/oned/Code128Reader;
.super Lcom/google/zxing/oned/OneDReader;
.source "Proguard"


# static fields
.field private static final CODE_CODE_A:I = 0x65

.field private static final CODE_CODE_B:I = 0x64

.field private static final CODE_CODE_C:I = 0x63

.field private static final CODE_FNC_1:I = 0x66

.field private static final CODE_FNC_2:I = 0x61

.field private static final CODE_FNC_3:I = 0x60

.field private static final CODE_FNC_4_A:I = 0x65

.field private static final CODE_FNC_4_B:I = 0x64

.field static final CODE_PATTERNS:[[I

.field private static final CODE_SHIFT:I = 0x62

.field private static final CODE_START_A:I = 0x67

.field private static final CODE_START_B:I = 0x68

.field private static final CODE_START_C:I = 0x69

.field private static final CODE_STOP:I = 0x6a

.field private static final MAX_AVG_VARIANCE:F = 0.25f

.field private static final MAX_INDIVIDUAL_VARIANCE:F = 0.7f


# direct methods
.method static constructor <clinit>()V
    .locals 115

    .line 1
    const/4 v2, 0x6

    .line 2
    new-array v3, v2, [I

    .line 3
    .line 4
    fill-array-data v3, :array_0

    .line 5
    .line 6
    .line 7
    new-array v4, v2, [I

    .line 8
    .line 9
    fill-array-data v4, :array_1

    .line 10
    .line 11
    .line 12
    new-array v5, v2, [I

    .line 13
    .line 14
    fill-array-data v5, :array_2

    .line 15
    .line 16
    .line 17
    new-array v7, v2, [I

    .line 18
    .line 19
    fill-array-data v7, :array_3

    .line 20
    .line 21
    .line 22
    new-array v8, v2, [I

    .line 23
    .line 24
    fill-array-data v8, :array_4

    .line 25
    .line 26
    .line 27
    new-array v9, v2, [I

    .line 28
    .line 29
    fill-array-data v9, :array_5

    .line 30
    .line 31
    .line 32
    new-array v10, v2, [I

    .line 33
    .line 34
    fill-array-data v10, :array_6

    .line 35
    .line 36
    .line 37
    new-array v11, v2, [I

    .line 38
    .line 39
    fill-array-data v11, :array_7

    .line 40
    .line 41
    .line 42
    new-array v12, v2, [I

    .line 43
    .line 44
    fill-array-data v12, :array_8

    .line 45
    .line 46
    .line 47
    new-array v13, v2, [I

    .line 48
    .line 49
    fill-array-data v13, :array_9

    .line 50
    .line 51
    .line 52
    new-array v14, v2, [I

    .line 53
    .line 54
    fill-array-data v14, :array_a

    .line 55
    .line 56
    .line 57
    new-array v15, v2, [I

    .line 58
    .line 59
    fill-array-data v15, :array_b

    .line 60
    .line 61
    .line 62
    const/16 v16, 0x2

    .line 63
    .line 64
    new-array v0, v2, [I

    .line 65
    .line 66
    fill-array-data v0, :array_c

    .line 67
    .line 68
    .line 69
    const/16 v17, 0x1

    .line 70
    .line 71
    new-array v1, v2, [I

    .line 72
    .line 73
    fill-array-data v1, :array_d

    .line 74
    .line 75
    .line 76
    const/16 v18, 0x3

    .line 77
    .line 78
    new-array v6, v2, [I

    .line 79
    .line 80
    fill-array-data v6, :array_e

    .line 81
    .line 82
    .line 83
    move-object/from16 v19, v0

    .line 84
    .line 85
    new-array v0, v2, [I

    .line 86
    .line 87
    fill-array-data v0, :array_f

    .line 88
    .line 89
    .line 90
    move-object/from16 v20, v0

    .line 91
    .line 92
    new-array v0, v2, [I

    .line 93
    .line 94
    fill-array-data v0, :array_10

    .line 95
    .line 96
    .line 97
    move-object/from16 v21, v0

    .line 98
    .line 99
    new-array v0, v2, [I

    .line 100
    .line 101
    fill-array-data v0, :array_11

    .line 102
    .line 103
    .line 104
    move-object/from16 v22, v0

    .line 105
    .line 106
    new-array v0, v2, [I

    .line 107
    .line 108
    fill-array-data v0, :array_12

    .line 109
    .line 110
    .line 111
    move-object/from16 v23, v0

    .line 112
    .line 113
    new-array v0, v2, [I

    .line 114
    .line 115
    fill-array-data v0, :array_13

    .line 116
    .line 117
    .line 118
    move-object/from16 v24, v0

    .line 119
    .line 120
    new-array v0, v2, [I

    .line 121
    .line 122
    fill-array-data v0, :array_14

    .line 123
    .line 124
    .line 125
    move-object/from16 v25, v0

    .line 126
    .line 127
    new-array v0, v2, [I

    .line 128
    .line 129
    fill-array-data v0, :array_15

    .line 130
    .line 131
    .line 132
    move-object/from16 v26, v0

    .line 133
    .line 134
    new-array v0, v2, [I

    .line 135
    .line 136
    fill-array-data v0, :array_16

    .line 137
    .line 138
    .line 139
    move-object/from16 v27, v0

    .line 140
    .line 141
    new-array v0, v2, [I

    .line 142
    .line 143
    fill-array-data v0, :array_17

    .line 144
    .line 145
    .line 146
    move-object/from16 v28, v0

    .line 147
    .line 148
    new-array v0, v2, [I

    .line 149
    .line 150
    fill-array-data v0, :array_18

    .line 151
    .line 152
    .line 153
    move-object/from16 v29, v0

    .line 154
    .line 155
    new-array v0, v2, [I

    .line 156
    .line 157
    fill-array-data v0, :array_19

    .line 158
    .line 159
    .line 160
    move-object/from16 v30, v0

    .line 161
    .line 162
    new-array v0, v2, [I

    .line 163
    .line 164
    fill-array-data v0, :array_1a

    .line 165
    .line 166
    .line 167
    move-object/from16 v31, v0

    .line 168
    .line 169
    new-array v0, v2, [I

    .line 170
    .line 171
    fill-array-data v0, :array_1b

    .line 172
    .line 173
    .line 174
    move-object/from16 v32, v0

    .line 175
    .line 176
    new-array v0, v2, [I

    .line 177
    .line 178
    fill-array-data v0, :array_1c

    .line 179
    .line 180
    .line 181
    move-object/from16 v33, v0

    .line 182
    .line 183
    new-array v0, v2, [I

    .line 184
    .line 185
    fill-array-data v0, :array_1d

    .line 186
    .line 187
    .line 188
    move-object/from16 v34, v0

    .line 189
    .line 190
    new-array v0, v2, [I

    .line 191
    .line 192
    fill-array-data v0, :array_1e

    .line 193
    .line 194
    .line 195
    move-object/from16 v35, v0

    .line 196
    .line 197
    new-array v0, v2, [I

    .line 198
    .line 199
    fill-array-data v0, :array_1f

    .line 200
    .line 201
    .line 202
    move-object/from16 v36, v0

    .line 203
    .line 204
    new-array v0, v2, [I

    .line 205
    .line 206
    fill-array-data v0, :array_20

    .line 207
    .line 208
    .line 209
    move-object/from16 v37, v0

    .line 210
    .line 211
    new-array v0, v2, [I

    .line 212
    .line 213
    fill-array-data v0, :array_21

    .line 214
    .line 215
    .line 216
    move-object/from16 v38, v0

    .line 217
    .line 218
    new-array v0, v2, [I

    .line 219
    .line 220
    fill-array-data v0, :array_22

    .line 221
    .line 222
    .line 223
    move-object/from16 v39, v0

    .line 224
    .line 225
    new-array v0, v2, [I

    .line 226
    .line 227
    fill-array-data v0, :array_23

    .line 228
    .line 229
    .line 230
    move-object/from16 v40, v0

    .line 231
    .line 232
    new-array v0, v2, [I

    .line 233
    .line 234
    fill-array-data v0, :array_24

    .line 235
    .line 236
    .line 237
    move-object/from16 v41, v0

    .line 238
    .line 239
    new-array v0, v2, [I

    .line 240
    .line 241
    fill-array-data v0, :array_25

    .line 242
    .line 243
    .line 244
    move-object/from16 v42, v0

    .line 245
    .line 246
    new-array v0, v2, [I

    .line 247
    .line 248
    fill-array-data v0, :array_26

    .line 249
    .line 250
    .line 251
    move-object/from16 v43, v0

    .line 252
    .line 253
    new-array v0, v2, [I

    .line 254
    .line 255
    fill-array-data v0, :array_27

    .line 256
    .line 257
    .line 258
    move-object/from16 v44, v0

    .line 259
    .line 260
    new-array v0, v2, [I

    .line 261
    .line 262
    fill-array-data v0, :array_28

    .line 263
    .line 264
    .line 265
    move-object/from16 v45, v0

    .line 266
    .line 267
    new-array v0, v2, [I

    .line 268
    .line 269
    fill-array-data v0, :array_29

    .line 270
    .line 271
    .line 272
    move-object/from16 v46, v0

    .line 273
    .line 274
    new-array v0, v2, [I

    .line 275
    .line 276
    fill-array-data v0, :array_2a

    .line 277
    .line 278
    .line 279
    move-object/from16 v47, v0

    .line 280
    .line 281
    new-array v0, v2, [I

    .line 282
    .line 283
    fill-array-data v0, :array_2b

    .line 284
    .line 285
    .line 286
    move-object/from16 v48, v0

    .line 287
    .line 288
    new-array v0, v2, [I

    .line 289
    .line 290
    fill-array-data v0, :array_2c

    .line 291
    .line 292
    .line 293
    move-object/from16 v49, v0

    .line 294
    .line 295
    new-array v0, v2, [I

    .line 296
    .line 297
    fill-array-data v0, :array_2d

    .line 298
    .line 299
    .line 300
    move-object/from16 v50, v0

    .line 301
    .line 302
    new-array v0, v2, [I

    .line 303
    .line 304
    fill-array-data v0, :array_2e

    .line 305
    .line 306
    .line 307
    move-object/from16 v51, v0

    .line 308
    .line 309
    new-array v0, v2, [I

    .line 310
    .line 311
    fill-array-data v0, :array_2f

    .line 312
    .line 313
    .line 314
    move-object/from16 v52, v0

    .line 315
    .line 316
    new-array v0, v2, [I

    .line 317
    .line 318
    fill-array-data v0, :array_30

    .line 319
    .line 320
    .line 321
    move-object/from16 v53, v0

    .line 322
    .line 323
    new-array v0, v2, [I

    .line 324
    .line 325
    fill-array-data v0, :array_31

    .line 326
    .line 327
    .line 328
    move-object/from16 v54, v0

    .line 329
    .line 330
    new-array v0, v2, [I

    .line 331
    .line 332
    fill-array-data v0, :array_32

    .line 333
    .line 334
    .line 335
    move-object/from16 v55, v0

    .line 336
    .line 337
    new-array v0, v2, [I

    .line 338
    .line 339
    fill-array-data v0, :array_33

    .line 340
    .line 341
    .line 342
    move-object/from16 v56, v0

    .line 343
    .line 344
    new-array v0, v2, [I

    .line 345
    .line 346
    fill-array-data v0, :array_34

    .line 347
    .line 348
    .line 349
    move-object/from16 v57, v0

    .line 350
    .line 351
    new-array v0, v2, [I

    .line 352
    .line 353
    fill-array-data v0, :array_35

    .line 354
    .line 355
    .line 356
    move-object/from16 v58, v0

    .line 357
    .line 358
    new-array v0, v2, [I

    .line 359
    .line 360
    fill-array-data v0, :array_36

    .line 361
    .line 362
    .line 363
    move-object/from16 v59, v0

    .line 364
    .line 365
    new-array v0, v2, [I

    .line 366
    .line 367
    fill-array-data v0, :array_37

    .line 368
    .line 369
    .line 370
    move-object/from16 v60, v0

    .line 371
    .line 372
    new-array v0, v2, [I

    .line 373
    .line 374
    fill-array-data v0, :array_38

    .line 375
    .line 376
    .line 377
    move-object/from16 v61, v0

    .line 378
    .line 379
    new-array v0, v2, [I

    .line 380
    .line 381
    fill-array-data v0, :array_39

    .line 382
    .line 383
    .line 384
    move-object/from16 v62, v0

    .line 385
    .line 386
    new-array v0, v2, [I

    .line 387
    .line 388
    fill-array-data v0, :array_3a

    .line 389
    .line 390
    .line 391
    move-object/from16 v63, v0

    .line 392
    .line 393
    new-array v0, v2, [I

    .line 394
    .line 395
    fill-array-data v0, :array_3b

    .line 396
    .line 397
    .line 398
    const/16 v64, 0x4

    .line 399
    .line 400
    move-object/from16 v65, v0

    .line 401
    .line 402
    new-array v0, v2, [I

    .line 403
    .line 404
    fill-array-data v0, :array_3c

    .line 405
    .line 406
    .line 407
    move-object/from16 v66, v0

    .line 408
    .line 409
    new-array v0, v2, [I

    .line 410
    .line 411
    fill-array-data v0, :array_3d

    .line 412
    .line 413
    .line 414
    move-object/from16 v67, v0

    .line 415
    .line 416
    new-array v0, v2, [I

    .line 417
    .line 418
    fill-array-data v0, :array_3e

    .line 419
    .line 420
    .line 421
    move-object/from16 v68, v0

    .line 422
    .line 423
    new-array v0, v2, [I

    .line 424
    .line 425
    fill-array-data v0, :array_3f

    .line 426
    .line 427
    .line 428
    move-object/from16 v69, v0

    .line 429
    .line 430
    new-array v0, v2, [I

    .line 431
    .line 432
    fill-array-data v0, :array_40

    .line 433
    .line 434
    .line 435
    move-object/from16 v70, v0

    .line 436
    .line 437
    new-array v0, v2, [I

    .line 438
    .line 439
    fill-array-data v0, :array_41

    .line 440
    .line 441
    .line 442
    move-object/from16 v71, v0

    .line 443
    .line 444
    new-array v0, v2, [I

    .line 445
    .line 446
    fill-array-data v0, :array_42

    .line 447
    .line 448
    .line 449
    move-object/from16 v72, v0

    .line 450
    .line 451
    new-array v0, v2, [I

    .line 452
    .line 453
    fill-array-data v0, :array_43

    .line 454
    .line 455
    .line 456
    move-object/from16 v73, v0

    .line 457
    .line 458
    new-array v0, v2, [I

    .line 459
    .line 460
    fill-array-data v0, :array_44

    .line 461
    .line 462
    .line 463
    move-object/from16 v74, v0

    .line 464
    .line 465
    new-array v0, v2, [I

    .line 466
    .line 467
    fill-array-data v0, :array_45

    .line 468
    .line 469
    .line 470
    move-object/from16 v75, v0

    .line 471
    .line 472
    new-array v0, v2, [I

    .line 473
    .line 474
    fill-array-data v0, :array_46

    .line 475
    .line 476
    .line 477
    move-object/from16 v76, v0

    .line 478
    .line 479
    new-array v0, v2, [I

    .line 480
    .line 481
    fill-array-data v0, :array_47

    .line 482
    .line 483
    .line 484
    move-object/from16 v77, v0

    .line 485
    .line 486
    new-array v0, v2, [I

    .line 487
    .line 488
    fill-array-data v0, :array_48

    .line 489
    .line 490
    .line 491
    move-object/from16 v78, v0

    .line 492
    .line 493
    new-array v0, v2, [I

    .line 494
    .line 495
    fill-array-data v0, :array_49

    .line 496
    .line 497
    .line 498
    move-object/from16 v79, v0

    .line 499
    .line 500
    new-array v0, v2, [I

    .line 501
    .line 502
    fill-array-data v0, :array_4a

    .line 503
    .line 504
    .line 505
    move-object/from16 v80, v0

    .line 506
    .line 507
    new-array v0, v2, [I

    .line 508
    .line 509
    fill-array-data v0, :array_4b

    .line 510
    .line 511
    .line 512
    move-object/from16 v81, v0

    .line 513
    .line 514
    new-array v0, v2, [I

    .line 515
    .line 516
    fill-array-data v0, :array_4c

    .line 517
    .line 518
    .line 519
    move-object/from16 v82, v0

    .line 520
    .line 521
    new-array v0, v2, [I

    .line 522
    .line 523
    fill-array-data v0, :array_4d

    .line 524
    .line 525
    .line 526
    move-object/from16 v83, v0

    .line 527
    .line 528
    new-array v0, v2, [I

    .line 529
    .line 530
    fill-array-data v0, :array_4e

    .line 531
    .line 532
    .line 533
    move-object/from16 v84, v0

    .line 534
    .line 535
    new-array v0, v2, [I

    .line 536
    .line 537
    fill-array-data v0, :array_4f

    .line 538
    .line 539
    .line 540
    move-object/from16 v85, v0

    .line 541
    .line 542
    new-array v0, v2, [I

    .line 543
    .line 544
    fill-array-data v0, :array_50

    .line 545
    .line 546
    .line 547
    move-object/from16 v86, v0

    .line 548
    .line 549
    new-array v0, v2, [I

    .line 550
    .line 551
    fill-array-data v0, :array_51

    .line 552
    .line 553
    .line 554
    move-object/from16 v87, v0

    .line 555
    .line 556
    new-array v0, v2, [I

    .line 557
    .line 558
    fill-array-data v0, :array_52

    .line 559
    .line 560
    .line 561
    move-object/from16 v88, v0

    .line 562
    .line 563
    new-array v0, v2, [I

    .line 564
    .line 565
    fill-array-data v0, :array_53

    .line 566
    .line 567
    .line 568
    move-object/from16 v89, v0

    .line 569
    .line 570
    new-array v0, v2, [I

    .line 571
    .line 572
    fill-array-data v0, :array_54

    .line 573
    .line 574
    .line 575
    move-object/from16 v90, v0

    .line 576
    .line 577
    new-array v0, v2, [I

    .line 578
    .line 579
    fill-array-data v0, :array_55

    .line 580
    .line 581
    .line 582
    move-object/from16 v91, v0

    .line 583
    .line 584
    new-array v0, v2, [I

    .line 585
    .line 586
    fill-array-data v0, :array_56

    .line 587
    .line 588
    .line 589
    move-object/from16 v92, v0

    .line 590
    .line 591
    new-array v0, v2, [I

    .line 592
    .line 593
    fill-array-data v0, :array_57

    .line 594
    .line 595
    .line 596
    move-object/from16 v93, v0

    .line 597
    .line 598
    new-array v0, v2, [I

    .line 599
    .line 600
    fill-array-data v0, :array_58

    .line 601
    .line 602
    .line 603
    move-object/from16 v94, v0

    .line 604
    .line 605
    new-array v0, v2, [I

    .line 606
    .line 607
    fill-array-data v0, :array_59

    .line 608
    .line 609
    .line 610
    move-object/from16 v95, v0

    .line 611
    .line 612
    new-array v0, v2, [I

    .line 613
    .line 614
    fill-array-data v0, :array_5a

    .line 615
    .line 616
    .line 617
    move-object/from16 v96, v0

    .line 618
    .line 619
    new-array v0, v2, [I

    .line 620
    .line 621
    fill-array-data v0, :array_5b

    .line 622
    .line 623
    .line 624
    move-object/from16 v97, v0

    .line 625
    .line 626
    new-array v0, v2, [I

    .line 627
    .line 628
    fill-array-data v0, :array_5c

    .line 629
    .line 630
    .line 631
    move-object/from16 v98, v0

    .line 632
    .line 633
    new-array v0, v2, [I

    .line 634
    .line 635
    fill-array-data v0, :array_5d

    .line 636
    .line 637
    .line 638
    move-object/from16 v99, v0

    .line 639
    .line 640
    new-array v0, v2, [I

    .line 641
    .line 642
    fill-array-data v0, :array_5e

    .line 643
    .line 644
    .line 645
    move-object/from16 v100, v0

    .line 646
    .line 647
    new-array v0, v2, [I

    .line 648
    .line 649
    fill-array-data v0, :array_5f

    .line 650
    .line 651
    .line 652
    move-object/from16 v101, v0

    .line 653
    .line 654
    new-array v0, v2, [I

    .line 655
    .line 656
    fill-array-data v0, :array_60

    .line 657
    .line 658
    .line 659
    move-object/from16 v102, v0

    .line 660
    .line 661
    new-array v0, v2, [I

    .line 662
    .line 663
    fill-array-data v0, :array_61

    .line 664
    .line 665
    .line 666
    move-object/from16 v103, v0

    .line 667
    .line 668
    new-array v0, v2, [I

    .line 669
    .line 670
    fill-array-data v0, :array_62

    .line 671
    .line 672
    .line 673
    move-object/from16 v104, v0

    .line 674
    .line 675
    new-array v0, v2, [I

    .line 676
    .line 677
    fill-array-data v0, :array_63

    .line 678
    .line 679
    .line 680
    move-object/from16 v105, v0

    .line 681
    .line 682
    new-array v0, v2, [I

    .line 683
    .line 684
    fill-array-data v0, :array_64

    .line 685
    .line 686
    .line 687
    move-object/from16 v106, v0

    .line 688
    .line 689
    new-array v0, v2, [I

    .line 690
    .line 691
    fill-array-data v0, :array_65

    .line 692
    .line 693
    .line 694
    move-object/from16 v107, v0

    .line 695
    .line 696
    new-array v0, v2, [I

    .line 697
    .line 698
    fill-array-data v0, :array_66

    .line 699
    .line 700
    .line 701
    move-object/from16 v108, v0

    .line 702
    .line 703
    new-array v0, v2, [I

    .line 704
    .line 705
    fill-array-data v0, :array_67

    .line 706
    .line 707
    .line 708
    move-object/from16 v109, v0

    .line 709
    .line 710
    new-array v0, v2, [I

    .line 711
    .line 712
    fill-array-data v0, :array_68

    .line 713
    .line 714
    .line 715
    move-object/from16 v110, v0

    .line 716
    .line 717
    new-array v0, v2, [I

    .line 718
    .line 719
    fill-array-data v0, :array_69

    .line 720
    .line 721
    .line 722
    move/from16 v111, v2

    .line 723
    .line 724
    const/4 v2, 0x7

    .line 725
    move-object/from16 v112, v0

    .line 726
    .line 727
    new-array v0, v2, [I

    .line 728
    .line 729
    fill-array-data v0, :array_6a

    .line 730
    .line 731
    .line 732
    move/from16 v113, v2

    .line 733
    .line 734
    const/16 v2, 0x6b

    .line 735
    .line 736
    new-array v2, v2, [[I

    .line 737
    .line 738
    const/16 v114, 0x0

    .line 739
    .line 740
    aput-object v3, v2, v114

    .line 741
    .line 742
    aput-object v4, v2, v17

    .line 743
    .line 744
    aput-object v5, v2, v16

    .line 745
    .line 746
    aput-object v7, v2, v18

    .line 747
    .line 748
    aput-object v8, v2, v64

    .line 749
    .line 750
    const/4 v3, 0x5

    .line 751
    aput-object v9, v2, v3

    .line 752
    .line 753
    aput-object v10, v2, v111

    .line 754
    .line 755
    aput-object v11, v2, v113

    .line 756
    .line 757
    const/16 v3, 0x8

    .line 758
    .line 759
    aput-object v12, v2, v3

    .line 760
    .line 761
    const/16 v3, 0x9

    .line 762
    .line 763
    aput-object v13, v2, v3

    .line 764
    .line 765
    const/16 v3, 0xa

    .line 766
    .line 767
    aput-object v14, v2, v3

    .line 768
    .line 769
    const/16 v3, 0xb

    .line 770
    .line 771
    aput-object v15, v2, v3

    .line 772
    .line 773
    const/16 v3, 0xc

    .line 774
    .line 775
    aput-object v19, v2, v3

    .line 776
    .line 777
    const/16 v3, 0xd

    .line 778
    .line 779
    aput-object v1, v2, v3

    .line 780
    .line 781
    const/16 v1, 0xe

    .line 782
    .line 783
    aput-object v6, v2, v1

    .line 784
    .line 785
    const/16 v1, 0xf

    .line 786
    .line 787
    aput-object v20, v2, v1

    .line 788
    .line 789
    const/16 v1, 0x10

    .line 790
    .line 791
    aput-object v21, v2, v1

    .line 792
    .line 793
    const/16 v1, 0x11

    .line 794
    .line 795
    aput-object v22, v2, v1

    .line 796
    .line 797
    const/16 v1, 0x12

    .line 798
    .line 799
    aput-object v23, v2, v1

    .line 800
    .line 801
    const/16 v1, 0x13

    .line 802
    .line 803
    aput-object v24, v2, v1

    .line 804
    .line 805
    const/16 v1, 0x14

    .line 806
    .line 807
    aput-object v25, v2, v1

    .line 808
    .line 809
    const/16 v1, 0x15

    .line 810
    .line 811
    aput-object v26, v2, v1

    .line 812
    .line 813
    const/16 v1, 0x16

    .line 814
    .line 815
    aput-object v27, v2, v1

    .line 816
    .line 817
    const/16 v1, 0x17

    .line 818
    .line 819
    aput-object v28, v2, v1

    .line 820
    .line 821
    const/16 v1, 0x18

    .line 822
    .line 823
    aput-object v29, v2, v1

    .line 824
    .line 825
    const/16 v1, 0x19

    .line 826
    .line 827
    aput-object v30, v2, v1

    .line 828
    .line 829
    const/16 v1, 0x1a

    .line 830
    .line 831
    aput-object v31, v2, v1

    .line 832
    .line 833
    const/16 v1, 0x1b

    .line 834
    .line 835
    aput-object v32, v2, v1

    .line 836
    .line 837
    const/16 v1, 0x1c

    .line 838
    .line 839
    aput-object v33, v2, v1

    .line 840
    .line 841
    const/16 v1, 0x1d

    .line 842
    .line 843
    aput-object v34, v2, v1

    .line 844
    .line 845
    const/16 v1, 0x1e

    .line 846
    .line 847
    aput-object v35, v2, v1

    .line 848
    .line 849
    const/16 v1, 0x1f

    .line 850
    .line 851
    aput-object v36, v2, v1

    .line 852
    .line 853
    const/16 v1, 0x20

    .line 854
    .line 855
    aput-object v37, v2, v1

    .line 856
    .line 857
    const/16 v1, 0x21

    .line 858
    .line 859
    aput-object v38, v2, v1

    .line 860
    .line 861
    const/16 v1, 0x22

    .line 862
    .line 863
    aput-object v39, v2, v1

    .line 864
    .line 865
    const/16 v1, 0x23

    .line 866
    .line 867
    aput-object v40, v2, v1

    .line 868
    .line 869
    const/16 v1, 0x24

    .line 870
    .line 871
    aput-object v41, v2, v1

    .line 872
    .line 873
    const/16 v1, 0x25

    .line 874
    .line 875
    aput-object v42, v2, v1

    .line 876
    .line 877
    const/16 v1, 0x26

    .line 878
    .line 879
    aput-object v43, v2, v1

    .line 880
    .line 881
    const/16 v1, 0x27

    .line 882
    .line 883
    aput-object v44, v2, v1

    .line 884
    .line 885
    const/16 v1, 0x28

    .line 886
    .line 887
    aput-object v45, v2, v1

    .line 888
    .line 889
    const/16 v1, 0x29

    .line 890
    .line 891
    aput-object v46, v2, v1

    .line 892
    .line 893
    const/16 v1, 0x2a

    .line 894
    .line 895
    aput-object v47, v2, v1

    .line 896
    .line 897
    const/16 v1, 0x2b

    .line 898
    .line 899
    aput-object v48, v2, v1

    .line 900
    .line 901
    const/16 v1, 0x2c

    .line 902
    .line 903
    aput-object v49, v2, v1

    .line 904
    .line 905
    const/16 v1, 0x2d

    .line 906
    .line 907
    aput-object v50, v2, v1

    .line 908
    .line 909
    const/16 v1, 0x2e

    .line 910
    .line 911
    aput-object v51, v2, v1

    .line 912
    .line 913
    const/16 v1, 0x2f

    .line 914
    .line 915
    aput-object v52, v2, v1

    .line 916
    .line 917
    const/16 v1, 0x30

    .line 918
    .line 919
    aput-object v53, v2, v1

    .line 920
    .line 921
    const/16 v1, 0x31

    .line 922
    .line 923
    aput-object v54, v2, v1

    .line 924
    .line 925
    const/16 v1, 0x32

    .line 926
    .line 927
    aput-object v55, v2, v1

    .line 928
    .line 929
    const/16 v1, 0x33

    .line 930
    .line 931
    aput-object v56, v2, v1

    .line 932
    .line 933
    const/16 v1, 0x34

    .line 934
    .line 935
    aput-object v57, v2, v1

    .line 936
    .line 937
    const/16 v1, 0x35

    .line 938
    .line 939
    aput-object v58, v2, v1

    .line 940
    .line 941
    const/16 v1, 0x36

    .line 942
    .line 943
    aput-object v59, v2, v1

    .line 944
    .line 945
    const/16 v1, 0x37

    .line 946
    .line 947
    aput-object v60, v2, v1

    .line 948
    .line 949
    const/16 v1, 0x38

    .line 950
    .line 951
    aput-object v61, v2, v1

    .line 952
    .line 953
    const/16 v1, 0x39

    .line 954
    .line 955
    aput-object v62, v2, v1

    .line 956
    .line 957
    const/16 v1, 0x3a

    .line 958
    .line 959
    aput-object v63, v2, v1

    .line 960
    .line 961
    const/16 v1, 0x3b

    .line 962
    .line 963
    aput-object v65, v2, v1

    .line 964
    .line 965
    const/16 v1, 0x3c

    .line 966
    .line 967
    aput-object v66, v2, v1

    .line 968
    .line 969
    const/16 v1, 0x3d

    .line 970
    .line 971
    aput-object v67, v2, v1

    .line 972
    .line 973
    const/16 v1, 0x3e

    .line 974
    .line 975
    aput-object v68, v2, v1

    .line 976
    .line 977
    const/16 v1, 0x3f

    .line 978
    .line 979
    aput-object v69, v2, v1

    .line 980
    .line 981
    const/16 v1, 0x40

    .line 982
    .line 983
    aput-object v70, v2, v1

    .line 984
    .line 985
    const/16 v1, 0x41

    .line 986
    .line 987
    aput-object v71, v2, v1

    .line 988
    .line 989
    const/16 v1, 0x42

    .line 990
    .line 991
    aput-object v72, v2, v1

    .line 992
    .line 993
    const/16 v1, 0x43

    .line 994
    .line 995
    aput-object v73, v2, v1

    .line 996
    .line 997
    const/16 v1, 0x44

    .line 998
    .line 999
    aput-object v74, v2, v1

    .line 1000
    .line 1001
    const/16 v1, 0x45

    .line 1002
    .line 1003
    aput-object v75, v2, v1

    .line 1004
    .line 1005
    const/16 v1, 0x46

    .line 1006
    .line 1007
    aput-object v76, v2, v1

    .line 1008
    .line 1009
    const/16 v1, 0x47

    .line 1010
    .line 1011
    aput-object v77, v2, v1

    .line 1012
    .line 1013
    const/16 v1, 0x48

    .line 1014
    .line 1015
    aput-object v78, v2, v1

    .line 1016
    .line 1017
    const/16 v1, 0x49

    .line 1018
    .line 1019
    aput-object v79, v2, v1

    .line 1020
    .line 1021
    const/16 v1, 0x4a

    .line 1022
    .line 1023
    aput-object v80, v2, v1

    .line 1024
    .line 1025
    const/16 v1, 0x4b

    .line 1026
    .line 1027
    aput-object v81, v2, v1

    .line 1028
    .line 1029
    const/16 v1, 0x4c

    .line 1030
    .line 1031
    aput-object v82, v2, v1

    .line 1032
    .line 1033
    const/16 v1, 0x4d

    .line 1034
    .line 1035
    aput-object v83, v2, v1

    .line 1036
    .line 1037
    const/16 v1, 0x4e

    .line 1038
    .line 1039
    aput-object v84, v2, v1

    .line 1040
    .line 1041
    const/16 v1, 0x4f

    .line 1042
    .line 1043
    aput-object v85, v2, v1

    .line 1044
    .line 1045
    const/16 v1, 0x50

    .line 1046
    .line 1047
    aput-object v86, v2, v1

    .line 1048
    .line 1049
    const/16 v1, 0x51

    .line 1050
    .line 1051
    aput-object v87, v2, v1

    .line 1052
    .line 1053
    const/16 v1, 0x52

    .line 1054
    .line 1055
    aput-object v88, v2, v1

    .line 1056
    .line 1057
    const/16 v1, 0x53

    .line 1058
    .line 1059
    aput-object v89, v2, v1

    .line 1060
    .line 1061
    const/16 v1, 0x54

    .line 1062
    .line 1063
    aput-object v90, v2, v1

    .line 1064
    .line 1065
    const/16 v1, 0x55

    .line 1066
    .line 1067
    aput-object v91, v2, v1

    .line 1068
    .line 1069
    const/16 v1, 0x56

    .line 1070
    .line 1071
    aput-object v92, v2, v1

    .line 1072
    .line 1073
    const/16 v1, 0x57

    .line 1074
    .line 1075
    aput-object v93, v2, v1

    .line 1076
    .line 1077
    const/16 v1, 0x58

    .line 1078
    .line 1079
    aput-object v94, v2, v1

    .line 1080
    .line 1081
    const/16 v1, 0x59

    .line 1082
    .line 1083
    aput-object v95, v2, v1

    .line 1084
    .line 1085
    const/16 v1, 0x5a

    .line 1086
    .line 1087
    aput-object v96, v2, v1

    .line 1088
    .line 1089
    const/16 v1, 0x5b

    .line 1090
    .line 1091
    aput-object v97, v2, v1

    .line 1092
    .line 1093
    const/16 v1, 0x5c

    .line 1094
    .line 1095
    aput-object v98, v2, v1

    .line 1096
    .line 1097
    const/16 v1, 0x5d

    .line 1098
    .line 1099
    aput-object v99, v2, v1

    .line 1100
    .line 1101
    const/16 v1, 0x5e

    .line 1102
    .line 1103
    aput-object v100, v2, v1

    .line 1104
    .line 1105
    const/16 v1, 0x5f

    .line 1106
    .line 1107
    aput-object v101, v2, v1

    .line 1108
    .line 1109
    const/16 v1, 0x60

    .line 1110
    .line 1111
    aput-object v102, v2, v1

    .line 1112
    .line 1113
    const/16 v1, 0x61

    .line 1114
    .line 1115
    aput-object v103, v2, v1

    .line 1116
    .line 1117
    const/16 v1, 0x62

    .line 1118
    .line 1119
    aput-object v104, v2, v1

    .line 1120
    .line 1121
    const/16 v1, 0x63

    .line 1122
    .line 1123
    aput-object v105, v2, v1

    .line 1124
    .line 1125
    const/16 v1, 0x64

    .line 1126
    .line 1127
    aput-object v106, v2, v1

    .line 1128
    .line 1129
    const/16 v1, 0x65

    .line 1130
    .line 1131
    aput-object v107, v2, v1

    .line 1132
    .line 1133
    const/16 v1, 0x66

    .line 1134
    .line 1135
    aput-object v108, v2, v1

    .line 1136
    .line 1137
    const/16 v1, 0x67

    .line 1138
    .line 1139
    aput-object v109, v2, v1

    .line 1140
    .line 1141
    const/16 v1, 0x68

    .line 1142
    .line 1143
    aput-object v110, v2, v1

    .line 1144
    .line 1145
    const/16 v1, 0x69

    .line 1146
    .line 1147
    aput-object v112, v2, v1

    .line 1148
    .line 1149
    const/16 v1, 0x6a

    .line 1150
    .line 1151
    aput-object v0, v2, v1

    .line 1152
    .line 1153
    sput-object v2, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    .line 1154
    .line 1155
    return-void

    .line 1156
    nop

    .line 1157
    :array_0
    .array-data 4
        0x2
        0x1
        0x2
        0x2
        0x2
        0x2
    .end array-data

    .line 1158
    .line 1159
    .line 1160
    .line 1161
    .line 1162
    .line 1163
    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    .line 1170
    .line 1171
    .line 1172
    .line 1173
    :array_1
    .array-data 4
        0x2
        0x2
        0x2
        0x1
        0x2
        0x2
    .end array-data

    .line 1174
    .line 1175
    .line 1176
    .line 1177
    .line 1178
    .line 1179
    .line 1180
    .line 1181
    .line 1182
    .line 1183
    .line 1184
    .line 1185
    .line 1186
    .line 1187
    .line 1188
    .line 1189
    :array_2
    .array-data 4
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
    .end array-data

    .line 1190
    .line 1191
    .line 1192
    .line 1193
    .line 1194
    .line 1195
    .line 1196
    .line 1197
    .line 1198
    .line 1199
    .line 1200
    .line 1201
    .line 1202
    .line 1203
    .line 1204
    .line 1205
    :array_3
    .array-data 4
        0x1
        0x2
        0x1
        0x2
        0x2
        0x3
    .end array-data

    .line 1206
    .line 1207
    .line 1208
    .line 1209
    .line 1210
    .line 1211
    .line 1212
    .line 1213
    .line 1214
    .line 1215
    .line 1216
    .line 1217
    .line 1218
    .line 1219
    .line 1220
    .line 1221
    :array_4
    .array-data 4
        0x1
        0x2
        0x1
        0x3
        0x2
        0x2
    .end array-data

    .line 1222
    .line 1223
    .line 1224
    .line 1225
    .line 1226
    .line 1227
    .line 1228
    .line 1229
    .line 1230
    .line 1231
    .line 1232
    .line 1233
    .line 1234
    .line 1235
    .line 1236
    .line 1237
    :array_5
    .array-data 4
        0x1
        0x3
        0x1
        0x2
        0x2
        0x2
    .end array-data

    .line 1238
    .line 1239
    .line 1240
    .line 1241
    .line 1242
    .line 1243
    .line 1244
    .line 1245
    .line 1246
    .line 1247
    .line 1248
    .line 1249
    .line 1250
    .line 1251
    .line 1252
    .line 1253
    :array_6
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x1
        0x3
    .end array-data

    .line 1254
    .line 1255
    .line 1256
    .line 1257
    .line 1258
    .line 1259
    .line 1260
    .line 1261
    .line 1262
    .line 1263
    .line 1264
    .line 1265
    .line 1266
    .line 1267
    .line 1268
    .line 1269
    :array_7
    .array-data 4
        0x1
        0x2
        0x2
        0x3
        0x1
        0x2
    .end array-data

    .line 1270
    .line 1271
    .line 1272
    .line 1273
    .line 1274
    .line 1275
    .line 1276
    .line 1277
    .line 1278
    .line 1279
    .line 1280
    .line 1281
    .line 1282
    .line 1283
    .line 1284
    .line 1285
    :array_8
    .array-data 4
        0x1
        0x3
        0x2
        0x2
        0x1
        0x2
    .end array-data

    .line 1286
    .line 1287
    .line 1288
    .line 1289
    .line 1290
    .line 1291
    .line 1292
    .line 1293
    .line 1294
    .line 1295
    .line 1296
    .line 1297
    .line 1298
    .line 1299
    .line 1300
    .line 1301
    :array_9
    .array-data 4
        0x2
        0x2
        0x1
        0x2
        0x1
        0x3
    .end array-data

    .line 1302
    .line 1303
    .line 1304
    .line 1305
    .line 1306
    .line 1307
    .line 1308
    .line 1309
    .line 1310
    .line 1311
    .line 1312
    .line 1313
    .line 1314
    .line 1315
    .line 1316
    .line 1317
    :array_a
    .array-data 4
        0x2
        0x2
        0x1
        0x3
        0x1
        0x2
    .end array-data

    .line 1318
    .line 1319
    .line 1320
    .line 1321
    .line 1322
    .line 1323
    .line 1324
    .line 1325
    .line 1326
    .line 1327
    .line 1328
    .line 1329
    .line 1330
    .line 1331
    .line 1332
    .line 1333
    :array_b
    .array-data 4
        0x2
        0x3
        0x1
        0x2
        0x1
        0x2
    .end array-data

    .line 1334
    .line 1335
    .line 1336
    .line 1337
    .line 1338
    .line 1339
    .line 1340
    .line 1341
    .line 1342
    .line 1343
    .line 1344
    .line 1345
    .line 1346
    .line 1347
    .line 1348
    .line 1349
    :array_c
    .array-data 4
        0x1
        0x1
        0x2
        0x2
        0x3
        0x2
    .end array-data

    .line 1350
    .line 1351
    .line 1352
    .line 1353
    .line 1354
    .line 1355
    .line 1356
    .line 1357
    .line 1358
    .line 1359
    .line 1360
    .line 1361
    .line 1362
    .line 1363
    .line 1364
    .line 1365
    :array_d
    .array-data 4
        0x1
        0x2
        0x2
        0x1
        0x3
        0x2
    .end array-data

    .line 1366
    .line 1367
    .line 1368
    .line 1369
    .line 1370
    .line 1371
    .line 1372
    .line 1373
    .line 1374
    .line 1375
    .line 1376
    .line 1377
    .line 1378
    .line 1379
    .line 1380
    .line 1381
    :array_e
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x3
        0x1
    .end array-data

    .line 1382
    .line 1383
    .line 1384
    .line 1385
    .line 1386
    .line 1387
    .line 1388
    .line 1389
    .line 1390
    .line 1391
    .line 1392
    .line 1393
    .line 1394
    .line 1395
    .line 1396
    .line 1397
    :array_f
    .array-data 4
        0x1
        0x1
        0x3
        0x2
        0x2
        0x2
    .end array-data

    .line 1398
    .line 1399
    .line 1400
    .line 1401
    .line 1402
    .line 1403
    .line 1404
    .line 1405
    .line 1406
    .line 1407
    .line 1408
    .line 1409
    .line 1410
    .line 1411
    .line 1412
    .line 1413
    :array_10
    .array-data 4
        0x1
        0x2
        0x3
        0x1
        0x2
        0x2
    .end array-data

    .line 1414
    .line 1415
    .line 1416
    .line 1417
    .line 1418
    .line 1419
    .line 1420
    .line 1421
    .line 1422
    .line 1423
    .line 1424
    .line 1425
    .line 1426
    .line 1427
    .line 1428
    .line 1429
    :array_11
    .array-data 4
        0x1
        0x2
        0x3
        0x2
        0x2
        0x1
    .end array-data

    .line 1430
    .line 1431
    .line 1432
    .line 1433
    .line 1434
    .line 1435
    .line 1436
    .line 1437
    .line 1438
    .line 1439
    .line 1440
    .line 1441
    .line 1442
    .line 1443
    .line 1444
    .line 1445
    :array_12
    .array-data 4
        0x2
        0x2
        0x3
        0x2
        0x1
        0x1
    .end array-data

    .line 1446
    .line 1447
    .line 1448
    .line 1449
    .line 1450
    .line 1451
    .line 1452
    .line 1453
    .line 1454
    .line 1455
    .line 1456
    .line 1457
    .line 1458
    .line 1459
    .line 1460
    .line 1461
    :array_13
    .array-data 4
        0x2
        0x2
        0x1
        0x1
        0x3
        0x2
    .end array-data

    .line 1462
    .line 1463
    .line 1464
    .line 1465
    .line 1466
    .line 1467
    .line 1468
    .line 1469
    .line 1470
    .line 1471
    .line 1472
    .line 1473
    .line 1474
    .line 1475
    .line 1476
    .line 1477
    :array_14
    .array-data 4
        0x2
        0x2
        0x1
        0x2
        0x3
        0x1
    .end array-data

    .line 1478
    .line 1479
    .line 1480
    .line 1481
    .line 1482
    .line 1483
    .line 1484
    .line 1485
    .line 1486
    .line 1487
    .line 1488
    .line 1489
    .line 1490
    .line 1491
    .line 1492
    .line 1493
    :array_15
    .array-data 4
        0x2
        0x1
        0x3
        0x2
        0x1
        0x2
    .end array-data

    .line 1494
    .line 1495
    .line 1496
    .line 1497
    .line 1498
    .line 1499
    .line 1500
    .line 1501
    .line 1502
    .line 1503
    .line 1504
    .line 1505
    .line 1506
    .line 1507
    .line 1508
    .line 1509
    :array_16
    .array-data 4
        0x2
        0x2
        0x3
        0x1
        0x1
        0x2
    .end array-data

    .line 1510
    .line 1511
    .line 1512
    .line 1513
    .line 1514
    .line 1515
    .line 1516
    .line 1517
    .line 1518
    .line 1519
    .line 1520
    .line 1521
    .line 1522
    .line 1523
    .line 1524
    .line 1525
    :array_17
    .array-data 4
        0x3
        0x1
        0x2
        0x1
        0x3
        0x1
    .end array-data

    .line 1526
    .line 1527
    .line 1528
    .line 1529
    .line 1530
    .line 1531
    .line 1532
    .line 1533
    .line 1534
    .line 1535
    .line 1536
    .line 1537
    .line 1538
    .line 1539
    .line 1540
    .line 1541
    :array_18
    .array-data 4
        0x3
        0x1
        0x1
        0x2
        0x2
        0x2
    .end array-data

    .line 1542
    .line 1543
    .line 1544
    .line 1545
    .line 1546
    .line 1547
    .line 1548
    .line 1549
    .line 1550
    .line 1551
    .line 1552
    .line 1553
    .line 1554
    .line 1555
    .line 1556
    .line 1557
    :array_19
    .array-data 4
        0x3
        0x2
        0x1
        0x1
        0x2
        0x2
    .end array-data

    .line 1558
    .line 1559
    .line 1560
    .line 1561
    .line 1562
    .line 1563
    .line 1564
    .line 1565
    .line 1566
    .line 1567
    .line 1568
    .line 1569
    .line 1570
    .line 1571
    .line 1572
    .line 1573
    :array_1a
    .array-data 4
        0x3
        0x2
        0x1
        0x2
        0x2
        0x1
    .end array-data

    .line 1574
    .line 1575
    .line 1576
    .line 1577
    .line 1578
    .line 1579
    .line 1580
    .line 1581
    .line 1582
    .line 1583
    .line 1584
    .line 1585
    .line 1586
    .line 1587
    .line 1588
    .line 1589
    :array_1b
    .array-data 4
        0x3
        0x1
        0x2
        0x2
        0x1
        0x2
    .end array-data

    .line 1590
    .line 1591
    .line 1592
    .line 1593
    .line 1594
    .line 1595
    .line 1596
    .line 1597
    .line 1598
    .line 1599
    .line 1600
    .line 1601
    .line 1602
    .line 1603
    .line 1604
    .line 1605
    :array_1c
    .array-data 4
        0x3
        0x2
        0x2
        0x1
        0x1
        0x2
    .end array-data

    .line 1606
    .line 1607
    .line 1608
    .line 1609
    .line 1610
    .line 1611
    .line 1612
    .line 1613
    .line 1614
    .line 1615
    .line 1616
    .line 1617
    .line 1618
    .line 1619
    .line 1620
    .line 1621
    :array_1d
    .array-data 4
        0x3
        0x2
        0x2
        0x2
        0x1
        0x1
    .end array-data

    .line 1622
    .line 1623
    .line 1624
    .line 1625
    .line 1626
    .line 1627
    .line 1628
    .line 1629
    .line 1630
    .line 1631
    .line 1632
    .line 1633
    .line 1634
    .line 1635
    .line 1636
    .line 1637
    :array_1e
    .array-data 4
        0x2
        0x1
        0x2
        0x1
        0x2
        0x3
    .end array-data

    .line 1638
    .line 1639
    .line 1640
    .line 1641
    .line 1642
    .line 1643
    .line 1644
    .line 1645
    .line 1646
    .line 1647
    .line 1648
    .line 1649
    .line 1650
    .line 1651
    .line 1652
    .line 1653
    :array_1f
    .array-data 4
        0x2
        0x1
        0x2
        0x3
        0x2
        0x1
    .end array-data

    .line 1654
    .line 1655
    .line 1656
    .line 1657
    .line 1658
    .line 1659
    .line 1660
    .line 1661
    .line 1662
    .line 1663
    .line 1664
    .line 1665
    .line 1666
    .line 1667
    .line 1668
    .line 1669
    :array_20
    .array-data 4
        0x2
        0x3
        0x2
        0x1
        0x2
        0x1
    .end array-data

    .line 1670
    .line 1671
    .line 1672
    .line 1673
    .line 1674
    .line 1675
    .line 1676
    .line 1677
    .line 1678
    .line 1679
    .line 1680
    .line 1681
    .line 1682
    .line 1683
    .line 1684
    .line 1685
    :array_21
    .array-data 4
        0x1
        0x1
        0x1
        0x3
        0x2
        0x3
    .end array-data

    .line 1686
    .line 1687
    .line 1688
    .line 1689
    .line 1690
    .line 1691
    .line 1692
    .line 1693
    .line 1694
    .line 1695
    .line 1696
    .line 1697
    .line 1698
    .line 1699
    .line 1700
    .line 1701
    :array_22
    .array-data 4
        0x1
        0x3
        0x1
        0x1
        0x2
        0x3
    .end array-data

    .line 1702
    .line 1703
    .line 1704
    .line 1705
    .line 1706
    .line 1707
    .line 1708
    .line 1709
    .line 1710
    .line 1711
    .line 1712
    .line 1713
    .line 1714
    .line 1715
    .line 1716
    .line 1717
    :array_23
    .array-data 4
        0x1
        0x3
        0x1
        0x3
        0x2
        0x1
    .end array-data

    .line 1718
    .line 1719
    .line 1720
    .line 1721
    .line 1722
    .line 1723
    .line 1724
    .line 1725
    .line 1726
    .line 1727
    .line 1728
    .line 1729
    .line 1730
    .line 1731
    .line 1732
    .line 1733
    :array_24
    .array-data 4
        0x1
        0x1
        0x2
        0x3
        0x1
        0x3
    .end array-data

    .line 1734
    .line 1735
    .line 1736
    .line 1737
    .line 1738
    .line 1739
    .line 1740
    .line 1741
    .line 1742
    .line 1743
    .line 1744
    .line 1745
    .line 1746
    .line 1747
    .line 1748
    .line 1749
    :array_25
    .array-data 4
        0x1
        0x3
        0x2
        0x1
        0x1
        0x3
    .end array-data

    .line 1750
    .line 1751
    .line 1752
    .line 1753
    .line 1754
    .line 1755
    .line 1756
    .line 1757
    .line 1758
    .line 1759
    .line 1760
    .line 1761
    .line 1762
    .line 1763
    .line 1764
    .line 1765
    :array_26
    .array-data 4
        0x1
        0x3
        0x2
        0x3
        0x1
        0x1
    .end array-data

    .line 1766
    .line 1767
    .line 1768
    .line 1769
    .line 1770
    .line 1771
    .line 1772
    .line 1773
    .line 1774
    .line 1775
    .line 1776
    .line 1777
    .line 1778
    .line 1779
    .line 1780
    .line 1781
    :array_27
    .array-data 4
        0x2
        0x1
        0x1
        0x3
        0x1
        0x3
    .end array-data

    .line 1782
    .line 1783
    .line 1784
    .line 1785
    .line 1786
    .line 1787
    .line 1788
    .line 1789
    .line 1790
    :array_28
    .array-data 4
        0x2
        0x3
        0x1
        0x1
        0x1
        0x3
    .end array-data

    :array_29
    .array-data 4
        0x2
        0x3
        0x1
        0x3
        0x1
        0x1
    .end array-data

    :array_2a
    .array-data 4
        0x1
        0x1
        0x2
        0x1
        0x3
        0x3
    .end array-data

    :array_2b
    .array-data 4
        0x1
        0x1
        0x2
        0x3
        0x3
        0x1
    .end array-data

    :array_2c
    .array-data 4
        0x1
        0x3
        0x2
        0x1
        0x3
        0x1
    .end array-data

    :array_2d
    .array-data 4
        0x1
        0x1
        0x3
        0x1
        0x2
        0x3
    .end array-data

    :array_2e
    .array-data 4
        0x1
        0x1
        0x3
        0x3
        0x2
        0x1
    .end array-data

    :array_2f
    .array-data 4
        0x1
        0x3
        0x3
        0x1
        0x2
        0x1
    .end array-data

    :array_30
    .array-data 4
        0x3
        0x1
        0x3
        0x1
        0x2
        0x1
    .end array-data

    :array_31
    .array-data 4
        0x2
        0x1
        0x1
        0x3
        0x3
        0x1
    .end array-data

    :array_32
    .array-data 4
        0x2
        0x3
        0x1
        0x1
        0x3
        0x1
    .end array-data

    :array_33
    .array-data 4
        0x2
        0x1
        0x3
        0x1
        0x1
        0x3
    .end array-data

    :array_34
    .array-data 4
        0x2
        0x1
        0x3
        0x3
        0x1
        0x1
    .end array-data

    :array_35
    .array-data 4
        0x2
        0x1
        0x3
        0x1
        0x3
        0x1
    .end array-data

    :array_36
    .array-data 4
        0x3
        0x1
        0x1
        0x1
        0x2
        0x3
    .end array-data

    :array_37
    .array-data 4
        0x3
        0x1
        0x1
        0x3
        0x2
        0x1
    .end array-data

    :array_38
    .array-data 4
        0x3
        0x3
        0x1
        0x1
        0x2
        0x1
    .end array-data

    :array_39
    .array-data 4
        0x3
        0x1
        0x2
        0x1
        0x1
        0x3
    .end array-data

    :array_3a
    .array-data 4
        0x3
        0x1
        0x2
        0x3
        0x1
        0x1
    .end array-data

    :array_3b
    .array-data 4
        0x3
        0x3
        0x2
        0x1
        0x1
        0x1
    .end array-data

    :array_3c
    .array-data 4
        0x3
        0x1
        0x4
        0x1
        0x1
        0x1
    .end array-data

    :array_3d
    .array-data 4
        0x2
        0x2
        0x1
        0x4
        0x1
        0x1
    .end array-data

    :array_3e
    .array-data 4
        0x4
        0x3
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_3f
    .array-data 4
        0x1
        0x1
        0x1
        0x2
        0x2
        0x4
    .end array-data

    :array_40
    .array-data 4
        0x1
        0x1
        0x1
        0x4
        0x2
        0x2
    .end array-data

    :array_41
    .array-data 4
        0x1
        0x2
        0x1
        0x1
        0x2
        0x4
    .end array-data

    :array_42
    .array-data 4
        0x1
        0x2
        0x1
        0x4
        0x2
        0x1
    .end array-data

    :array_43
    .array-data 4
        0x1
        0x4
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_44
    .array-data 4
        0x1
        0x4
        0x1
        0x2
        0x2
        0x1
    .end array-data

    :array_45
    .array-data 4
        0x1
        0x1
        0x2
        0x2
        0x1
        0x4
    .end array-data

    :array_46
    .array-data 4
        0x1
        0x1
        0x2
        0x4
        0x1
        0x2
    .end array-data

    :array_47
    .array-data 4
        0x1
        0x2
        0x2
        0x1
        0x1
        0x4
    .end array-data

    :array_48
    .array-data 4
        0x1
        0x2
        0x2
        0x4
        0x1
        0x1
    .end array-data

    :array_49
    .array-data 4
        0x1
        0x4
        0x2
        0x1
        0x1
        0x2
    .end array-data

    :array_4a
    .array-data 4
        0x1
        0x4
        0x2
        0x2
        0x1
        0x1
    .end array-data

    :array_4b
    .array-data 4
        0x2
        0x4
        0x1
        0x2
        0x1
        0x1
    .end array-data

    :array_4c
    .array-data 4
        0x2
        0x2
        0x1
        0x1
        0x1
        0x4
    .end array-data

    :array_4d
    .array-data 4
        0x4
        0x1
        0x3
        0x1
        0x1
        0x1
    .end array-data

    :array_4e
    .array-data 4
        0x2
        0x4
        0x1
        0x1
        0x1
        0x2
    .end array-data

    :array_4f
    .array-data 4
        0x1
        0x3
        0x4
        0x1
        0x1
        0x1
    .end array-data

    :array_50
    .array-data 4
        0x1
        0x1
        0x1
        0x2
        0x4
        0x2
    .end array-data

    :array_51
    .array-data 4
        0x1
        0x2
        0x1
        0x1
        0x4
        0x2
    .end array-data

    :array_52
    .array-data 4
        0x1
        0x2
        0x1
        0x2
        0x4
        0x1
    .end array-data

    :array_53
    .array-data 4
        0x1
        0x1
        0x4
        0x2
        0x1
        0x2
    .end array-data

    :array_54
    .array-data 4
        0x1
        0x2
        0x4
        0x1
        0x1
        0x2
    .end array-data

    :array_55
    .array-data 4
        0x1
        0x2
        0x4
        0x2
        0x1
        0x1
    .end array-data

    :array_56
    .array-data 4
        0x4
        0x1
        0x1
        0x2
        0x1
        0x2
    .end array-data

    :array_57
    .array-data 4
        0x4
        0x2
        0x1
        0x1
        0x1
        0x2
    .end array-data

    :array_58
    .array-data 4
        0x4
        0x2
        0x1
        0x2
        0x1
        0x1
    .end array-data

    :array_59
    .array-data 4
        0x2
        0x1
        0x2
        0x1
        0x4
        0x1
    .end array-data

    :array_5a
    .array-data 4
        0x2
        0x1
        0x4
        0x1
        0x2
        0x1
    .end array-data

    :array_5b
    .array-data 4
        0x4
        0x1
        0x2
        0x1
        0x2
        0x1
    .end array-data

    :array_5c
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x4
        0x3
    .end array-data

    :array_5d
    .array-data 4
        0x1
        0x1
        0x1
        0x3
        0x4
        0x1
    .end array-data

    :array_5e
    .array-data 4
        0x1
        0x3
        0x1
        0x1
        0x4
        0x1
    .end array-data

    :array_5f
    .array-data 4
        0x1
        0x1
        0x4
        0x1
        0x1
        0x3
    .end array-data

    :array_60
    .array-data 4
        0x1
        0x1
        0x4
        0x3
        0x1
        0x1
    .end array-data

    :array_61
    .array-data 4
        0x4
        0x1
        0x1
        0x1
        0x1
        0x3
    .end array-data

    :array_62
    .array-data 4
        0x4
        0x1
        0x1
        0x3
        0x1
        0x1
    .end array-data

    :array_63
    .array-data 4
        0x1
        0x1
        0x3
        0x1
        0x4
        0x1
    .end array-data

    :array_64
    .array-data 4
        0x1
        0x1
        0x4
        0x1
        0x3
        0x1
    .end array-data

    :array_65
    .array-data 4
        0x3
        0x1
        0x1
        0x1
        0x4
        0x1
    .end array-data

    :array_66
    .array-data 4
        0x4
        0x1
        0x1
        0x1
        0x3
        0x1
    .end array-data

    :array_67
    .array-data 4
        0x2
        0x1
        0x1
        0x4
        0x1
        0x2
    .end array-data

    :array_68
    .array-data 4
        0x2
        0x1
        0x1
        0x2
        0x1
        0x4
    .end array-data

    :array_69
    .array-data 4
        0x2
        0x1
        0x1
        0x2
        0x3
        0x2
    .end array-data

    :array_6a
    .array-data 4
        0x2
        0x3
        0x3
        0x1
        0x1
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static decodeCode(Lcom/google/zxing/common/BitArray;[II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p2, p1}, Lcom/google/zxing/oned/OneDReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 2
    .line 3
    .line 4
    const/high16 p0, 0x3e800000    # 0.25f

    .line 5
    .line 6
    const/4 p2, -0x1

    .line 7
    const/4 v0, 0x0

    .line 8
    :goto_0
    sget-object v1, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    .line 9
    .line 10
    array-length v2, v1

    .line 11
    if-ge v0, v2, :cond_1

    .line 12
    .line 13
    aget-object v1, v1, v0

    .line 14
    .line 15
    const v2, 0x3f333333    # 0.7f

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v1, v2}, Lcom/google/zxing/oned/OneDReader;->patternMatchVariance([I[IF)F

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    cmpg-float v2, v1, p0

    .line 23
    .line 24
    if-gez v2, :cond_0

    .line 25
    .line 26
    move p2, v0

    .line 27
    move p0, v1

    .line 28
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    if-ltz p2, :cond_2

    .line 32
    .line 33
    return p2

    .line 34
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    throw p0
.end method

.method private static findStartPattern(Lcom/google/zxing/common/BitArray;)[I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const/4 v3, 0x6

    .line 11
    new-array v3, v3, [I

    .line 12
    .line 13
    move v5, v1

    .line 14
    move v6, v5

    .line 15
    move v4, v2

    .line 16
    :goto_0
    if-ge v2, v0, :cond_5

    .line 17
    .line 18
    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    .line 19
    .line 20
    .line 21
    move-result v7

    .line 22
    const/4 v8, 0x1

    .line 23
    if-eq v7, v5, :cond_0

    .line 24
    .line 25
    aget v7, v3, v6

    .line 26
    .line 27
    add-int/2addr v7, v8

    .line 28
    aput v7, v3, v6

    .line 29
    .line 30
    goto :goto_3

    .line 31
    :cond_0
    const/4 v7, 0x5

    .line 32
    if-ne v6, v7, :cond_4

    .line 33
    .line 34
    const/4 v7, -0x1

    .line 35
    const/high16 v9, 0x3e800000    # 0.25f

    .line 36
    .line 37
    const/16 v10, 0x67

    .line 38
    .line 39
    :goto_1
    const/16 v11, 0x69

    .line 40
    .line 41
    if-gt v10, v11, :cond_2

    .line 42
    .line 43
    sget-object v11, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    .line 44
    .line 45
    aget-object v11, v11, v10

    .line 46
    .line 47
    const v12, 0x3f333333    # 0.7f

    .line 48
    .line 49
    .line 50
    invoke-static {v3, v11, v12}, Lcom/google/zxing/oned/OneDReader;->patternMatchVariance([I[IF)F

    .line 51
    .line 52
    .line 53
    move-result v11

    .line 54
    cmpg-float v12, v11, v9

    .line 55
    .line 56
    if-gez v12, :cond_1

    .line 57
    .line 58
    move v7, v10

    .line 59
    move v9, v11

    .line 60
    :cond_1
    add-int/lit8 v10, v10, 0x1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    const/4 v9, 0x2

    .line 64
    if-ltz v7, :cond_3

    .line 65
    .line 66
    sub-int v10, v2, v4

    .line 67
    .line 68
    div-int/2addr v10, v9

    .line 69
    sub-int v10, v4, v10

    .line 70
    .line 71
    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    .line 72
    .line 73
    .line 74
    move-result v10

    .line 75
    invoke-virtual {p0, v10, v4, v1}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z

    .line 76
    .line 77
    .line 78
    move-result v10

    .line 79
    if-eqz v10, :cond_3

    .line 80
    .line 81
    filled-new-array {v4, v2, v7}, [I

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    return-object p0

    .line 86
    :cond_3
    aget v7, v3, v1

    .line 87
    .line 88
    aget v10, v3, v8

    .line 89
    .line 90
    add-int/2addr v7, v10

    .line 91
    add-int/2addr v4, v7

    .line 92
    add-int/lit8 v7, v6, -0x1

    .line 93
    .line 94
    invoke-static {v3, v9, v3, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    .line 96
    .line 97
    aput v1, v3, v7

    .line 98
    .line 99
    aput v1, v3, v6

    .line 100
    .line 101
    add-int/lit8 v6, v6, -0x1

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 105
    .line 106
    :goto_2
    aput v8, v3, v6

    .line 107
    .line 108
    xor-int/lit8 v5, v5, 0x1

    .line 109
    .line 110
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_5
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    throw p0
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    const/16 v2, 0x40

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    const/4 v4, 0x1

    .line 9
    const/4 v5, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    sget-object v6, Lcom/google/zxing/DecodeHintType;->ASSUME_GS1:Lcom/google/zxing/DecodeHintType;

    .line 13
    .line 14
    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    move v1, v4

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v1, v5

    .line 23
    :goto_0
    invoke-static {v0}, Lcom/google/zxing/oned/Code128Reader;->findStartPattern(Lcom/google/zxing/common/BitArray;)[I

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    aget v7, v6, v3

    .line 28
    .line 29
    new-instance v8, Ljava/util/ArrayList;

    .line 30
    .line 31
    const/16 v9, 0x14

    .line 32
    .line 33
    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    .line 35
    .line 36
    int-to-byte v10, v7

    .line 37
    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 38
    .line 39
    .line 40
    move-result-object v10

    .line 41
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    packed-switch v7, :pswitch_data_0

    .line 45
    .line 46
    .line 47
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    throw v0

    .line 52
    :pswitch_0
    const/16 v13, 0x63

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :pswitch_1
    const/16 v13, 0x64

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :pswitch_2
    const/16 v13, 0x65

    .line 59
    .line 60
    :goto_1
    new-instance v14, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v14, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 63
    .line 64
    .line 65
    aget v9, v6, v5

    .line 66
    .line 67
    aget v15, v6, v4

    .line 68
    .line 69
    move/from16 v16, v4

    .line 70
    .line 71
    const/4 v4, 0x6

    .line 72
    move/from16 v17, v3

    .line 73
    .line 74
    new-array v3, v4, [I

    .line 75
    .line 76
    move v10, v13

    .line 77
    move v13, v9

    .line 78
    move v9, v15

    .line 79
    move v15, v10

    .line 80
    move v10, v5

    .line 81
    move v11, v10

    .line 82
    move/from16 v18, v11

    .line 83
    .line 84
    move/from16 v19, v18

    .line 85
    .line 86
    move/from16 v20, v19

    .line 87
    .line 88
    move/from16 v21, v20

    .line 89
    .line 90
    move/from16 v22, v16

    .line 91
    .line 92
    :goto_2
    if-nez v18, :cond_1b

    .line 93
    .line 94
    invoke-static {v0, v3, v9}, Lcom/google/zxing/oned/Code128Reader;->decodeCode(Lcom/google/zxing/common/BitArray;[II)I

    .line 95
    .line 96
    .line 97
    move-result v10

    .line 98
    int-to-byte v13, v10

    .line 99
    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 100
    .line 101
    .line 102
    move-result-object v13

    .line 103
    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    const/16 v13, 0x6a

    .line 107
    .line 108
    if-eq v10, v13, :cond_1

    .line 109
    .line 110
    move/from16 v22, v16

    .line 111
    .line 112
    :cond_1
    if-eq v10, v13, :cond_2

    .line 113
    .line 114
    add-int/lit8 v21, v21, 0x1

    .line 115
    .line 116
    mul-int v24, v21, v10

    .line 117
    .line 118
    add-int v7, v7, v24

    .line 119
    .line 120
    :cond_2
    move/from16 v25, v9

    .line 121
    .line 122
    const/4 v12, 0x0

    .line 123
    :goto_3
    if-ge v12, v4, :cond_3

    .line 124
    .line 125
    aget v26, v3, v12

    .line 126
    .line 127
    add-int v25, v25, v26

    .line 128
    .line 129
    add-int/lit8 v12, v12, 0x1

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_3
    packed-switch v10, :pswitch_data_1

    .line 133
    .line 134
    .line 135
    const/16 v12, 0x60

    .line 136
    .line 137
    const-string v4, "]C1"

    .line 138
    .line 139
    packed-switch v15, :pswitch_data_2

    .line 140
    .line 141
    .line 142
    const/16 v12, 0x64

    .line 143
    .line 144
    goto/16 :goto_c

    .line 145
    .line 146
    :pswitch_3
    if-ge v10, v2, :cond_5

    .line 147
    .line 148
    if-ne v5, v11, :cond_4

    .line 149
    .line 150
    add-int/lit8 v4, v10, 0x20

    .line 151
    .line 152
    int-to-char v4, v4

    .line 153
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    goto :goto_4

    .line 157
    :cond_4
    add-int/lit16 v4, v10, 0xa0

    .line 158
    .line 159
    int-to-char v4, v4

    .line 160
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    :goto_4
    const/4 v4, 0x0

    .line 164
    const/4 v5, 0x0

    .line 165
    :goto_5
    const/16 v12, 0x64

    .line 166
    .line 167
    goto/16 :goto_d

    .line 168
    .line 169
    :cond_5
    if-ge v10, v12, :cond_7

    .line 170
    .line 171
    if-ne v5, v11, :cond_6

    .line 172
    .line 173
    add-int/lit8 v4, v10, -0x40

    .line 174
    .line 175
    int-to-char v4, v4

    .line 176
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_6
    add-int/lit8 v4, v10, 0x40

    .line 181
    .line 182
    int-to-char v4, v4

    .line 183
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    goto :goto_4

    .line 187
    :cond_7
    if-eq v10, v13, :cond_8

    .line 188
    .line 189
    const/16 v22, 0x0

    .line 190
    .line 191
    :cond_8
    if-eq v10, v13, :cond_d

    .line 192
    .line 193
    packed-switch v10, :pswitch_data_3

    .line 194
    .line 195
    .line 196
    goto :goto_8

    .line 197
    :pswitch_4
    if-eqz v1, :cond_c

    .line 198
    .line 199
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    .line 200
    .line 201
    .line 202
    move-result v12

    .line 203
    if-nez v12, :cond_9

    .line 204
    .line 205
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    goto :goto_8

    .line 209
    :cond_9
    const/16 v4, 0x1d

    .line 210
    .line 211
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    goto :goto_8

    .line 215
    :pswitch_5
    if-nez v11, :cond_a

    .line 216
    .line 217
    if-eqz v5, :cond_a

    .line 218
    .line 219
    :goto_6
    move/from16 v11, v16

    .line 220
    .line 221
    goto :goto_4

    .line 222
    :cond_a
    if-eqz v11, :cond_b

    .line 223
    .line 224
    if-eqz v5, :cond_b

    .line 225
    .line 226
    :goto_7
    const/4 v4, 0x0

    .line 227
    const/4 v5, 0x0

    .line 228
    const/4 v11, 0x0

    .line 229
    goto :goto_5

    .line 230
    :cond_b
    move/from16 v5, v16

    .line 231
    .line 232
    :cond_c
    :goto_8
    :pswitch_6
    const/4 v4, 0x0

    .line 233
    goto :goto_5

    .line 234
    :pswitch_7
    const/4 v4, 0x0

    .line 235
    :goto_9
    const/16 v12, 0x64

    .line 236
    .line 237
    const/16 v15, 0x64

    .line 238
    .line 239
    goto/16 :goto_d

    .line 240
    .line 241
    :pswitch_8
    const/4 v4, 0x0

    .line 242
    const/16 v12, 0x64

    .line 243
    .line 244
    const/16 v15, 0x63

    .line 245
    .line 246
    goto/16 :goto_d

    .line 247
    .line 248
    :pswitch_9
    move/from16 v4, v16

    .line 249
    .line 250
    goto :goto_9

    .line 251
    :cond_d
    move/from16 v18, v16

    .line 252
    .line 253
    goto :goto_8

    .line 254
    :pswitch_a
    if-ge v10, v12, :cond_f

    .line 255
    .line 256
    if-ne v5, v11, :cond_e

    .line 257
    .line 258
    add-int/lit8 v4, v10, 0x20

    .line 259
    .line 260
    int-to-char v4, v4

    .line 261
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    goto :goto_4

    .line 265
    :cond_e
    add-int/lit16 v4, v10, 0xa0

    .line 266
    .line 267
    int-to-char v4, v4

    .line 268
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    goto :goto_4

    .line 272
    :cond_f
    if-eq v10, v13, :cond_10

    .line 273
    .line 274
    const/16 v22, 0x0

    .line 275
    .line 276
    :cond_10
    if-eq v10, v13, :cond_d

    .line 277
    .line 278
    packed-switch v10, :pswitch_data_4

    .line 279
    .line 280
    .line 281
    goto :goto_8

    .line 282
    :pswitch_b
    if-eqz v1, :cond_c

    .line 283
    .line 284
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    .line 285
    .line 286
    .line 287
    move-result v12

    .line 288
    if-nez v12, :cond_11

    .line 289
    .line 290
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    goto :goto_8

    .line 294
    :cond_11
    const/16 v4, 0x1d

    .line 295
    .line 296
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    goto :goto_8

    .line 300
    :pswitch_c
    const/4 v4, 0x0

    .line 301
    :goto_a
    const/16 v12, 0x64

    .line 302
    .line 303
    :goto_b
    const/16 v15, 0x65

    .line 304
    .line 305
    goto :goto_d

    .line 306
    :pswitch_d
    if-nez v11, :cond_12

    .line 307
    .line 308
    if-eqz v5, :cond_12

    .line 309
    .line 310
    goto :goto_6

    .line 311
    :cond_12
    if-eqz v11, :cond_b

    .line 312
    .line 313
    if-eqz v5, :cond_b

    .line 314
    .line 315
    goto :goto_7

    .line 316
    :pswitch_e
    move/from16 v4, v16

    .line 317
    .line 318
    goto :goto_a

    .line 319
    :pswitch_f
    const/16 v12, 0x64

    .line 320
    .line 321
    if-ge v10, v12, :cond_15

    .line 322
    .line 323
    const/16 v4, 0xa

    .line 324
    .line 325
    if-ge v10, v4, :cond_13

    .line 326
    .line 327
    const/16 v4, 0x30

    .line 328
    .line 329
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    :cond_13
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    :cond_14
    :goto_c
    const/4 v4, 0x0

    .line 336
    goto :goto_d

    .line 337
    :cond_15
    if-eq v10, v13, :cond_16

    .line 338
    .line 339
    const/16 v22, 0x0

    .line 340
    .line 341
    :cond_16
    if-eq v10, v13, :cond_18

    .line 342
    .line 343
    packed-switch v10, :pswitch_data_5

    .line 344
    .line 345
    .line 346
    goto :goto_c

    .line 347
    :pswitch_10
    if-eqz v1, :cond_14

    .line 348
    .line 349
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    .line 350
    .line 351
    .line 352
    move-result v13

    .line 353
    if-nez v13, :cond_17

    .line 354
    .line 355
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    goto :goto_c

    .line 359
    :cond_17
    const/16 v4, 0x1d

    .line 360
    .line 361
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    goto :goto_c

    .line 365
    :pswitch_11
    const/4 v4, 0x0

    .line 366
    goto :goto_b

    .line 367
    :pswitch_12
    move v15, v12

    .line 368
    goto :goto_c

    .line 369
    :cond_18
    move/from16 v18, v16

    .line 370
    .line 371
    goto :goto_c

    .line 372
    :goto_d
    const/16 v13, 0x65

    .line 373
    .line 374
    if-eqz v19, :cond_1a

    .line 375
    .line 376
    if-ne v15, v13, :cond_19

    .line 377
    .line 378
    move v15, v12

    .line 379
    goto :goto_e

    .line 380
    :cond_19
    move v15, v13

    .line 381
    :cond_1a
    :goto_e
    move/from16 v13, v20

    .line 382
    .line 383
    move/from16 v20, v10

    .line 384
    .line 385
    move v10, v13

    .line 386
    move/from16 v19, v4

    .line 387
    .line 388
    move v13, v9

    .line 389
    move/from16 v9, v25

    .line 390
    .line 391
    const/4 v4, 0x6

    .line 392
    goto/16 :goto_2

    .line 393
    .line 394
    :pswitch_13
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    throw v0

    .line 399
    :cond_1b
    sub-int v1, v9, v13

    .line 400
    .line 401
    invoke-virtual {v0, v9}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    .line 402
    .line 403
    .line 404
    move-result v2

    .line 405
    invoke-virtual {v0}, Lcom/google/zxing/common/BitArray;->getSize()I

    .line 406
    .line 407
    .line 408
    move-result v3

    .line 409
    sub-int v4, v2, v13

    .line 410
    .line 411
    div-int/lit8 v4, v4, 0x2

    .line 412
    .line 413
    add-int/2addr v4, v2

    .line 414
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 415
    .line 416
    .line 417
    move-result v3

    .line 418
    const/4 v4, 0x0

    .line 419
    invoke-virtual {v0, v2, v3, v4}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z

    .line 420
    .line 421
    .line 422
    move-result v0

    .line 423
    if-eqz v0, :cond_21

    .line 424
    .line 425
    mul-int v21, v21, v10

    .line 426
    .line 427
    sub-int v7, v7, v21

    .line 428
    .line 429
    rem-int/lit8 v7, v7, 0x67

    .line 430
    .line 431
    if-ne v7, v10, :cond_20

    .line 432
    .line 433
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    .line 434
    .line 435
    .line 436
    move-result v0

    .line 437
    if-eqz v0, :cond_1f

    .line 438
    .line 439
    if-lez v0, :cond_1d

    .line 440
    .line 441
    if-eqz v22, :cond_1d

    .line 442
    .line 443
    const/16 v2, 0x63

    .line 444
    .line 445
    if-ne v15, v2, :cond_1c

    .line 446
    .line 447
    add-int/lit8 v2, v0, -0x2

    .line 448
    .line 449
    invoke-virtual {v14, v2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    goto :goto_f

    .line 453
    :cond_1c
    add-int/lit8 v2, v0, -0x1

    .line 454
    .line 455
    invoke-virtual {v14, v2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    :cond_1d
    :goto_f
    aget v0, v6, v16

    .line 459
    .line 460
    const/16 v23, 0x0

    .line 461
    .line 462
    aget v2, v6, v23

    .line 463
    .line 464
    add-int/2addr v0, v2

    .line 465
    int-to-float v0, v0

    .line 466
    const/high16 v2, 0x40000000    # 2.0f

    .line 467
    .line 468
    div-float/2addr v0, v2

    .line 469
    int-to-float v3, v13

    .line 470
    int-to-float v1, v1

    .line 471
    div-float/2addr v1, v2

    .line 472
    add-float/2addr v3, v1

    .line 473
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 474
    .line 475
    .line 476
    move-result v1

    .line 477
    new-array v2, v1, [B

    .line 478
    .line 479
    const/4 v4, 0x0

    .line 480
    :goto_10
    if-ge v4, v1, :cond_1e

    .line 481
    .line 482
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    move-result-object v5

    .line 486
    check-cast v5, Ljava/lang/Byte;

    .line 487
    .line 488
    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    .line 489
    .line 490
    .line 491
    move-result v5

    .line 492
    aput-byte v5, v2, v4

    .line 493
    .line 494
    add-int/lit8 v4, v4, 0x1

    .line 495
    .line 496
    goto :goto_10

    .line 497
    :cond_1e
    new-instance v1, Lcom/google/zxing/Result;

    .line 498
    .line 499
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v4

    .line 503
    new-instance v5, Lcom/google/zxing/ResultPoint;

    .line 504
    .line 505
    move/from16 v6, p1

    .line 506
    .line 507
    int-to-float v6, v6

    .line 508
    invoke-direct {v5, v0, v6}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 509
    .line 510
    .line 511
    new-instance v0, Lcom/google/zxing/ResultPoint;

    .line 512
    .line 513
    invoke-direct {v0, v3, v6}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 514
    .line 515
    .line 516
    move/from16 v3, v17

    .line 517
    .line 518
    new-array v3, v3, [Lcom/google/zxing/ResultPoint;

    .line 519
    .line 520
    const/16 v23, 0x0

    .line 521
    .line 522
    aput-object v5, v3, v23

    .line 523
    .line 524
    aput-object v0, v3, v16

    .line 525
    .line 526
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    .line 527
    .line 528
    invoke-direct {v1, v4, v2, v3, v0}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 529
    .line 530
    .line 531
    return-object v1

    .line 532
    :cond_1f
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 533
    .line 534
    .line 535
    move-result-object v0

    .line 536
    throw v0

    .line 537
    :cond_20
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    .line 538
    .line 539
    .line 540
    move-result-object v0

    .line 541
    throw v0

    .line 542
    :cond_21
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 543
    .line 544
    .line 545
    move-result-object v0

    .line 546
    throw v0

    .line 547
    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    :pswitch_data_1
    .packed-switch 0x67
        :pswitch_13
        :pswitch_13
        :pswitch_13
    .end packed-switch

    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    :pswitch_data_2
    .packed-switch 0x63
        :pswitch_f
        :pswitch_a
        :pswitch_3
    .end packed-switch

    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    :pswitch_data_3
    .packed-switch 0x60
        :pswitch_6
        :pswitch_6
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
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
    :pswitch_data_4
    .packed-switch 0x60
        :pswitch_6
        :pswitch_6
        :pswitch_e
        :pswitch_8
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

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
    :pswitch_data_5
    .packed-switch 0x64
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method
