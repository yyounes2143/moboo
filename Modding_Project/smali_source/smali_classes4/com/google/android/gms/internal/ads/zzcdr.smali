.class public final Lcom/google/android/gms/internal/ads/zzcdr;
.super Lcom/google/android/gms/internal/ads/zzcdi;
.source "Proguard"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcbm;


# static fields
.field public static final synthetic zzd:I


# instance fields
.field private zze:Lcom/google/android/gms/internal/ads/zzcbn;

.field private zzf:Ljava/lang/String;

.field private zzg:Z

.field private zzh:Z

.field private zzi:Lcom/google/android/gms/internal/ads/zzcda;

.field private zzj:J

.field private zzk:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcbw;Lcom/google/android/gms/internal/ads/zzcbv;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcdi;-><init>(Lcom/google/android/gms/internal/ads/zzcbw;)V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcbw;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcej;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzc:Ljava/lang/ref/WeakReference;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/google/android/gms/internal/ads/zzcbw;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-direct {v0, p1, p2, v1, v2}, Lcom/google/android/gms/internal/ads/zzcej;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcbv;Lcom/google/android/gms/internal/ads/zzcbw;Ljava/lang/Integer;)V

    .line 20
    .line 21
    .line 22
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 23
    .line 24
    const-string p1, "ExoPlayerAdapter initialized."

    .line 25
    .line 26
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdr;->zze:Lcom/google/android/gms/internal/ads/zzcbn;

    .line 30
    .line 31
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzcbn;->zzL(Lcom/google/android/gms/internal/ads/zzcbm;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/ads/zzcdr;)V
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcdr;->zzf:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcdr;->zzc(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    const-string v17, "error"

    .line 10
    .line 11
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcv;->zzN:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 12
    .line 13
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/lang/Long;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 24
    .line 25
    .line 26
    move-result-wide v4

    .line 27
    const-wide/16 v6, 0x3e8

    .line 28
    .line 29
    mul-long/2addr v4, v6

    .line 30
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcv;->zzt:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 31
    .line 32
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Ljava/lang/Integer;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    int-to-long v6, v0

    .line 47
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcv;->zzcc:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 48
    .line 49
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Ljava/lang/Boolean;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 69
    .line 70
    .line 71
    move-result-wide v8

    .line 72
    iget-wide v10, v1, Lcom/google/android/gms/internal/ads/zzcdr;->zzj:J

    .line 73
    .line 74
    sub-long/2addr v8, v10

    .line 75
    cmp-long v2, v8, v4

    .line 76
    .line 77
    if-gtz v2, :cond_a

    .line 78
    .line 79
    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzcdr;->zzg:Z

    .line 80
    .line 81
    if-nez v2, :cond_9

    .line 82
    .line 83
    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzcdr;->zzh:Z

    .line 84
    .line 85
    if-eqz v2, :cond_0

    .line 86
    .line 87
    monitor-exit p0

    .line 88
    goto/16 :goto_5

    .line 89
    .line 90
    :cond_0
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzcdr;->zze:Lcom/google/android/gms/internal/ads/zzcbn;

    .line 91
    .line 92
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcbn;->zzV()Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-eqz v2, :cond_8

    .line 97
    .line 98
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzcdr;->zze:Lcom/google/android/gms/internal/ads/zzcbn;

    .line 99
    .line 100
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcbn;->zzz()J

    .line 101
    .line 102
    .line 103
    move-result-wide v4

    .line 104
    const-wide/16 v18, 0x0

    .line 105
    .line 106
    cmp-long v2, v4, v18

    .line 107
    .line 108
    if-lez v2, :cond_7

    .line 109
    .line 110
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzcdr;->zze:Lcom/google/android/gms/internal/ads/zzcbn;

    .line 111
    .line 112
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcbn;->zzv()J

    .line 113
    .line 114
    .line 115
    move-result-wide v8

    .line 116
    iget-wide v10, v1, Lcom/google/android/gms/internal/ads/zzcdr;->zzk:J

    .line 117
    .line 118
    cmp-long v2, v8, v10

    .line 119
    .line 120
    if-eqz v2, :cond_5

    .line 121
    .line 122
    cmp-long v2, v8, v18

    .line 123
    .line 124
    if-lez v2, :cond_1

    .line 125
    .line 126
    const/4 v2, 0x1

    .line 127
    goto :goto_0

    .line 128
    :cond_1
    const/4 v2, 0x0

    .line 129
    :goto_0
    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzcdr;->zzf:Ljava/lang/String;

    .line 130
    .line 131
    const-wide/16 v11, -0x1

    .line 132
    .line 133
    if-eqz v0, :cond_2

    .line 134
    .line 135
    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzcdr;->zze:Lcom/google/android/gms/internal/ads/zzcbn;

    .line 136
    .line 137
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzcbn;->zzA()J

    .line 138
    .line 139
    .line 140
    move-result-wide v13

    .line 141
    goto :goto_1

    .line 142
    :cond_2
    move-wide v13, v11

    .line 143
    :goto_1
    if-eqz v0, :cond_3

    .line 144
    .line 145
    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzcdr;->zze:Lcom/google/android/gms/internal/ads/zzcbn;

    .line 146
    .line 147
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzcbn;->zzx()J

    .line 148
    .line 149
    .line 150
    move-result-wide v15

    .line 151
    goto :goto_2

    .line 152
    :cond_3
    move-wide v15, v11

    .line 153
    :goto_2
    if-eqz v0, :cond_4

    .line 154
    .line 155
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcdr;->zze:Lcom/google/android/gms/internal/ads/zzcbn;

    .line 156
    .line 157
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcbn;->zzB()J

    .line 158
    .line 159
    .line 160
    move-result-wide v11

    .line 161
    :cond_4
    move-wide/from16 v20, v15

    .line 162
    .line 163
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcbn;->zzs()I

    .line 164
    .line 165
    .line 166
    move-result v15

    .line 167
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcbn;->zzu()I

    .line 168
    .line 169
    .line 170
    move-result v16

    .line 171
    move-wide/from16 v22, v8

    .line 172
    .line 173
    move v8, v2

    .line 174
    move-object v2, v10

    .line 175
    move-wide v9, v13

    .line 176
    move-wide v13, v11

    .line 177
    move-wide/from16 v11, v20

    .line 178
    .line 179
    move-wide/from16 v20, v6

    .line 180
    .line 181
    move-wide v6, v4

    .line 182
    move-wide/from16 v4, v22

    .line 183
    .line 184
    invoke-virtual/range {v1 .. v16}, Lcom/google/android/gms/internal/ads/zzcdi;->zzo(Ljava/lang/String;Ljava/lang/String;JJZJJJII)V

    .line 185
    .line 186
    .line 187
    iput-wide v4, v1, Lcom/google/android/gms/internal/ads/zzcdr;->zzk:J

    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_5
    move-wide/from16 v20, v6

    .line 191
    .line 192
    move-wide v6, v4

    .line 193
    move-wide v4, v8

    .line 194
    :goto_3
    cmp-long v0, v4, v6

    .line 195
    .line 196
    if-ltz v0, :cond_6

    .line 197
    .line 198
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcdr;->zzf:Ljava/lang/String;

    .line 199
    .line 200
    invoke-virtual {v1, v0, v3, v6, v7}, Lcom/google/android/gms/internal/ads/zzcdi;->zzj(Ljava/lang/String;Ljava/lang/String;J)V

    .line 201
    .line 202
    .line 203
    monitor-exit p0

    .line 204
    goto/16 :goto_5

    .line 205
    .line 206
    :cond_6
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcdr;->zze:Lcom/google/android/gms/internal/ads/zzcbn;

    .line 207
    .line 208
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcbn;->zzw()J

    .line 209
    .line 210
    .line 211
    move-result-wide v6

    .line 212
    cmp-long v0, v6, v20

    .line 213
    .line 214
    if-ltz v0, :cond_7

    .line 215
    .line 216
    cmp-long v0, v4, v18

    .line 217
    .line 218
    if-lez v0, :cond_7

    .line 219
    .line 220
    monitor-exit p0

    .line 221
    goto/16 :goto_5

    .line 222
    .line 223
    :cond_7
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcv;->zzO:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 225
    .line 226
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    check-cast v0, Ljava/lang/Long;

    .line 235
    .line 236
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 237
    .line 238
    .line 239
    move-result-wide v2

    .line 240
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcdr;->zzx(J)V

    .line 241
    .line 242
    .line 243
    return-void

    .line 244
    :cond_8
    :try_start_2
    const-string v17, "exoPlayerReleased"

    .line 245
    .line 246
    new-instance v0, Ljava/io/IOException;

    .line 247
    .line 248
    const-string v2, "ExoPlayer was released during preloading."

    .line 249
    .line 250
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    throw v0

    .line 254
    :catchall_0
    move-exception v0

    .line 255
    goto :goto_4

    .line 256
    :cond_9
    const-string v17, "externalAbort"

    .line 257
    .line 258
    new-instance v0, Ljava/io/IOException;

    .line 259
    .line 260
    const-string v2, "Abort requested before buffering finished. "

    .line 261
    .line 262
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    throw v0

    .line 266
    :cond_a
    const-string v17, "downloadTimeout"

    .line 267
    .line 268
    new-instance v0, Ljava/io/IOException;

    .line 269
    .line 270
    new-instance v2, Ljava/lang/StringBuilder;

    .line 271
    .line 272
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 273
    .line 274
    .line 275
    const-string v6, "Timeout reached. Limit: "

    .line 276
    .line 277
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    const-string v4, " ms"

    .line 284
    .line 285
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    throw v0

    .line 296
    :goto_4
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 297
    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 298
    :catch_0
    move-exception v0

    .line 299
    move-object/from16 v2, v17

    .line 300
    .line 301
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzcdr;->zzf:Ljava/lang/String;

    .line 302
    .line 303
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v5

    .line 307
    new-instance v6, Ljava/lang/StringBuilder;

    .line 308
    .line 309
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 310
    .line 311
    .line 312
    const-string v7, "Failed to preload url "

    .line 313
    .line 314
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    const-string v4, " Exception: "

    .line 321
    .line 322
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v4

    .line 332
    sget v5, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 333
    .line 334
    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    const-string v4, "VideoStreamExoPlayerCache.preload"

    .line 338
    .line 339
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzn;

    .line 340
    .line 341
    .line 342
    move-result-object v5

    .line 343
    invoke-virtual {v5, v0, v4}, Lcom/google/android/gms/internal/ads/zzbzn;->zzv(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcdi;->release()V

    .line 347
    .line 348
    .line 349
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzcdr;->zzd(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzcdr;->zzf:Ljava/lang/String;

    .line 354
    .line 355
    invoke-virtual {v1, v4, v3, v2, v0}, Lcom/google/android/gms/internal/ads/zzcdi;->zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    :goto_5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzA()Lcom/google/android/gms/internal/ads/zzcdb;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzcdr;->zzi:Lcom/google/android/gms/internal/ads/zzcda;

    .line 363
    .line 364
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcdb;->zzc(Lcom/google/android/gms/internal/ads/zzcda;)V

    .line 365
    .line 366
    .line 367
    return-void
.end method

.method public static final zzc(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzg(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v0, "cache:"

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method private static zzd(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p0, "/"

    .line 22
    .line 23
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p0, ":"

    .line 30
    .line 31
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method

.method private final zzx(J)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfrl;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcdq;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcdq;-><init>(Lcom/google/android/gms/internal/ads/zzcdr;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdr;->zze:Lcom/google/android/gms/internal/ads/zzcbn;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcbn;->zzL(Lcom/google/android/gms/internal/ads/zzcbm;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdr;->zze:Lcom/google/android/gms/internal/ads/zzcbn;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcbn;->zzH()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final zzD(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public final zza()Lcom/google/android/gms/internal/ads/zzcbn;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcdr;->zzh:Z

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 6
    .line 7
    .line 8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdr;->zze:Lcom/google/android/gms/internal/ads/zzcbn;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcbn;->zzL(Lcom/google/android/gms/internal/ads/zzcbm;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdr;->zze:Lcom/google/android/gms/internal/ads/zzcbn;

    .line 16
    .line 17
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdr;->zze:Lcom/google/android/gms/internal/ads/zzcbn;

    .line 18
    .line 19
    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    throw v0
.end method

.method public final zzf()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcdr;->zzg:Z

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcdi;->release()V

    .line 9
    .line 10
    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdr;->zzf:Ljava/lang/String;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcdr;->zzc(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdr;->zzf:Ljava/lang/String;

    .line 21
    .line 22
    const-string v2, "externalAbort"

    .line 23
    .line 24
    const-string v3, "Programmatic precache abort."

    .line 25
    .line 26
    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzcdi;->zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    throw v0
.end method

.method public final zzi(ZJ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzc:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/zzcbw;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object v1, Lcom/google/android/gms/internal/ads/zzcaa;->zzf:Lcom/google/android/gms/internal/ads/zzgdj;

    .line 12
    .line 13
    new-instance v2, Lcom/google/android/gms/internal/ads/zzcdp;

    .line 14
    .line 15
    invoke-direct {v2, v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcdp;-><init>(Lcom/google/android/gms/internal/ads/zzcbw;ZJ)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final zzk(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .line 1
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 2
    .line 3
    const-string p1, "Precache error"

    .line 4
    .line 5
    invoke-static {p1, p2}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    const-string p1, "VideoStreamExoPlayerCache.onError"

    .line 9
    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzn;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzbzn;->zzv(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final zzl(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .line 1
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 2
    .line 3
    const-string p1, "Precache exception"

    .line 4
    .line 5
    invoke-static {p1, p2}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    const-string p1, "VideoStreamExoPlayerCache.onException"

    .line 9
    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzn;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzbzn;->zzv(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final zzm(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final zzp(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdr;->zze:Lcom/google/android/gms/internal/ads/zzcbn;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcbn;->zzJ(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzq(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdr;->zze:Lcom/google/android/gms/internal/ads/zzcbn;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcbn;->zzK(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzr(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdr;->zze:Lcom/google/android/gms/internal/ads/zzcbn;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcbn;->zzM(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzs(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdr;->zze:Lcom/google/android/gms/internal/ads/zzcbn;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcbn;->zzN(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzt(Ljava/lang/String;)Z
    .locals 1

    .line 1
    filled-new-array {p1}, [Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzcdi;->zzu(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public final zzu(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 39

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    const/16 v17, 0x1

    .line 8
    .line 9
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzcdr;->zzf:Ljava/lang/String;

    .line 10
    .line 11
    const-string v18, "error"

    .line 12
    .line 13
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzcdr;->zzc(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const/16 v19, 0x0

    .line 18
    .line 19
    :try_start_0
    array-length v4, v0

    .line 20
    new-array v4, v4, [Landroid/net/Uri;

    .line 21
    .line 22
    move/from16 v5, v19

    .line 23
    .line 24
    :goto_0
    array-length v6, v0

    .line 25
    if-ge v5, v6, :cond_0

    .line 26
    .line 27
    aget-object v6, v0, v5

    .line 28
    .line 29
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    aput-object v6, v4, v5

    .line 34
    .line 35
    add-int/lit8 v5, v5, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcdr;->zze:Lcom/google/android/gms/internal/ads/zzcbn;

    .line 39
    .line 40
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzcdi;->zzb:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/ads/zzcbn;->zzF([Landroid/net/Uri;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcdi;->zzc:Ljava/lang/ref/WeakReference;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lcom/google/android/gms/internal/ads/zzcbw;

    .line 52
    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    invoke-interface {v0, v3, v1}, Lcom/google/android/gms/internal/ads/zzcbw;->zzt(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcdi;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 63
    .line 64
    .line 65
    move-result-wide v20

    .line 66
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbcv;->zzO:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 67
    .line 68
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    check-cast v4, Ljava/lang/Long;

    .line 77
    .line 78
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 79
    .line 80
    .line 81
    move-result-wide v4

    .line 82
    sget-object v6, Lcom/google/android/gms/internal/ads/zzbcv;->zzN:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 83
    .line 84
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    check-cast v6, Ljava/lang/Long;

    .line 93
    .line 94
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 95
    .line 96
    .line 97
    move-result-wide v6

    .line 98
    const-wide/16 v8, 0x3e8

    .line 99
    .line 100
    mul-long/2addr v6, v8

    .line 101
    sget-object v8, Lcom/google/android/gms/internal/ads/zzbcv;->zzt:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 102
    .line 103
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 104
    .line 105
    .line 106
    move-result-object v9

    .line 107
    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    check-cast v8, Ljava/lang/Integer;

    .line 112
    .line 113
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 114
    .line 115
    .line 116
    move-result v8

    .line 117
    int-to-long v8, v8

    .line 118
    sget-object v10, Lcom/google/android/gms/internal/ads/zzbcv;->zzcc:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 119
    .line 120
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 121
    .line 122
    .line 123
    move-result-object v11

    .line 124
    invoke-virtual {v11, v10}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v10

    .line 128
    check-cast v10, Ljava/lang/Boolean;

    .line 129
    .line 130
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 131
    .line 132
    .line 133
    move-result v22

    .line 134
    const-wide/16 v23, -0x1

    .line 135
    .line 136
    move-wide/from16 v10, v23

    .line 137
    .line 138
    :goto_1
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 139
    :try_start_1
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 140
    .line 141
    .line 142
    move-result-wide v12

    .line 143
    sub-long v12, v12, v20

    .line 144
    .line 145
    cmp-long v12, v12, v6

    .line 146
    .line 147
    if-gtz v12, :cond_d

    .line 148
    .line 149
    iget-boolean v12, v1, Lcom/google/android/gms/internal/ads/zzcdr;->zzg:Z

    .line 150
    .line 151
    if-nez v12, :cond_c

    .line 152
    .line 153
    iget-boolean v12, v1, Lcom/google/android/gms/internal/ads/zzcdr;->zzh:Z

    .line 154
    .line 155
    if-eqz v12, :cond_2

    .line 156
    .line 157
    monitor-exit p0

    .line 158
    goto/16 :goto_8

    .line 159
    .line 160
    :cond_2
    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzcdr;->zze:Lcom/google/android/gms/internal/ads/zzcbn;

    .line 161
    .line 162
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzcbn;->zzV()Z

    .line 163
    .line 164
    .line 165
    move-result v12

    .line 166
    if-eqz v12, :cond_b

    .line 167
    .line 168
    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzcdr;->zze:Lcom/google/android/gms/internal/ads/zzcbn;

    .line 169
    .line 170
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzcbn;->zzz()J

    .line 171
    .line 172
    .line 173
    move-result-wide v12

    .line 174
    const-wide/16 v25, 0x0

    .line 175
    .line 176
    cmp-long v14, v12, v25

    .line 177
    .line 178
    if-lez v14, :cond_a

    .line 179
    .line 180
    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzcdr;->zze:Lcom/google/android/gms/internal/ads/zzcbn;

    .line 181
    .line 182
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzcbn;->zzv()J

    .line 183
    .line 184
    .line 185
    move-result-wide v14

    .line 186
    cmp-long v16, v14, v10

    .line 187
    .line 188
    if-eqz v16, :cond_7

    .line 189
    .line 190
    cmp-long v10, v14, v25

    .line 191
    .line 192
    if-lez v10, :cond_3

    .line 193
    .line 194
    move-wide v9, v8

    .line 195
    move/from16 v8, v17

    .line 196
    .line 197
    goto :goto_2

    .line 198
    :cond_3
    move-wide v9, v8

    .line 199
    move/from16 v8, v19

    .line 200
    .line 201
    :goto_2
    if-eqz v22, :cond_4

    .line 202
    .line 203
    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzcdr;->zze:Lcom/google/android/gms/internal/ads/zzcbn;

    .line 204
    .line 205
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzcbn;->zzA()J

    .line 206
    .line 207
    .line 208
    move-result-wide v27

    .line 209
    goto :goto_3

    .line 210
    :cond_4
    move-wide/from16 v27, v23

    .line 211
    .line 212
    :goto_3
    if-eqz v22, :cond_5

    .line 213
    .line 214
    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzcdr;->zze:Lcom/google/android/gms/internal/ads/zzcbn;

    .line 215
    .line 216
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzcbn;->zzx()J

    .line 217
    .line 218
    .line 219
    move-result-wide v29

    .line 220
    goto :goto_4

    .line 221
    :cond_5
    move-wide/from16 v29, v23

    .line 222
    .line 223
    :goto_4
    if-eqz v22, :cond_6

    .line 224
    .line 225
    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzcdr;->zze:Lcom/google/android/gms/internal/ads/zzcbn;

    .line 226
    .line 227
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzcbn;->zzB()J

    .line 228
    .line 229
    .line 230
    move-result-wide v31

    .line 231
    :goto_5
    move-wide/from16 v33, v4

    .line 232
    .line 233
    move-wide v4, v14

    .line 234
    goto :goto_6

    .line 235
    :cond_6
    move-wide/from16 v31, v23

    .line 236
    .line 237
    goto :goto_5

    .line 238
    :goto_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcbn;->zzs()I

    .line 239
    .line 240
    .line 241
    move-result v15

    .line 242
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcbn;->zzu()I

    .line 243
    .line 244
    .line 245
    move-result v16

    .line 246
    move-wide/from16 v35, v27

    .line 247
    .line 248
    move-wide/from16 v27, v9

    .line 249
    .line 250
    move-wide/from16 v9, v35

    .line 251
    .line 252
    move-wide/from16 v37, v6

    .line 253
    .line 254
    move-wide v6, v12

    .line 255
    move-wide/from16 v11, v29

    .line 256
    .line 257
    move-wide/from16 v13, v31

    .line 258
    .line 259
    move-wide/from16 v35, v33

    .line 260
    .line 261
    invoke-virtual/range {v1 .. v16}, Lcom/google/android/gms/internal/ads/zzcdi;->zzo(Ljava/lang/String;Ljava/lang/String;JJZJJJII)V

    .line 262
    .line 263
    .line 264
    move-wide v10, v4

    .line 265
    goto :goto_7

    .line 266
    :cond_7
    move-wide/from16 v35, v4

    .line 267
    .line 268
    move-wide/from16 v37, v6

    .line 269
    .line 270
    move-wide/from16 v27, v8

    .line 271
    .line 272
    move-wide v6, v12

    .line 273
    move-wide v4, v14

    .line 274
    :goto_7
    cmp-long v8, v4, v6

    .line 275
    .line 276
    if-ltz v8, :cond_8

    .line 277
    .line 278
    invoke-virtual {v1, v2, v3, v6, v7}, Lcom/google/android/gms/internal/ads/zzcdi;->zzj(Ljava/lang/String;Ljava/lang/String;J)V

    .line 279
    .line 280
    .line 281
    monitor-exit p0

    .line 282
    goto :goto_8

    .line 283
    :cond_8
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzcdr;->zze:Lcom/google/android/gms/internal/ads/zzcbn;

    .line 284
    .line 285
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzcbn;->zzw()J

    .line 286
    .line 287
    .line 288
    move-result-wide v6

    .line 289
    cmp-long v6, v6, v27

    .line 290
    .line 291
    if-ltz v6, :cond_9

    .line 292
    .line 293
    cmp-long v4, v4, v25

    .line 294
    .line 295
    if-lez v4, :cond_9

    .line 296
    .line 297
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 298
    :goto_8
    return v17

    .line 299
    :cond_9
    move-wide/from16 v4, v35

    .line 300
    .line 301
    goto :goto_9

    .line 302
    :cond_a
    move-wide/from16 v37, v6

    .line 303
    .line 304
    move-wide/from16 v27, v8

    .line 305
    .line 306
    :goto_9
    :try_start_2
    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 307
    .line 308
    .line 309
    :try_start_3
    monitor-exit p0

    .line 310
    move-wide/from16 v8, v27

    .line 311
    .line 312
    move-wide/from16 v6, v37

    .line 313
    .line 314
    goto/16 :goto_1

    .line 315
    .line 316
    :catch_0
    const-string v18, "interrupted"

    .line 317
    .line 318
    new-instance v0, Ljava/io/IOException;

    .line 319
    .line 320
    const-string v4, "Wait interrupted."

    .line 321
    .line 322
    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    throw v0

    .line 326
    :catchall_0
    move-exception v0

    .line 327
    goto :goto_a

    .line 328
    :cond_b
    const-string v18, "exoPlayerReleased"

    .line 329
    .line 330
    new-instance v0, Ljava/io/IOException;

    .line 331
    .line 332
    const-string v4, "ExoPlayer was released during preloading."

    .line 333
    .line 334
    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    throw v0

    .line 338
    :cond_c
    const-string v18, "externalAbort"

    .line 339
    .line 340
    new-instance v0, Ljava/io/IOException;

    .line 341
    .line 342
    const-string v4, "Abort requested before buffering finished. "

    .line 343
    .line 344
    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    throw v0

    .line 348
    :cond_d
    move-wide/from16 v37, v6

    .line 349
    .line 350
    const-string v18, "downloadTimeout"

    .line 351
    .line 352
    new-instance v0, Ljava/io/IOException;

    .line 353
    .line 354
    new-instance v4, Ljava/lang/StringBuilder;

    .line 355
    .line 356
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 357
    .line 358
    .line 359
    const-string v5, "Timeout reached. Limit: "

    .line 360
    .line 361
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    move-wide/from16 v6, v37

    .line 365
    .line 366
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    const-string v5, " ms"

    .line 370
    .line 371
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v4

    .line 378
    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    throw v0

    .line 382
    :goto_a
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 383
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 384
    :catch_1
    move-exception v0

    .line 385
    move-object/from16 v4, v18

    .line 386
    .line 387
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v5

    .line 391
    new-instance v6, Ljava/lang/StringBuilder;

    .line 392
    .line 393
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 394
    .line 395
    .line 396
    const-string v7, "Failed to preload url "

    .line 397
    .line 398
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    const-string v7, " Exception: "

    .line 405
    .line 406
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v5

    .line 416
    sget v6, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 417
    .line 418
    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    const-string v5, "VideoStreamExoPlayerCache.preload"

    .line 422
    .line 423
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzn;

    .line 424
    .line 425
    .line 426
    move-result-object v6

    .line 427
    invoke-virtual {v6, v0, v5}, Lcom/google/android/gms/internal/ads/zzbzn;->zzv(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcdi;->release()V

    .line 431
    .line 432
    .line 433
    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzcdr;->zzd(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/ads/zzcdi;->zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    return v19
.end method

.method public final zzv()V
    .locals 1

    .line 1
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 2
    .line 3
    const-string v0, "Precache onRenderedFirstFrame"

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final zzw(Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcda;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdr;->zzf:Ljava/lang/String;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcdr;->zzi:Lcom/google/android/gms/internal/ads/zzcda;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcdr;->zzc(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p3

    .line 10
    const/4 v1, 0x0

    .line 11
    :try_start_0
    array-length v2, p2

    .line 12
    new-array v2, v2, [Landroid/net/Uri;

    .line 13
    .line 14
    move v3, v1

    .line 15
    :goto_0
    array-length v4, p2

    .line 16
    if-ge v3, v4, :cond_0

    .line 17
    .line 18
    aget-object v4, p2, v3

    .line 19
    .line 20
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    aput-object v4, v2, v3

    .line 25
    .line 26
    add-int/2addr v3, v0

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception p2

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcdr;->zze:Lcom/google/android/gms/internal/ads/zzcbn;

    .line 31
    .line 32
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzb:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/internal/ads/zzcbn;->zzF([Landroid/net/Uri;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzc:Ljava/lang/ref/WeakReference;

    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    check-cast p2, Lcom/google/android/gms/internal/ads/zzcbw;

    .line 44
    .line 45
    if-eqz p2, :cond_1

    .line 46
    .line 47
    invoke-interface {p2, p3, p0}, Lcom/google/android/gms/internal/ads/zzcbw;->zzt(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcdi;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 55
    .line 56
    .line 57
    move-result-wide v2

    .line 58
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzcdr;->zzj:J

    .line 59
    .line 60
    const-wide/16 v2, -0x1

    .line 61
    .line 62
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzcdr;->zzk:J

    .line 63
    .line 64
    const-wide/16 v2, 0x0

    .line 65
    .line 66
    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/ads/zzcdr;->zzx(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    return v0

    .line 70
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string v3, "Failed to preload url "

    .line 80
    .line 81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v3, " Exception: "

    .line 88
    .line 89
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    sget v2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 100
    .line 101
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    const-string v0, "VideoStreamExoPlayerCache.preload"

    .line 105
    .line 106
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzn;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {v2, p2, v0}, Lcom/google/android/gms/internal/ads/zzbzn;->zzv(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcdi;->release()V

    .line 114
    .line 115
    .line 116
    const-string v0, "error"

    .line 117
    .line 118
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/zzcdr;->zzd(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    invoke-virtual {p0, p1, p3, v0, p2}, Lcom/google/android/gms/internal/ads/zzcdi;->zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    return v1
.end method
