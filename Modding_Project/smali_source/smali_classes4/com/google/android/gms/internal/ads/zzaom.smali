.class public final Lcom/google/android/gms/internal/ads/zzaom;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzadn;


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzadq;

.field private zzb:Lcom/google/android/gms/internal/ads/zzaet;

.field private zzc:I

.field private zzd:J

.field private zze:Lcom/google/android/gms/internal/ads/zzaok;

.field private zzf:I

.field private zzg:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaom;->zzc:I

    .line 6
    .line 7
    const-wide/16 v0, -0x1

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaom;->zzd:J

    .line 10
    .line 11
    const/4 v2, -0x1

    .line 12
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzaom;->zzf:I

    .line 13
    .line 14
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaom;->zzg:J

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzado;Lcom/google/android/gms/internal/ads/zzaej;)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaom;->zzb:Lcom/google/android/gms/internal/ads/zzaet;

    .line 6
    .line 7
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdc;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    sget-object v2, Lcom/google/android/gms/internal/ads/zzeu;->zza:Ljava/lang/String;

    .line 11
    .line 12
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaom;->zzc:I

    .line 13
    .line 14
    const/4 v3, -0x1

    .line 15
    const/4 v4, 0x4

    .line 16
    const/4 v5, 0x1

    .line 17
    const/4 v6, 0x0

    .line 18
    if-eqz v2, :cond_f

    .line 19
    .line 20
    const/4 v7, 0x2

    .line 21
    const-wide/16 v8, -0x1

    .line 22
    .line 23
    if-eq v2, v5, :cond_d

    .line 24
    .line 25
    const/4 v10, 0x3

    .line 26
    if-eq v2, v7, :cond_5

    .line 27
    .line 28
    if-eq v2, v10, :cond_2

    .line 29
    .line 30
    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzaom;->zzg:J

    .line 31
    .line 32
    cmp-long v2, v10, v8

    .line 33
    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move v5, v6

    .line 38
    :goto_0
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V

    .line 39
    .line 40
    .line 41
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzaom;->zzg:J

    .line 42
    .line 43
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzado;->zzf()J

    .line 44
    .line 45
    .line 46
    move-result-wide v7

    .line 47
    sub-long/2addr v4, v7

    .line 48
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaom;->zze:Lcom/google/android/gms/internal/ads/zzaok;

    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-interface {v2, v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzaok;->zzc(Lcom/google/android/gms/internal/ads/zzado;J)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    return v3

    .line 60
    :cond_1
    return v6

    .line 61
    :cond_2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaop;->zza(Lcom/google/android/gms/internal/ads/zzado;)Landroid/util/Pair;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v3, Ljava/lang/Long;

    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    iput v3, v0, Lcom/google/android/gms/internal/ads/zzaom;->zzf:I

    .line 74
    .line 75
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v2, Ljava/lang/Long;

    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 80
    .line 81
    .line 82
    move-result-wide v2

    .line 83
    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzaom;->zzd:J

    .line 84
    .line 85
    cmp-long v5, v10, v8

    .line 86
    .line 87
    if-eqz v5, :cond_3

    .line 88
    .line 89
    const-wide v12, 0xffffffffL

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    cmp-long v5, v2, v12

    .line 95
    .line 96
    if-nez v5, :cond_3

    .line 97
    .line 98
    move-wide v2, v10

    .line 99
    :cond_3
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzaom;->zzf:I

    .line 100
    .line 101
    int-to-long v10, v5

    .line 102
    add-long/2addr v10, v2

    .line 103
    iput-wide v10, v0, Lcom/google/android/gms/internal/ads/zzaom;->zzg:J

    .line 104
    .line 105
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzado;->zzd()J

    .line 106
    .line 107
    .line 108
    move-result-wide v1

    .line 109
    cmp-long v3, v1, v8

    .line 110
    .line 111
    if-eqz v3, :cond_4

    .line 112
    .line 113
    cmp-long v3, v10, v1

    .line 114
    .line 115
    if-lez v3, :cond_4

    .line 116
    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    const-string v5, "Data exceeds input length: "

    .line 123
    .line 124
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v5, ", "

    .line 131
    .line 132
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    const-string v5, "WavExtractor"

    .line 143
    .line 144
    invoke-static {v5, v3}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaom;->zzg:J

    .line 148
    .line 149
    move-wide v10, v1

    .line 150
    :cond_4
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaom;->zze:Lcom/google/android/gms/internal/ads/zzaok;

    .line 151
    .line 152
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaom;->zzf:I

    .line 156
    .line 157
    invoke-interface {v1, v2, v10, v11}, Lcom/google/android/gms/internal/ads/zzaok;->zza(IJ)V

    .line 158
    .line 159
    .line 160
    iput v4, v0, Lcom/google/android/gms/internal/ads/zzaom;->zzc:I

    .line 161
    .line 162
    return v6

    .line 163
    :cond_5
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaop;->zzb(Lcom/google/android/gms/internal/ads/zzado;)Lcom/google/android/gms/internal/ads/zzaon;

    .line 164
    .line 165
    .line 166
    move-result-object v15

    .line 167
    iget v1, v15, Lcom/google/android/gms/internal/ads/zzaon;->zza:I

    .line 168
    .line 169
    const/16 v2, 0x11

    .line 170
    .line 171
    if-ne v1, v2, :cond_6

    .line 172
    .line 173
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaoj;

    .line 174
    .line 175
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaom;->zza:Lcom/google/android/gms/internal/ads/zzadq;

    .line 176
    .line 177
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaom;->zzb:Lcom/google/android/gms/internal/ads/zzaet;

    .line 178
    .line 179
    invoke-direct {v1, v2, v3, v15}, Lcom/google/android/gms/internal/ads/zzaoj;-><init>(Lcom/google/android/gms/internal/ads/zzadq;Lcom/google/android/gms/internal/ads/zzaet;Lcom/google/android/gms/internal/ads/zzaon;)V

    .line 180
    .line 181
    .line 182
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzaom;->zze:Lcom/google/android/gms/internal/ads/zzaok;

    .line 183
    .line 184
    goto :goto_3

    .line 185
    :cond_6
    const/4 v2, 0x6

    .line 186
    if-ne v1, v2, :cond_7

    .line 187
    .line 188
    new-instance v12, Lcom/google/android/gms/internal/ads/zzaol;

    .line 189
    .line 190
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzaom;->zza:Lcom/google/android/gms/internal/ads/zzadq;

    .line 191
    .line 192
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzaom;->zzb:Lcom/google/android/gms/internal/ads/zzaet;

    .line 193
    .line 194
    const-string v16, "audio/g711-alaw"

    .line 195
    .line 196
    const/16 v17, -0x1

    .line 197
    .line 198
    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/internal/ads/zzaol;-><init>(Lcom/google/android/gms/internal/ads/zzadq;Lcom/google/android/gms/internal/ads/zzaet;Lcom/google/android/gms/internal/ads/zzaon;Ljava/lang/String;I)V

    .line 199
    .line 200
    .line 201
    iput-object v12, v0, Lcom/google/android/gms/internal/ads/zzaom;->zze:Lcom/google/android/gms/internal/ads/zzaok;

    .line 202
    .line 203
    goto :goto_3

    .line 204
    :cond_7
    const/4 v2, 0x7

    .line 205
    if-ne v1, v2, :cond_8

    .line 206
    .line 207
    new-instance v12, Lcom/google/android/gms/internal/ads/zzaol;

    .line 208
    .line 209
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzaom;->zza:Lcom/google/android/gms/internal/ads/zzadq;

    .line 210
    .line 211
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzaom;->zzb:Lcom/google/android/gms/internal/ads/zzaet;

    .line 212
    .line 213
    const-string v16, "audio/g711-mlaw"

    .line 214
    .line 215
    const/16 v17, -0x1

    .line 216
    .line 217
    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/internal/ads/zzaol;-><init>(Lcom/google/android/gms/internal/ads/zzadq;Lcom/google/android/gms/internal/ads/zzaet;Lcom/google/android/gms/internal/ads/zzaon;Ljava/lang/String;I)V

    .line 218
    .line 219
    .line 220
    iput-object v12, v0, Lcom/google/android/gms/internal/ads/zzaom;->zze:Lcom/google/android/gms/internal/ads/zzaok;

    .line 221
    .line 222
    goto :goto_3

    .line 223
    :cond_8
    iget v2, v15, Lcom/google/android/gms/internal/ads/zzaon;->zze:I

    .line 224
    .line 225
    if-eq v1, v5, :cond_b

    .line 226
    .line 227
    if-eq v1, v10, :cond_a

    .line 228
    .line 229
    const v3, 0xfffe

    .line 230
    .line 231
    .line 232
    if-eq v1, v3, :cond_b

    .line 233
    .line 234
    :cond_9
    move/from16 v17, v6

    .line 235
    .line 236
    goto :goto_2

    .line 237
    :cond_a
    const/16 v3, 0x20

    .line 238
    .line 239
    if-ne v2, v3, :cond_9

    .line 240
    .line 241
    :goto_1
    move/from16 v17, v4

    .line 242
    .line 243
    goto :goto_2

    .line 244
    :cond_b
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzeu;->zzn(I)I

    .line 245
    .line 246
    .line 247
    move-result v4

    .line 248
    goto :goto_1

    .line 249
    :goto_2
    if-eqz v17, :cond_c

    .line 250
    .line 251
    new-instance v12, Lcom/google/android/gms/internal/ads/zzaol;

    .line 252
    .line 253
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzaom;->zza:Lcom/google/android/gms/internal/ads/zzadq;

    .line 254
    .line 255
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzaom;->zzb:Lcom/google/android/gms/internal/ads/zzaet;

    .line 256
    .line 257
    const-string v16, "audio/raw"

    .line 258
    .line 259
    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/internal/ads/zzaol;-><init>(Lcom/google/android/gms/internal/ads/zzadq;Lcom/google/android/gms/internal/ads/zzaet;Lcom/google/android/gms/internal/ads/zzaon;Ljava/lang/String;I)V

    .line 260
    .line 261
    .line 262
    iput-object v12, v0, Lcom/google/android/gms/internal/ads/zzaom;->zze:Lcom/google/android/gms/internal/ads/zzaok;

    .line 263
    .line 264
    :goto_3
    iput v10, v0, Lcom/google/android/gms/internal/ads/zzaom;->zzc:I

    .line 265
    .line 266
    return v6

    .line 267
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    .line 268
    .line 269
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    .line 271
    .line 272
    const-string v3, "Unsupported WAV format type: "

    .line 273
    .line 274
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    throw v1

    .line 289
    :cond_d
    new-instance v2, Lcom/google/android/gms/internal/ads/zzek;

    .line 290
    .line 291
    const/16 v3, 0x8

    .line 292
    .line 293
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzek;-><init>(I)V

    .line 294
    .line 295
    .line 296
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzaoo;->zza(Lcom/google/android/gms/internal/ads/zzado;Lcom/google/android/gms/internal/ads/zzek;)Lcom/google/android/gms/internal/ads/zzaoo;

    .line 297
    .line 298
    .line 299
    move-result-object v4

    .line 300
    iget v5, v4, Lcom/google/android/gms/internal/ads/zzaoo;->zza:I

    .line 301
    .line 302
    const v10, 0x64733634

    .line 303
    .line 304
    .line 305
    if-eq v5, v10, :cond_e

    .line 306
    .line 307
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzado;->zzj()V

    .line 308
    .line 309
    .line 310
    goto :goto_4

    .line 311
    :cond_e
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzado;->zzg(I)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 318
    .line 319
    .line 320
    move-result-object v5

    .line 321
    invoke-interface {v1, v5, v6, v3}, Lcom/google/android/gms/internal/ads/zzado;->zzh([BII)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzr()J

    .line 325
    .line 326
    .line 327
    move-result-wide v8

    .line 328
    iget-wide v4, v4, Lcom/google/android/gms/internal/ads/zzaoo;->zzb:J

    .line 329
    .line 330
    long-to-int v2, v4

    .line 331
    add-int/2addr v2, v3

    .line 332
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzado;->zzk(I)V

    .line 333
    .line 334
    .line 335
    :goto_4
    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/zzaom;->zzd:J

    .line 336
    .line 337
    iput v7, v0, Lcom/google/android/gms/internal/ads/zzaom;->zzc:I

    .line 338
    .line 339
    return v6

    .line 340
    :cond_f
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzado;->zzf()J

    .line 341
    .line 342
    .line 343
    move-result-wide v7

    .line 344
    const-wide/16 v9, 0x0

    .line 345
    .line 346
    cmp-long v2, v7, v9

    .line 347
    .line 348
    if-nez v2, :cond_10

    .line 349
    .line 350
    move v2, v5

    .line 351
    goto :goto_5

    .line 352
    :cond_10
    move v2, v6

    .line 353
    :goto_5
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V

    .line 354
    .line 355
    .line 356
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaom;->zzf:I

    .line 357
    .line 358
    if-eq v2, v3, :cond_11

    .line 359
    .line 360
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzado;->zzk(I)V

    .line 361
    .line 362
    .line 363
    iput v4, v0, Lcom/google/android/gms/internal/ads/zzaom;->zzc:I

    .line 364
    .line 365
    goto :goto_6

    .line 366
    :cond_11
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaop;->zzc(Lcom/google/android/gms/internal/ads/zzado;)Z

    .line 367
    .line 368
    .line 369
    move-result v2

    .line 370
    if-eqz v2, :cond_12

    .line 371
    .line 372
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzado;->zze()J

    .line 373
    .line 374
    .line 375
    move-result-wide v2

    .line 376
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzado;->zzf()J

    .line 377
    .line 378
    .line 379
    move-result-wide v7

    .line 380
    sub-long/2addr v2, v7

    .line 381
    long-to-int v2, v2

    .line 382
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzado;->zzk(I)V

    .line 383
    .line 384
    .line 385
    iput v5, v0, Lcom/google/android/gms/internal/ads/zzaom;->zzc:I

    .line 386
    .line 387
    :goto_6
    return v6

    .line 388
    :cond_12
    const-string v1, "Unsupported or unrecognized wav file type."

    .line 389
    .line 390
    const/4 v2, 0x0

    .line 391
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    throw v1
.end method

.method public final synthetic zzc()Lcom/google/android/gms/internal/ads/zzadn;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final synthetic zzd()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyc;->zzn()Lcom/google/android/gms/internal/ads/zzfyc;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzadq;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaom;->zza:Lcom/google/android/gms/internal/ads/zzadq;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzadq;->zzw(II)Lcom/google/android/gms/internal/ads/zzaet;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaom;->zzb:Lcom/google/android/gms/internal/ads/zzaet;

    .line 10
    .line 11
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzadq;->zzG()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final zzf(JJ)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long p1, p1, v0

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x4

    .line 10
    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaom;->zzc:I

    .line 11
    .line 12
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaom;->zze:Lcom/google/android/gms/internal/ads/zzaok;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-interface {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzaok;->zzb(J)V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzado;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaop;->zzc(Lcom/google/android/gms/internal/ads/zzado;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method
