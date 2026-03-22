.class public final Lcom/google/android/gms/internal/ads/zzdzy;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzffx;


# instance fields
.field protected final zza:Landroid/content/Context;

.field protected final zzb:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbvt;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdzy;->zza:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdzy;->zzb:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdzw;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdzy;->zzb(Lcom/google/android/gms/internal/ads/zzdzw;)Lcom/google/android/gms/internal/ads/zzdzx;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzdzw;)Lcom/google/android/gms/internal/ads/zzdzx;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdwf;
        }
    .end annotation

    .line 1
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzdzw;->zza:Ljava/lang/String;

    .line 2
    .line 3
    iget v2, p1, Lcom/google/android/gms/internal/ads/zzdzw;->zzb:I

    .line 4
    .line 5
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzdzw;->zzc:Ljava/util/Map;

    .line 6
    .line 7
    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzdzw;->zzd:[B

    .line 8
    .line 9
    iget-object v5, p1, Lcom/google/android/gms/internal/ads/zzdzw;->zze:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 16
    .line 17
    .line 18
    move-result-wide v6

    .line 19
    move-object v0, p0

    .line 20
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzdzy;->zzc(Ljava/lang/String;ILjava/util/Map;[BLjava/lang/String;J)Lcom/google/android/gms/internal/ads/zzdzx;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public final zzc(Ljava/lang/String;ILjava/util/Map;[BLjava/lang/String;J)Lcom/google/android/gms/internal/ads/zzdzx;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdwf;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    const-string v3, "Received error HTTP response code: "

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    :try_start_0
    new-instance v5, Lcom/google/android/gms/internal/ads/zzdzx;

    .line 11
    .line 12
    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzdzx;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzdzy;->zzb:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v6, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v7, "SDK version: "

    .line 23
    .line 24
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    sget v7, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 35
    .line 36
    invoke-static {v6}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    new-instance v6, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v7, "AdRequestServiceImpl: Sending request: "

    .line 45
    .line 46
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    invoke-static {v6}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zze(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    new-instance v6, Ljava/net/URL;

    .line 60
    .line 61
    invoke-direct {v6, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    new-instance v13, Ljava/util/HashMap;

    .line 65
    .line 66
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 67
    .line 68
    .line 69
    const/4 v14, 0x0

    .line 70
    move v15, v14

    .line 71
    :goto_0
    sget v0, Lcom/google/android/gms/internal/ads/zzfqp;->zzb:I

    .line 72
    .line 73
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    move-object v10, v0

    .line 78
    check-cast v10, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 79
    .line 80
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzdzy;->zza:Landroid/content/Context;

    .line 85
    .line 86
    const/4 v9, 0x0

    .line 87
    const/4 v11, 0x0

    .line 88
    move/from16 v12, p2

    .line 89
    .line 90
    invoke-virtual/range {v6 .. v12}, Lcom/google/android/gms/ads/internal/util/zzs;->zzg(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;ZI)V

    .line 91
    .line 92
    .line 93
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    if-eqz v6, :cond_0

    .line 106
    .line 107
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    check-cast v6, Ljava/util/Map$Entry;

    .line 112
    .line 113
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    check-cast v7, Ljava/lang/String;

    .line 118
    .line 119
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    check-cast v6, Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {v10, v7, v6}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :catchall_0
    move-exception v0

    .line 130
    goto/16 :goto_11

    .line 131
    .line 132
    :catch_0
    move-exception v0

    .line 133
    goto/16 :goto_f

    .line 134
    .line 135
    :cond_0
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-nez v0, :cond_1

    .line 140
    .line 141
    const-string v0, "Content-Type"

    .line 142
    .line 143
    move-object/from16 v6, p5

    .line 144
    .line 145
    invoke-virtual {v10, v0, v6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_1
    move-object/from16 v6, p5

    .line 150
    .line 151
    :goto_2
    new-instance v7, Lcom/google/android/gms/ads/internal/util/client/zzl;

    .line 152
    .line 153
    const/4 v9, 0x0

    .line 154
    invoke-direct {v7, v9}, Lcom/google/android/gms/ads/internal/util/client/zzl;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzdwf; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    .line 156
    .line 157
    :try_start_2
    invoke-virtual {v7, v10, v2}, Lcom/google/android/gms/ads/internal/util/client/zzl;->zzc(Ljava/net/HttpURLConnection;[B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 158
    .line 159
    .line 160
    goto :goto_3

    .line 161
    :catchall_1
    move-exception v0

    .line 162
    :try_start_3
    const-string v11, "Network request logging failed."

    .line 163
    .line 164
    invoke-static {v11, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    .line 166
    .line 167
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzn;

    .line 168
    .line 169
    .line 170
    move-result-object v11

    .line 171
    const-string v12, "HttpRequestFunction.logAdRequest"

    .line 172
    .line 173
    invoke-virtual {v11, v0, v12}, Lcom/google/android/gms/internal/ads/zzbzn;->zzv(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    :goto_3
    array-length v0, v2

    .line 177
    if-lez v0, :cond_2

    .line 178
    .line 179
    invoke-virtual {v10, v4}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/zzdwf; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 183
    .line 184
    .line 185
    :try_start_4
    new-instance v11, Ljava/io/BufferedOutputStream;

    .line 186
    .line 187
    invoke-virtual {v10}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-direct {v11, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 192
    .line 193
    .line 194
    :try_start_5
    invoke-virtual {v11, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 195
    .line 196
    .line 197
    :try_start_6
    invoke-static {v11}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 198
    .line 199
    .line 200
    goto :goto_5

    .line 201
    :catchall_2
    move-exception v0

    .line 202
    move-object v9, v11

    .line 203
    goto :goto_4

    .line 204
    :catchall_3
    move-exception v0

    .line 205
    :goto_4
    invoke-static {v9}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 206
    .line 207
    .line 208
    throw v0

    .line 209
    :cond_2
    :goto_5
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    invoke-virtual {v10}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 214
    .line 215
    .line 216
    move-result-object v11

    .line 217
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 218
    .line 219
    .line 220
    move-result-object v11

    .line 221
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 222
    .line 223
    .line 224
    move-result-object v11

    .line 225
    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 226
    .line 227
    .line 228
    move-result v12

    .line 229
    if-eqz v12, :cond_4

    .line 230
    .line 231
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v12

    .line 235
    check-cast v12, Ljava/util/Map$Entry;

    .line 236
    .line 237
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v16

    .line 241
    move-object/from16 v9, v16

    .line 242
    .line 243
    check-cast v9, Ljava/lang/String;

    .line 244
    .line 245
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v12

    .line 249
    check-cast v12, Ljava/util/List;

    .line 250
    .line 251
    invoke-interface {v13, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v16

    .line 255
    if-eqz v16, :cond_3

    .line 256
    .line 257
    invoke-interface {v13, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v9

    .line 261
    check-cast v9, Ljava/util/List;

    .line 262
    .line 263
    invoke-interface {v9, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 264
    .line 265
    .line 266
    :goto_7
    const/4 v9, 0x0

    .line 267
    goto :goto_6

    .line 268
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    .line 269
    .line 270
    invoke-direct {v4, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 271
    .line 272
    .line 273
    invoke-interface {v13, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    const/4 v4, 0x1

    .line 277
    goto :goto_7

    .line 278
    :cond_4
    invoke-virtual {v7, v10, v0}, Lcom/google/android/gms/ads/internal/util/client/zzl;->zze(Ljava/net/HttpURLConnection;I)V

    .line 279
    .line 280
    .line 281
    iput v0, v5, Lcom/google/android/gms/internal/ads/zzdzx;->zza:I

    .line 282
    .line 283
    iput-object v13, v5, Lcom/google/android/gms/internal/ads/zzdzx;->zzb:Ljava/util/Map;

    .line 284
    .line 285
    const-string v4, ""

    .line 286
    .line 287
    iput-object v4, v5, Lcom/google/android/gms/internal/ads/zzdzx;->zzc:Ljava/lang/String;
    :try_end_6
    .catch Lcom/google/android/gms/internal/ads/zzdwf; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 288
    .line 289
    const/16 v4, 0xc8

    .line 290
    .line 291
    const/16 v9, 0x12c

    .line 292
    .line 293
    if-lt v0, v4, :cond_8

    .line 294
    .line 295
    if-ge v0, v9, :cond_8

    .line 296
    .line 297
    :try_start_7
    new-instance v2, Ljava/io/InputStreamReader;

    .line 298
    .line 299
    invoke-virtual {v10}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 304
    .line 305
    .line 306
    :try_start_8
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 307
    .line 308
    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    .line 310
    .line 311
    const/16 v3, 0x2000

    .line 312
    .line 313
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 314
    .line 315
    .line 316
    const/16 v3, 0x800

    .line 317
    .line 318
    new-array v3, v3, [C

    .line 319
    .line 320
    :goto_8
    invoke-virtual {v2, v3}, Ljava/io/Reader;->read([C)I

    .line 321
    .line 322
    .line 323
    move-result v4

    .line 324
    const/4 v6, -0x1

    .line 325
    if-eq v4, v6, :cond_5

    .line 326
    .line 327
    invoke-virtual {v0, v3, v14, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    goto :goto_8

    .line 331
    :catchall_4
    move-exception v0

    .line 332
    goto :goto_b

    .line 333
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 337
    :try_start_9
    invoke-static {v2}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v7, v0}, Lcom/google/android/gms/ads/internal/util/client/zzl;->zzg(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    iput-object v0, v5, Lcom/google/android/gms/internal/ads/zzdzx;->zzc:Ljava/lang/String;

    .line 344
    .line 345
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 346
    .line 347
    .line 348
    move-result v0

    .line 349
    if-eqz v0, :cond_7

    .line 350
    .line 351
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcv;->zzfM:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 352
    .line 353
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 354
    .line 355
    .line 356
    move-result-object v2

    .line 357
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    check-cast v0, Ljava/lang/Boolean;

    .line 362
    .line 363
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 364
    .line 365
    .line 366
    move-result v0

    .line 367
    if-eqz v0, :cond_6

    .line 368
    .line 369
    goto :goto_9

    .line 370
    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdwf;

    .line 371
    .line 372
    const/4 v2, 0x3

    .line 373
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzdwf;-><init>(I)V

    .line 374
    .line 375
    .line 376
    throw v0

    .line 377
    :cond_7
    :goto_9
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 382
    .line 383
    .line 384
    move-result-wide v2

    .line 385
    sub-long v2, v2, p6

    .line 386
    .line 387
    iput-wide v2, v5, Lcom/google/android/gms/internal/ads/zzdzx;->zzd:J
    :try_end_9
    .catch Lcom/google/android/gms/internal/ads/zzdwf; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 388
    .line 389
    :goto_a
    :try_start_a
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    .line 390
    .line 391
    .line 392
    goto/16 :goto_10

    .line 393
    .line 394
    :catch_1
    move-exception v0

    .line 395
    goto/16 :goto_12

    .line 396
    .line 397
    :goto_b
    move-object v9, v2

    .line 398
    goto :goto_c

    .line 399
    :catchall_5
    move-exception v0

    .line 400
    const/4 v9, 0x0

    .line 401
    :goto_c
    :try_start_b
    invoke-static {v9}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 402
    .line 403
    .line 404
    throw v0

    .line 405
    :cond_8
    if-lt v0, v9, :cond_c

    .line 406
    .line 407
    const/16 v4, 0x190

    .line 408
    .line 409
    if-ge v0, v4, :cond_c

    .line 410
    .line 411
    const-string v0, "Location"

    .line 412
    .line 413
    invoke-virtual {v10, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 418
    .line 419
    .line 420
    move-result v4

    .line 421
    if-nez v4, :cond_b

    .line 422
    .line 423
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbcv;->zzib:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 424
    .line 425
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 426
    .line 427
    .line 428
    move-result-object v7

    .line 429
    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    move-result-object v4

    .line 433
    check-cast v4, Ljava/lang/Boolean;

    .line 434
    .line 435
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 436
    .line 437
    .line 438
    move-result v4
    :try_end_b
    .catch Lcom/google/android/gms/internal/ads/zzdwf; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 439
    if-eqz v4, :cond_9

    .line 440
    .line 441
    :try_start_c
    new-instance v4, Ljava/net/URI;

    .line 442
    .line 443
    invoke-direct {v4, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {v4}, Ljava/net/URI;->toURL()Ljava/net/URL;

    .line 447
    .line 448
    .line 449
    move-result-object v0
    :try_end_c
    .catch Ljava/net/URISyntaxException; {:try_start_c .. :try_end_c} :catch_2
    .catch Lcom/google/android/gms/internal/ads/zzdwf; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 450
    :goto_d
    const/16 v16, 0x1

    .line 451
    .line 452
    goto :goto_e

    .line 453
    :catch_2
    move-exception v0

    .line 454
    :try_start_d
    new-instance v2, Lcom/google/android/gms/internal/ads/zzdwf;

    .line 455
    .line 456
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v3

    .line 460
    const/4 v4, 0x1

    .line 461
    invoke-direct {v2, v4, v3, v0}, Lcom/google/android/gms/internal/ads/zzdwf;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 462
    .line 463
    .line 464
    throw v2

    .line 465
    :cond_9
    new-instance v4, Ljava/net/URL;

    .line 466
    .line 467
    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    move-object v0, v4

    .line 471
    goto :goto_d

    .line 472
    :goto_e
    add-int/lit8 v15, v15, 0x1

    .line 473
    .line 474
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbcv;->zzfv:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 475
    .line 476
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 477
    .line 478
    .line 479
    move-result-object v7

    .line 480
    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    move-result-object v4

    .line 484
    check-cast v4, Ljava/lang/Integer;

    .line 485
    .line 486
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 487
    .line 488
    .line 489
    move-result v4
    :try_end_d
    .catch Lcom/google/android/gms/internal/ads/zzdwf; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 490
    if-gt v15, v4, :cond_a

    .line 491
    .line 492
    :try_start_e
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1

    .line 493
    .line 494
    .line 495
    move-object v6, v0

    .line 496
    const/4 v4, 0x1

    .line 497
    goto/16 :goto_0

    .line 498
    .line 499
    :cond_a
    :try_start_f
    const-string v0, "Too many redirects."

    .line 500
    .line 501
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 502
    .line 503
    .line 504
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdwf;

    .line 505
    .line 506
    const-string v2, "Too many redirects"

    .line 507
    .line 508
    const/4 v4, 0x1

    .line 509
    invoke-direct {v0, v4, v2}, Lcom/google/android/gms/internal/ads/zzdwf;-><init>(ILjava/lang/String;)V

    .line 510
    .line 511
    .line 512
    throw v0

    .line 513
    :cond_b
    const-string v0, "No location header to follow redirect."

    .line 514
    .line 515
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 516
    .line 517
    .line 518
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdwf;

    .line 519
    .line 520
    const-string v2, "No location header to follow redirect"

    .line 521
    .line 522
    const/4 v4, 0x1

    .line 523
    invoke-direct {v0, v4, v2}, Lcom/google/android/gms/internal/ads/zzdwf;-><init>(ILjava/lang/String;)V

    .line 524
    .line 525
    .line 526
    throw v0

    .line 527
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    .line 528
    .line 529
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 530
    .line 531
    .line 532
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    .line 534
    .line 535
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 536
    .line 537
    .line 538
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object v2

    .line 542
    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 543
    .line 544
    .line 545
    new-instance v2, Lcom/google/android/gms/internal/ads/zzdwf;

    .line 546
    .line 547
    new-instance v4, Ljava/lang/StringBuilder;

    .line 548
    .line 549
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 550
    .line 551
    .line 552
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    .line 554
    .line 555
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 556
    .line 557
    .line 558
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object v0

    .line 562
    const/4 v4, 0x1

    .line 563
    invoke-direct {v2, v4, v0}, Lcom/google/android/gms/internal/ads/zzdwf;-><init>(ILjava/lang/String;)V

    .line 564
    .line 565
    .line 566
    throw v2
    :try_end_f
    .catch Lcom/google/android/gms/internal/ads/zzdwf; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 567
    :goto_f
    :try_start_10
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbcv;->zziC:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 568
    .line 569
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 570
    .line 571
    .line 572
    move-result-object v3

    .line 573
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 574
    .line 575
    .line 576
    move-result-object v2

    .line 577
    check-cast v2, Ljava/lang/Boolean;

    .line 578
    .line 579
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 580
    .line 581
    .line 582
    move-result v2

    .line 583
    if-eqz v2, :cond_d

    .line 584
    .line 585
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 586
    .line 587
    .line 588
    move-result-object v0

    .line 589
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 590
    .line 591
    .line 592
    move-result-wide v2

    .line 593
    sub-long v2, v2, p6

    .line 594
    .line 595
    iput-wide v2, v5, Lcom/google/android/gms/internal/ads/zzdzx;->zzd:J

    .line 596
    .line 597
    goto/16 :goto_a

    .line 598
    .line 599
    :goto_10
    return-object v5

    .line 600
    :cond_d
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 601
    :goto_11
    :try_start_11
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 602
    .line 603
    .line 604
    throw v0
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_1

    .line 605
    :goto_12
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 606
    .line 607
    .line 608
    move-result-object v2

    .line 609
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 610
    .line 611
    .line 612
    move-result-object v2

    .line 613
    sget v3, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 614
    .line 615
    const-string v3, "Error while connecting to ad server: "

    .line 616
    .line 617
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object v2

    .line 621
    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 622
    .line 623
    .line 624
    new-instance v3, Lcom/google/android/gms/internal/ads/zzdwf;

    .line 625
    .line 626
    const/4 v4, 0x1

    .line 627
    invoke-direct {v3, v4, v2, v0}, Lcom/google/android/gms/internal/ads/zzdwf;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 628
    .line 629
    .line 630
    throw v3
.end method
