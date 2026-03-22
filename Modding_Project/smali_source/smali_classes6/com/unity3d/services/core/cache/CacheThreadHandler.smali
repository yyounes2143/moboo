.class Lcom/unity3d/services/core/cache/CacheThreadHandler;
.super Landroid/os/Handler;
.source "Proguard"


# instance fields
.field private _active:Z

.field private _canceled:Z

.field private _currentRequest:Lcom/unity3d/services/core/request/WebRequest;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_canceled:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_active:Z

    .line 11
    .line 12
    return-void
.end method

.method private downloadFile(Ljava/lang/String;Ljava/lang/String;IIILjava/util/HashMap;ZLcom/unity3d/services/core/cache/CacheEventSender;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;Z",
            "Lcom/unity3d/services/core/cache/CacheEventSender;",
            ")V"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v4, p1

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    move/from16 v2, p7

    .line 8
    .line 9
    move-object/from16 v13, p8

    .line 10
    .line 11
    const/4 v15, 0x2

    .line 12
    const/4 v3, 0x1

    .line 13
    const/4 v5, 0x0

    .line 14
    const-string v6, "Error closing stream"

    .line 15
    .line 16
    iget-boolean v7, v1, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_canceled:Z

    .line 17
    .line 18
    if-nez v7, :cond_4

    .line 19
    .line 20
    if-eqz v4, :cond_4

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    goto/16 :goto_11

    .line 25
    .line 26
    :cond_0
    new-instance v7, Ljava/io/File;

    .line 27
    .line 28
    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v8, " to "

    .line 32
    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    new-instance v9, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v10, "Unity Ads cache: resuming download "

    .line 41
    .line 42
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v0, " at "

    .line 55
    .line 56
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v7}, Ljava/io/File;->length()J

    .line 60
    .line 61
    .line 62
    move-result-wide v10

    .line 63
    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v0, " bytes"

    .line 67
    .line 68
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {v0}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v10, "Unity Ads cache: start downloading "

    .line 85
    .line 86
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-static {v0}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :goto_0
    invoke-static {}, Lcom/unity3d/services/core/device/Device;->isActiveNetworkConnected()Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-nez v0, :cond_2

    .line 110
    .line 111
    const-string v0, "Unity Ads cache: download cancelled, no internet connection available"

    .line 112
    .line 113
    invoke-static {v0}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    sget-object v0, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/services/core/cache/CacheEvent;

    .line 117
    .line 118
    new-array v2, v15, [Ljava/lang/Object;

    .line 119
    .line 120
    sget-object v6, Lcom/unity3d/services/core/cache/CacheError;->NO_INTERNET:Lcom/unity3d/services/core/cache/CacheError;

    .line 121
    .line 122
    aput-object v6, v2, v5

    .line 123
    .line 124
    aput-object v4, v2, v3

    .line 125
    .line 126
    invoke-virtual {v13, v0, v2}, Lcom/unity3d/services/core/cache/CacheEventSender;->sendEvent(Lcom/unity3d/services/core/cache/CacheEvent;[Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :cond_2
    iput-boolean v3, v1, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_active:Z

    .line 131
    .line 132
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 133
    .line 134
    .line 135
    move-result-wide v8

    .line 136
    const/4 v10, 0x0

    .line 137
    :try_start_0
    new-instance v11, Ljava/io/FileOutputStream;

    .line 138
    .line 139
    invoke-direct {v11, v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_12
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Lcom/unity3d/services/core/request/NetworkIOException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 140
    .line 141
    .line 142
    move/from16 v0, p3

    .line 143
    .line 144
    move/from16 v2, p4

    .line 145
    .line 146
    move-object/from16 v12, p6

    .line 147
    .line 148
    :try_start_1
    invoke-direct {v1, v4, v0, v2, v12}, Lcom/unity3d/services/core/cache/CacheThreadHandler;->getWebRequest(Ljava/lang/String;IILjava/util/HashMap;)Lcom/unity3d/services/core/request/WebRequest;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    iput-object v0, v1, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    .line 153
    .line 154
    new-instance v2, Lcom/unity3d/services/core/cache/CacheThreadHandler$1;

    .line 155
    .line 156
    move/from16 v12, p5

    .line 157
    .line 158
    invoke-direct {v2, v1, v13, v7, v12}, Lcom/unity3d/services/core/cache/CacheThreadHandler$1;-><init>(Lcom/unity3d/services/core/cache/CacheThreadHandler;Lcom/unity3d/services/core/cache/CacheEventSender;Ljava/io/File;I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v2}, Lcom/unity3d/services/core/request/WebRequest;->setProgressListener(Lcom/unity3d/services/core/request/IWebRequestProgressListener;)V

    .line 162
    .line 163
    .line 164
    iget-object v0, v1, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    .line 165
    .line 166
    invoke-virtual {v0, v11}, Lcom/unity3d/services/core/request/WebRequest;->makeStreamRequest(Ljava/io/OutputStream;)J

    .line 167
    .line 168
    .line 169
    move-result-wide v16

    .line 170
    iput-boolean v5, v1, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_active:Z

    .line 171
    .line 172
    iget-object v0, v1, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    .line 173
    .line 174
    invoke-virtual {v0}, Lcom/unity3d/services/core/request/WebRequest;->getContentLength()J

    .line 175
    .line 176
    .line 177
    move-result-wide v18

    .line 178
    iget-object v0, v1, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    .line 179
    .line 180
    invoke-virtual {v0}, Lcom/unity3d/services/core/request/WebRequest;->isCanceled()Z

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    iget-object v2, v1, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    .line 185
    .line 186
    invoke-virtual {v2}, Lcom/unity3d/services/core/request/WebRequest;->getResponseCode()I

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    iget-object v12, v1, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    .line 191
    .line 192
    invoke-virtual {v12}, Lcom/unity3d/services/core/request/WebRequest;->getResponseHeaders()Ljava/util/Map;

    .line 193
    .line 194
    .line 195
    move-result-object v12
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Lcom/unity3d/services/core/request/NetworkIOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 196
    move-object v14, v6

    .line 197
    move-object v5, v7

    .line 198
    move/from16 v20, v15

    .line 199
    .line 200
    move-wide/from16 v6, v16

    .line 201
    .line 202
    move-object v15, v10

    .line 203
    move-object/from16 v17, v11

    .line 204
    .line 205
    move v10, v0

    .line 206
    move v11, v2

    .line 207
    move-wide/from16 v21, v18

    .line 208
    .line 209
    move/from16 v18, v3

    .line 210
    .line 211
    move-wide v2, v8

    .line 212
    move-wide/from16 v8, v21

    .line 213
    .line 214
    :try_start_2
    invoke-direct/range {v1 .. v13}, Lcom/unity3d/services/core/cache/CacheThreadHandler;->postProcessDownload(JLjava/lang/String;Ljava/io/File;JJZILjava/util/Map;Lcom/unity3d/services/core/cache/CacheEventSender;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/unity3d/services/core/request/NetworkIOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 215
    .line 216
    .line 217
    iput-object v15, v1, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    .line 218
    .line 219
    :try_start_3
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 220
    .line 221
    .line 222
    return-void

    .line 223
    :catch_0
    move-exception v0

    .line 224
    invoke-static {v14, v0}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 225
    .line 226
    .line 227
    sget-object v2, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/services/core/cache/CacheEvent;

    .line 228
    .line 229
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    const/4 v3, 0x3

    .line 234
    new-array v3, v3, [Ljava/lang/Object;

    .line 235
    .line 236
    sget-object v4, Lcom/unity3d/services/core/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/services/core/cache/CacheError;

    .line 237
    .line 238
    const/4 v5, 0x0

    .line 239
    aput-object v4, v3, v5

    .line 240
    .line 241
    aput-object p1, v3, v18

    .line 242
    .line 243
    aput-object v0, v3, v20

    .line 244
    .line 245
    invoke-virtual {v13, v2, v3}, Lcom/unity3d/services/core/cache/CacheEventSender;->sendEvent(Lcom/unity3d/services/core/cache/CacheEvent;[Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    goto/16 :goto_11

    .line 249
    .line 250
    :catchall_0
    move-exception v0

    .line 251
    const/4 v5, 0x0

    .line 252
    :goto_1
    move-object v2, v0

    .line 253
    move-object/from16 v10, v17

    .line 254
    .line 255
    goto/16 :goto_f

    .line 256
    .line 257
    :catch_1
    move-exception v0

    .line 258
    const/4 v5, 0x0

    .line 259
    :goto_2
    move-object/from16 v10, v17

    .line 260
    .line 261
    goto/16 :goto_9

    .line 262
    .line 263
    :catch_2
    move-exception v0

    .line 264
    const/4 v5, 0x0

    .line 265
    :goto_3
    move-object/from16 v10, v17

    .line 266
    .line 267
    goto/16 :goto_a

    .line 268
    .line 269
    :catch_3
    move-exception v0

    .line 270
    const/4 v5, 0x0

    .line 271
    :goto_4
    move-object/from16 v10, v17

    .line 272
    .line 273
    goto/16 :goto_b

    .line 274
    .line 275
    :catch_4
    move-exception v0

    .line 276
    const/4 v5, 0x0

    .line 277
    :goto_5
    move-object/from16 v10, v17

    .line 278
    .line 279
    goto/16 :goto_c

    .line 280
    .line 281
    :catch_5
    move-exception v0

    .line 282
    const/4 v5, 0x0

    .line 283
    :goto_6
    move-object/from16 v10, v17

    .line 284
    .line 285
    goto/16 :goto_d

    .line 286
    .line 287
    :catch_6
    move-exception v0

    .line 288
    const/4 v5, 0x0

    .line 289
    :goto_7
    move-object/from16 v10, v17

    .line 290
    .line 291
    goto/16 :goto_e

    .line 292
    .line 293
    :catchall_1
    move-exception v0

    .line 294
    move/from16 v18, v3

    .line 295
    .line 296
    move-object v14, v6

    .line 297
    move-object/from16 v17, v11

    .line 298
    .line 299
    move/from16 v20, v15

    .line 300
    .line 301
    move-object v15, v10

    .line 302
    goto :goto_1

    .line 303
    :catch_7
    move-exception v0

    .line 304
    move/from16 v18, v3

    .line 305
    .line 306
    move-object v14, v6

    .line 307
    move-object/from16 v17, v11

    .line 308
    .line 309
    move/from16 v20, v15

    .line 310
    .line 311
    move-object v15, v10

    .line 312
    goto :goto_2

    .line 313
    :catch_8
    move-exception v0

    .line 314
    move/from16 v18, v3

    .line 315
    .line 316
    move-object v14, v6

    .line 317
    move-object/from16 v17, v11

    .line 318
    .line 319
    move/from16 v20, v15

    .line 320
    .line 321
    move-object v15, v10

    .line 322
    goto :goto_3

    .line 323
    :catch_9
    move-exception v0

    .line 324
    move/from16 v18, v3

    .line 325
    .line 326
    move-object v14, v6

    .line 327
    move-object/from16 v17, v11

    .line 328
    .line 329
    move/from16 v20, v15

    .line 330
    .line 331
    move-object v15, v10

    .line 332
    goto :goto_4

    .line 333
    :catch_a
    move-exception v0

    .line 334
    move/from16 v18, v3

    .line 335
    .line 336
    move-object v14, v6

    .line 337
    move-object/from16 v17, v11

    .line 338
    .line 339
    move/from16 v20, v15

    .line 340
    .line 341
    move-object v15, v10

    .line 342
    goto :goto_5

    .line 343
    :catch_b
    move-exception v0

    .line 344
    move/from16 v18, v3

    .line 345
    .line 346
    move-object v14, v6

    .line 347
    move-object/from16 v17, v11

    .line 348
    .line 349
    move/from16 v20, v15

    .line 350
    .line 351
    move-object v15, v10

    .line 352
    goto :goto_6

    .line 353
    :catch_c
    move-exception v0

    .line 354
    move/from16 v18, v3

    .line 355
    .line 356
    move-object v14, v6

    .line 357
    move-object/from16 v17, v11

    .line 358
    .line 359
    move/from16 v20, v15

    .line 360
    .line 361
    move-object v15, v10

    .line 362
    goto :goto_7

    .line 363
    :catchall_2
    move-exception v0

    .line 364
    move/from16 v18, v3

    .line 365
    .line 366
    move-object v14, v6

    .line 367
    move/from16 v20, v15

    .line 368
    .line 369
    move-object v15, v10

    .line 370
    :goto_8
    move-object v2, v0

    .line 371
    goto/16 :goto_f

    .line 372
    .line 373
    :catch_d
    move-exception v0

    .line 374
    move/from16 v18, v3

    .line 375
    .line 376
    move-object v14, v6

    .line 377
    move/from16 v20, v15

    .line 378
    .line 379
    move-object v15, v10

    .line 380
    goto :goto_9

    .line 381
    :catch_e
    move-exception v0

    .line 382
    move/from16 v18, v3

    .line 383
    .line 384
    move-object v14, v6

    .line 385
    move/from16 v20, v15

    .line 386
    .line 387
    move-object v15, v10

    .line 388
    goto/16 :goto_a

    .line 389
    .line 390
    :catch_f
    move-exception v0

    .line 391
    move/from16 v18, v3

    .line 392
    .line 393
    move-object v14, v6

    .line 394
    move/from16 v20, v15

    .line 395
    .line 396
    move-object v15, v10

    .line 397
    goto/16 :goto_b

    .line 398
    .line 399
    :catch_10
    move-exception v0

    .line 400
    move/from16 v18, v3

    .line 401
    .line 402
    move-object v14, v6

    .line 403
    move/from16 v20, v15

    .line 404
    .line 405
    move-object v15, v10

    .line 406
    goto/16 :goto_c

    .line 407
    .line 408
    :catch_11
    move-exception v0

    .line 409
    move/from16 v18, v3

    .line 410
    .line 411
    move-object v14, v6

    .line 412
    move/from16 v20, v15

    .line 413
    .line 414
    move-object v15, v10

    .line 415
    goto/16 :goto_d

    .line 416
    .line 417
    :catch_12
    move-exception v0

    .line 418
    move/from16 v18, v3

    .line 419
    .line 420
    move-object v14, v6

    .line 421
    move/from16 v20, v15

    .line 422
    .line 423
    move-object v15, v10

    .line 424
    goto/16 :goto_e

    .line 425
    .line 426
    :goto_9
    :try_start_4
    const-string v2, "Unknown error"

    .line 427
    .line 428
    invoke-static {v2, v0}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 429
    .line 430
    .line 431
    iput-boolean v5, v1, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_active:Z

    .line 432
    .line 433
    sget-object v2, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/services/core/cache/CacheEvent;

    .line 434
    .line 435
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    const/4 v3, 0x3

    .line 440
    new-array v4, v3, [Ljava/lang/Object;

    .line 441
    .line 442
    sget-object v3, Lcom/unity3d/services/core/cache/CacheError;->UNKNOWN_ERROR:Lcom/unity3d/services/core/cache/CacheError;

    .line 443
    .line 444
    aput-object v3, v4, v5

    .line 445
    .line 446
    aput-object p1, v4, v18

    .line 447
    .line 448
    aput-object v0, v4, v20

    .line 449
    .line 450
    invoke-virtual {v13, v2, v4}, Lcom/unity3d/services/core/cache/CacheEventSender;->sendEvent(Lcom/unity3d/services/core/cache/CacheEvent;[Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 451
    .line 452
    .line 453
    iput-object v15, v1, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    .line 454
    .line 455
    if-eqz v10, :cond_4

    .line 456
    .line 457
    :try_start_5
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_13

    .line 458
    .line 459
    .line 460
    goto/16 :goto_11

    .line 461
    .line 462
    :catch_13
    move-exception v0

    .line 463
    invoke-static {v14, v0}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 464
    .line 465
    .line 466
    sget-object v2, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/services/core/cache/CacheEvent;

    .line 467
    .line 468
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v0

    .line 472
    const/4 v3, 0x3

    .line 473
    new-array v3, v3, [Ljava/lang/Object;

    .line 474
    .line 475
    sget-object v4, Lcom/unity3d/services/core/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/services/core/cache/CacheError;

    .line 476
    .line 477
    aput-object v4, v3, v5

    .line 478
    .line 479
    aput-object p1, v3, v18

    .line 480
    .line 481
    aput-object v0, v3, v20

    .line 482
    .line 483
    invoke-virtual {v13, v2, v3}, Lcom/unity3d/services/core/cache/CacheEventSender;->sendEvent(Lcom/unity3d/services/core/cache/CacheEvent;[Ljava/lang/Object;)Z

    .line 484
    .line 485
    .line 486
    goto/16 :goto_11

    .line 487
    .line 488
    :catchall_3
    move-exception v0

    .line 489
    goto :goto_8

    .line 490
    :goto_a
    :try_start_6
    const-string v2, "Network error"

    .line 491
    .line 492
    invoke-static {v2, v0}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 493
    .line 494
    .line 495
    iput-boolean v5, v1, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_active:Z

    .line 496
    .line 497
    sget-object v2, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/services/core/cache/CacheEvent;

    .line 498
    .line 499
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v0

    .line 503
    const/4 v3, 0x3

    .line 504
    new-array v4, v3, [Ljava/lang/Object;

    .line 505
    .line 506
    sget-object v3, Lcom/unity3d/services/core/cache/CacheError;->NETWORK_ERROR:Lcom/unity3d/services/core/cache/CacheError;

    .line 507
    .line 508
    aput-object v3, v4, v5

    .line 509
    .line 510
    aput-object p1, v4, v18

    .line 511
    .line 512
    aput-object v0, v4, v20

    .line 513
    .line 514
    invoke-virtual {v13, v2, v4}, Lcom/unity3d/services/core/cache/CacheEventSender;->sendEvent(Lcom/unity3d/services/core/cache/CacheEvent;[Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 515
    .line 516
    .line 517
    iput-object v15, v1, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    .line 518
    .line 519
    if-eqz v10, :cond_4

    .line 520
    .line 521
    :try_start_7
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_14

    .line 522
    .line 523
    .line 524
    goto/16 :goto_11

    .line 525
    .line 526
    :catch_14
    move-exception v0

    .line 527
    invoke-static {v14, v0}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 528
    .line 529
    .line 530
    sget-object v2, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/services/core/cache/CacheEvent;

    .line 531
    .line 532
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v0

    .line 536
    const/4 v3, 0x3

    .line 537
    new-array v3, v3, [Ljava/lang/Object;

    .line 538
    .line 539
    sget-object v4, Lcom/unity3d/services/core/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/services/core/cache/CacheError;

    .line 540
    .line 541
    aput-object v4, v3, v5

    .line 542
    .line 543
    aput-object p1, v3, v18

    .line 544
    .line 545
    aput-object v0, v3, v20

    .line 546
    .line 547
    invoke-virtual {v13, v2, v3}, Lcom/unity3d/services/core/cache/CacheEventSender;->sendEvent(Lcom/unity3d/services/core/cache/CacheEvent;[Ljava/lang/Object;)Z

    .line 548
    .line 549
    .line 550
    goto/16 :goto_11

    .line 551
    .line 552
    :goto_b
    :try_start_8
    const-string v2, "Illegal state"

    .line 553
    .line 554
    invoke-static {v2, v0}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 555
    .line 556
    .line 557
    iput-boolean v5, v1, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_active:Z

    .line 558
    .line 559
    sget-object v2, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/services/core/cache/CacheEvent;

    .line 560
    .line 561
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object v0

    .line 565
    const/4 v3, 0x3

    .line 566
    new-array v4, v3, [Ljava/lang/Object;

    .line 567
    .line 568
    sget-object v3, Lcom/unity3d/services/core/cache/CacheError;->ILLEGAL_STATE:Lcom/unity3d/services/core/cache/CacheError;

    .line 569
    .line 570
    aput-object v3, v4, v5

    .line 571
    .line 572
    aput-object p1, v4, v18

    .line 573
    .line 574
    aput-object v0, v4, v20

    .line 575
    .line 576
    invoke-virtual {v13, v2, v4}, Lcom/unity3d/services/core/cache/CacheEventSender;->sendEvent(Lcom/unity3d/services/core/cache/CacheEvent;[Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 577
    .line 578
    .line 579
    iput-object v15, v1, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    .line 580
    .line 581
    if-eqz v10, :cond_4

    .line 582
    .line 583
    :try_start_9
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_15

    .line 584
    .line 585
    .line 586
    goto/16 :goto_11

    .line 587
    .line 588
    :catch_15
    move-exception v0

    .line 589
    invoke-static {v14, v0}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 590
    .line 591
    .line 592
    sget-object v2, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/services/core/cache/CacheEvent;

    .line 593
    .line 594
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object v0

    .line 598
    const/4 v3, 0x3

    .line 599
    new-array v3, v3, [Ljava/lang/Object;

    .line 600
    .line 601
    sget-object v4, Lcom/unity3d/services/core/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/services/core/cache/CacheError;

    .line 602
    .line 603
    aput-object v4, v3, v5

    .line 604
    .line 605
    aput-object p1, v3, v18

    .line 606
    .line 607
    aput-object v0, v3, v20

    .line 608
    .line 609
    invoke-virtual {v13, v2, v3}, Lcom/unity3d/services/core/cache/CacheEventSender;->sendEvent(Lcom/unity3d/services/core/cache/CacheEvent;[Ljava/lang/Object;)Z

    .line 610
    .line 611
    .line 612
    goto/16 :goto_11

    .line 613
    .line 614
    :goto_c
    :try_start_a
    const-string v2, "Couldn\'t request stream"

    .line 615
    .line 616
    invoke-static {v2, v0}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 617
    .line 618
    .line 619
    iput-boolean v5, v1, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_active:Z

    .line 620
    .line 621
    sget-object v2, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/services/core/cache/CacheEvent;

    .line 622
    .line 623
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 624
    .line 625
    .line 626
    move-result-object v0

    .line 627
    const/4 v3, 0x3

    .line 628
    new-array v4, v3, [Ljava/lang/Object;

    .line 629
    .line 630
    sget-object v3, Lcom/unity3d/services/core/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/services/core/cache/CacheError;

    .line 631
    .line 632
    aput-object v3, v4, v5

    .line 633
    .line 634
    aput-object p1, v4, v18

    .line 635
    .line 636
    aput-object v0, v4, v20

    .line 637
    .line 638
    invoke-virtual {v13, v2, v4}, Lcom/unity3d/services/core/cache/CacheEventSender;->sendEvent(Lcom/unity3d/services/core/cache/CacheEvent;[Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 639
    .line 640
    .line 641
    iput-object v15, v1, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    .line 642
    .line 643
    if-eqz v10, :cond_4

    .line 644
    .line 645
    :try_start_b
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_16

    .line 646
    .line 647
    .line 648
    goto/16 :goto_11

    .line 649
    .line 650
    :catch_16
    move-exception v0

    .line 651
    invoke-static {v14, v0}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 652
    .line 653
    .line 654
    sget-object v2, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/services/core/cache/CacheEvent;

    .line 655
    .line 656
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 657
    .line 658
    .line 659
    move-result-object v0

    .line 660
    const/4 v3, 0x3

    .line 661
    new-array v3, v3, [Ljava/lang/Object;

    .line 662
    .line 663
    sget-object v4, Lcom/unity3d/services/core/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/services/core/cache/CacheError;

    .line 664
    .line 665
    aput-object v4, v3, v5

    .line 666
    .line 667
    aput-object p1, v3, v18

    .line 668
    .line 669
    aput-object v0, v3, v20

    .line 670
    .line 671
    invoke-virtual {v13, v2, v3}, Lcom/unity3d/services/core/cache/CacheEventSender;->sendEvent(Lcom/unity3d/services/core/cache/CacheEvent;[Ljava/lang/Object;)Z

    .line 672
    .line 673
    .line 674
    goto/16 :goto_11

    .line 675
    .line 676
    :goto_d
    :try_start_c
    const-string v2, "Malformed URL"

    .line 677
    .line 678
    invoke-static {v2, v0}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 679
    .line 680
    .line 681
    iput-boolean v5, v1, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_active:Z

    .line 682
    .line 683
    sget-object v2, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/services/core/cache/CacheEvent;

    .line 684
    .line 685
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 686
    .line 687
    .line 688
    move-result-object v0

    .line 689
    const/4 v3, 0x3

    .line 690
    new-array v4, v3, [Ljava/lang/Object;

    .line 691
    .line 692
    sget-object v3, Lcom/unity3d/services/core/cache/CacheError;->MALFORMED_URL:Lcom/unity3d/services/core/cache/CacheError;

    .line 693
    .line 694
    aput-object v3, v4, v5

    .line 695
    .line 696
    aput-object p1, v4, v18

    .line 697
    .line 698
    aput-object v0, v4, v20

    .line 699
    .line 700
    invoke-virtual {v13, v2, v4}, Lcom/unity3d/services/core/cache/CacheEventSender;->sendEvent(Lcom/unity3d/services/core/cache/CacheEvent;[Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 701
    .line 702
    .line 703
    iput-object v15, v1, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    .line 704
    .line 705
    if-eqz v10, :cond_4

    .line 706
    .line 707
    :try_start_d
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_17

    .line 708
    .line 709
    .line 710
    goto/16 :goto_11

    .line 711
    .line 712
    :catch_17
    move-exception v0

    .line 713
    invoke-static {v14, v0}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 714
    .line 715
    .line 716
    sget-object v2, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/services/core/cache/CacheEvent;

    .line 717
    .line 718
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 719
    .line 720
    .line 721
    move-result-object v0

    .line 722
    const/4 v3, 0x3

    .line 723
    new-array v3, v3, [Ljava/lang/Object;

    .line 724
    .line 725
    sget-object v4, Lcom/unity3d/services/core/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/services/core/cache/CacheError;

    .line 726
    .line 727
    aput-object v4, v3, v5

    .line 728
    .line 729
    aput-object p1, v3, v18

    .line 730
    .line 731
    aput-object v0, v3, v20

    .line 732
    .line 733
    invoke-virtual {v13, v2, v3}, Lcom/unity3d/services/core/cache/CacheEventSender;->sendEvent(Lcom/unity3d/services/core/cache/CacheEvent;[Ljava/lang/Object;)Z

    .line 734
    .line 735
    .line 736
    goto :goto_11

    .line 737
    :goto_e
    :try_start_e
    const-string v2, "Couldn\'t create target file"

    .line 738
    .line 739
    invoke-static {v2, v0}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 740
    .line 741
    .line 742
    iput-boolean v5, v1, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_active:Z

    .line 743
    .line 744
    sget-object v2, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/services/core/cache/CacheEvent;

    .line 745
    .line 746
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 747
    .line 748
    .line 749
    move-result-object v0

    .line 750
    const/4 v3, 0x3

    .line 751
    new-array v4, v3, [Ljava/lang/Object;

    .line 752
    .line 753
    sget-object v3, Lcom/unity3d/services/core/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/services/core/cache/CacheError;

    .line 754
    .line 755
    aput-object v3, v4, v5

    .line 756
    .line 757
    aput-object p1, v4, v18

    .line 758
    .line 759
    aput-object v0, v4, v20

    .line 760
    .line 761
    invoke-virtual {v13, v2, v4}, Lcom/unity3d/services/core/cache/CacheEventSender;->sendEvent(Lcom/unity3d/services/core/cache/CacheEvent;[Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 762
    .line 763
    .line 764
    iput-object v15, v1, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    .line 765
    .line 766
    if-eqz v10, :cond_4

    .line 767
    .line 768
    :try_start_f
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_18

    .line 769
    .line 770
    .line 771
    goto :goto_11

    .line 772
    :catch_18
    move-exception v0

    .line 773
    invoke-static {v14, v0}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 774
    .line 775
    .line 776
    sget-object v2, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/services/core/cache/CacheEvent;

    .line 777
    .line 778
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 779
    .line 780
    .line 781
    move-result-object v0

    .line 782
    const/4 v3, 0x3

    .line 783
    new-array v3, v3, [Ljava/lang/Object;

    .line 784
    .line 785
    sget-object v4, Lcom/unity3d/services/core/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/services/core/cache/CacheError;

    .line 786
    .line 787
    aput-object v4, v3, v5

    .line 788
    .line 789
    aput-object p1, v3, v18

    .line 790
    .line 791
    aput-object v0, v3, v20

    .line 792
    .line 793
    invoke-virtual {v13, v2, v3}, Lcom/unity3d/services/core/cache/CacheEventSender;->sendEvent(Lcom/unity3d/services/core/cache/CacheEvent;[Ljava/lang/Object;)Z

    .line 794
    .line 795
    .line 796
    goto :goto_11

    .line 797
    :goto_f
    iput-object v15, v1, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    .line 798
    .line 799
    if-eqz v10, :cond_3

    .line 800
    .line 801
    :try_start_10
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_19

    .line 802
    .line 803
    .line 804
    goto :goto_10

    .line 805
    :catch_19
    move-exception v0

    .line 806
    invoke-static {v14, v0}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 807
    .line 808
    .line 809
    sget-object v3, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/services/core/cache/CacheEvent;

    .line 810
    .line 811
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 812
    .line 813
    .line 814
    move-result-object v0

    .line 815
    const/4 v4, 0x3

    .line 816
    new-array v4, v4, [Ljava/lang/Object;

    .line 817
    .line 818
    sget-object v6, Lcom/unity3d/services/core/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/services/core/cache/CacheError;

    .line 819
    .line 820
    aput-object v6, v4, v5

    .line 821
    .line 822
    aput-object p1, v4, v18

    .line 823
    .line 824
    aput-object v0, v4, v20

    .line 825
    .line 826
    invoke-virtual {v13, v3, v4}, Lcom/unity3d/services/core/cache/CacheEventSender;->sendEvent(Lcom/unity3d/services/core/cache/CacheEvent;[Ljava/lang/Object;)Z

    .line 827
    .line 828
    .line 829
    :cond_3
    :goto_10
    throw v2

    .line 830
    :cond_4
    :goto_11
    return-void
.end method

.method private getWebRequest(Ljava/lang/String;IILjava/util/HashMap;)Lcom/unity3d/services/core/request/WebRequest;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/unity3d/services/core/request/WebRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 1
    new-instance v3, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p4, :cond_0

    .line 7
    .line 8
    invoke-virtual {v3, p4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    new-instance v0, Lcom/unity3d/services/core/request/WebRequest;

    .line 12
    .line 13
    const-string v2, "GET"

    .line 14
    .line 15
    move-object v1, p1

    .line 16
    move v4, p2

    .line 17
    move v5, p3

    .line 18
    invoke-direct/range {v0 .. v5}, Lcom/unity3d/services/core/request/WebRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;II)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method private postProcessDownload(JLjava/lang/String;Ljava/io/File;JJZILjava/util/Map;Lcom/unity3d/services/core/cache/CacheEventSender;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "JJZI",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/unity3d/services/core/cache/CacheEventSender;",
            ")V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p3

    .line 2
    .line 3
    move-object/from16 v1, p12

    .line 4
    .line 5
    const/4 v2, 0x5

    .line 6
    const/4 v3, 0x4

    .line 7
    const/4 v4, 0x3

    .line 8
    const/4 v5, 0x2

    .line 9
    const/4 v6, 0x6

    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 11
    .line 12
    .line 13
    move-result-wide v7

    .line 14
    sub-long v7, v7, p1

    .line 15
    .line 16
    const/4 v9, 0x1

    .line 17
    const/4 v10, 0x0

    .line 18
    move-object/from16 v11, p4

    .line 19
    .line 20
    invoke-virtual {v11, v9, v10}, Ljava/io/File;->setReadable(ZZ)Z

    .line 21
    .line 22
    .line 23
    move-result v12

    .line 24
    if-nez v12, :cond_0

    .line 25
    .line 26
    const-string v12, "Unity Ads cache: could not set file readable!"

    .line 27
    .line 28
    invoke-static {v12}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    if-nez p9, :cond_1

    .line 32
    .line 33
    new-instance v12, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v13, "Unity Ads cache: File "

    .line 39
    .line 40
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v11

    .line 47
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v11, " of "

    .line 51
    .line 52
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    move-wide/from16 v13, p5

    .line 56
    .line 57
    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v11, " bytes downloaded in "

    .line 61
    .line 62
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v11, "ms"

    .line 69
    .line 70
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v11

    .line 77
    invoke-static {v11}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    sget-object v11, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_END:Lcom/unity3d/services/core/cache/CacheEvent;

    .line 81
    .line 82
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 83
    .line 84
    .line 85
    move-result-object v12

    .line 86
    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 87
    .line 88
    .line 89
    move-result-object v13

    .line 90
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v8

    .line 98
    invoke-static/range {p11 .. p11}, Lcom/unity3d/services/core/api/Request;->getResponseHeadersMap(Ljava/util/Map;)Lorg/json/JSONArray;

    .line 99
    .line 100
    .line 101
    move-result-object v14

    .line 102
    new-array v6, v6, [Ljava/lang/Object;

    .line 103
    .line 104
    aput-object v0, v6, v10

    .line 105
    .line 106
    aput-object v12, v6, v9

    .line 107
    .line 108
    aput-object v13, v6, v5

    .line 109
    .line 110
    aput-object v7, v6, v4

    .line 111
    .line 112
    aput-object v8, v6, v3

    .line 113
    .line 114
    aput-object v14, v6, v2

    .line 115
    .line 116
    invoke-virtual {v1, v11, v6}, Lcom/unity3d/services/core/cache/CacheEventSender;->sendEvent(Lcom/unity3d/services/core/cache/CacheEvent;[Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :cond_1
    move-wide/from16 v13, p5

    .line 121
    .line 122
    new-instance v11, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    const-string v12, "Unity Ads cache: downloading of "

    .line 128
    .line 129
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v12, " stopped"

    .line 136
    .line 137
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v11

    .line 144
    invoke-static {v11}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    sget-object v11, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_STOPPED:Lcom/unity3d/services/core/cache/CacheEvent;

    .line 148
    .line 149
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 150
    .line 151
    .line 152
    move-result-object v12

    .line 153
    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 154
    .line 155
    .line 156
    move-result-object v13

    .line 157
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 158
    .line 159
    .line 160
    move-result-object v7

    .line 161
    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 162
    .line 163
    .line 164
    move-result-object v8

    .line 165
    invoke-static/range {p11 .. p11}, Lcom/unity3d/services/core/api/Request;->getResponseHeadersMap(Ljava/util/Map;)Lorg/json/JSONArray;

    .line 166
    .line 167
    .line 168
    move-result-object v14

    .line 169
    new-array v6, v6, [Ljava/lang/Object;

    .line 170
    .line 171
    aput-object v0, v6, v10

    .line 172
    .line 173
    aput-object v12, v6, v9

    .line 174
    .line 175
    aput-object v13, v6, v5

    .line 176
    .line 177
    aput-object v7, v6, v4

    .line 178
    .line 179
    aput-object v8, v6, v3

    .line 180
    .line 181
    aput-object v14, v6, v2

    .line 182
    .line 183
    invoke-virtual {v1, v11, v6}, Lcom/unity3d/services/core/cache/CacheEventSender;->sendEvent(Lcom/unity3d/services/core/cache/CacheEvent;[Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const-string v2, "source"

    .line 7
    .line 8
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v2, "target"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v2, "connectTimeout"

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v2, "readTimeout"

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v2, "progressInterval"

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string v2, "append"

    .line 52
    .line 53
    const/4 v3, 0x0

    .line 54
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 55
    .line 56
    .line 57
    move-result v10

    .line 58
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string v2, "cacheEventSender"

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 64
    .line 65
    .line 66
    move-result-object v9

    .line 67
    move-object v11, v9

    .line 68
    check-cast v11, Lcom/unity3d/services/core/cache/CacheEventSender;

    .line 69
    .line 70
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Landroid/os/BaseBundle;->size()I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-lez v2, :cond_1

    .line 78
    .line 79
    const-string v2, "There are headers left in data, reading them"

    .line 80
    .line 81
    invoke-static {v2}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    new-instance v2, Ljava/util/HashMap;

    .line 85
    .line 86
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 90
    .line 91
    .line 92
    move-result-object v9

    .line 93
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object v9

    .line 97
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    .line 99
    .line 100
    move-result v12

    .line 101
    if-eqz v12, :cond_0

    .line 102
    .line 103
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v12

    .line 107
    check-cast v12, Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {v1, v12}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v13

    .line 113
    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 114
    .line 115
    .line 116
    move-result-object v13

    .line 117
    invoke-virtual {v2, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_0
    :goto_1
    move-object v9, v2

    .line 122
    goto :goto_2

    .line 123
    :cond_1
    const/4 v2, 0x0

    .line 124
    goto :goto_1

    .line 125
    :goto_2
    new-instance v1, Ljava/io/File;

    .line 126
    .line 127
    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    if-eqz v10, :cond_2

    .line 131
    .line 132
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-eqz v2, :cond_3

    .line 137
    .line 138
    :cond_2
    if-nez v10, :cond_4

    .line 139
    .line 140
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    if-eqz v2, :cond_4

    .line 145
    .line 146
    :cond_3
    iput-boolean v3, p0, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_active:Z

    .line 147
    .line 148
    sget-object p1, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/services/core/cache/CacheEvent;

    .line 149
    .line 150
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    const/4 v6, 0x5

    .line 163
    new-array v6, v6, [Ljava/lang/Object;

    .line 164
    .line 165
    sget-object v7, Lcom/unity3d/services/core/cache/CacheError;->FILE_STATE_WRONG:Lcom/unity3d/services/core/cache/CacheError;

    .line 166
    .line 167
    aput-object v7, v6, v3

    .line 168
    .line 169
    aput-object v4, v6, v0

    .line 170
    .line 171
    const/4 v0, 0x2

    .line 172
    aput-object v5, v6, v0

    .line 173
    .line 174
    const/4 v0, 0x3

    .line 175
    aput-object v2, v6, v0

    .line 176
    .line 177
    const/4 v0, 0x4

    .line 178
    aput-object v1, v6, v0

    .line 179
    .line 180
    invoke-virtual {v11, p1, v6}, Lcom/unity3d/services/core/cache/CacheEventSender;->sendEvent(Lcom/unity3d/services/core/cache/CacheEvent;[Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    :cond_4
    iget p1, p1, Landroid/os/Message;->what:I

    .line 185
    .line 186
    if-eq p1, v0, :cond_5

    .line 187
    .line 188
    return-void

    .line 189
    :cond_5
    move-object v3, p0

    .line 190
    invoke-direct/range {v3 .. v11}, Lcom/unity3d/services/core/cache/CacheThreadHandler;->downloadFile(Ljava/lang/String;Ljava/lang/String;IIILjava/util/HashMap;ZLcom/unity3d/services/core/cache/CacheEventSender;)V

    .line 191
    .line 192
    .line 193
    return-void
.end method

.method public isActive()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_active:Z

    .line 2
    .line 3
    return v0
.end method

.method public setCancelStatus(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_canceled:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_active:Z

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/unity3d/services/core/request/WebRequest;->cancel()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
