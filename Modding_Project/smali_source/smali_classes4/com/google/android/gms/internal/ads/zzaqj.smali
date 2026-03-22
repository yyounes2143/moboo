.class public Lcom/google/android/gms/internal/ads/zzaqj;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzapn;


# instance fields
.field protected final zza:Lcom/google/android/gms/internal/ads/zzaql;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzaqi;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaqi;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaql;

    .line 2
    .line 3
    const/16 v1, 0x1000

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzaql;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqj;->zzb:Lcom/google/android/gms/internal/ads/zzaqi;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqj;->zza:Lcom/google/android/gms/internal/ads/zzaql;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/ads/zzapu;)Lcom/google/android/gms/internal/ads/zzapq;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaqd;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const/4 v5, 0x0

    .line 6
    const-string v6, "Error occurred when closing InputStream"

    .line 7
    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 9
    .line 10
    .line 11
    move-result-wide v7

    .line 12
    :goto_0
    const/4 v9, 0x0

    .line 13
    :try_start_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzapu;->zzd()Lcom/google/android/gms/internal/ads/zzapd;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :catch_0
    move-exception v0

    .line 23
    move/from16 v19, v5

    .line 24
    .line 25
    const/16 v18, 0x2

    .line 26
    .line 27
    const/16 v25, 0x1

    .line 28
    .line 29
    goto/16 :goto_13

    .line 30
    .line 31
    :cond_0
    new-instance v10, Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 34
    .line 35
    .line 36
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzapd;->zzb:Ljava/lang/String;

    .line 37
    .line 38
    if-eqz v11, :cond_1

    .line 39
    .line 40
    const-string v12, "If-None-Match"

    .line 41
    .line 42
    invoke-interface {v10, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    :cond_1
    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzapd;->zzd:J

    .line 46
    .line 47
    const-wide/16 v13, 0x0

    .line 48
    .line 49
    cmp-long v0, v11, v13

    .line 50
    .line 51
    if-lez v0, :cond_2

    .line 52
    .line 53
    const-string v0, "If-Modified-Since"

    .line 54
    .line 55
    invoke-static {v11, v12}, Lcom/google/android/gms/internal/ads/zzaqr;->zzc(J)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v11

    .line 59
    invoke-interface {v10, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    :cond_2
    move-object v0, v10

    .line 63
    :goto_1
    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzaqj;->zzb:Lcom/google/android/gms/internal/ads/zzaqi;

    .line 64
    .line 65
    invoke-virtual {v10, v2, v0}, Lcom/google/android/gms/internal/ads/zzaqi;->zza(Lcom/google/android/gms/internal/ads/zzapu;Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzaqs;

    .line 66
    .line 67
    .line 68
    move-result-object v10
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :try_start_1
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzaqs;->zzb()I

    .line 70
    .line 71
    .line 72
    move-result v12

    .line 73
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzaqs;->zzd()Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v17
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 77
    const/16 v0, 0x130

    .line 78
    .line 79
    if-ne v12, v0, :cond_a

    .line 80
    .line 81
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 82
    .line 83
    .line 84
    move-result-wide v11

    .line 85
    sub-long v22, v11, v7

    .line 86
    .line 87
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzapu;->zzd()Lcom/google/android/gms/internal/ads/zzapd;

    .line 88
    .line 89
    .line 90
    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 91
    if-nez v0, :cond_3

    .line 92
    .line 93
    :try_start_3
    new-instance v13, Lcom/google/android/gms/internal/ads/zzapq;

    .line 94
    .line 95
    const/4 v15, 0x0

    .line 96
    const/16 v16, 0x1

    .line 97
    .line 98
    const/16 v14, 0x130

    .line 99
    .line 100
    move-object/from16 v19, v17

    .line 101
    .line 102
    move-wide/from16 v17, v22

    .line 103
    .line 104
    invoke-direct/range {v13 .. v19}, Lcom/google/android/gms/internal/ads/zzapq;-><init>(I[BZJLjava/util/List;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 105
    .line 106
    .line 107
    goto/16 :goto_7

    .line 108
    .line 109
    :catch_1
    move-exception v0

    .line 110
    move/from16 v19, v5

    .line 111
    .line 112
    const/16 v18, 0x2

    .line 113
    .line 114
    const/16 v25, 0x1

    .line 115
    .line 116
    goto/16 :goto_12

    .line 117
    .line 118
    :cond_3
    move-object/from16 v11, v17

    .line 119
    .line 120
    move-wide/from16 v17, v22

    .line 121
    .line 122
    :try_start_4
    new-instance v12, Ljava/util/TreeSet;

    .line 123
    .line 124
    sget-object v13, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 125
    .line 126
    invoke-direct {v12, v13}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 127
    .line 128
    .line 129
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    .line 130
    .line 131
    .line 132
    move-result v13
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 133
    if-nez v13, :cond_4

    .line 134
    .line 135
    :try_start_5
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 136
    .line 137
    .line 138
    move-result-object v13

    .line 139
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 140
    .line 141
    .line 142
    move-result v14

    .line 143
    if-eqz v14, :cond_4

    .line 144
    .line 145
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v14

    .line 149
    check-cast v14, Lcom/google/android/gms/internal/ads/zzapm;

    .line 150
    .line 151
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzapm;->zza()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v14

    .line 155
    invoke-interface {v12, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 156
    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_4
    :try_start_6
    new-instance v13, Ljava/util/ArrayList;

    .line 160
    .line 161
    invoke-direct {v13, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 162
    .line 163
    .line 164
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzapd;->zzh:Ljava/util/List;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 165
    .line 166
    if-eqz v11, :cond_7

    .line 167
    .line 168
    :try_start_7
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    .line 169
    .line 170
    .line 171
    move-result v11

    .line 172
    if-nez v11, :cond_6

    .line 173
    .line 174
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzapd;->zzh:Ljava/util/List;

    .line 175
    .line 176
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 177
    .line 178
    .line 179
    move-result-object v11

    .line 180
    :cond_5
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 181
    .line 182
    .line 183
    move-result v14

    .line 184
    if-eqz v14, :cond_6

    .line 185
    .line 186
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v14

    .line 190
    check-cast v14, Lcom/google/android/gms/internal/ads/zzapm;

    .line 191
    .line 192
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzapm;->zza()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v15

    .line 196
    invoke-interface {v12, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v15

    .line 200
    if-nez v15, :cond_5

    .line 201
    .line 202
    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 203
    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_6
    move-wide/from16 v22, v17

    .line 207
    .line 208
    const/16 v25, 0x1

    .line 209
    .line 210
    goto :goto_6

    .line 211
    :cond_7
    :try_start_8
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzapd;->zzg:Ljava/util/Map;

    .line 212
    .line 213
    invoke-interface {v11}, Ljava/util/Map;->isEmpty()Z

    .line 214
    .line 215
    .line 216
    move-result v11

    .line 217
    if-nez v11, :cond_9

    .line 218
    .line 219
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzapd;->zzg:Ljava/util/Map;

    .line 220
    .line 221
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 222
    .line 223
    .line 224
    move-result-object v11

    .line 225
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 226
    .line 227
    .line 228
    move-result-object v11

    .line 229
    :cond_8
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 230
    .line 231
    .line 232
    move-result v14

    .line 233
    if-eqz v14, :cond_9

    .line 234
    .line 235
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v14

    .line 239
    check-cast v14, Ljava/util/Map$Entry;

    .line 240
    .line 241
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v15

    .line 245
    invoke-interface {v12, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result v15

    .line 249
    if-nez v15, :cond_8

    .line 250
    .line 251
    new-instance v15, Lcom/google/android/gms/internal/ads/zzapm;

    .line 252
    .line 253
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v16
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 257
    const/16 v25, 0x1

    .line 258
    .line 259
    :try_start_9
    move-object/from16 v4, v16

    .line 260
    .line 261
    check-cast v4, Ljava/lang/String;

    .line 262
    .line 263
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v14

    .line 267
    check-cast v14, Ljava/lang/String;

    .line 268
    .line 269
    invoke-direct {v15, v4, v14}, Lcom/google/android/gms/internal/ads/zzapm;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    goto :goto_4

    .line 276
    :catch_2
    move-exception v0

    .line 277
    :goto_5
    move/from16 v19, v5

    .line 278
    .line 279
    const/16 v18, 0x2

    .line 280
    .line 281
    goto/16 :goto_12

    .line 282
    .line 283
    :catch_3
    move-exception v0

    .line 284
    const/16 v25, 0x1

    .line 285
    .line 286
    goto :goto_5

    .line 287
    :cond_9
    const/16 v25, 0x1

    .line 288
    .line 289
    move-wide/from16 v22, v17

    .line 290
    .line 291
    :goto_6
    new-instance v18, Lcom/google/android/gms/internal/ads/zzapq;

    .line 292
    .line 293
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzapd;->zza:[B

    .line 294
    .line 295
    const/16 v21, 0x1

    .line 296
    .line 297
    const/16 v19, 0x130

    .line 298
    .line 299
    move-object/from16 v20, v0

    .line 300
    .line 301
    move-object/from16 v24, v13

    .line 302
    .line 303
    invoke-direct/range {v18 .. v24}, Lcom/google/android/gms/internal/ads/zzapq;-><init>(I[BZJLjava/util/List;)V

    .line 304
    .line 305
    .line 306
    move-object/from16 v13, v18

    .line 307
    .line 308
    :goto_7
    return-object v13

    .line 309
    :cond_a
    move-object/from16 v11, v17

    .line 310
    .line 311
    const/16 v25, 0x1

    .line 312
    .line 313
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzaqs;->zzc()Ljava/io/InputStream;

    .line 314
    .line 315
    .line 316
    move-result-object v4
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    .line 317
    if-eqz v4, :cond_c

    .line 318
    .line 319
    :try_start_a
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzaqs;->zza()I

    .line 320
    .line 321
    .line 322
    move-result v0

    .line 323
    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzaqj;->zza:Lcom/google/android/gms/internal/ads/zzaql;

    .line 324
    .line 325
    new-instance v14, Lcom/google/android/gms/internal/ads/zzaqy;

    .line 326
    .line 327
    invoke-direct {v14, v13, v0}, Lcom/google/android/gms/internal/ads/zzaqy;-><init>(Lcom/google/android/gms/internal/ads/zzaql;I)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 328
    .line 329
    .line 330
    const/16 v0, 0x400

    .line 331
    .line 332
    :try_start_b
    invoke-virtual {v13, v0}, Lcom/google/android/gms/internal/ads/zzaql;->zzb(I)[B

    .line 333
    .line 334
    .line 335
    move-result-object v15
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 336
    :goto_8
    :try_start_c
    invoke-virtual {v4, v15}, Ljava/io/InputStream;->read([B)I

    .line 337
    .line 338
    .line 339
    move-result v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 340
    const/16 v18, 0x2

    .line 341
    .line 342
    const/4 v3, -0x1

    .line 343
    if-eq v0, v3, :cond_b

    .line 344
    .line 345
    :try_start_d
    invoke-virtual {v14, v15, v5, v0}, Lcom/google/android/gms/internal/ads/zzaqy;->write([BII)V

    .line 346
    .line 347
    .line 348
    goto :goto_8

    .line 349
    :catchall_0
    move-exception v0

    .line 350
    goto :goto_c

    .line 351
    :cond_b
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 352
    .line 353
    .line 354
    move-result-object v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 355
    :try_start_e
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    .line 356
    .line 357
    .line 358
    goto :goto_9

    .line 359
    :catch_4
    :try_start_f
    new-array v3, v5, [Ljava/lang/Object;

    .line 360
    .line 361
    invoke-static {v6, v3}, Lcom/google/android/gms/internal/ads/zzaqg;->zzd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 362
    .line 363
    .line 364
    :goto_9
    invoke-virtual {v13, v15}, Lcom/google/android/gms/internal/ads/zzaql;->zza([B)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzaqy;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5

    .line 368
    .line 369
    .line 370
    :goto_a
    move-object v13, v0

    .line 371
    goto :goto_e

    .line 372
    :catch_5
    move-exception v0

    .line 373
    :goto_b
    move/from16 v19, v5

    .line 374
    .line 375
    goto/16 :goto_12

    .line 376
    .line 377
    :catchall_1
    move-exception v0

    .line 378
    const/16 v18, 0x2

    .line 379
    .line 380
    goto :goto_c

    .line 381
    :catchall_2
    move-exception v0

    .line 382
    const/16 v18, 0x2

    .line 383
    .line 384
    move-object v15, v9

    .line 385
    :goto_c
    :try_start_10
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6

    .line 386
    .line 387
    .line 388
    goto :goto_d

    .line 389
    :catch_6
    :try_start_11
    new-array v3, v5, [Ljava/lang/Object;

    .line 390
    .line 391
    invoke-static {v6, v3}, Lcom/google/android/gms/internal/ads/zzaqg;->zzd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 392
    .line 393
    .line 394
    :goto_d
    invoke-virtual {v13, v15}, Lcom/google/android/gms/internal/ads/zzaql;->zza([B)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzaqy;->close()V

    .line 398
    .line 399
    .line 400
    throw v0

    .line 401
    :catch_7
    move-exception v0

    .line 402
    const/16 v18, 0x2

    .line 403
    .line 404
    goto :goto_b

    .line 405
    :cond_c
    const/16 v18, 0x2

    .line 406
    .line 407
    new-array v0, v5, [B
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5

    .line 408
    .line 409
    goto :goto_a

    .line 410
    :goto_e
    :try_start_12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 411
    .line 412
    .line 413
    move-result-wide v3

    .line 414
    sub-long/2addr v3, v7

    .line 415
    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzaqg;->zzb:Z

    .line 416
    .line 417
    if-nez v0, :cond_e

    .line 418
    .line 419
    const-wide/16 v14, 0xbb8

    .line 420
    .line 421
    cmp-long v0, v3, v14

    .line 422
    .line 423
    if-lez v0, :cond_d

    .line 424
    .line 425
    goto :goto_f

    .line 426
    :cond_d
    move/from16 v19, v5

    .line 427
    .line 428
    goto :goto_11

    .line 429
    :cond_e
    :goto_f
    const-string v0, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    .line 430
    .line 431
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 432
    .line 433
    .line 434
    move-result-object v3

    .line 435
    if-eqz v13, :cond_f

    .line 436
    .line 437
    array-length v4, v13

    .line 438
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 439
    .line 440
    .line 441
    move-result-object v4

    .line 442
    goto :goto_10

    .line 443
    :catch_8
    move-exception v0

    .line 444
    move/from16 v19, v5

    .line 445
    .line 446
    goto :goto_14

    .line 447
    :cond_f
    const-string v4, "null"

    .line 448
    .line 449
    :goto_10
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 450
    .line 451
    .line 452
    move-result-object v14

    .line 453
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzapu;->zzy()Lcom/google/android/gms/internal/ads/zzapi;

    .line 454
    .line 455
    .line 456
    move-result-object v15

    .line 457
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzapi;->zza()I

    .line 458
    .line 459
    .line 460
    move-result v15

    .line 461
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 462
    .line 463
    .line 464
    move-result-object v15
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_8

    .line 465
    move/from16 v19, v5

    .line 466
    .line 467
    const/4 v5, 0x5

    .line 468
    :try_start_13
    new-array v5, v5, [Ljava/lang/Object;

    .line 469
    .line 470
    aput-object v2, v5, v19

    .line 471
    .line 472
    aput-object v3, v5, v25

    .line 473
    .line 474
    aput-object v4, v5, v18

    .line 475
    .line 476
    const/4 v3, 0x3

    .line 477
    aput-object v14, v5, v3

    .line 478
    .line 479
    const/4 v3, 0x4

    .line 480
    aput-object v15, v5, v3

    .line 481
    .line 482
    invoke-static {v0, v5}, Lcom/google/android/gms/internal/ads/zzaqg;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 483
    .line 484
    .line 485
    :goto_11
    const/16 v0, 0xc8

    .line 486
    .line 487
    if-lt v12, v0, :cond_10

    .line 488
    .line 489
    const/16 v0, 0x12b

    .line 490
    .line 491
    if-gt v12, v0, :cond_10

    .line 492
    .line 493
    move-object/from16 v17, v11

    .line 494
    .line 495
    new-instance v11, Lcom/google/android/gms/internal/ads/zzapq;

    .line 496
    .line 497
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 498
    .line 499
    .line 500
    move-result-wide v3

    .line 501
    sub-long v15, v3, v7

    .line 502
    .line 503
    const/4 v14, 0x0

    .line 504
    invoke-direct/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/zzapq;-><init>(I[BZJLjava/util/List;)V

    .line 505
    .line 506
    .line 507
    return-object v11

    .line 508
    :cond_10
    new-instance v0, Ljava/io/IOException;

    .line 509
    .line 510
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    .line 511
    .line 512
    .line 513
    throw v0
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_9

    .line 514
    :catch_9
    move-exception v0

    .line 515
    goto :goto_14

    .line 516
    :goto_12
    move-object v13, v9

    .line 517
    goto :goto_14

    .line 518
    :goto_13
    move-object v10, v9

    .line 519
    move-object v13, v10

    .line 520
    :goto_14
    instance-of v3, v0, Ljava/net/SocketTimeoutException;

    .line 521
    .line 522
    if-eqz v3, :cond_11

    .line 523
    .line 524
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaqw;

    .line 525
    .line 526
    new-instance v3, Lcom/google/android/gms/internal/ads/zzaqc;

    .line 527
    .line 528
    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzaqc;-><init>()V

    .line 529
    .line 530
    .line 531
    const-string v4, "socket"

    .line 532
    .line 533
    invoke-direct {v0, v4, v3, v9}, Lcom/google/android/gms/internal/ads/zzaqw;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaqd;Lcom/google/android/gms/internal/ads/zzaqx;)V

    .line 534
    .line 535
    .line 536
    :goto_15
    move-object v3, v0

    .line 537
    goto :goto_17

    .line 538
    :cond_11
    instance-of v3, v0, Ljava/net/MalformedURLException;

    .line 539
    .line 540
    if-nez v3, :cond_17

    .line 541
    .line 542
    if-eqz v10, :cond_16

    .line 543
    .line 544
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzaqs;->zzb()I

    .line 545
    .line 546
    .line 547
    move-result v12

    .line 548
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 549
    .line 550
    .line 551
    move-result-object v0

    .line 552
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzapu;->zzk()Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v3

    .line 556
    move/from16 v4, v18

    .line 557
    .line 558
    new-array v5, v4, [Ljava/lang/Object;

    .line 559
    .line 560
    aput-object v0, v5, v19

    .line 561
    .line 562
    aput-object v3, v5, v25

    .line 563
    .line 564
    const-string v0, "Unexpected response code %d for %s"

    .line 565
    .line 566
    invoke-static {v0, v5}, Lcom/google/android/gms/internal/ads/zzaqg;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 567
    .line 568
    .line 569
    if-eqz v13, :cond_15

    .line 570
    .line 571
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzaqs;->zzd()Ljava/util/List;

    .line 572
    .line 573
    .line 574
    move-result-object v17

    .line 575
    new-instance v11, Lcom/google/android/gms/internal/ads/zzapq;

    .line 576
    .line 577
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 578
    .line 579
    .line 580
    move-result-wide v3

    .line 581
    sub-long v15, v3, v7

    .line 582
    .line 583
    const/4 v14, 0x0

    .line 584
    invoke-direct/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/zzapq;-><init>(I[BZJLjava/util/List;)V

    .line 585
    .line 586
    .line 587
    const/16 v0, 0x191

    .line 588
    .line 589
    if-eq v12, v0, :cond_14

    .line 590
    .line 591
    const/16 v0, 0x193

    .line 592
    .line 593
    if-ne v12, v0, :cond_12

    .line 594
    .line 595
    goto :goto_16

    .line 596
    :cond_12
    const/16 v0, 0x190

    .line 597
    .line 598
    if-lt v12, v0, :cond_13

    .line 599
    .line 600
    const/16 v0, 0x1f3

    .line 601
    .line 602
    if-gt v12, v0, :cond_13

    .line 603
    .line 604
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaph;

    .line 605
    .line 606
    invoke-direct {v0, v11}, Lcom/google/android/gms/internal/ads/zzaph;-><init>(Lcom/google/android/gms/internal/ads/zzapq;)V

    .line 607
    .line 608
    .line 609
    throw v0

    .line 610
    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaqb;

    .line 611
    .line 612
    invoke-direct {v0, v11}, Lcom/google/android/gms/internal/ads/zzaqb;-><init>(Lcom/google/android/gms/internal/ads/zzapq;)V

    .line 613
    .line 614
    .line 615
    throw v0

    .line 616
    :cond_14
    :goto_16
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaqw;

    .line 617
    .line 618
    new-instance v3, Lcom/google/android/gms/internal/ads/zzapc;

    .line 619
    .line 620
    invoke-direct {v3, v11}, Lcom/google/android/gms/internal/ads/zzapc;-><init>(Lcom/google/android/gms/internal/ads/zzapq;)V

    .line 621
    .line 622
    .line 623
    const-string v4, "auth"

    .line 624
    .line 625
    invoke-direct {v0, v4, v3, v9}, Lcom/google/android/gms/internal/ads/zzaqw;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaqd;Lcom/google/android/gms/internal/ads/zzaqx;)V

    .line 626
    .line 627
    .line 628
    goto :goto_15

    .line 629
    :cond_15
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaqw;

    .line 630
    .line 631
    new-instance v3, Lcom/google/android/gms/internal/ads/zzapp;

    .line 632
    .line 633
    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzapp;-><init>()V

    .line 634
    .line 635
    .line 636
    const-string v4, "network"

    .line 637
    .line 638
    invoke-direct {v0, v4, v3, v9}, Lcom/google/android/gms/internal/ads/zzaqw;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaqd;Lcom/google/android/gms/internal/ads/zzaqx;)V

    .line 639
    .line 640
    .line 641
    goto :goto_15

    .line 642
    :goto_17
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzapu;->zzy()Lcom/google/android/gms/internal/ads/zzapi;

    .line 643
    .line 644
    .line 645
    move-result-object v0

    .line 646
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzapu;->zzb()I

    .line 647
    .line 648
    .line 649
    move-result v4

    .line 650
    :try_start_14
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaqw;->zza(Lcom/google/android/gms/internal/ads/zzaqw;)Lcom/google/android/gms/internal/ads/zzaqd;

    .line 651
    .line 652
    .line 653
    move-result-object v5

    .line 654
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzapi;->zzc(Lcom/google/android/gms/internal/ads/zzaqd;)V
    :try_end_14
    .catch Lcom/google/android/gms/internal/ads/zzaqd; {:try_start_14 .. :try_end_14} :catch_a

    .line 655
    .line 656
    .line 657
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaqw;->zzb(Lcom/google/android/gms/internal/ads/zzaqw;)Ljava/lang/String;

    .line 658
    .line 659
    .line 660
    move-result-object v0

    .line 661
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 662
    .line 663
    .line 664
    move-result-object v3

    .line 665
    const/4 v4, 0x2

    .line 666
    new-array v5, v4, [Ljava/lang/Object;

    .line 667
    .line 668
    aput-object v0, v5, v19

    .line 669
    .line 670
    aput-object v3, v5, v25

    .line 671
    .line 672
    const-string v0, "%s-retry [timeout=%s]"

    .line 673
    .line 674
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 675
    .line 676
    .line 677
    move-result-object v0

    .line 678
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzapu;->zzm(Ljava/lang/String;)V

    .line 679
    .line 680
    .line 681
    move/from16 v5, v19

    .line 682
    .line 683
    goto/16 :goto_0

    .line 684
    .line 685
    :catch_a
    move-exception v0

    .line 686
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaqw;->zzb(Lcom/google/android/gms/internal/ads/zzaqw;)Ljava/lang/String;

    .line 687
    .line 688
    .line 689
    move-result-object v3

    .line 690
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 691
    .line 692
    .line 693
    move-result-object v4

    .line 694
    const/4 v5, 0x2

    .line 695
    new-array v5, v5, [Ljava/lang/Object;

    .line 696
    .line 697
    aput-object v3, v5, v19

    .line 698
    .line 699
    aput-object v4, v5, v25

    .line 700
    .line 701
    const-string v3, "%s-timeout-giveup [timeout=%s]"

    .line 702
    .line 703
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 704
    .line 705
    .line 706
    move-result-object v3

    .line 707
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzapu;->zzm(Ljava/lang/String;)V

    .line 708
    .line 709
    .line 710
    throw v0

    .line 711
    :cond_16
    new-instance v2, Lcom/google/android/gms/internal/ads/zzapr;

    .line 712
    .line 713
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzapr;-><init>(Ljava/lang/Throwable;)V

    .line 714
    .line 715
    .line 716
    throw v2

    .line 717
    :cond_17
    new-instance v3, Ljava/lang/RuntimeException;

    .line 718
    .line 719
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzapu;->zzk()Ljava/lang/String;

    .line 720
    .line 721
    .line 722
    move-result-object v2

    .line 723
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 724
    .line 725
    .line 726
    move-result-object v2

    .line 727
    const-string v4, "Bad URL "

    .line 728
    .line 729
    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 730
    .line 731
    .line 732
    move-result-object v2

    .line 733
    invoke-direct {v3, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 734
    .line 735
    .line 736
    throw v3
.end method
