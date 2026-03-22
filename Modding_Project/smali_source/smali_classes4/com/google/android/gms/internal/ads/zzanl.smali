.class public final Lcom/google/android/gms/internal/ads/zzanl;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaog;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzamr;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzej;

.field private zzc:I

.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/ads/zzer;

.field private zzf:Z

.field private zzg:Z

.field private zzh:Z

.field private zzi:I

.field private zzj:I

.field private zzk:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzamr;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzanl;->zza:Lcom/google/android/gms/internal/ads/zzamr;

    .line 5
    .line 6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzej;

    .line 7
    .line 8
    const/16 v0, 0xa

    .line 9
    .line 10
    new-array v1, v0, [B

    .line 11
    .line 12
    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzej;-><init>([BI)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzanl;->zzb:Lcom/google/android/gms/internal/ads/zzej;

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzanl;->zzc:I

    .line 19
    .line 20
    return-void
.end method

.method private final zze(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzanl;->zzc:I

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzanl;->zzd:I

    .line 5
    .line 6
    return-void
.end method

.method private final zzf(Lcom/google/android/gms/internal/ads/zzek;[BI)Z
    .locals 3
    .param p2    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzanl;->zzd:I

    .line 6
    .line 7
    sub-int v1, p3, v1

    .line 8
    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-gtz v0, :cond_0

    .line 15
    .line 16
    return v1

    .line 17
    :cond_0
    if-nez p2, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzanl;->zzd:I

    .line 24
    .line 25
    invoke-virtual {p1, p2, v2, v0}, Lcom/google/android/gms/internal/ads/zzek;->zzH([BII)V

    .line 26
    .line 27
    .line 28
    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzanl;->zzd:I

    .line 29
    .line 30
    add-int/2addr p1, v0

    .line 31
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzanl;->zzd:I

    .line 32
    .line 33
    if-ne p1, p3, :cond_2

    .line 34
    .line 35
    return v1

    .line 36
    :cond_2
    const/4 p1, 0x0

    .line 37
    return p1
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzek;I)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzanl;->zze:Lcom/google/android/gms/internal/ads/zzer;

    .line 6
    .line 7
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdc;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    and-int/lit8 v2, p2, 0x1

    .line 11
    .line 12
    const-string v3, "PesReader"

    .line 13
    .line 14
    const/4 v4, -0x1

    .line 15
    const/4 v5, 0x2

    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v7, 0x1

    .line 18
    if-eqz v2, :cond_4

    .line 19
    .line 20
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzc:I

    .line 21
    .line 22
    if-eqz v2, :cond_3

    .line 23
    .line 24
    if-eq v2, v7, :cond_3

    .line 25
    .line 26
    if-eq v2, v5, :cond_2

    .line 27
    .line 28
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzj:I

    .line 29
    .line 30
    if-eq v2, v4, :cond_0

    .line 31
    .line 32
    new-instance v8, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v9, "Unexpected start indicator: expected "

    .line 38
    .line 39
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v2, " more bytes"

    .line 46
    .line 47
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzd()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-nez v2, :cond_1

    .line 62
    .line 63
    move v2, v7

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    move v2, v6

    .line 66
    :goto_0
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzanl;->zza:Lcom/google/android/gms/internal/ads/zzamr;

    .line 67
    .line 68
    invoke-interface {v8, v2}, Lcom/google/android/gms/internal/ads/zzamr;->zzc(Z)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    const-string v2, "Unexpected start indicator reading extended header"

    .line 73
    .line 74
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :cond_3
    :goto_1
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/ads/zzanl;->zze(I)V

    .line 78
    .line 79
    .line 80
    :cond_4
    move/from16 v2, p2

    .line 81
    .line 82
    :goto_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    .line 83
    .line 84
    .line 85
    move-result v8

    .line 86
    if-lez v8, :cond_12

    .line 87
    .line 88
    iget v8, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzc:I

    .line 89
    .line 90
    if-eqz v8, :cond_11

    .line 91
    .line 92
    if-eq v8, v7, :cond_c

    .line 93
    .line 94
    if-eq v8, v5, :cond_8

    .line 95
    .line 96
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    .line 97
    .line 98
    .line 99
    move-result v8

    .line 100
    iget v9, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzj:I

    .line 101
    .line 102
    if-ne v9, v4, :cond_5

    .line 103
    .line 104
    move v9, v6

    .line 105
    goto :goto_3

    .line 106
    :cond_5
    sub-int v9, v8, v9

    .line 107
    .line 108
    :goto_3
    if-lez v9, :cond_6

    .line 109
    .line 110
    sub-int/2addr v8, v9

    .line 111
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    .line 112
    .line 113
    .line 114
    move-result v9

    .line 115
    add-int/2addr v9, v8

    .line 116
    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzek;->zzK(I)V

    .line 117
    .line 118
    .line 119
    :cond_6
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzanl;->zza:Lcom/google/android/gms/internal/ads/zzamr;

    .line 120
    .line 121
    invoke-interface {v9, v1}, Lcom/google/android/gms/internal/ads/zzamr;->zza(Lcom/google/android/gms/internal/ads/zzek;)V

    .line 122
    .line 123
    .line 124
    iget v10, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzj:I

    .line 125
    .line 126
    if-eq v10, v4, :cond_7

    .line 127
    .line 128
    sub-int/2addr v10, v8

    .line 129
    iput v10, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzj:I

    .line 130
    .line 131
    if-nez v10, :cond_7

    .line 132
    .line 133
    invoke-interface {v9, v6}, Lcom/google/android/gms/internal/ads/zzamr;->zzc(Z)V

    .line 134
    .line 135
    .line 136
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/ads/zzanl;->zze(I)V

    .line 137
    .line 138
    .line 139
    :cond_7
    move v9, v5

    .line 140
    goto/16 :goto_9

    .line 141
    .line 142
    :cond_8
    const/16 v8, 0xa

    .line 143
    .line 144
    iget v9, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzi:I

    .line 145
    .line 146
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    .line 147
    .line 148
    .line 149
    move-result v8

    .line 150
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzb:Lcom/google/android/gms/internal/ads/zzej;

    .line 151
    .line 152
    iget-object v10, v9, Lcom/google/android/gms/internal/ads/zzej;->zza:[B

    .line 153
    .line 154
    invoke-direct {v0, v1, v10, v8}, Lcom/google/android/gms/internal/ads/zzanl;->zzf(Lcom/google/android/gms/internal/ads/zzek;[BI)Z

    .line 155
    .line 156
    .line 157
    move-result v8

    .line 158
    if-eqz v8, :cond_7

    .line 159
    .line 160
    const/4 v8, 0x0

    .line 161
    iget v10, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzi:I

    .line 162
    .line 163
    invoke-direct {v0, v1, v8, v10}, Lcom/google/android/gms/internal/ads/zzanl;->zzf(Lcom/google/android/gms/internal/ads/zzek;[BI)Z

    .line 164
    .line 165
    .line 166
    move-result v8

    .line 167
    if-eqz v8, :cond_7

    .line 168
    .line 169
    invoke-virtual {v9, v6}, Lcom/google/android/gms/internal/ads/zzej;->zzl(I)V

    .line 170
    .line 171
    .line 172
    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzf:Z

    .line 173
    .line 174
    const/4 v10, 0x3

    .line 175
    const/4 v11, 0x4

    .line 176
    if-eqz v8, :cond_a

    .line 177
    .line 178
    invoke-virtual {v9, v11}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 182
    .line 183
    .line 184
    move-result v8

    .line 185
    int-to-long v12, v8

    .line 186
    invoke-virtual {v9, v7}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 187
    .line 188
    .line 189
    const/16 v8, 0xf

    .line 190
    .line 191
    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 192
    .line 193
    .line 194
    move-result v14

    .line 195
    shl-int/2addr v14, v8

    .line 196
    invoke-virtual {v9, v7}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 200
    .line 201
    .line 202
    move-result v15

    .line 203
    int-to-long v4, v15

    .line 204
    invoke-virtual {v9, v7}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 205
    .line 206
    .line 207
    iget-boolean v15, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzh:Z

    .line 208
    .line 209
    const/16 v16, 0x1e

    .line 210
    .line 211
    if-nez v15, :cond_9

    .line 212
    .line 213
    iget-boolean v15, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzg:Z

    .line 214
    .line 215
    if-eqz v15, :cond_9

    .line 216
    .line 217
    invoke-virtual {v9, v11}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 221
    .line 222
    .line 223
    move-result v15

    .line 224
    move-wide/from16 v17, v12

    .line 225
    .line 226
    int-to-long v11, v15

    .line 227
    shl-long v11, v11, v16

    .line 228
    .line 229
    invoke-virtual {v9, v7}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 233
    .line 234
    .line 235
    move-result v13

    .line 236
    shl-int/2addr v13, v8

    .line 237
    invoke-virtual {v9, v7}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 241
    .line 242
    .line 243
    move-result v8

    .line 244
    move-wide/from16 v19, v11

    .line 245
    .line 246
    int-to-long v10, v8

    .line 247
    invoke-virtual {v9, v7}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 248
    .line 249
    .line 250
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzanl;->zze:Lcom/google/android/gms/internal/ads/zzer;

    .line 251
    .line 252
    int-to-long v12, v13

    .line 253
    or-long v12, v19, v12

    .line 254
    .line 255
    or-long/2addr v10, v12

    .line 256
    invoke-virtual {v8, v10, v11}, Lcom/google/android/gms/internal/ads/zzer;->zzb(J)J

    .line 257
    .line 258
    .line 259
    iput-boolean v7, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzh:Z

    .line 260
    .line 261
    goto :goto_4

    .line 262
    :cond_9
    move-wide/from16 v17, v12

    .line 263
    .line 264
    :goto_4
    shl-long v8, v17, v16

    .line 265
    .line 266
    int-to-long v10, v14

    .line 267
    or-long/2addr v8, v10

    .line 268
    or-long/2addr v4, v8

    .line 269
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzanl;->zze:Lcom/google/android/gms/internal/ads/zzer;

    .line 270
    .line 271
    invoke-virtual {v8, v4, v5}, Lcom/google/android/gms/internal/ads/zzer;->zzb(J)J

    .line 272
    .line 273
    .line 274
    move-result-wide v4

    .line 275
    goto :goto_5

    .line 276
    :cond_a
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    :goto_5
    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzk:Z

    .line 282
    .line 283
    if-eq v7, v8, :cond_b

    .line 284
    .line 285
    move v11, v6

    .line 286
    goto :goto_6

    .line 287
    :cond_b
    const/4 v11, 0x4

    .line 288
    :goto_6
    or-int/2addr v2, v11

    .line 289
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzanl;->zza:Lcom/google/android/gms/internal/ads/zzamr;

    .line 290
    .line 291
    invoke-interface {v8, v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzamr;->zzd(JI)V

    .line 292
    .line 293
    .line 294
    const/4 v15, 0x3

    .line 295
    invoke-direct {v0, v15}, Lcom/google/android/gms/internal/ads/zzanl;->zze(I)V

    .line 296
    .line 297
    .line 298
    const/4 v4, -0x1

    .line 299
    const/4 v5, 0x2

    .line 300
    goto/16 :goto_2

    .line 301
    .line 302
    :cond_c
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzb:Lcom/google/android/gms/internal/ads/zzej;

    .line 303
    .line 304
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzej;->zza:[B

    .line 305
    .line 306
    const/16 v8, 0x9

    .line 307
    .line 308
    invoke-direct {v0, v1, v5, v8}, Lcom/google/android/gms/internal/ads/zzanl;->zzf(Lcom/google/android/gms/internal/ads/zzek;[BI)Z

    .line 309
    .line 310
    .line 311
    move-result v5

    .line 312
    if-eqz v5, :cond_10

    .line 313
    .line 314
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/zzej;->zzl(I)V

    .line 315
    .line 316
    .line 317
    const/16 v5, 0x18

    .line 318
    .line 319
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 320
    .line 321
    .line 322
    move-result v5

    .line 323
    if-eq v5, v7, :cond_d

    .line 324
    .line 325
    new-instance v4, Ljava/lang/StringBuilder;

    .line 326
    .line 327
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 328
    .line 329
    .line 330
    const-string v8, "Unexpected start code prefix: "

    .line 331
    .line 332
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v4

    .line 342
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    const/4 v4, -0x1

    .line 346
    iput v4, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzj:I

    .line 347
    .line 348
    move v5, v6

    .line 349
    const/4 v9, 0x2

    .line 350
    goto :goto_8

    .line 351
    :cond_d
    const/16 v5, 0x8

    .line 352
    .line 353
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 354
    .line 355
    .line 356
    const/16 v8, 0x10

    .line 357
    .line 358
    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 359
    .line 360
    .line 361
    move-result v8

    .line 362
    const/4 v9, 0x5

    .line 363
    invoke-virtual {v4, v9}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzej;->zzp()Z

    .line 367
    .line 368
    .line 369
    move-result v9

    .line 370
    iput-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzk:Z

    .line 371
    .line 372
    const/4 v9, 0x2

    .line 373
    invoke-virtual {v4, v9}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzej;->zzp()Z

    .line 377
    .line 378
    .line 379
    move-result v10

    .line 380
    iput-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzf:Z

    .line 381
    .line 382
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzej;->zzp()Z

    .line 383
    .line 384
    .line 385
    move-result v10

    .line 386
    iput-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzg:Z

    .line 387
    .line 388
    const/4 v10, 0x6

    .line 389
    invoke-virtual {v4, v10}, Lcom/google/android/gms/internal/ads/zzej;->zzn(I)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzej;->zzd(I)I

    .line 393
    .line 394
    .line 395
    move-result v4

    .line 396
    iput v4, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzi:I

    .line 397
    .line 398
    if-nez v8, :cond_e

    .line 399
    .line 400
    const/4 v5, -0x1

    .line 401
    iput v5, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzj:I

    .line 402
    .line 403
    move v4, v5

    .line 404
    :goto_7
    move v5, v9

    .line 405
    goto :goto_8

    .line 406
    :cond_e
    add-int/lit8 v8, v8, -0x3

    .line 407
    .line 408
    sub-int/2addr v8, v4

    .line 409
    iput v8, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzj:I

    .line 410
    .line 411
    if-gez v8, :cond_f

    .line 412
    .line 413
    new-instance v4, Ljava/lang/StringBuilder;

    .line 414
    .line 415
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 416
    .line 417
    .line 418
    const-string v5, "Found negative packet payload size: "

    .line 419
    .line 420
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v4

    .line 430
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    const/4 v4, -0x1

    .line 434
    iput v4, v0, Lcom/google/android/gms/internal/ads/zzanl;->zzj:I

    .line 435
    .line 436
    goto :goto_7

    .line 437
    :cond_f
    const/4 v4, -0x1

    .line 438
    goto :goto_7

    .line 439
    :goto_8
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/ads/zzanl;->zze(I)V

    .line 440
    .line 441
    .line 442
    goto :goto_9

    .line 443
    :cond_10
    const/4 v4, -0x1

    .line 444
    const/4 v9, 0x2

    .line 445
    goto :goto_9

    .line 446
    :cond_11
    move v9, v5

    .line 447
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    .line 448
    .line 449
    .line 450
    move-result v5

    .line 451
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    .line 452
    .line 453
    .line 454
    :goto_9
    move v5, v9

    .line 455
    goto/16 :goto_2

    .line 456
    .line 457
    :cond_12
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzer;Lcom/google/android/gms/internal/ads/zzadq;Lcom/google/android/gms/internal/ads/zzaof;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzanl;->zze:Lcom/google/android/gms/internal/ads/zzer;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzanl;->zza:Lcom/google/android/gms/internal/ads/zzamr;

    .line 4
    .line 5
    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzamr;->zzb(Lcom/google/android/gms/internal/ads/zzadq;Lcom/google/android/gms/internal/ads/zzaof;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final zzc()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzanl;->zzc:I

    .line 3
    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzanl;->zzd:I

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzanl;->zzh:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanl;->zza:Lcom/google/android/gms/internal/ads/zzamr;

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzamr;->zze()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final zzd(Z)Z
    .locals 1

    .line 1
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzanl;->zzc:I

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzanl;->zzj:I

    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    return p1

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    return p1
.end method
