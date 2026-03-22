.class final Lcom/google/android/gms/measurement/internal/zzit;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzbg;

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzjd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzjd;Lcom/google/android/gms/measurement/internal/zzbg;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzit;->zza:Lcom/google/android/gms/measurement/internal/zzbg;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzit;->zzb:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzit;->zzc:Lcom/google/android/gms/measurement/internal/zzjd;

    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 41
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "_r"

    .line 4
    .line 5
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzit;->zzc:Lcom/google/android/gms/measurement/internal/zzjd;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzjd;->zzL()Lcom/google/android/gms/measurement/internal/zzpg;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzpg;->zzZ()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzjd;->zzL()Lcom/google/android/gms/measurement/internal/zzpg;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzpg;->zzn()Lcom/google/android/gms/measurement/internal/zzlp;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()V

    .line 23
    .line 24
    .line 25
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 26
    .line 27
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzic;->zzL()V

    .line 28
    .line 29
    .line 30
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzit;->zza:Lcom/google/android/gms/measurement/internal/zzbg;

    .line 31
    .line 32
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzit;->zzb:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/zzbg;->zza:Ljava/lang/String;

    .line 41
    .line 42
    const-string v7, "_iap"

    .line 43
    .line 44
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    const/4 v8, 0x0

    .line 49
    if-nez v7, :cond_0

    .line 50
    .line 51
    const-string v7, "_iapx"

    .line 52
    .line 53
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    if-nez v7, :cond_0

    .line 58
    .line 59
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzj()Lcom/google/android/gms/measurement/internal/zzgs;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const-string v2, "Generating a payload for this event is not available. package_name, event_name"

    .line 70
    .line 71
    invoke-virtual {v0, v2, v6, v5}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    return-object v8

    .line 75
    :cond_0
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzol;->zzg:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 76
    .line 77
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzib;->zzh()Lcom/google/android/gms/internal/measurement/zzhz;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    .line 82
    .line 83
    .line 84
    move-result-object v9

    .line 85
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzav;->zzb()V

    .line 86
    .line 87
    .line 88
    :try_start_0
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    .line 89
    .line 90
    .line 91
    move-result-object v9

    .line 92
    invoke-virtual {v9, v6}, Lcom/google/android/gms/measurement/internal/zzav;->zzu(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzh;

    .line 93
    .line 94
    .line 95
    move-result-object v9

    .line 96
    const/4 v10, 0x0

    .line 97
    if-nez v9, :cond_1

    .line 98
    .line 99
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzj()Lcom/google/android/gms/measurement/internal/zzgs;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    const-string v3, "Log and bundle not available. package_name"

    .line 110
    .line 111
    invoke-virtual {v0, v3, v6}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    new-array v0, v10, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    .line 116
    :goto_0
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzav;->zzd()V

    .line 121
    .line 122
    .line 123
    return-object v0

    .line 124
    :catchall_0
    move-exception v0

    .line 125
    goto/16 :goto_d

    .line 126
    .line 127
    :cond_1
    :try_start_1
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzh;->zzD()Z

    .line 128
    .line 129
    .line 130
    move-result v11

    .line 131
    if-nez v11, :cond_2

    .line 132
    .line 133
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 134
    .line 135
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzj()Lcom/google/android/gms/measurement/internal/zzgs;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    const-string v3, "Log and bundle disabled. package_name"

    .line 144
    .line 145
    invoke-virtual {v0, v3, v6}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    new-array v0, v10, [B

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzid;->zzaE()Lcom/google/android/gms/internal/measurement/zzic;

    .line 152
    .line 153
    .line 154
    move-result-object v11

    .line 155
    const/4 v12, 0x1

    .line 156
    invoke-virtual {v11, v12}, Lcom/google/android/gms/internal/measurement/zzic;->zza(I)Lcom/google/android/gms/internal/measurement/zzic;

    .line 157
    .line 158
    .line 159
    const-string v13, "android"

    .line 160
    .line 161
    invoke-virtual {v11, v13}, Lcom/google/android/gms/internal/measurement/zzic;->zzC(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzic;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzh;->zzc()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v13

    .line 168
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 169
    .line 170
    .line 171
    move-result v13

    .line 172
    if-nez v13, :cond_3

    .line 173
    .line 174
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzh;->zzc()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v13

    .line 178
    invoke-virtual {v11, v13}, Lcom/google/android/gms/internal/measurement/zzic;->zzL(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzic;

    .line 179
    .line 180
    .line 181
    :cond_3
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzh;->zzv()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v13

    .line 185
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 186
    .line 187
    .line 188
    move-result v13

    .line 189
    if-nez v13, :cond_4

    .line 190
    .line 191
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzh;->zzv()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v13

    .line 195
    invoke-static {v13}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v13

    .line 199
    check-cast v13, Ljava/lang/String;

    .line 200
    .line 201
    invoke-virtual {v11, v13}, Lcom/google/android/gms/internal/measurement/zzic;->zzJ(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzic;

    .line 202
    .line 203
    .line 204
    :cond_4
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzh;->zzr()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v13

    .line 208
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 209
    .line 210
    .line 211
    move-result v13

    .line 212
    if-nez v13, :cond_5

    .line 213
    .line 214
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzh;->zzr()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v13

    .line 218
    invoke-static {v13}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v13

    .line 222
    check-cast v13, Ljava/lang/String;

    .line 223
    .line 224
    invoke-virtual {v11, v13}, Lcom/google/android/gms/internal/measurement/zzic;->zzM(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzic;

    .line 225
    .line 226
    .line 227
    :cond_5
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzh;->zzt()J

    .line 228
    .line 229
    .line 230
    move-result-wide v13

    .line 231
    const-wide/32 v15, -0x80000000

    .line 232
    .line 233
    .line 234
    cmp-long v13, v13, v15

    .line 235
    .line 236
    if-eqz v13, :cond_6

    .line 237
    .line 238
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzh;->zzt()J

    .line 239
    .line 240
    .line 241
    move-result-wide v13

    .line 242
    long-to-int v13, v13

    .line 243
    invoke-virtual {v11, v13}, Lcom/google/android/gms/internal/measurement/zzic;->zzaj(I)Lcom/google/android/gms/internal/measurement/zzic;

    .line 244
    .line 245
    .line 246
    :cond_6
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzh;->zzx()J

    .line 247
    .line 248
    .line 249
    move-result-wide v13

    .line 250
    invoke-virtual {v11, v13, v14}, Lcom/google/android/gms/internal/measurement/zzic;->zzN(J)Lcom/google/android/gms/internal/measurement/zzic;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzh;->zzB()J

    .line 254
    .line 255
    .line 256
    move-result-wide v13

    .line 257
    invoke-virtual {v11, v13, v14}, Lcom/google/android/gms/internal/measurement/zzic;->zzar(J)Lcom/google/android/gms/internal/measurement/zzic;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzh;->zzf()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v13

    .line 264
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 265
    .line 266
    .line 267
    move-result v14

    .line 268
    if-nez v14, :cond_7

    .line 269
    .line 270
    invoke-virtual {v11, v13}, Lcom/google/android/gms/internal/measurement/zzic;->zzad(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzic;

    .line 271
    .line 272
    .line 273
    :cond_7
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzh;->zzak()J

    .line 274
    .line 275
    .line 276
    move-result-wide v13

    .line 277
    invoke-virtual {v11, v13, v14}, Lcom/google/android/gms/internal/measurement/zzic;->zzay(J)Lcom/google/android/gms/internal/measurement/zzic;

    .line 278
    .line 279
    .line 280
    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzol;->zzg:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 281
    .line 282
    invoke-virtual {v13, v6}, Lcom/google/android/gms/measurement/internal/zzpg;->zzB(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzjl;

    .line 283
    .line 284
    .line 285
    move-result-object v13

    .line 286
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzh;->zzz()J

    .line 287
    .line 288
    .line 289
    move-result-wide v14

    .line 290
    invoke-virtual {v11, v14, v15}, Lcom/google/android/gms/internal/measurement/zzic;->zzY(J)Lcom/google/android/gms/internal/measurement/zzic;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzB()Z

    .line 294
    .line 295
    .line 296
    move-result v3

    .line 297
    if-eqz v3, :cond_8

    .line 298
    .line 299
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 300
    .line 301
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzc()Lcom/google/android/gms/measurement/internal/zzal;

    .line 302
    .line 303
    .line 304
    move-result-object v3

    .line 305
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzic;->zzK()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v14

    .line 309
    invoke-virtual {v3, v14}, Lcom/google/android/gms/measurement/internal/zzal;->zzC(Ljava/lang/String;)Z

    .line 310
    .line 311
    .line 312
    move-result v3

    .line 313
    if-eqz v3, :cond_8

    .line 314
    .line 315
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzjk;->zza:Lcom/google/android/gms/measurement/internal/zzjk;

    .line 316
    .line 317
    invoke-virtual {v13, v3}, Lcom/google/android/gms/measurement/internal/zzjl;->zzo(Lcom/google/android/gms/measurement/internal/zzjk;)Z

    .line 318
    .line 319
    .line 320
    move-result v3

    .line 321
    if-eqz v3, :cond_8

    .line 322
    .line 323
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 324
    .line 325
    .line 326
    move-result v3

    .line 327
    if-nez v3, :cond_8

    .line 328
    .line 329
    invoke-virtual {v11, v8}, Lcom/google/android/gms/internal/measurement/zzic;->zzam(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzic;

    .line 330
    .line 331
    .line 332
    :cond_8
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzjl;->zzk()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v3

    .line 336
    invoke-virtual {v11, v3}, Lcom/google/android/gms/internal/measurement/zzic;->zzat(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzic;

    .line 337
    .line 338
    .line 339
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzjk;->zza:Lcom/google/android/gms/measurement/internal/zzjk;

    .line 340
    .line 341
    invoke-virtual {v13, v3}, Lcom/google/android/gms/measurement/internal/zzjl;->zzo(Lcom/google/android/gms/measurement/internal/zzjk;)Z

    .line 342
    .line 343
    .line 344
    move-result v3

    .line 345
    if-eqz v3, :cond_9

    .line 346
    .line 347
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzh;->zzac()Z

    .line 348
    .line 349
    .line 350
    move-result v3

    .line 351
    if-eqz v3, :cond_9

    .line 352
    .line 353
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzpg;->zzq()Lcom/google/android/gms/measurement/internal/zznn;

    .line 354
    .line 355
    .line 356
    move-result-object v3

    .line 357
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzh;->zzc()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v5

    .line 361
    invoke-virtual {v3, v5, v13}, Lcom/google/android/gms/measurement/internal/zznn;->zzc(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzjl;)Landroid/util/Pair;

    .line 362
    .line 363
    .line 364
    move-result-object v3

    .line 365
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzh;->zzac()Z

    .line 366
    .line 367
    .line 368
    move-result v5

    .line 369
    if-eqz v5, :cond_9

    .line 370
    .line 371
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 372
    .line 373
    check-cast v5, Ljava/lang/CharSequence;

    .line 374
    .line 375
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 376
    .line 377
    .line 378
    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 379
    if-nez v5, :cond_9

    .line 380
    .line 381
    :try_start_2
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 382
    .line 383
    check-cast v5, Ljava/lang/String;

    .line 384
    .line 385
    iget-wide v14, v4, Lcom/google/android/gms/measurement/internal/zzbg;->zzd:J

    .line 386
    .line 387
    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v14

    .line 391
    invoke-static {v5, v14}, Lcom/google/android/gms/measurement/internal/zzlp;->zzc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v5

    .line 395
    invoke-virtual {v11, v5}, Lcom/google/android/gms/internal/measurement/zzic;->zzQ(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzic;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 396
    .line 397
    .line 398
    :try_start_3
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 399
    .line 400
    if-eqz v3, :cond_9

    .line 401
    .line 402
    check-cast v3, Ljava/lang/Boolean;

    .line 403
    .line 404
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 405
    .line 406
    .line 407
    move-result v3

    .line 408
    invoke-virtual {v11, v3}, Lcom/google/android/gms/internal/measurement/zzic;->zzT(Z)Lcom/google/android/gms/internal/measurement/zzic;

    .line 409
    .line 410
    .line 411
    goto :goto_2

    .line 412
    :catch_0
    move-exception v0

    .line 413
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 414
    .line 415
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    .line 416
    .line 417
    .line 418
    move-result-object v3

    .line 419
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgu;->zzj()Lcom/google/android/gms/measurement/internal/zzgs;

    .line 420
    .line 421
    .line 422
    move-result-object v3

    .line 423
    const-string v4, "Resettable device id encryption failed"

    .line 424
    .line 425
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 430
    .line 431
    .line 432
    new-array v8, v10, [B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 433
    .line 434
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzol;->zzg:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 435
    .line 436
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzav;->zzd()V

    .line 441
    .line 442
    .line 443
    goto/16 :goto_c

    .line 444
    .line 445
    :cond_9
    :goto_2
    :try_start_4
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 446
    .line 447
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzu()Lcom/google/android/gms/measurement/internal/zzba;

    .line 448
    .line 449
    .line 450
    move-result-object v5

    .line 451
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzjf;->zzw()V

    .line 452
    .line 453
    .line 454
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 455
    .line 456
    invoke-virtual {v11, v5}, Lcom/google/android/gms/internal/measurement/zzic;->zzF(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzic;

    .line 457
    .line 458
    .line 459
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzu()Lcom/google/android/gms/measurement/internal/zzba;

    .line 460
    .line 461
    .line 462
    move-result-object v5

    .line 463
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzjf;->zzw()V

    .line 464
    .line 465
    .line 466
    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 467
    .line 468
    invoke-virtual {v11, v5}, Lcom/google/android/gms/internal/measurement/zzic;->zzE(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzic;

    .line 469
    .line 470
    .line 471
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzu()Lcom/google/android/gms/measurement/internal/zzba;

    .line 472
    .line 473
    .line 474
    move-result-object v5

    .line 475
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzba;->zzb()J

    .line 476
    .line 477
    .line 478
    move-result-wide v14

    .line 479
    long-to-int v5, v14

    .line 480
    invoke-virtual {v11, v5}, Lcom/google/android/gms/internal/measurement/zzic;->zzI(I)Lcom/google/android/gms/internal/measurement/zzic;

    .line 481
    .line 482
    .line 483
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzu()Lcom/google/android/gms/measurement/internal/zzba;

    .line 484
    .line 485
    .line 486
    move-result-object v3

    .line 487
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzba;->zzc()Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v3

    .line 491
    invoke-virtual {v11, v3}, Lcom/google/android/gms/internal/measurement/zzic;->zzH(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzic;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 492
    .line 493
    .line 494
    :try_start_5
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzjk;->zzb:Lcom/google/android/gms/measurement/internal/zzjk;

    .line 495
    .line 496
    invoke-virtual {v13, v3}, Lcom/google/android/gms/measurement/internal/zzjl;->zzo(Lcom/google/android/gms/measurement/internal/zzjk;)Z

    .line 497
    .line 498
    .line 499
    move-result v3

    .line 500
    if-eqz v3, :cond_a

    .line 501
    .line 502
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzh;->zzd()Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v3

    .line 506
    if-eqz v3, :cond_a

    .line 507
    .line 508
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzh;->zzd()Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v3

    .line 512
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    move-result-object v3

    .line 516
    check-cast v3, Ljava/lang/String;

    .line 517
    .line 518
    iget-wide v13, v4, Lcom/google/android/gms/measurement/internal/zzbg;->zzd:J

    .line 519
    .line 520
    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v5

    .line 524
    invoke-static {v3, v5}, Lcom/google/android/gms/measurement/internal/zzlp;->zzc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v3

    .line 528
    invoke-virtual {v11, v3}, Lcom/google/android/gms/internal/measurement/zzic;->zzW(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzic;
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 529
    .line 530
    .line 531
    goto :goto_3

    .line 532
    :catch_1
    move-exception v0

    .line 533
    goto/16 :goto_b

    .line 534
    .line 535
    :cond_a
    :goto_3
    :try_start_6
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzh;->zzl()Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v3

    .line 539
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 540
    .line 541
    .line 542
    move-result v3

    .line 543
    if-nez v3, :cond_b

    .line 544
    .line 545
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzh;->zzl()Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    move-result-object v3

    .line 549
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    .line 551
    .line 552
    move-result-object v3

    .line 553
    check-cast v3, Ljava/lang/String;

    .line 554
    .line 555
    invoke-virtual {v11, v3}, Lcom/google/android/gms/internal/measurement/zzic;->zzah(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzic;

    .line 556
    .line 557
    .line 558
    :cond_b
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzh;->zzc()Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object v14

    .line 562
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzol;->zzg:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 563
    .line 564
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    .line 565
    .line 566
    .line 567
    move-result-object v5

    .line 568
    invoke-virtual {v5, v14}, Lcom/google/android/gms/measurement/internal/zzav;->zzn(Ljava/lang/String;)Ljava/util/List;

    .line 569
    .line 570
    .line 571
    move-result-object v5

    .line 572
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 573
    .line 574
    .line 575
    move-result-object v13

    .line 576
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 577
    .line 578
    .line 579
    move-result v15

    .line 580
    if-eqz v15, :cond_d

    .line 581
    .line 582
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 583
    .line 584
    .line 585
    move-result-object v15

    .line 586
    check-cast v15, Lcom/google/android/gms/measurement/internal/zzpn;

    .line 587
    .line 588
    const-string v8, "_lte"

    .line 589
    .line 590
    iget-object v10, v15, Lcom/google/android/gms/measurement/internal/zzpn;->zzc:Ljava/lang/String;

    .line 591
    .line 592
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 593
    .line 594
    .line 595
    move-result v8

    .line 596
    if-eqz v8, :cond_c

    .line 597
    .line 598
    goto :goto_5

    .line 599
    :cond_c
    const/4 v8, 0x0

    .line 600
    const/4 v10, 0x0

    .line 601
    goto :goto_4

    .line 602
    :cond_d
    const/4 v15, 0x0

    .line 603
    :goto_5
    const-wide/16 v22, 0x0

    .line 604
    .line 605
    if-eqz v15, :cond_e

    .line 606
    .line 607
    iget-object v8, v15, Lcom/google/android/gms/measurement/internal/zzpn;->zze:Ljava/lang/Object;

    .line 608
    .line 609
    if-nez v8, :cond_f

    .line 610
    .line 611
    :cond_e
    new-instance v13, Lcom/google/android/gms/measurement/internal/zzpn;

    .line 612
    .line 613
    const-string v15, "auto"

    .line 614
    .line 615
    const-string v16, "_lte"

    .line 616
    .line 617
    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 618
    .line 619
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzic;->zzaZ()Lcom/google/android/gms/common/util/Clock;

    .line 620
    .line 621
    .line 622
    move-result-object v8

    .line 623
    invoke-interface {v8}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 624
    .line 625
    .line 626
    move-result-wide v17

    .line 627
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 628
    .line 629
    .line 630
    move-result-object v19

    .line 631
    invoke-direct/range {v13 .. v19}, Lcom/google/android/gms/measurement/internal/zzpn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 632
    .line 633
    .line 634
    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 635
    .line 636
    .line 637
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    .line 638
    .line 639
    .line 640
    move-result-object v8

    .line 641
    invoke-virtual {v8, v13}, Lcom/google/android/gms/measurement/internal/zzav;->zzl(Lcom/google/android/gms/measurement/internal/zzpn;)Z

    .line 642
    .line 643
    .line 644
    :cond_f
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 645
    .line 646
    .line 647
    move-result v8

    .line 648
    new-array v8, v8, [Lcom/google/android/gms/internal/measurement/zziu;

    .line 649
    .line 650
    const/4 v10, 0x0

    .line 651
    :goto_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 652
    .line 653
    .line 654
    move-result v13

    .line 655
    if-ge v10, v13, :cond_10

    .line 656
    .line 657
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zziu;->zzm()Lcom/google/android/gms/internal/measurement/zzit;

    .line 658
    .line 659
    .line 660
    move-result-object v13

    .line 661
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 662
    .line 663
    .line 664
    move-result-object v14

    .line 665
    check-cast v14, Lcom/google/android/gms/measurement/internal/zzpn;

    .line 666
    .line 667
    iget-object v14, v14, Lcom/google/android/gms/measurement/internal/zzpn;->zzc:Ljava/lang/String;

    .line 668
    .line 669
    invoke-virtual {v13, v14}, Lcom/google/android/gms/internal/measurement/zzit;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzit;

    .line 670
    .line 671
    .line 672
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 673
    .line 674
    .line 675
    move-result-object v14

    .line 676
    check-cast v14, Lcom/google/android/gms/measurement/internal/zzpn;

    .line 677
    .line 678
    iget-wide v14, v14, Lcom/google/android/gms/measurement/internal/zzpn;->zzd:J

    .line 679
    .line 680
    invoke-virtual {v13, v14, v15}, Lcom/google/android/gms/internal/measurement/zzit;->zza(J)Lcom/google/android/gms/internal/measurement/zzit;

    .line 681
    .line 682
    .line 683
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzpg;->zzp()Lcom/google/android/gms/measurement/internal/zzpk;

    .line 684
    .line 685
    .line 686
    move-result-object v14

    .line 687
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 688
    .line 689
    .line 690
    move-result-object v15

    .line 691
    check-cast v15, Lcom/google/android/gms/measurement/internal/zzpn;

    .line 692
    .line 693
    iget-object v15, v15, Lcom/google/android/gms/measurement/internal/zzpn;->zze:Ljava/lang/Object;

    .line 694
    .line 695
    invoke-virtual {v14, v13, v15}, Lcom/google/android/gms/measurement/internal/zzpk;->zzc(Lcom/google/android/gms/internal/measurement/zzit;Ljava/lang/Object;)V

    .line 696
    .line 697
    .line 698
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbc()Lcom/google/android/gms/internal/measurement/zzmf;

    .line 699
    .line 700
    .line 701
    move-result-object v13

    .line 702
    check-cast v13, Lcom/google/android/gms/internal/measurement/zziu;

    .line 703
    .line 704
    aput-object v13, v8, v10

    .line 705
    .line 706
    add-int/lit8 v10, v10, 0x1

    .line 707
    .line 708
    goto :goto_6

    .line 709
    :cond_10
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 710
    .line 711
    .line 712
    move-result-object v5

    .line 713
    invoke-virtual {v11, v5}, Lcom/google/android/gms/internal/measurement/zzic;->zzq(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzic;

    .line 714
    .line 715
    .line 716
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzol;->zzg:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 717
    .line 718
    invoke-virtual {v5, v9, v11}, Lcom/google/android/gms/measurement/internal/zzpg;->zzI(Lcom/google/android/gms/measurement/internal/zzh;Lcom/google/android/gms/internal/measurement/zzic;)V

    .line 719
    .line 720
    .line 721
    invoke-virtual {v5, v9, v11}, Lcom/google/android/gms/measurement/internal/zzpg;->zzJ(Lcom/google/android/gms/measurement/internal/zzh;Lcom/google/android/gms/internal/measurement/zzic;)V

    .line 722
    .line 723
    .line 724
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzgv;->zza(Lcom/google/android/gms/measurement/internal/zzbg;)Lcom/google/android/gms/measurement/internal/zzgv;

    .line 725
    .line 726
    .line 727
    move-result-object v8

    .line 728
    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 729
    .line 730
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzic;->zzk()Lcom/google/android/gms/measurement/internal/zzpp;

    .line 731
    .line 732
    .line 733
    move-result-object v13

    .line 734
    iget-object v14, v8, Lcom/google/android/gms/measurement/internal/zzgv;->zzd:Landroid/os/Bundle;

    .line 735
    .line 736
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    .line 737
    .line 738
    .line 739
    move-result-object v15

    .line 740
    invoke-virtual {v15, v6}, Lcom/google/android/gms/measurement/internal/zzav;->zzU(Ljava/lang/String;)Landroid/os/Bundle;

    .line 741
    .line 742
    .line 743
    move-result-object v15

    .line 744
    invoke-virtual {v13, v14, v15}, Lcom/google/android/gms/measurement/internal/zzpp;->zzI(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 745
    .line 746
    .line 747
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzic;->zzk()Lcom/google/android/gms/measurement/internal/zzpp;

    .line 748
    .line 749
    .line 750
    move-result-object v13

    .line 751
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzic;->zzc()Lcom/google/android/gms/measurement/internal/zzal;

    .line 752
    .line 753
    .line 754
    move-result-object v15

    .line 755
    invoke-virtual {v15, v6}, Lcom/google/android/gms/measurement/internal/zzal;->zzd(Ljava/lang/String;)I

    .line 756
    .line 757
    .line 758
    move-result v15

    .line 759
    invoke-virtual {v13, v8, v15}, Lcom/google/android/gms/measurement/internal/zzpp;->zzG(Lcom/google/android/gms/measurement/internal/zzgv;I)V

    .line 760
    .line 761
    .line 762
    const-string v8, "_c"

    .line 763
    .line 764
    const-wide/16 v12, 0x1

    .line 765
    .line 766
    invoke-virtual {v14, v8, v12, v13}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 767
    .line 768
    .line 769
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    .line 770
    .line 771
    .line 772
    move-result-object v8

    .line 773
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgu;->zzj()Lcom/google/android/gms/measurement/internal/zzgs;

    .line 774
    .line 775
    .line 776
    move-result-object v8

    .line 777
    const-string v15, "Marking in-app purchase as real-time"

    .line 778
    .line 779
    invoke-virtual {v8, v15}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    .line 780
    .line 781
    .line 782
    invoke-virtual {v14, v0, v12, v13}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 783
    .line 784
    .line 785
    const-string v8, "_o"

    .line 786
    .line 787
    iget-object v15, v4, Lcom/google/android/gms/measurement/internal/zzbg;->zzc:Ljava/lang/String;

    .line 788
    .line 789
    invoke-virtual {v14, v8, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    .line 791
    .line 792
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzic;->zzk()Lcom/google/android/gms/measurement/internal/zzpp;

    .line 793
    .line 794
    .line 795
    move-result-object v8

    .line 796
    move-wide/from16 v17, v12

    .line 797
    .line 798
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzic;->zzK()Ljava/lang/String;

    .line 799
    .line 800
    .line 801
    move-result-object v12

    .line 802
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzh;->zzay()Ljava/lang/String;

    .line 803
    .line 804
    .line 805
    move-result-object v13

    .line 806
    invoke-virtual {v8, v12, v13}, Lcom/google/android/gms/measurement/internal/zzpp;->zzaa(Ljava/lang/String;Ljava/lang/String;)Z

    .line 807
    .line 808
    .line 809
    move-result v8

    .line 810
    if-eqz v8, :cond_11

    .line 811
    .line 812
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzic;->zzk()Lcom/google/android/gms/measurement/internal/zzpp;

    .line 813
    .line 814
    .line 815
    move-result-object v8

    .line 816
    const-string v12, "_dbg"

    .line 817
    .line 818
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 819
    .line 820
    .line 821
    move-result-object v13

    .line 822
    invoke-virtual {v8, v14, v12, v13}, Lcom/google/android/gms/measurement/internal/zzpp;->zzM(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 823
    .line 824
    .line 825
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzic;->zzk()Lcom/google/android/gms/measurement/internal/zzpp;

    .line 826
    .line 827
    .line 828
    move-result-object v8

    .line 829
    invoke-virtual {v8, v14, v0, v13}, Lcom/google/android/gms/measurement/internal/zzpp;->zzM(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 830
    .line 831
    .line 832
    :cond_11
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    .line 833
    .line 834
    .line 835
    move-result-object v0

    .line 836
    move-object v8, v7

    .line 837
    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/zzbg;->zza:Ljava/lang/String;

    .line 838
    .line 839
    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/measurement/internal/zzav;->zzf(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzbc;

    .line 840
    .line 841
    .line 842
    move-result-object v0

    .line 843
    if-nez v0, :cond_12

    .line 844
    .line 845
    move-object v12, v5

    .line 846
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzbc;

    .line 847
    .line 848
    move-object v0, v14

    .line 849
    move-object v13, v15

    .line 850
    iget-wide v14, v4, Lcom/google/android/gms/measurement/internal/zzbg;->zzd:J

    .line 851
    .line 852
    const/16 v17, 0x0

    .line 853
    .line 854
    const/16 v20, 0x0

    .line 855
    .line 856
    const/16 v18, 0x0

    .line 857
    .line 858
    const/16 v21, 0x0

    .line 859
    .line 860
    move-object/from16 v19, v8

    .line 861
    .line 862
    move-object/from16 v24, v9

    .line 863
    .line 864
    const-wide/16 v8, 0x0

    .line 865
    .line 866
    move-object/from16 v26, v10

    .line 867
    .line 868
    move-object/from16 v25, v11

    .line 869
    .line 870
    const-wide/16 v10, 0x0

    .line 871
    .line 872
    move-object/from16 v27, v12

    .line 873
    .line 874
    move-object/from16 v28, v13

    .line 875
    .line 876
    const-wide/16 v12, 0x0

    .line 877
    .line 878
    move-object/from16 v29, v17

    .line 879
    .line 880
    const/16 v30, 0x1

    .line 881
    .line 882
    const-wide/16 v16, 0x0

    .line 883
    .line 884
    move/from16 v31, v18

    .line 885
    .line 886
    const/16 v18, 0x0

    .line 887
    .line 888
    move-object/from16 v32, v19

    .line 889
    .line 890
    const/16 v19, 0x0

    .line 891
    .line 892
    move/from16 v1, v31

    .line 893
    .line 894
    move-object/from16 v31, v28

    .line 895
    .line 896
    move-object/from16 v28, v0

    .line 897
    .line 898
    invoke-direct/range {v5 .. v21}, Lcom/google/android/gms/measurement/internal/zzbc;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    .line 899
    .line 900
    .line 901
    move-wide/from16 v12, v22

    .line 902
    .line 903
    move-object/from16 v15, v32

    .line 904
    .line 905
    :goto_7
    move-object v0, v5

    .line 906
    goto :goto_8

    .line 907
    :cond_12
    move-object/from16 v27, v5

    .line 908
    .line 909
    move-object/from16 v24, v9

    .line 910
    .line 911
    move-object/from16 v26, v10

    .line 912
    .line 913
    move-object/from16 v25, v11

    .line 914
    .line 915
    move-object/from16 v28, v14

    .line 916
    .line 917
    move-object/from16 v31, v15

    .line 918
    .line 919
    const/4 v1, 0x0

    .line 920
    const/16 v29, 0x0

    .line 921
    .line 922
    const/16 v30, 0x1

    .line 923
    .line 924
    move-object v15, v8

    .line 925
    iget-wide v8, v0, Lcom/google/android/gms/measurement/internal/zzbc;->zzf:J

    .line 926
    .line 927
    iget-wide v10, v4, Lcom/google/android/gms/measurement/internal/zzbg;->zzd:J

    .line 928
    .line 929
    invoke-virtual {v0, v10, v11}, Lcom/google/android/gms/measurement/internal/zzbc;->zza(J)Lcom/google/android/gms/measurement/internal/zzbc;

    .line 930
    .line 931
    .line 932
    move-result-object v5

    .line 933
    move-wide v12, v8

    .line 934
    goto :goto_7

    .line 935
    :goto_8
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    .line 936
    .line 937
    .line 938
    move-result-object v5

    .line 939
    invoke-virtual {v5, v0}, Lcom/google/android/gms/measurement/internal/zzav;->zzh(Lcom/google/android/gms/measurement/internal/zzbc;)V

    .line 940
    .line 941
    .line 942
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzbb;

    .line 943
    .line 944
    move-object v8, v6

    .line 945
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 946
    .line 947
    iget-wide v10, v4, Lcom/google/android/gms/measurement/internal/zzbg;->zzd:J

    .line 948
    .line 949
    move-object/from16 v16, v3

    .line 950
    .line 951
    move-object v9, v7

    .line 952
    move-object/from16 v4, v24

    .line 953
    .line 954
    move-object/from16 v1, v25

    .line 955
    .line 956
    move-object/from16 v33, v27

    .line 957
    .line 958
    move-object/from16 v14, v28

    .line 959
    .line 960
    move/from16 v3, v30

    .line 961
    .line 962
    move-object/from16 v7, v31

    .line 963
    .line 964
    invoke-direct/range {v5 .. v14}, Lcom/google/android/gms/measurement/internal/zzbb;-><init>(Lcom/google/android/gms/measurement/internal/zzic;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    .line 965
    .line 966
    .line 967
    move-object v6, v8

    .line 968
    move-object v7, v9

    .line 969
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhs;->zzk()Lcom/google/android/gms/internal/measurement/zzhr;

    .line 970
    .line 971
    .line 972
    move-result-object v8

    .line 973
    iget-wide v9, v5, Lcom/google/android/gms/measurement/internal/zzbb;->zzd:J

    .line 974
    .line 975
    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/internal/measurement/zzhr;->zzo(J)Lcom/google/android/gms/internal/measurement/zzhr;

    .line 976
    .line 977
    .line 978
    iget-object v9, v5, Lcom/google/android/gms/measurement/internal/zzbb;->zzb:Ljava/lang/String;

    .line 979
    .line 980
    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/measurement/zzhr;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhr;

    .line 981
    .line 982
    .line 983
    iget-wide v9, v5, Lcom/google/android/gms/measurement/internal/zzbb;->zze:J

    .line 984
    .line 985
    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/internal/measurement/zzhr;->zzq(J)Lcom/google/android/gms/internal/measurement/zzhr;

    .line 986
    .line 987
    .line 988
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzbb;->zzf:Lcom/google/android/gms/measurement/internal/zzbe;

    .line 989
    .line 990
    new-instance v9, Lcom/google/android/gms/measurement/internal/zzbd;

    .line 991
    .line 992
    invoke-direct {v9, v5}, Lcom/google/android/gms/measurement/internal/zzbd;-><init>(Lcom/google/android/gms/measurement/internal/zzbe;)V

    .line 993
    .line 994
    .line 995
    :cond_13
    :goto_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 996
    .line 997
    .line 998
    move-result v10

    .line 999
    if-eqz v10, :cond_14

    .line 1000
    .line 1001
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzbd;->zza()Ljava/lang/String;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v10

    .line 1005
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhw;->zzn()Lcom/google/android/gms/internal/measurement/zzhv;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v11

    .line 1009
    invoke-virtual {v11, v10}, Lcom/google/android/gms/internal/measurement/zzhv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzhv;

    .line 1010
    .line 1011
    .line 1012
    invoke-virtual {v5, v10}, Lcom/google/android/gms/measurement/internal/zzbe;->zza(Ljava/lang/String;)Ljava/lang/Object;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v10

    .line 1016
    if-eqz v10, :cond_13

    .line 1017
    .line 1018
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zzpg;->zzp()Lcom/google/android/gms/measurement/internal/zzpk;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v12

    .line 1022
    invoke-virtual {v12, v11, v10}, Lcom/google/android/gms/measurement/internal/zzpk;->zzd(Lcom/google/android/gms/internal/measurement/zzhv;Ljava/lang/Object;)V

    .line 1023
    .line 1024
    .line 1025
    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/measurement/zzhr;->zzg(Lcom/google/android/gms/internal/measurement/zzhv;)Lcom/google/android/gms/internal/measurement/zzhr;

    .line 1026
    .line 1027
    .line 1028
    goto :goto_9

    .line 1029
    :cond_14
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/measurement/zzic;->zzg(Lcom/google/android/gms/internal/measurement/zzhr;)Lcom/google/android/gms/internal/measurement/zzic;

    .line 1030
    .line 1031
    .line 1032
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->zza()Lcom/google/android/gms/internal/measurement/zzie;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v5

    .line 1036
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhu;->zza()Lcom/google/android/gms/internal/measurement/zzht;

    .line 1037
    .line 1038
    .line 1039
    move-result-object v9

    .line 1040
    iget-wide v10, v0, Lcom/google/android/gms/measurement/internal/zzbc;->zzc:J

    .line 1041
    .line 1042
    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/internal/measurement/zzht;->zzb(J)Lcom/google/android/gms/internal/measurement/zzht;

    .line 1043
    .line 1044
    .line 1045
    invoke-virtual {v9, v7}, Lcom/google/android/gms/internal/measurement/zzht;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzht;

    .line 1046
    .line 1047
    .line 1048
    invoke-virtual {v5, v9}, Lcom/google/android/gms/internal/measurement/zzie;->zza(Lcom/google/android/gms/internal/measurement/zzht;)Lcom/google/android/gms/internal/measurement/zzie;

    .line 1049
    .line 1050
    .line 1051
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/measurement/zzic;->zzap(Lcom/google/android/gms/internal/measurement/zzie;)Lcom/google/android/gms/internal/measurement/zzic;

    .line 1052
    .line 1053
    .line 1054
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zzpg;->zzm()Lcom/google/android/gms/measurement/internal/zzad;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v34

    .line 1058
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzh;->zzc()Ljava/lang/String;

    .line 1059
    .line 1060
    .line 1061
    move-result-object v35

    .line 1062
    sget-object v36, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 1063
    .line 1064
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzic;->zzk()Ljava/util/List;

    .line 1065
    .line 1066
    .line 1067
    move-result-object v37

    .line 1068
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhr;->zzn()J

    .line 1069
    .line 1070
    .line 1071
    move-result-wide v9

    .line 1072
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1073
    .line 1074
    .line 1075
    move-result-object v38

    .line 1076
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhr;->zzn()J

    .line 1077
    .line 1078
    .line 1079
    move-result-wide v9

    .line 1080
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1081
    .line 1082
    .line 1083
    move-result-object v39

    .line 1084
    const/16 v40, 0x0

    .line 1085
    .line 1086
    invoke-virtual/range {v34 .. v40}, Lcom/google/android/gms/measurement/internal/zzad;->zzb(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;Z)Ljava/util/List;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v0

    .line 1090
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzic;->zzaf(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzic;

    .line 1091
    .line 1092
    .line 1093
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhr;->zzm()Z

    .line 1094
    .line 1095
    .line 1096
    move-result v0

    .line 1097
    if-eqz v0, :cond_15

    .line 1098
    .line 1099
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhr;->zzn()J

    .line 1100
    .line 1101
    .line 1102
    move-result-wide v9

    .line 1103
    invoke-virtual {v1, v9, v10}, Lcom/google/android/gms/internal/measurement/zzic;->zzv(J)Lcom/google/android/gms/internal/measurement/zzic;

    .line 1104
    .line 1105
    .line 1106
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzhr;->zzn()J

    .line 1107
    .line 1108
    .line 1109
    move-result-wide v7

    .line 1110
    invoke-virtual {v1, v7, v8}, Lcom/google/android/gms/internal/measurement/zzic;->zzx(J)Lcom/google/android/gms/internal/measurement/zzic;

    .line 1111
    .line 1112
    .line 1113
    :cond_15
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzh;->zzp()J

    .line 1114
    .line 1115
    .line 1116
    move-result-wide v7

    .line 1117
    cmp-long v0, v7, v22

    .line 1118
    .line 1119
    if-eqz v0, :cond_16

    .line 1120
    .line 1121
    invoke-virtual {v1, v7, v8}, Lcom/google/android/gms/internal/measurement/zzic;->zzA(J)Lcom/google/android/gms/internal/measurement/zzic;

    .line 1122
    .line 1123
    .line 1124
    :cond_16
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzh;->zzn()J

    .line 1125
    .line 1126
    .line 1127
    move-result-wide v9

    .line 1128
    cmp-long v5, v9, v22

    .line 1129
    .line 1130
    if-eqz v5, :cond_17

    .line 1131
    .line 1132
    invoke-virtual {v1, v9, v10}, Lcom/google/android/gms/internal/measurement/zzic;->zzy(J)Lcom/google/android/gms/internal/measurement/zzic;

    .line 1133
    .line 1134
    .line 1135
    goto :goto_a

    .line 1136
    :cond_17
    if-eqz v0, :cond_18

    .line 1137
    .line 1138
    invoke-virtual {v1, v7, v8}, Lcom/google/android/gms/internal/measurement/zzic;->zzy(J)Lcom/google/android/gms/internal/measurement/zzic;

    .line 1139
    .line 1140
    .line 1141
    :cond_18
    :goto_a
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzh;->zzh()Ljava/lang/String;

    .line 1142
    .line 1143
    .line 1144
    move-result-object v0

    .line 1145
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzrb;->zza()Z

    .line 1146
    .line 1147
    .line 1148
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/gms/measurement/internal/zzic;->zzc()Lcom/google/android/gms/measurement/internal/zzal;

    .line 1149
    .line 1150
    .line 1151
    move-result-object v5

    .line 1152
    sget-object v7, Lcom/google/android/gms/measurement/internal/zzfy;->zzaM:Lcom/google/android/gms/measurement/internal/zzfx;

    .line 1153
    .line 1154
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzal;->zzp(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)Z

    .line 1155
    .line 1156
    .line 1157
    move-result v5

    .line 1158
    if-eqz v5, :cond_19

    .line 1159
    .line 1160
    if-eqz v0, :cond_19

    .line 1161
    .line 1162
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzic;->zzau(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzic;

    .line 1163
    .line 1164
    .line 1165
    :cond_19
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzh;->zzL()V

    .line 1166
    .line 1167
    .line 1168
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzh;->zzG()J

    .line 1169
    .line 1170
    .line 1171
    move-result-wide v7

    .line 1172
    long-to-int v0, v7

    .line 1173
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzic;->zzZ(I)Lcom/google/android/gms/internal/measurement/zzic;

    .line 1174
    .line 1175
    .line 1176
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/gms/measurement/internal/zzic;->zzc()Lcom/google/android/gms/measurement/internal/zzal;

    .line 1177
    .line 1178
    .line 1179
    move-result-object v0

    .line 1180
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzal;->zzi()J

    .line 1181
    .line 1182
    .line 1183
    const-wide/32 v7, 0x2078d

    .line 1184
    .line 1185
    .line 1186
    invoke-virtual {v1, v7, v8}, Lcom/google/android/gms/internal/measurement/zzic;->zzO(J)Lcom/google/android/gms/internal/measurement/zzic;

    .line 1187
    .line 1188
    .line 1189
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/gms/measurement/internal/zzic;->zzaZ()Lcom/google/android/gms/common/util/Clock;

    .line 1190
    .line 1191
    .line 1192
    move-result-object v0

    .line 1193
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 1194
    .line 1195
    .line 1196
    move-result-wide v7

    .line 1197
    invoke-virtual {v1, v7, v8}, Lcom/google/android/gms/internal/measurement/zzic;->zzs(J)Lcom/google/android/gms/internal/measurement/zzic;

    .line 1198
    .line 1199
    .line 1200
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/measurement/zzic;->zzae(Z)Lcom/google/android/gms/internal/measurement/zzic;

    .line 1201
    .line 1202
    .line 1203
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzic;->zzK()Ljava/lang/String;

    .line 1204
    .line 1205
    .line 1206
    move-result-object v0

    .line 1207
    move-object/from16 v12, v33

    .line 1208
    .line 1209
    invoke-virtual {v12, v0, v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzS(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzic;)V

    .line 1210
    .line 1211
    .line 1212
    invoke-virtual {v15, v1}, Lcom/google/android/gms/internal/measurement/zzhz;->zze(Lcom/google/android/gms/internal/measurement/zzic;)Lcom/google/android/gms/internal/measurement/zzhz;

    .line 1213
    .line 1214
    .line 1215
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzic;->zzu()J

    .line 1216
    .line 1217
    .line 1218
    move-result-wide v7

    .line 1219
    invoke-virtual {v4, v7, v8}, Lcom/google/android/gms/measurement/internal/zzh;->zzo(J)V

    .line 1220
    .line 1221
    .line 1222
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzic;->zzw()J

    .line 1223
    .line 1224
    .line 1225
    move-result-wide v0

    .line 1226
    invoke-virtual {v4, v0, v1}, Lcom/google/android/gms/measurement/internal/zzh;->zzq(J)V

    .line 1227
    .line 1228
    .line 1229
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    .line 1230
    .line 1231
    .line 1232
    move-result-object v0

    .line 1233
    const/4 v1, 0x0

    .line 1234
    invoke-virtual {v0, v4, v1, v1}, Lcom/google/android/gms/measurement/internal/zzav;->zzv(Lcom/google/android/gms/measurement/internal/zzh;ZZ)V

    .line 1235
    .line 1236
    .line 1237
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    .line 1238
    .line 1239
    .line 1240
    move-result-object v0

    .line 1241
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzav;->zzc()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1242
    .line 1243
    .line 1244
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    .line 1245
    .line 1246
    .line 1247
    move-result-object v0

    .line 1248
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzav;->zzd()V

    .line 1249
    .line 1250
    .line 1251
    :try_start_7
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zzpg;->zzp()Lcom/google/android/gms/measurement/internal/zzpk;

    .line 1252
    .line 1253
    .line 1254
    move-result-object v0

    .line 1255
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzmb;->zzbc()Lcom/google/android/gms/internal/measurement/zzmf;

    .line 1256
    .line 1257
    .line 1258
    move-result-object v1

    .line 1259
    check-cast v1, Lcom/google/android/gms/internal/measurement/zzib;

    .line 1260
    .line 1261
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzks;->zzcc()[B

    .line 1262
    .line 1263
    .line 1264
    move-result-object v1

    .line 1265
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzpk;->zzv([B)[B

    .line 1266
    .line 1267
    .line 1268
    move-result-object v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 1269
    return-object v0

    .line 1270
    :catch_2
    move-exception v0

    .line 1271
    iget-object v1, v2, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 1272
    .line 1273
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    .line 1274
    .line 1275
    .line 1276
    move-result-object v1

    .line 1277
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    .line 1278
    .line 1279
    .line 1280
    move-result-object v1

    .line 1281
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzgu;->zzl(Ljava/lang/String;)Ljava/lang/Object;

    .line 1282
    .line 1283
    .line 1284
    move-result-object v2

    .line 1285
    const-string v3, "Data loss. Failed to bundle and serialize. appId"

    .line 1286
    .line 1287
    invoke-virtual {v1, v3, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1288
    .line 1289
    .line 1290
    move-object/from16 v8, v29

    .line 1291
    .line 1292
    goto :goto_c

    .line 1293
    :goto_b
    :try_start_8
    iget-object v1, v2, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 1294
    .line 1295
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzgu;

    .line 1296
    .line 1297
    .line 1298
    move-result-object v1

    .line 1299
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzj()Lcom/google/android/gms/measurement/internal/zzgs;

    .line 1300
    .line 1301
    .line 1302
    move-result-object v1

    .line 1303
    const-string v3, "app instance id encryption failed"

    .line 1304
    .line 1305
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1306
    .line 1307
    .line 1308
    move-result-object v0

    .line 1309
    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1310
    .line 1311
    .line 1312
    const/4 v1, 0x0

    .line 1313
    new-array v8, v1, [B
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1314
    .line 1315
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzol;->zzg:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 1316
    .line 1317
    goto/16 :goto_1

    .line 1318
    .line 1319
    :goto_c
    return-object v8

    .line 1320
    :goto_d
    iget-object v1, v2, Lcom/google/android/gms/measurement/internal/zzol;->zzg:Lcom/google/android/gms/measurement/internal/zzpg;

    .line 1321
    .line 1322
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lcom/google/android/gms/measurement/internal/zzav;

    .line 1323
    .line 1324
    .line 1325
    move-result-object v1

    .line 1326
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzav;->zzd()V

    .line 1327
    .line 1328
    .line 1329
    throw v0
.end method
