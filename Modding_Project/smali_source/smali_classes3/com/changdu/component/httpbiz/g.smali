.class public final Lcom/changdu/component/httpbiz/g;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lokhttp3/Interceptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 12

    .line 1
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Request;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    :try_start_0
    invoke-static {}, Lcom/changdu/component/core/CDComponent;->getInstance()Lcom/changdu/component/core/CDComponent;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    const-string v5, "device"

    .line 17
    .line 18
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    const-string v5, "device2"

    .line 24
    .line 25
    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    const-string v5, "sw"

    .line 31
    .line 32
    invoke-virtual {v4}, Lcom/changdu/component/core/CDComponent;->getScreenWidth()I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    const-string v5, "sh"

    .line 44
    .line 45
    invoke-virtual {v4}, Lcom/changdu/component/core/CDComponent;->getScreenHeight()I

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    const-string v5, "osver"

    .line 57
    .line 58
    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    const-string v5, "appver"

    .line 64
    .line 65
    invoke-virtual {v4}, Lcom/changdu/component/core/CDComponent;->getAppVersion()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    const-string v5, "corever"

    .line 73
    .line 74
    invoke-virtual {v4}, Lcom/changdu/component/core/CDComponent;->getCoreVersion()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    const-string v5, "mt"

    .line 82
    .line 83
    invoke-virtual {v4}, Lcom/changdu/component/core/CDComponent;->getMt()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    const-string v5, "x"

    .line 91
    .line 92
    invoke-virtual {v4}, Lcom/changdu/component/core/CDComponent;->getProductX()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    const-string v5, "appid"

    .line 100
    .line 101
    invoke-virtual {v4}, Lcom/changdu/component/core/CDComponent;->getAppId()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    const-string v5, "langid"

    .line 109
    .line 110
    invoke-virtual {v4}, Lcom/changdu/component/core/CDComponent;->getLangId()I

    .line 111
    .line 112
    .line 113
    move-result v6

    .line 114
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    const-string v5, "chl"

    .line 122
    .line 123
    invoke-virtual {v4}, Lcom/changdu/component/core/CDComponent;->getChannel()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    const-string v5, "androidid"

    .line 131
    .line 132
    invoke-virtual {v4}, Lcom/changdu/component/core/CDComponent;->getAndroidId()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    const-string v5, "UniqueCdReaderId"

    .line 140
    .line 141
    invoke-virtual {v4}, Lcom/changdu/component/core/CDComponent;->getAndroidId()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    const-string v5, "sid"

    .line 149
    .line 150
    invoke-virtual {v4}, Lcom/changdu/component/core/CDComponent;->getSid()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    const-string v5, "guid"

    .line 158
    .line 159
    invoke-virtual {v4}, Lcom/changdu/component/core/CDComponent;->getGuid()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v6

    .line 163
    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    const-string v5, "userid"

    .line 167
    .line 168
    invoke-virtual {v4}, Lcom/changdu/component/core/CDComponent;->getUserId()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v6

    .line 172
    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    const-string v5, "utcoffset"

    .line 176
    .line 177
    sget-object v6, Lcom/changdu/component/httpbiz/CDHttpUtil;->INSTANCE:Lcom/changdu/component/httpbiz/CDHttpUtil;

    .line 178
    .line 179
    invoke-virtual {v6}, Lcom/changdu/component/httpbiz/CDHttpUtil;->getUTCOffset()I

    .line 180
    .line 181
    .line 182
    move-result v6

    .line 183
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 184
    .line 185
    .line 186
    move-result-object v6

    .line 187
    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    const-string v5, "supportutctime"

    .line 191
    .line 192
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 193
    .line 194
    .line 195
    move-result-object v6

    .line 196
    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    const-string v5, "timestamp"

    .line 200
    .line 201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 202
    .line 203
    .line 204
    move-result-wide v6

    .line 205
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 206
    .line 207
    .line 208
    move-result-object v6

    .line 209
    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    const-string v5, "ver"

    .line 213
    .line 214
    invoke-virtual {v4}, Lcom/changdu/component/core/CDComponent;->getServerProtocolVersion()I

    .line 215
    .line 216
    .line 217
    move-result v6

    .line 218
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 219
    .line 220
    .line 221
    move-result-object v6

    .line 222
    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 226
    .line 227
    .line 228
    move-result-object v5

    .line 229
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 230
    .line 231
    .line 232
    move-result-object v5

    .line 233
    invoke-static {v5}, Landroidx/core/os/ConfigurationCompat;->getLocales(Landroid/content/res/Configuration;)Landroidx/core/os/LocaleListCompat;

    .line 234
    .line 235
    .line 236
    move-result-object v5

    .line 237
    invoke-virtual {v5, v3}, Landroidx/core/os/LocaleListCompat;->get(I)Ljava/util/Locale;

    .line 238
    .line 239
    .line 240
    move-result-object v5

    .line 241
    if-nez v5, :cond_0

    .line 242
    .line 243
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 244
    .line 245
    .line 246
    move-result-object v5

    .line 247
    goto :goto_0

    .line 248
    :catch_0
    move-exception v4

    .line 249
    goto :goto_1

    .line 250
    :cond_0
    :goto_0
    const-string v6, "syslanguage"

    .line 251
    .line 252
    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    const-string v6, "idfa"

    .line 256
    .line 257
    invoke-virtual {v4}, Lcom/changdu/component/core/CDComponent;->getGoogleAdId()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v7

    .line 261
    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    const-string v6, "locale"

    .line 265
    .line 266
    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    const-string v5, "build"

    .line 270
    .line 271
    sget-object v6, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 272
    .line 273
    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    const-string v5, "sendid"

    .line 277
    .line 278
    invoke-virtual {v4}, Lcom/changdu/component/core/CDComponent;->getSendId()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v4

    .line 282
    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    .line 284
    .line 285
    goto :goto_2

    .line 286
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 287
    .line 288
    .line 289
    :goto_2
    invoke-virtual {v0}, Lokhttp3/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/RequestBody;

    .line 290
    .line 291
    .line 292
    move-result-object v4

    .line 293
    const/4 v5, 0x0

    .line 294
    const-string v6, ""

    .line 295
    .line 296
    if-nez v4, :cond_2

    .line 297
    .line 298
    :cond_1
    :goto_3
    move-object v4, v6

    .line 299
    goto :goto_6

    .line 300
    :cond_2
    :try_start_1
    new-instance v7, Lokio/Buffer;

    .line 301
    .line 302
    invoke-direct {v7}, Lokio/Buffer;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 303
    .line 304
    .line 305
    :try_start_2
    invoke-virtual {v4, v7}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v7}, Lokio/Buffer;->Kkkkk()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 312
    :try_start_3
    invoke-virtual {v7}, Lokio/Buffer;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 313
    .line 314
    .line 315
    goto :goto_6

    .line 316
    :catch_1
    move-exception v7

    .line 317
    goto :goto_5

    .line 318
    :catchall_0
    move-exception p1

    .line 319
    goto/16 :goto_b

    .line 320
    .line 321
    :catch_2
    move-exception v4

    .line 322
    goto :goto_4

    .line 323
    :catchall_1
    move-exception p1

    .line 324
    goto/16 :goto_a

    .line 325
    .line 326
    :catch_3
    move-exception v4

    .line 327
    move-object v7, v5

    .line 328
    :goto_4
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 329
    .line 330
    .line 331
    if-eqz v7, :cond_1

    .line 332
    .line 333
    :try_start_5
    invoke-virtual {v7}, Lokio/Buffer;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 334
    .line 335
    .line 336
    goto :goto_3

    .line 337
    :catch_4
    move-exception v7

    .line 338
    move-object v4, v6

    .line 339
    :goto_5
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    .line 340
    .line 341
    .line 342
    :goto_6
    sget-object v7, Lcom/changdu/component/httpbiz/CDHttpUtil;->INSTANCE:Lcom/changdu/component/httpbiz/CDHttpUtil;

    .line 343
    .line 344
    invoke-virtual {v7, v4}, Lcom/changdu/component/httpbiz/CDHttpUtil;->md5(Ljava/lang/String;)Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v4

    .line 348
    invoke-static {v1}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 349
    .line 350
    .line 351
    move-result-object v7

    .line 352
    const-string v8, "body"

    .line 353
    .line 354
    invoke-interface {v7, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    :try_start_6
    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    .line 358
    .line 359
    .line 360
    move-result v4

    .line 361
    if-eqz v4, :cond_3

    .line 362
    .line 363
    goto/16 :goto_9

    .line 364
    .line 365
    :cond_3
    new-instance v4, Ljava/util/TreeMap;

    .line 366
    .line 367
    sget-object v8, Lcom/changdu/component/httpbiz/f;->a:Lcom/changdu/component/httpbiz/f;

    .line 368
    .line 369
    new-instance v9, Lcom/changdu/component/httpbiz/e;

    .line 370
    .line 371
    invoke-direct {v9, v8, v3}, Lcom/changdu/component/httpbiz/e;-><init>(Lcom/changdu/component/httpbiz/f;I)V

    .line 372
    .line 373
    .line 374
    invoke-direct {v4, v9}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v4, v7}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 378
    .line 379
    .line 380
    new-instance v7, Ljava/lang/StringBuilder;

    .line 381
    .line 382
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v4}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 386
    .line 387
    .line 388
    move-result-object v4

    .line 389
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 390
    .line 391
    .line 392
    move-result-object v4

    .line 393
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 394
    .line 395
    .line 396
    move-result v8
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 397
    const-string v9, "&"

    .line 398
    .line 399
    if-eqz v8, :cond_4

    .line 400
    .line 401
    :try_start_7
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    move-result-object v8

    .line 405
    check-cast v8, Ljava/util/Map$Entry;

    .line 406
    .line 407
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    move-result-object v10

    .line 411
    check-cast v10, Ljava/lang/String;

    .line 412
    .line 413
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    move-result-object v8

    .line 417
    new-instance v11, Ljava/lang/StringBuilder;

    .line 418
    .line 419
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    const-string v10, "="

    .line 426
    .line 427
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v8

    .line 440
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    goto :goto_7

    .line 444
    :catch_5
    move-exception v2

    .line 445
    goto :goto_8

    .line 446
    :cond_4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v4

    .line 450
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 451
    .line 452
    .line 453
    move-result v7

    .line 454
    if-le v7, v2, :cond_5

    .line 455
    .line 456
    const/4 v7, 0x2

    .line 457
    invoke-static {v4, v9, v3, v7, v5}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 458
    .line 459
    .line 460
    move-result v5

    .line 461
    if-eqz v5, :cond_5

    .line 462
    .line 463
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 464
    .line 465
    .line 466
    move-result v5

    .line 467
    sub-int/2addr v5, v2

    .line 468
    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v4

    .line 472
    :cond_5
    sget-object v2, Lcom/changdu/component/httpbiz/CDHttpUtil;->INSTANCE:Lcom/changdu/component/httpbiz/CDHttpUtil;

    .line 473
    .line 474
    invoke-static {}, Lcom/changdu/component/core/CDComponent;->getInstance()Lcom/changdu/component/core/CDComponent;

    .line 475
    .line 476
    .line 477
    move-result-object v3

    .line 478
    invoke-virtual {v3}, Lcom/changdu/component/core/CDComponent;->getAppKey()Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v3

    .line 482
    invoke-virtual {v2, v4, v3}, Lcom/changdu/component/httpbiz/CDHttpUtil;->hmacSha256(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v6
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 486
    goto :goto_9

    .line 487
    :goto_8
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 488
    .line 489
    .line 490
    :goto_9
    const-string v2, "sign"

    .line 491
    .line 492
    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    .line 494
    .line 495
    invoke-virtual {v0}, Lokhttp3/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Request$Builder;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    sget-object v2, Lcom/changdu/component/httpbiz/CDHttpUtil;->INSTANCE:Lcom/changdu/component/httpbiz/CDHttpUtil;

    .line 500
    .line 501
    invoke-virtual {v2, v1}, Lcom/changdu/component/httpbiz/CDHttpUtil;->toJsonStr(Ljava/lang/Object;)Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v1

    .line 505
    const-string v2, "clientinfo"

    .line 506
    .line 507
    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 508
    .line 509
    .line 510
    const-string v1, "x-sign-version"

    .line 511
    .line 512
    const-string v2, "v2"

    .line 513
    .line 514
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 515
    .line 516
    .line 517
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Request;

    .line 518
    .line 519
    .line 520
    move-result-object v0

    .line 521
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Request;)Lokhttp3/Response;

    .line 522
    .line 523
    .line 524
    move-result-object p1

    .line 525
    return-object p1

    .line 526
    :catchall_2
    move-exception p1

    .line 527
    move-object v5, v7

    .line 528
    :goto_a
    move-object v7, v5

    .line 529
    :goto_b
    if-eqz v7, :cond_6

    .line 530
    .line 531
    :try_start_8
    invoke-virtual {v7}, Lokio/Buffer;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 532
    .line 533
    .line 534
    goto :goto_c

    .line 535
    :catch_6
    move-exception v0

    .line 536
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 537
    .line 538
    .line 539
    :cond_6
    :goto_c
    throw p1
.end method
