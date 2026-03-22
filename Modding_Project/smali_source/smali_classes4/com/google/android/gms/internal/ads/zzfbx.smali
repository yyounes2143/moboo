.class public final Lcom/google/android/gms/internal/ads/zzfbx;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field public final zza:Ljava/util/List;

.field public final zzb:Ljava/lang/String;

.field public final zzc:I

.field public final zzd:I

.field public final zze:Ljava/lang/String;

.field public final zzf:I

.field public final zzg:J

.field public final zzh:Z

.field public final zzi:Ljava/lang/String;

.field public final zzj:Lcom/google/android/gms/internal/ads/zzfbw;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final zzk:Landroid/os/Bundle;

.field public final zzl:Ljava/lang/String;

.field public final zzm:Ljava/lang/String;

.field public final zzn:Ljava/lang/String;

.field public final zzo:Lorg/json/JSONObject;

.field public final zzp:Lorg/json/JSONObject;

.field public final zzq:Ljava/lang/String;

.field public final zzr:I

.field public zzs:J

.field public zzt:J


# direct methods
.method public constructor <init>(Landroid/util/JsonReader;)V
    .locals 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 7
    .line 8
    new-instance v2, Landroid/os/Bundle;

    .line 9
    .line 10
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v3, Lorg/json/JSONObject;

    .line 14
    .line 15
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v4, Lorg/json/JSONObject;

    .line 19
    .line 20
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->beginObject()V

    .line 24
    .line 25
    .line 26
    const-string v8, ""

    .line 27
    .line 28
    const/4 v9, 0x0

    .line 29
    const/4 v10, 0x0

    .line 30
    move-object v5, v8

    .line 31
    move-object v6, v5

    .line 32
    move-object v14, v6

    .line 33
    move-object v15, v14

    .line 34
    move v11, v9

    .line 35
    move v12, v11

    .line 36
    move/from16 v20, v12

    .line 37
    .line 38
    move-object/from16 v21, v10

    .line 39
    .line 40
    const-wide/16 v16, -0x1

    .line 41
    .line 42
    const-wide/16 v18, 0x0

    .line 43
    .line 44
    const-wide/16 v22, -0x1

    .line 45
    .line 46
    const-wide/16 v24, -0x1

    .line 47
    .line 48
    const-wide/16 v26, 0x0

    .line 49
    .line 50
    const/16 v28, -0x1

    .line 51
    .line 52
    const/16 v29, 0x1

    .line 53
    .line 54
    move-object v9, v15

    .line 55
    move-object v10, v9

    .line 56
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v30

    .line 60
    if-eqz v30, :cond_18

    .line 61
    .line 62
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v13

    .line 66
    const-string v7, "nofill_urls"

    .line 67
    .line 68
    invoke-static {v13, v7}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    if-eqz v7, :cond_0

    .line 73
    .line 74
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/ads/internal/util/zzbs;->zzd(Landroid/util/JsonReader;)Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    goto :goto_0

    .line 79
    :cond_0
    const-string v7, "refresh_interval"

    .line 80
    .line 81
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    if-eqz v7, :cond_1

    .line 86
    .line 87
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextInt()I

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    move v11, v7

    .line 92
    goto :goto_0

    .line 93
    :cond_1
    const-string v7, "refresh_load_delay_time_interval"

    .line 94
    .line 95
    invoke-static {v13, v7}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    if-eqz v7, :cond_2

    .line 100
    .line 101
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextInt()I

    .line 102
    .line 103
    .line 104
    move-result v28

    .line 105
    goto :goto_0

    .line 106
    :cond_2
    const-string v7, "gws_query_id"

    .line 107
    .line 108
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v7

    .line 112
    if-eqz v7, :cond_3

    .line 113
    .line 114
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v7

    .line 118
    move-object v8, v7

    .line 119
    goto :goto_0

    .line 120
    :cond_3
    const-string v7, "analytics_query_ad_event_id"

    .line 121
    .line 122
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v7

    .line 126
    if-eqz v7, :cond_4

    .line 127
    .line 128
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    move-object v9, v7

    .line 133
    goto :goto_0

    .line 134
    :cond_4
    const-string v7, "is_idless"

    .line 135
    .line 136
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v7

    .line 140
    if-eqz v7, :cond_5

    .line 141
    .line 142
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    .line 143
    .line 144
    .line 145
    move-result v7

    .line 146
    move/from16 v20, v7

    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_5
    const-string v7, "response_code"

    .line 150
    .line 151
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v7

    .line 155
    if-eqz v7, :cond_6

    .line 156
    .line 157
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextInt()I

    .line 158
    .line 159
    .line 160
    move-result v7

    .line 161
    move v12, v7

    .line 162
    goto :goto_0

    .line 163
    :cond_6
    const-string v7, "latency"

    .line 164
    .line 165
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v7

    .line 169
    if-eqz v7, :cond_7

    .line 170
    .line 171
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextLong()J

    .line 172
    .line 173
    .line 174
    move-result-wide v26

    .line 175
    goto :goto_0

    .line 176
    :cond_7
    sget-object v7, Lcom/google/android/gms/internal/ads/zzbcv;->zziB:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 177
    .line 178
    move-object/from16 v31, v6

    .line 179
    .line 180
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 181
    .line 182
    .line 183
    move-result-object v6

    .line 184
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v6

    .line 188
    check-cast v6, Ljava/lang/Boolean;

    .line 189
    .line 190
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 191
    .line 192
    .line 193
    move-result v6

    .line 194
    if-eqz v6, :cond_9

    .line 195
    .line 196
    const-string v6, "public_error"

    .line 197
    .line 198
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v6

    .line 202
    if-eqz v6, :cond_9

    .line 203
    .line 204
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    .line 205
    .line 206
    .line 207
    move-result-object v6

    .line 208
    sget-object v7, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    .line 209
    .line 210
    if-ne v6, v7, :cond_9

    .line 211
    .line 212
    new-instance v6, Lcom/google/android/gms/internal/ads/zzfbw;

    .line 213
    .line 214
    move-object/from16 v7, p1

    .line 215
    .line 216
    invoke-direct {v6, v7}, Lcom/google/android/gms/internal/ads/zzfbw;-><init>(Landroid/util/JsonReader;)V

    .line 217
    .line 218
    .line 219
    move-object/from16 v21, v6

    .line 220
    .line 221
    :catch_0
    :cond_8
    :goto_1
    move-object/from16 v6, v31

    .line 222
    .line 223
    goto/16 :goto_0

    .line 224
    .line 225
    :cond_9
    move-object/from16 v7, p1

    .line 226
    .line 227
    const-string v6, "bidding_data"

    .line 228
    .line 229
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v6

    .line 233
    if-eqz v6, :cond_a

    .line 234
    .line 235
    invoke-virtual {v7}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v6

    .line 239
    move-object v10, v6

    .line 240
    goto :goto_1

    .line 241
    :cond_a
    sget-object v6, Lcom/google/android/gms/internal/ads/zzbcv;->zzkI:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 242
    .line 243
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 244
    .line 245
    .line 246
    move-result-object v7

    .line 247
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v6

    .line 251
    check-cast v6, Ljava/lang/Boolean;

    .line 252
    .line 253
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 254
    .line 255
    .line 256
    move-result v6

    .line 257
    if-eqz v6, :cond_b

    .line 258
    .line 259
    const-string v6, "topics_should_record_observation"

    .line 260
    .line 261
    invoke-static {v13, v6}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v6

    .line 265
    if-eqz v6, :cond_b

    .line 266
    .line 267
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    .line 268
    .line 269
    .line 270
    goto :goto_1

    .line 271
    :cond_b
    const-string v6, "adapter_response_replacement_key"

    .line 272
    .line 273
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    move-result v6

    .line 277
    if-eqz v6, :cond_c

    .line 278
    .line 279
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v6

    .line 283
    goto/16 :goto_0

    .line 284
    .line 285
    :cond_c
    const-string v6, "response_info_extras"

    .line 286
    .line 287
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result v6

    .line 291
    if-eqz v6, :cond_e

    .line 292
    .line 293
    sget-object v6, Lcom/google/android/gms/internal/ads/zzbcv;->zzgV:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 294
    .line 295
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 296
    .line 297
    .line 298
    move-result-object v7

    .line 299
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v6

    .line 303
    check-cast v6, Ljava/lang/Boolean;

    .line 304
    .line 305
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 306
    .line 307
    .line 308
    move-result v6

    .line 309
    if-eqz v6, :cond_d

    .line 310
    .line 311
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/ads/internal/util/zzbs;->zzi(Landroid/util/JsonReader;)Lorg/json/JSONObject;

    .line 312
    .line 313
    .line 314
    move-result-object v6

    .line 315
    invoke-static {v6}, Lcom/google/android/gms/ads/internal/util/zzbs;->zza(Lorg/json/JSONObject;)Landroid/os/Bundle;

    .line 316
    .line 317
    .line 318
    move-result-object v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 319
    if-eqz v6, :cond_8

    .line 320
    .line 321
    move-object v2, v6

    .line 322
    goto :goto_1

    .line 323
    :catch_1
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->skipValue()V

    .line 324
    .line 325
    .line 326
    goto :goto_1

    .line 327
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->skipValue()V

    .line 328
    .line 329
    .line 330
    goto :goto_1

    .line 331
    :cond_e
    const-string v6, "adRequestPostBody"

    .line 332
    .line 333
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    move-result v6

    .line 337
    if-eqz v6, :cond_10

    .line 338
    .line 339
    sget-object v6, Lcom/google/android/gms/internal/ads/zzbcv;->zzjB:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 340
    .line 341
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 342
    .line 343
    .line 344
    move-result-object v7

    .line 345
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v6

    .line 349
    check-cast v6, Ljava/lang/Boolean;

    .line 350
    .line 351
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 352
    .line 353
    .line 354
    move-result v6

    .line 355
    if-eqz v6, :cond_f

    .line 356
    .line 357
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v6

    .line 361
    move-object v15, v6

    .line 362
    goto/16 :goto_1

    .line 363
    .line 364
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->skipValue()V

    .line 365
    .line 366
    .line 367
    goto/16 :goto_1

    .line 368
    .line 369
    :cond_10
    const-string v6, "adRequestUrl"

    .line 370
    .line 371
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 372
    .line 373
    .line 374
    move-result v6

    .line 375
    if-eqz v6, :cond_12

    .line 376
    .line 377
    sget-object v6, Lcom/google/android/gms/internal/ads/zzbcv;->zzjB:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 378
    .line 379
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 380
    .line 381
    .line 382
    move-result-object v7

    .line 383
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v6

    .line 387
    check-cast v6, Ljava/lang/Boolean;

    .line 388
    .line 389
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 390
    .line 391
    .line 392
    move-result v6

    .line 393
    if-eqz v6, :cond_11

    .line 394
    .line 395
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v6

    .line 399
    move-object v14, v6

    .line 400
    goto/16 :goto_1

    .line 401
    .line 402
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->skipValue()V

    .line 403
    .line 404
    .line 405
    goto/16 :goto_1

    .line 406
    .line 407
    :cond_12
    sget-object v6, Lcom/google/android/gms/internal/ads/zzbcv;->zzjC:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 408
    .line 409
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 410
    .line 411
    .line 412
    move-result-object v7

    .line 413
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    move-result-object v7

    .line 417
    check-cast v7, Ljava/lang/Boolean;

    .line 418
    .line 419
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 420
    .line 421
    .line 422
    move-result v7

    .line 423
    if-eqz v7, :cond_13

    .line 424
    .line 425
    const-string v7, "adResponseBody"

    .line 426
    .line 427
    invoke-static {v13, v7}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 428
    .line 429
    .line 430
    move-result v7

    .line 431
    if-eqz v7, :cond_13

    .line 432
    .line 433
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v5

    .line 437
    goto/16 :goto_1

    .line 438
    .line 439
    :cond_13
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 440
    .line 441
    .line 442
    move-result-object v7

    .line 443
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-result-object v6

    .line 447
    check-cast v6, Ljava/lang/Boolean;

    .line 448
    .line 449
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 450
    .line 451
    .line 452
    move-result v6

    .line 453
    if-eqz v6, :cond_14

    .line 454
    .line 455
    const-string v6, "adResponseHeaders"

    .line 456
    .line 457
    invoke-static {v13, v6}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 458
    .line 459
    .line 460
    move-result v6

    .line 461
    if-eqz v6, :cond_14

    .line 462
    .line 463
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/ads/internal/util/zzbs;->zzi(Landroid/util/JsonReader;)Lorg/json/JSONObject;

    .line 464
    .line 465
    .line 466
    move-result-object v3

    .line 467
    goto/16 :goto_1

    .line 468
    .line 469
    :cond_14
    const-string v6, "max_parallel_renderers"

    .line 470
    .line 471
    invoke-static {v13, v6}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 472
    .line 473
    .line 474
    move-result v6

    .line 475
    if-eqz v6, :cond_15

    .line 476
    .line 477
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextInt()I

    .line 478
    .line 479
    .line 480
    move-result v6

    .line 481
    const/4 v7, 0x1

    .line 482
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    .line 483
    .line 484
    .line 485
    move-result v29

    .line 486
    goto/16 :goto_1

    .line 487
    .line 488
    :cond_15
    const/4 v7, 0x1

    .line 489
    sget-object v6, Lcom/google/android/gms/internal/ads/zzbcv;->zzjJ:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 490
    .line 491
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 492
    .line 493
    .line 494
    move-result-object v7

    .line 495
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    move-result-object v6

    .line 499
    check-cast v6, Ljava/lang/Boolean;

    .line 500
    .line 501
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 502
    .line 503
    .line 504
    move-result v6

    .line 505
    if-eqz v6, :cond_16

    .line 506
    .line 507
    const-string v6, "inspector_ad_transaction_extras"

    .line 508
    .line 509
    invoke-static {v13, v6}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 510
    .line 511
    .line 512
    move-result v6

    .line 513
    if-eqz v6, :cond_16

    .line 514
    .line 515
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/ads/internal/util/zzbs;->zzi(Landroid/util/JsonReader;)Lorg/json/JSONObject;

    .line 516
    .line 517
    .line 518
    move-result-object v4

    .line 519
    goto/16 :goto_1

    .line 520
    .line 521
    :cond_16
    sget-object v6, Lcom/google/android/gms/internal/ads/zzbcv;->zzcr:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 522
    .line 523
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 524
    .line 525
    .line 526
    move-result-object v7

    .line 527
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 528
    .line 529
    .line 530
    move-result-object v6

    .line 531
    check-cast v6, Ljava/lang/Boolean;

    .line 532
    .line 533
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 534
    .line 535
    .line 536
    move-result v6

    .line 537
    if-eqz v6, :cond_17

    .line 538
    .line 539
    const-string v6, "latency_extras"

    .line 540
    .line 541
    invoke-static {v13, v6}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 542
    .line 543
    .line 544
    move-result v6

    .line 545
    if-eqz v6, :cond_17

    .line 546
    .line 547
    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/ads/internal/util/zzbs;->zzi(Landroid/util/JsonReader;)Lorg/json/JSONObject;

    .line 548
    .line 549
    .line 550
    move-result-object v6

    .line 551
    invoke-static {v6}, Lcom/google/android/gms/ads/internal/util/zzbs;->zza(Lorg/json/JSONObject;)Landroid/os/Bundle;

    .line 552
    .line 553
    .line 554
    move-result-object v6

    .line 555
    if-eqz v6, :cond_8

    .line 556
    .line 557
    const-string v7, "start_time"

    .line 558
    .line 559
    invoke-virtual {v6, v7}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    .line 560
    .line 561
    .line 562
    move-result-wide v32

    .line 563
    invoke-static/range {v32 .. v33}, Lcom/google/android/gms/internal/ads/zzfbx;->zza(D)J

    .line 564
    .line 565
    .line 566
    move-result-wide v24

    .line 567
    const-string v7, "end_time"

    .line 568
    .line 569
    invoke-virtual {v6, v7}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    .line 570
    .line 571
    .line 572
    move-result-wide v6

    .line 573
    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/zzfbx;->zza(D)J

    .line 574
    .line 575
    .line 576
    move-result-wide v22
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 577
    goto/16 :goto_1

    .line 578
    .line 579
    :catch_2
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->skipValue()V

    .line 580
    .line 581
    .line 582
    goto/16 :goto_1

    .line 583
    .line 584
    :cond_17
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->skipValue()V

    .line 585
    .line 586
    .line 587
    goto/16 :goto_1

    .line 588
    .line 589
    :cond_18
    move-object/from16 v31, v6

    .line 590
    .line 591
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->endObject()V

    .line 592
    .line 593
    .line 594
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzfbx;->zza:Ljava/util/List;

    .line 595
    .line 596
    iput v11, v0, Lcom/google/android/gms/internal/ads/zzfbx;->zzc:I

    .line 597
    .line 598
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbfb;->zzc:Lcom/google/android/gms/internal/ads/zzbef;

    .line 599
    .line 600
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbef;->zze()Ljava/lang/Object;

    .line 601
    .line 602
    .line 603
    move-result-object v1

    .line 604
    check-cast v1, Ljava/lang/Boolean;

    .line 605
    .line 606
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 607
    .line 608
    .line 609
    move-result v1

    .line 610
    if-eqz v1, :cond_19

    .line 611
    .line 612
    const/4 v1, -0x1

    .line 613
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzfbx;->zzd:I

    .line 614
    .line 615
    goto :goto_2

    .line 616
    :cond_19
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbej;->zza:Lcom/google/android/gms/internal/ads/zzbef;

    .line 617
    .line 618
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbef;->zze()Ljava/lang/Object;

    .line 619
    .line 620
    .line 621
    move-result-object v6

    .line 622
    check-cast v6, Ljava/lang/Long;

    .line 623
    .line 624
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 625
    .line 626
    .line 627
    move-result-wide v6

    .line 628
    cmp-long v6, v6, v16

    .line 629
    .line 630
    if-lez v6, :cond_1a

    .line 631
    .line 632
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbef;->zze()Ljava/lang/Object;

    .line 633
    .line 634
    .line 635
    move-result-object v1

    .line 636
    check-cast v1, Ljava/lang/Long;

    .line 637
    .line 638
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    .line 639
    .line 640
    .line 641
    move-result v1

    .line 642
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzfbx;->zzd:I

    .line 643
    .line 644
    goto :goto_2

    .line 645
    :cond_1a
    move/from16 v13, v28

    .line 646
    .line 647
    iput v13, v0, Lcom/google/android/gms/internal/ads/zzfbx;->zzd:I

    .line 648
    .line 649
    :goto_2
    iput-object v8, v0, Lcom/google/android/gms/internal/ads/zzfbx;->zzb:Ljava/lang/String;

    .line 650
    .line 651
    iput-object v9, v0, Lcom/google/android/gms/internal/ads/zzfbx;->zze:Ljava/lang/String;

    .line 652
    .line 653
    iput v12, v0, Lcom/google/android/gms/internal/ads/zzfbx;->zzf:I

    .line 654
    .line 655
    move-wide/from16 v11, v26

    .line 656
    .line 657
    iput-wide v11, v0, Lcom/google/android/gms/internal/ads/zzfbx;->zzg:J

    .line 658
    .line 659
    move-object/from16 v1, v21

    .line 660
    .line 661
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzfbx;->zzj:Lcom/google/android/gms/internal/ads/zzfbw;

    .line 662
    .line 663
    move/from16 v9, v20

    .line 664
    .line 665
    iput-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzfbx;->zzh:Z

    .line 666
    .line 667
    iput-object v10, v0, Lcom/google/android/gms/internal/ads/zzfbx;->zzi:Ljava/lang/String;

    .line 668
    .line 669
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzfbx;->zzk:Landroid/os/Bundle;

    .line 670
    .line 671
    iput-object v14, v0, Lcom/google/android/gms/internal/ads/zzfbx;->zzl:Ljava/lang/String;

    .line 672
    .line 673
    iput-object v15, v0, Lcom/google/android/gms/internal/ads/zzfbx;->zzm:Ljava/lang/String;

    .line 674
    .line 675
    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzfbx;->zzn:Ljava/lang/String;

    .line 676
    .line 677
    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzfbx;->zzo:Lorg/json/JSONObject;

    .line 678
    .line 679
    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzfbx;->zzp:Lorg/json/JSONObject;

    .line 680
    .line 681
    move-object/from16 v6, v31

    .line 682
    .line 683
    iput-object v6, v0, Lcom/google/android/gms/internal/ads/zzfbx;->zzq:Ljava/lang/String;

    .line 684
    .line 685
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbez;->zza:Lcom/google/android/gms/internal/ads/zzbef;

    .line 686
    .line 687
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbef;->zze()Ljava/lang/Object;

    .line 688
    .line 689
    .line 690
    move-result-object v2

    .line 691
    check-cast v2, Ljava/lang/Long;

    .line 692
    .line 693
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 694
    .line 695
    .line 696
    move-result-wide v2

    .line 697
    cmp-long v2, v2, v18

    .line 698
    .line 699
    if-lez v2, :cond_1b

    .line 700
    .line 701
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbef;->zze()Ljava/lang/Object;

    .line 702
    .line 703
    .line 704
    move-result-object v1

    .line 705
    check-cast v1, Ljava/lang/Long;

    .line 706
    .line 707
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    .line 708
    .line 709
    .line 710
    move-result v29

    .line 711
    :cond_1b
    move/from16 v1, v29

    .line 712
    .line 713
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzfbx;->zzr:I

    .line 714
    .line 715
    move-wide/from16 v5, v24

    .line 716
    .line 717
    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzfbx;->zzs:J

    .line 718
    .line 719
    move-wide/from16 v5, v22

    .line 720
    .line 721
    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzfbx;->zzt:J

    .line 722
    .line 723
    return-void
.end method

.method private static final zza(D)J
    .locals 2

    .line 1
    const-wide/high16 v0, 0x43e0000000000000L    # 9.223372036854776E18

    .line 2
    .line 3
    cmpl-double v0, p0, v0

    .line 4
    .line 5
    if-gtz v0, :cond_1

    .line 6
    .line 7
    const-wide/high16 v0, -0x3c20000000000000L    # -9.223372036854776E18

    .line 8
    .line 9
    cmpg-double v0, p0, v0

    .line 10
    .line 11
    if-gez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    double-to-long p0, p0

    .line 15
    return-wide p0

    .line 16
    :cond_1
    :goto_0
    const-wide/16 p0, -0x1

    .line 17
    .line 18
    return-wide p0
.end method
