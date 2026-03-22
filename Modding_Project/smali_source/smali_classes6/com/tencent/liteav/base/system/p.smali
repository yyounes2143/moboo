.class final Lcom/tencent/liteav/base/system/p;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v0, v0, [C

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/tencent/liteav/base/system/p;->a:[C

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 22

    .line 1
    const/4 v2, 0x0

    .line 2
    const-string v3, "/liteav/spuid"

    .line 3
    .line 4
    invoke-static {}, Lcom/tencent/liteav/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v4, ""

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-object v4

    .line 13
    :cond_0
    const/4 v5, 0x0

    .line 14
    invoke-virtual {v0, v5}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 15
    .line 16
    .line 17
    move-result-object v6

    .line 18
    const-string v7, "UUID"

    .line 19
    .line 20
    if-nez v6, :cond_1

    .line 21
    .line 22
    const-string v0, "getDeviceUuid: sdcardDir is null."

    .line 23
    .line 24
    new-array v1, v2, [Ljava/lang/Object;

    .line 25
    .line 26
    invoke-static {v7, v0, v1}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-object v4

    .line 30
    :cond_1
    new-instance v8, Lcom/tencent/liteav/base/storage/PersistStorage;

    .line 31
    .line 32
    const-string v0, "com.tencent.liteav.dev_uuid"

    .line 33
    .line 34
    invoke-direct {v8, v0}, Lcom/tencent/liteav/base/storage/PersistStorage;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string v9, "com.tencent.liteav.key_dev_uuid"

    .line 38
    .line 39
    invoke-virtual {v8, v9}, Lcom/tencent/liteav/base/storage/PersistStorage;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v10

    .line 43
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v11

    .line 52
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    new-instance v11, Ljava/io/File;

    .line 63
    .line 64
    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    new-instance v12, Ljava/io/FileInputStream;

    .line 74
    .line 75
    invoke-direct {v12, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 76
    .line 77
    .line 78
    :try_start_1
    invoke-virtual {v12}, Ljava/io/FileInputStream;->available()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-lez v0, :cond_2

    .line 83
    .line 84
    new-array v0, v0, [B

    .line 85
    .line 86
    invoke-virtual {v12, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 87
    .line 88
    .line 89
    new-instance v11, Ljava/lang/String;

    .line 90
    .line 91
    const-string v13, "UTF-8"

    .line 92
    .line 93
    invoke-direct {v11, v0, v13}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :catchall_0
    move-exception v0

    .line 98
    move-object v5, v12

    .line 99
    goto/16 :goto_d

    .line 100
    .line 101
    :catch_0
    move-exception v0

    .line 102
    goto :goto_1

    .line 103
    :cond_2
    move-object v11, v5

    .line 104
    goto :goto_0

    .line 105
    :catchall_1
    move-exception v0

    .line 106
    goto/16 :goto_d

    .line 107
    .line 108
    :catch_1
    move-exception v0

    .line 109
    move-object v12, v5

    .line 110
    goto :goto_1

    .line 111
    :cond_3
    move-object v11, v5

    .line 112
    move-object v12, v11

    .line 113
    :goto_0
    if-eqz v12, :cond_5

    .line 114
    .line 115
    :try_start_2
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :goto_1
    :try_start_3
    new-instance v11, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    const-string v13, "Read UUID from file failed."

    .line 122
    .line 123
    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    new-array v11, v2, [Ljava/lang/Object;

    .line 138
    .line 139
    invoke-static {v7, v0, v11}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 140
    .line 141
    .line 142
    if-eqz v12, :cond_4

    .line 143
    .line 144
    :try_start_4
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 145
    .line 146
    .line 147
    :catch_2
    :cond_4
    move-object v11, v5

    .line 148
    :catch_3
    :cond_5
    :goto_2
    if-eqz v10, :cond_6

    .line 149
    .line 150
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-lez v0, :cond_6

    .line 155
    .line 156
    move-object v0, v10

    .line 157
    goto :goto_3

    .line 158
    :cond_6
    if-eqz v11, :cond_7

    .line 159
    .line 160
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-lez v0, :cond_7

    .line 165
    .line 166
    move-object v0, v11

    .line 167
    goto :goto_3

    .line 168
    :cond_7
    move-object v0, v5

    .line 169
    :goto_3
    if-eqz v0, :cond_9

    .line 170
    .line 171
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 172
    .line 173
    .line 174
    move-result v12

    .line 175
    if-nez v12, :cond_8

    .line 176
    .line 177
    goto :goto_5

    .line 178
    :cond_8
    move/from16 v18, v2

    .line 179
    .line 180
    :goto_4
    move-object v1, v0

    .line 181
    goto/16 :goto_8

    .line 182
    .line 183
    :cond_9
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 184
    .line 185
    .line 186
    move-result-wide v12

    .line 187
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 188
    .line 189
    .line 190
    move-result-wide v14

    .line 191
    const/4 v0, 0x5

    .line 192
    :goto_6
    const-wide/16 v16, 0xff

    .line 193
    .line 194
    const-string v5, "%02x"

    .line 195
    .line 196
    if-ltz v0, :cond_a

    .line 197
    .line 198
    move/from16 v18, v2

    .line 199
    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    mul-int/lit8 v4, v0, 0x8

    .line 209
    .line 210
    shr-long v19, v12, v4

    .line 211
    .line 212
    move-object/from16 v21, v2

    .line 213
    .line 214
    and-long v1, v19, v16

    .line 215
    .line 216
    long-to-int v1, v1

    .line 217
    int-to-byte v1, v1

    .line 218
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    const/4 v2, 0x1

    .line 223
    new-array v4, v2, [Ljava/lang/Object;

    .line 224
    .line 225
    aput-object v1, v4, v18

    .line 226
    .line 227
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    move-object/from16 v2, v21

    .line 232
    .line 233
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v4

    .line 240
    add-int/lit8 v0, v0, -0x1

    .line 241
    .line 242
    move/from16 v2, v18

    .line 243
    .line 244
    const/4 v5, 0x0

    .line 245
    goto :goto_6

    .line 246
    :cond_a
    move/from16 v18, v2

    .line 247
    .line 248
    const/4 v0, 0x3

    .line 249
    :goto_7
    if-ltz v0, :cond_b

    .line 250
    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    .line 252
    .line 253
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    mul-int/lit8 v2, v0, 0x8

    .line 260
    .line 261
    shr-long v12, v14, v2

    .line 262
    .line 263
    and-long v12, v12, v16

    .line 264
    .line 265
    long-to-int v2, v12

    .line 266
    int-to-byte v2, v2

    .line 267
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    const/4 v12, 0x1

    .line 272
    new-array v4, v12, [Ljava/lang/Object;

    .line 273
    .line 274
    aput-object v2, v4, v18

    .line 275
    .line 276
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v4

    .line 287
    add-int/lit8 v0, v0, -0x1

    .line 288
    .line 289
    goto :goto_7

    .line 290
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    .line 291
    .line 292
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    .line 299
    .line 300
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    .line 302
    .line 303
    move-object/from16 v2, p0

    .line 304
    .line 305
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v2

    .line 316
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    invoke-static {v1}, Lcom/tencent/liteav/base/system/p;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    goto/16 :goto_4

    .line 335
    .line 336
    :goto_8
    if-eqz v11, :cond_c

    .line 337
    .line 338
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    move-result v0

    .line 342
    if-nez v0, :cond_f

    .line 343
    .line 344
    :cond_c
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 345
    .line 346
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v2

    .line 353
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    const-string v2, "/liteav"

    .line 357
    .line 358
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    new-instance v2, Ljava/io/File;

    .line 366
    .line 367
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 371
    .line 372
    .line 373
    move-result v0

    .line 374
    if-nez v0, :cond_d

    .line 375
    .line 376
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 377
    .line 378
    .line 379
    goto :goto_9

    .line 380
    :catchall_2
    move-exception v0

    .line 381
    const/4 v5, 0x0

    .line 382
    goto :goto_c

    .line 383
    :catch_4
    move-exception v0

    .line 384
    const/4 v5, 0x0

    .line 385
    goto :goto_a

    .line 386
    :cond_d
    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 387
    .line 388
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v2

    .line 395
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    new-instance v2, Ljava/io/File;

    .line 406
    .line 407
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 411
    .line 412
    .line 413
    move-result v0

    .line 414
    if-nez v0, :cond_e

    .line 415
    .line 416
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 417
    .line 418
    .line 419
    :cond_e
    new-instance v3, Ljava/io/FileOutputStream;

    .line 420
    .line 421
    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 422
    .line 423
    .line 424
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 429
    .line 430
    .line 431
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 432
    .line 433
    .line 434
    goto :goto_b

    .line 435
    :catchall_3
    move-exception v0

    .line 436
    move-object v5, v3

    .line 437
    goto :goto_c

    .line 438
    :catch_5
    move-exception v0

    .line 439
    move-object v5, v3

    .line 440
    :goto_a
    :try_start_8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 441
    .line 442
    const-string v3, "Write UUID to file failed."

    .line 443
    .line 444
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    .line 453
    .line 454
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v0

    .line 458
    move/from16 v2, v18

    .line 459
    .line 460
    new-array v2, v2, [Ljava/lang/Object;

    .line 461
    .line 462
    invoke-static {v7, v0, v2}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 463
    .line 464
    .line 465
    if-eqz v5, :cond_f

    .line 466
    .line 467
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 468
    .line 469
    .line 470
    :catch_6
    :cond_f
    :goto_b
    if-eqz v10, :cond_10

    .line 471
    .line 472
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 473
    .line 474
    .line 475
    move-result v0

    .line 476
    if-nez v0, :cond_11

    .line 477
    .line 478
    :cond_10
    invoke-virtual {v8, v9, v1}, Lcom/tencent/liteav/base/storage/PersistStorage;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    invoke-virtual {v8}, Lcom/tencent/liteav/base/storage/PersistStorage;->commit()V

    .line 482
    .line 483
    .line 484
    :cond_11
    return-object v1

    .line 485
    :catchall_4
    move-exception v0

    .line 486
    :goto_c
    if-eqz v5, :cond_12

    .line 487
    .line 488
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 489
    .line 490
    .line 491
    :catch_7
    :cond_12
    throw v0

    .line 492
    :goto_d
    if-eqz v5, :cond_13

    .line 493
    .line 494
    :try_start_b
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    .line 495
    .line 496
    .line 497
    :catch_8
    :cond_13
    throw v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    :try_start_0
    const-string v2, "MD5"

    .line 7
    .line 8
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-string v3, "UTF-8"

    .line 13
    .line 14
    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {v2, p0}, Ljava/security/MessageDigest;->digest([B)[B

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    array-length v2, p0

    .line 23
    shl-int/2addr v2, v1

    .line 24
    new-array v2, v2, [C

    .line 25
    .line 26
    move v3, v0

    .line 27
    move v4, v3

    .line 28
    :goto_0
    array-length v5, p0

    .line 29
    if-ge v3, v5, :cond_1

    .line 30
    .line 31
    add-int/lit8 v5, v4, 0x1

    .line 32
    .line 33
    sget-object v6, Lcom/tencent/liteav/base/system/p;->a:[C

    .line 34
    .line 35
    aget-byte v7, p0, v3

    .line 36
    .line 37
    and-int/lit16 v8, v7, 0xf0

    .line 38
    .line 39
    ushr-int/lit8 v8, v8, 0x4

    .line 40
    .line 41
    aget-char v8, v6, v8

    .line 42
    .line 43
    aput-char v8, v2, v4

    .line 44
    .line 45
    add-int/lit8 v4, v4, 0x2

    .line 46
    .line 47
    and-int/lit8 v7, v7, 0xf

    .line 48
    .line 49
    aget-char v6, v6, v7

    .line 50
    .line 51
    aput-char v6, v2, v5

    .line 52
    .line 53
    add-int/2addr v3, v1

    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception p0

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    new-instance p0, Ljava/lang/String;

    .line 58
    .line 59
    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    return-object p0

    .line 63
    :goto_1
    const-string v2, "stringToMd5 failed."

    .line 64
    .line 65
    new-array v1, v1, [Ljava/lang/Object;

    .line 66
    .line 67
    aput-object p0, v1, v0

    .line 68
    .line 69
    const-string p0, "UUID"

    .line 70
    .line 71
    invoke-static {p0, v2, v1}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    :goto_2
    const-string p0, ""

    .line 75
    .line 76
    return-object p0
.end method
