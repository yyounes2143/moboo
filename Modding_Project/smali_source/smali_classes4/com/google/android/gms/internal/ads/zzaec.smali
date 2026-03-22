.class public final Lcom/google/android/gms/internal/ads/zzaec;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field public final zza:Ljava/util/List;

.field public final zzb:I

.field public final zzc:I

.field public final zzd:I

.field public final zze:I

.field public final zzf:I

.field public final zzg:I

.field public final zzh:I

.field public final zzi:I

.field public final zzj:F

.field public final zzk:I

.field public final zzl:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final zzm:Lcom/google/android/gms/internal/ads/zzfp;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;IIIIIIIIIIFILjava/lang/String;Lcom/google/android/gms/internal/ads/zzfp;)V
    .locals 0
    .param p14    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p15    # Lcom/google/android/gms/internal/ads/zzfp;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaec;->zza:Ljava/util/List;

    .line 5
    .line 6
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzb:I

    .line 7
    .line 8
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzc:I

    .line 9
    .line 10
    iput p6, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzd:I

    .line 11
    .line 12
    iput p7, p0, Lcom/google/android/gms/internal/ads/zzaec;->zze:I

    .line 13
    .line 14
    iput p8, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzf:I

    .line 15
    .line 16
    iput p9, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzg:I

    .line 17
    .line 18
    iput p10, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzh:I

    .line 19
    .line 20
    iput p11, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzi:I

    .line 21
    .line 22
    iput p12, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzj:F

    .line 23
    .line 24
    iput p13, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzk:I

    .line 25
    .line 26
    iput-object p14, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzl:Ljava/lang/String;

    .line 27
    .line 28
    iput-object p15, p0, Lcom/google/android/gms/internal/ads/zzaec;->zzm:Lcom/google/android/gms/internal/ads/zzfp;

    .line 29
    .line 30
    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzek;)Lcom/google/android/gms/internal/ads/zzaec;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzaec;->zzc(Lcom/google/android/gms/internal/ads/zzek;ZLcom/google/android/gms/internal/ads/zzfp;)Lcom/google/android/gms/internal/ads/zzaec;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzek;Lcom/google/android/gms/internal/ads/zzfp;)Lcom/google/android/gms/internal/ads/zzaec;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzaec;->zzc(Lcom/google/android/gms/internal/ads/zzek;ZLcom/google/android/gms/internal/ads/zzfp;)Lcom/google/android/gms/internal/ads/zzaec;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method private static zzc(Lcom/google/android/gms/internal/ads/zzek;ZLcom/google/android/gms/internal/ads/zzfp;)Lcom/google/android/gms/internal/ads/zzaec;
    .locals 43
    .param p2    # Lcom/google/android/gms/internal/ads/zzfp;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    move v2, v3

    .line 15
    goto/16 :goto_14

    .line 16
    .line 17
    :cond_0
    const/16 v4, 0x15

    .line 18
    .line 19
    :try_start_1
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzm()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    and-int/lit8 v4, v4, 0x3

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzm()I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    .line 33
    .line 34
    .line 35
    move-result v6
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    .line 36
    const/4 v7, 0x0

    .line 37
    move v8, v7

    .line 38
    move v9, v8

    .line 39
    :goto_1
    if-ge v8, v5, :cond_2

    .line 40
    .line 41
    :try_start_2
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzq()I

    .line 45
    .line 46
    .line 47
    move-result v10

    .line 48
    move v11, v7

    .line 49
    :goto_2
    if-ge v11, v10, :cond_1

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzq()I

    .line 52
    .line 53
    .line 54
    move-result v12

    .line 55
    add-int/lit8 v13, v12, 0x4

    .line 56
    .line 57
    add-int/2addr v9, v13

    .line 58
    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    .line 59
    .line 60
    .line 61
    add-int/lit8 v11, v11, 0x1

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    :try_start_3
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 68
    .line 69
    .line 70
    new-array v6, v9, [B

    .line 71
    .line 72
    const/high16 v11, 0x3f800000    # 1.0f

    .line 73
    .line 74
    move-object/from16 v27, p2

    .line 75
    .line 76
    move v12, v7

    .line 77
    move/from16 v24, v11

    .line 78
    .line 79
    const/4 v15, -0x1

    .line 80
    const/16 v16, -0x1

    .line 81
    .line 82
    const/16 v17, -0x1

    .line 83
    .line 84
    const/16 v18, -0x1

    .line 85
    .line 86
    const/16 v19, -0x1

    .line 87
    .line 88
    const/16 v20, -0x1

    .line 89
    .line 90
    const/16 v21, -0x1

    .line 91
    .line 92
    const/16 v22, -0x1

    .line 93
    .line 94
    const/16 v23, -0x1

    .line 95
    .line 96
    const/16 v25, -0x1

    .line 97
    .line 98
    const/16 v26, 0x0

    .line 99
    .line 100
    move v11, v12

    .line 101
    :goto_3
    if-ge v11, v5, :cond_1a

    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzm()I

    .line 104
    .line 105
    .line 106
    move-result v13

    .line 107
    const/16 v14, 0x3f

    .line 108
    .line 109
    and-int/2addr v13, v14

    .line 110
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzq()I

    .line 111
    .line 112
    .line 113
    move-result v8
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2

    .line 114
    move/from16 v29, v3

    .line 115
    .line 116
    move v3, v7

    .line 117
    move-object/from16 v10, v27

    .line 118
    .line 119
    const/16 v28, -0x1

    .line 120
    .line 121
    :goto_4
    if-ge v3, v8, :cond_19

    .line 122
    .line 123
    :try_start_4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzq()I

    .line 124
    .line 125
    .line 126
    move-result v14

    .line 127
    move/from16 v27, v3

    .line 128
    .line 129
    sget-object v3, Lcom/google/android/gms/internal/ads/zzfs;->zza:[B

    .line 130
    .line 131
    invoke-static {v3, v7, v6, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    .line 133
    .line 134
    add-int/lit8 v3, v12, 0x4

    .line 135
    .line 136
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    .line 141
    .line 142
    .line 143
    move-result v7

    .line 144
    invoke-static {v2, v7, v6, v3, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    .line 146
    .line 147
    const/16 v2, 0x20

    .line 148
    .line 149
    if-ne v13, v2, :cond_3

    .line 150
    .line 151
    if-nez v27, :cond_4

    .line 152
    .line 153
    add-int v2, v3, v14

    .line 154
    .line 155
    invoke-static {v6, v3, v2}, Lcom/google/android/gms/internal/ads/zzfs;->zze([BII)Lcom/google/android/gms/internal/ads/zzfp;

    .line 156
    .line 157
    .line 158
    move-result-object v10

    .line 159
    move/from16 v32, v3

    .line 160
    .line 161
    move/from16 v30, v4

    .line 162
    .line 163
    const/4 v3, 0x0

    .line 164
    const/4 v4, 0x0

    .line 165
    goto/16 :goto_11

    .line 166
    .line 167
    :catch_1
    move-exception v0

    .line 168
    :goto_5
    move/from16 v2, v29

    .line 169
    .line 170
    goto/16 :goto_14

    .line 171
    .line 172
    :cond_3
    move v2, v13

    .line 173
    :cond_4
    const/16 v7, 0x21

    .line 174
    .line 175
    move/from16 v30, v4

    .line 176
    .line 177
    if-ne v2, v7, :cond_8

    .line 178
    .line 179
    if-nez v27, :cond_6

    .line 180
    .line 181
    add-int v2, v3, v14

    .line 182
    .line 183
    invoke-static {v6, v3, v2, v10}, Lcom/google/android/gms/internal/ads/zzfs;->zzd([BIILcom/google/android/gms/internal/ads/zzfp;)Lcom/google/android/gms/internal/ads/zzfm;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    iget v7, v2, Lcom/google/android/gms/internal/ads/zzfm;->zza:I

    .line 188
    .line 189
    add-int/lit8 v7, v7, 0x1

    .line 190
    .line 191
    iget v12, v2, Lcom/google/android/gms/internal/ads/zzfm;->zze:I

    .line 192
    .line 193
    iget v15, v2, Lcom/google/android/gms/internal/ads/zzfm;->zzf:I

    .line 194
    .line 195
    const/16 v31, 0x8

    .line 196
    .line 197
    iget v4, v2, Lcom/google/android/gms/internal/ads/zzfm;->zzc:I

    .line 198
    .line 199
    add-int/lit8 v4, v4, 0x8

    .line 200
    .line 201
    move/from16 v32, v3

    .line 202
    .line 203
    iget v3, v2, Lcom/google/android/gms/internal/ads/zzfm;->zzd:I

    .line 204
    .line 205
    add-int/lit8 v3, v3, 0x8

    .line 206
    .line 207
    move/from16 v16, v3

    .line 208
    .line 209
    iget v3, v2, Lcom/google/android/gms/internal/ads/zzfm;->zzi:I

    .line 210
    .line 211
    move/from16 v17, v3

    .line 212
    .line 213
    iget v3, v2, Lcom/google/android/gms/internal/ads/zzfm;->zzj:I

    .line 214
    .line 215
    move/from16 v18, v3

    .line 216
    .line 217
    iget v3, v2, Lcom/google/android/gms/internal/ads/zzfm;->zzk:I

    .line 218
    .line 219
    move/from16 v19, v3

    .line 220
    .line 221
    iget v3, v2, Lcom/google/android/gms/internal/ads/zzfm;->zzg:F

    .line 222
    .line 223
    move/from16 v20, v3

    .line 224
    .line 225
    iget v3, v2, Lcom/google/android/gms/internal/ads/zzfm;->zzh:I

    .line 226
    .line 227
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfm;->zzb:Lcom/google/android/gms/internal/ads/zzfh;

    .line 228
    .line 229
    if-eqz v2, :cond_5

    .line 230
    .line 231
    move/from16 v21, v3

    .line 232
    .line 233
    iget v3, v2, Lcom/google/android/gms/internal/ads/zzfh;->zza:I

    .line 234
    .line 235
    move/from16 v33, v3

    .line 236
    .line 237
    iget-boolean v3, v2, Lcom/google/android/gms/internal/ads/zzfh;->zzb:Z

    .line 238
    .line 239
    move/from16 v34, v3

    .line 240
    .line 241
    iget v3, v2, Lcom/google/android/gms/internal/ads/zzfh;->zzc:I

    .line 242
    .line 243
    move/from16 v35, v3

    .line 244
    .line 245
    iget v3, v2, Lcom/google/android/gms/internal/ads/zzfh;->zzd:I

    .line 246
    .line 247
    move/from16 v36, v3

    .line 248
    .line 249
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzfh;->zze:[I

    .line 250
    .line 251
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzfh;->zzf:I

    .line 252
    .line 253
    move/from16 v38, v2

    .line 254
    .line 255
    move-object/from16 v37, v3

    .line 256
    .line 257
    invoke-static/range {v33 .. v38}, Lcom/google/android/gms/internal/ads/zzdh;->zzd(IZII[II)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    move-object/from16 v26, v2

    .line 262
    .line 263
    :goto_6
    move/from16 v22, v19

    .line 264
    .line 265
    move/from16 v24, v20

    .line 266
    .line 267
    move/from16 v25, v21

    .line 268
    .line 269
    move/from16 v3, v27

    .line 270
    .line 271
    move/from16 v19, v16

    .line 272
    .line 273
    move/from16 v20, v17

    .line 274
    .line 275
    move/from16 v21, v18

    .line 276
    .line 277
    move/from16 v18, v4

    .line 278
    .line 279
    move/from16 v16, v12

    .line 280
    .line 281
    move/from16 v17, v15

    .line 282
    .line 283
    const/4 v4, 0x0

    .line 284
    move v15, v7

    .line 285
    goto/16 :goto_11

    .line 286
    .line 287
    :cond_5
    move/from16 v21, v3

    .line 288
    .line 289
    goto :goto_6

    .line 290
    :cond_6
    move/from16 v32, v3

    .line 291
    .line 292
    :cond_7
    const/4 v4, 0x0

    .line 293
    goto/16 :goto_10

    .line 294
    .line 295
    :cond_8
    move/from16 v32, v3

    .line 296
    .line 297
    const/16 v31, 0x8

    .line 298
    .line 299
    const/16 v3, 0x27

    .line 300
    .line 301
    if-ne v2, v3, :cond_7

    .line 302
    .line 303
    if-nez v27, :cond_7

    .line 304
    .line 305
    add-int v3, v32, v14

    .line 306
    .line 307
    add-int/lit8 v12, v12, 0x6

    .line 308
    .line 309
    add-int/lit8 v3, v3, -0x1

    .line 310
    .line 311
    :goto_7
    aget-byte v2, v6, v3

    .line 312
    .line 313
    if-nez v2, :cond_a

    .line 314
    .line 315
    if-le v3, v12, :cond_9

    .line 316
    .line 317
    add-int/lit8 v3, v3, -0x1

    .line 318
    .line 319
    goto :goto_7

    .line 320
    :cond_9
    :goto_8
    const/4 v2, 0x0

    .line 321
    goto/16 :goto_f

    .line 322
    .line 323
    :cond_a
    if-eqz v2, :cond_9

    .line 324
    .line 325
    if-gt v3, v12, :cond_b

    .line 326
    .line 327
    goto :goto_8

    .line 328
    :cond_b
    new-instance v2, Lcom/google/android/gms/internal/ads/zzft;

    .line 329
    .line 330
    add-int/lit8 v3, v3, 0x1

    .line 331
    .line 332
    invoke-direct {v2, v6, v12, v3}, Lcom/google/android/gms/internal/ads/zzft;-><init>([BII)V

    .line 333
    .line 334
    .line 335
    :cond_c
    const/16 v3, 0x10

    .line 336
    .line 337
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzft;->zzg(I)Z

    .line 338
    .line 339
    .line 340
    move-result v3

    .line 341
    if-eqz v3, :cond_9

    .line 342
    .line 343
    move/from16 v3, v31

    .line 344
    .line 345
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzft;->zza(I)I

    .line 346
    .line 347
    .line 348
    move-result v4

    .line 349
    const/4 v7, 0x0

    .line 350
    :goto_9
    const/16 v12, 0xff

    .line 351
    .line 352
    if-ne v4, v12, :cond_d

    .line 353
    .line 354
    add-int/lit16 v7, v7, 0xff

    .line 355
    .line 356
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzft;->zza(I)I

    .line 357
    .line 358
    .line 359
    move-result v4

    .line 360
    goto :goto_9

    .line 361
    :cond_d
    add-int/2addr v7, v4

    .line 362
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzft;->zza(I)I

    .line 363
    .line 364
    .line 365
    move-result v4

    .line 366
    const/4 v3, 0x0

    .line 367
    :goto_a
    if-ne v4, v12, :cond_e

    .line 368
    .line 369
    add-int/lit16 v3, v3, 0xff

    .line 370
    .line 371
    const/16 v4, 0x8

    .line 372
    .line 373
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzft;->zza(I)I

    .line 374
    .line 375
    .line 376
    move-result v31

    .line 377
    move/from16 v4, v31

    .line 378
    .line 379
    goto :goto_a

    .line 380
    :cond_e
    const/16 v31, 0x8

    .line 381
    .line 382
    add-int/2addr v3, v4

    .line 383
    if-eqz v3, :cond_9

    .line 384
    .line 385
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzft;->zzg(I)Z

    .line 386
    .line 387
    .line 388
    move-result v3

    .line 389
    if-nez v3, :cond_f

    .line 390
    .line 391
    goto :goto_8

    .line 392
    :cond_f
    const/16 v3, 0xb0

    .line 393
    .line 394
    if-ne v7, v3, :cond_c

    .line 395
    .line 396
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzft;->zzc()I

    .line 397
    .line 398
    .line 399
    move-result v34

    .line 400
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzft;->zzh()Z

    .line 401
    .line 402
    .line 403
    move-result v3

    .line 404
    if-eqz v3, :cond_10

    .line 405
    .line 406
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzft;->zzc()I

    .line 407
    .line 408
    .line 409
    move-result v4

    .line 410
    move/from16 v35, v4

    .line 411
    .line 412
    goto :goto_b

    .line 413
    :cond_10
    const/16 v35, 0x0

    .line 414
    .line 415
    :goto_b
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzft;->zzc()I

    .line 416
    .line 417
    .line 418
    move-result v4

    .line 419
    move/from16 v37, v28

    .line 420
    .line 421
    move/from16 v38, v37

    .line 422
    .line 423
    move/from16 v39, v38

    .line 424
    .line 425
    move/from16 v40, v39

    .line 426
    .line 427
    move/from16 v41, v40

    .line 428
    .line 429
    move/from16 v42, v41

    .line 430
    .line 431
    const/4 v7, 0x0

    .line 432
    :goto_c
    if-gt v7, v4, :cond_17

    .line 433
    .line 434
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzft;->zzc()I

    .line 435
    .line 436
    .line 437
    move-result v37

    .line 438
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzft;->zzc()I

    .line 439
    .line 440
    .line 441
    move-result v38

    .line 442
    const/4 v12, 0x6

    .line 443
    move/from16 v31, v3

    .line 444
    .line 445
    invoke-virtual {v2, v12}, Lcom/google/android/gms/internal/ads/zzft;->zza(I)I

    .line 446
    .line 447
    .line 448
    move-result v3

    .line 449
    const/16 v12, 0x3f

    .line 450
    .line 451
    if-ne v3, v12, :cond_11

    .line 452
    .line 453
    goto/16 :goto_8

    .line 454
    .line 455
    :cond_11
    if-nez v3, :cond_12

    .line 456
    .line 457
    add-int/lit8 v12, v34, -0x1e

    .line 458
    .line 459
    move/from16 v36, v3

    .line 460
    .line 461
    const/4 v3, 0x0

    .line 462
    invoke-static {v3, v12}, Ljava/lang/Math;->max(II)I

    .line 463
    .line 464
    .line 465
    move-result v12

    .line 466
    goto :goto_d

    .line 467
    :cond_12
    move/from16 v36, v3

    .line 468
    .line 469
    const/4 v3, 0x0

    .line 470
    add-int v12, v36, v34

    .line 471
    .line 472
    add-int/lit8 v12, v12, -0x1f

    .line 473
    .line 474
    invoke-static {v3, v12}, Ljava/lang/Math;->max(II)I

    .line 475
    .line 476
    .line 477
    move-result v12

    .line 478
    :goto_d
    invoke-virtual {v2, v12}, Lcom/google/android/gms/internal/ads/zzft;->zza(I)I

    .line 479
    .line 480
    .line 481
    move-result v40

    .line 482
    if-eqz v31, :cond_15

    .line 483
    .line 484
    const/4 v3, 0x6

    .line 485
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzft;->zza(I)I

    .line 486
    .line 487
    .line 488
    move-result v3

    .line 489
    const/16 v12, 0x3f

    .line 490
    .line 491
    if-ne v3, v12, :cond_13

    .line 492
    .line 493
    goto/16 :goto_8

    .line 494
    .line 495
    :cond_13
    if-nez v3, :cond_14

    .line 496
    .line 497
    add-int/lit8 v12, v35, -0x1e

    .line 498
    .line 499
    move/from16 v33, v3

    .line 500
    .line 501
    const/4 v3, 0x0

    .line 502
    invoke-static {v3, v12}, Ljava/lang/Math;->max(II)I

    .line 503
    .line 504
    .line 505
    move-result v12

    .line 506
    goto :goto_e

    .line 507
    :cond_14
    move/from16 v33, v3

    .line 508
    .line 509
    const/4 v3, 0x0

    .line 510
    add-int v12, v33, v35

    .line 511
    .line 512
    add-int/lit8 v12, v12, -0x1f

    .line 513
    .line 514
    invoke-static {v3, v12}, Ljava/lang/Math;->max(II)I

    .line 515
    .line 516
    .line 517
    move-result v12

    .line 518
    :goto_e
    invoke-virtual {v2, v12}, Lcom/google/android/gms/internal/ads/zzft;->zza(I)I

    .line 519
    .line 520
    .line 521
    move-result v42

    .line 522
    move/from16 v41, v33

    .line 523
    .line 524
    :cond_15
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzft;->zzh()Z

    .line 525
    .line 526
    .line 527
    move-result v3

    .line 528
    if-eqz v3, :cond_16

    .line 529
    .line 530
    const/16 v3, 0xa

    .line 531
    .line 532
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzft;->zzf(I)V

    .line 533
    .line 534
    .line 535
    :cond_16
    add-int/lit8 v7, v7, 0x1

    .line 536
    .line 537
    move/from16 v3, v31

    .line 538
    .line 539
    move/from16 v39, v36

    .line 540
    .line 541
    goto :goto_c

    .line 542
    :cond_17
    new-instance v33, Lcom/google/android/gms/internal/ads/zzfl;

    .line 543
    .line 544
    add-int/lit8 v36, v4, 0x1

    .line 545
    .line 546
    invoke-direct/range {v33 .. v42}, Lcom/google/android/gms/internal/ads/zzfl;-><init>(IIIIIIIII)V

    .line 547
    .line 548
    .line 549
    move-object/from16 v2, v33

    .line 550
    .line 551
    :goto_f
    if-eqz v2, :cond_7

    .line 552
    .line 553
    if-eqz v10, :cond_7

    .line 554
    .line 555
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzfl;->zza:I

    .line 556
    .line 557
    iget-object v3, v10, Lcom/google/android/gms/internal/ads/zzfp;->zza:Lcom/google/android/gms/internal/ads/zzfyc;

    .line 558
    .line 559
    const/4 v4, 0x0

    .line 560
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 561
    .line 562
    .line 563
    move-result-object v3

    .line 564
    check-cast v3, Lcom/google/android/gms/internal/ads/zzff;

    .line 565
    .line 566
    iget v3, v3, Lcom/google/android/gms/internal/ads/zzff;->zzb:I

    .line 567
    .line 568
    if-ne v2, v3, :cond_18

    .line 569
    .line 570
    move/from16 v3, v27

    .line 571
    .line 572
    const/16 v23, 0x4

    .line 573
    .line 574
    goto :goto_11

    .line 575
    :cond_18
    const/4 v2, 0x5

    .line 576
    move/from16 v23, v2

    .line 577
    .line 578
    :goto_10
    move/from16 v3, v27

    .line 579
    .line 580
    :goto_11
    add-int v12, v32, v14

    .line 581
    .line 582
    invoke-virtual {v0, v14}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    .line 583
    .line 584
    .line 585
    add-int/lit8 v3, v3, 0x1

    .line 586
    .line 587
    move v7, v4

    .line 588
    move/from16 v4, v30

    .line 589
    .line 590
    const/4 v2, 0x4

    .line 591
    const/16 v14, 0x3f

    .line 592
    .line 593
    goto/16 :goto_4

    .line 594
    .line 595
    :cond_19
    move/from16 v30, v4

    .line 596
    .line 597
    move v4, v7

    .line 598
    add-int/lit8 v11, v11, 0x1

    .line 599
    .line 600
    move-object/from16 v27, v10

    .line 601
    .line 602
    move/from16 v3, v29

    .line 603
    .line 604
    move/from16 v4, v30

    .line 605
    .line 606
    const/4 v2, 0x4

    .line 607
    goto/16 :goto_3

    .line 608
    .line 609
    :catch_2
    move-exception v0

    .line 610
    move/from16 v29, v3

    .line 611
    .line 612
    goto/16 :goto_5

    .line 613
    .line 614
    :cond_1a
    move/from16 v29, v3

    .line 615
    .line 616
    move/from16 v30, v4

    .line 617
    .line 618
    if-nez v9, :cond_1b

    .line 619
    .line 620
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 621
    .line 622
    :goto_12
    move-object v13, v0

    .line 623
    goto :goto_13

    .line 624
    :cond_1b
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 625
    .line 626
    .line 627
    move-result-object v0

    .line 628
    goto :goto_12

    .line 629
    :goto_13
    new-instance v12, Lcom/google/android/gms/internal/ads/zzaec;

    .line 630
    .line 631
    add-int/lit8 v14, v30, 0x1

    .line 632
    .line 633
    invoke-direct/range {v12 .. v27}, Lcom/google/android/gms/internal/ads/zzaec;-><init>(Ljava/util/List;IIIIIIIIIIFILjava/lang/String;Lcom/google/android/gms/internal/ads/zzfp;)V
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1

    .line 634
    .line 635
    .line 636
    return-object v12

    .line 637
    :goto_14
    if-eq v2, v1, :cond_1c

    .line 638
    .line 639
    const-string v1, "HEVC config"

    .line 640
    .line 641
    goto :goto_15

    .line 642
    :cond_1c
    const-string v1, "L-HEVC config"

    .line 643
    .line 644
    :goto_15
    const-string v2, "Error parsing"

    .line 645
    .line 646
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 647
    .line 648
    .line 649
    move-result-object v1

    .line 650
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 651
    .line 652
    .line 653
    move-result-object v0

    .line 654
    throw v0
.end method
