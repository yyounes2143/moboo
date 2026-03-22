.class public final Lcom/google/android/gms/internal/ads/zzahw;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzadn;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzek;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzaef;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzaeb;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzaed;

.field private final zze:Lcom/google/android/gms/internal/ads/zzaet;

.field private zzf:Lcom/google/android/gms/internal/ads/zzadq;

.field private zzg:Lcom/google/android/gms/internal/ads/zzaet;

.field private zzh:Lcom/google/android/gms/internal/ads/zzaet;

.field private zzi:I

.field private zzj:Lcom/google/android/gms/internal/ads/zzav;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzk:J

.field private zzl:J

.field private zzm:J

.field private zzn:J

.field private zzo:I

.field private zzp:Lcom/google/android/gms/internal/ads/zzahy;

.field private zzq:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    throw v0
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzek;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzek;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahw;->zza:Lcom/google/android/gms/internal/ads/zzek;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaef;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaef;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahw;->zzb:Lcom/google/android/gms/internal/ads/zzaef;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaeb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaeb;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahw;->zzc:Lcom/google/android/gms/internal/ads/zzaeb;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahw;->zzk:J

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaed;

    .line 3
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaed;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahw;->zzd:Lcom/google/android/gms/internal/ads/zzaed;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzadj;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzadj;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahw;->zze:Lcom/google/android/gms/internal/ads/zzaet;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahw;->zzh:Lcom/google/android/gms/internal/ads/zzaet;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahw;->zzn:J

    return-void
.end method

.method private final zzg(Lcom/google/android/gms/internal/ads/zzado;)I
    .locals 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzahw;->zzi:I

    .line 6
    .line 7
    const/4 v3, -0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    :try_start_0
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/ads/zzahw;->zzm(Lcom/google/android/gms/internal/ads/zzado;Z)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    return v3

    .line 16
    :cond_0
    :goto_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahw;->zzp:Lcom/google/android/gms/internal/ads/zzahy;

    .line 17
    .line 18
    const/4 v8, 0x1

    .line 19
    if-nez v2, :cond_18

    .line 20
    .line 21
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzahw;->zzb:Lcom/google/android/gms/internal/ads/zzaef;

    .line 22
    .line 23
    new-instance v14, Lcom/google/android/gms/internal/ads/zzek;

    .line 24
    .line 25
    iget v2, v13, Lcom/google/android/gms/internal/ads/zzaef;->zzc:I

    .line 26
    .line 27
    invoke-direct {v14, v2}, Lcom/google/android/gms/internal/ads/zzek;-><init>(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    iget v9, v13, Lcom/google/android/gms/internal/ads/zzaef;->zzc:I

    .line 35
    .line 36
    invoke-interface {v1, v2, v4, v9}, Lcom/google/android/gms/internal/ads/zzado;->zzh([BII)V

    .line 37
    .line 38
    .line 39
    iget v2, v13, Lcom/google/android/gms/internal/ads/zzaef;->zza:I

    .line 40
    .line 41
    and-int/2addr v2, v8

    .line 42
    const/16 v9, 0x15

    .line 43
    .line 44
    const/16 v10, 0x24

    .line 45
    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    iget v2, v13, Lcom/google/android/gms/internal/ads/zzaef;->zze:I

    .line 49
    .line 50
    if-eq v2, v8, :cond_3

    .line 51
    .line 52
    move v9, v10

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    iget v2, v13, Lcom/google/android/gms/internal/ads/zzaef;->zze:I

    .line 55
    .line 56
    if-eq v2, v8, :cond_2

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    const/16 v9, 0xd

    .line 60
    .line 61
    :cond_3
    :goto_1
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzek;->zzd()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    add-int/lit8 v11, v9, 0x4

    .line 66
    .line 67
    const v12, 0x56425249

    .line 68
    .line 69
    .line 70
    const v15, 0x496e666f

    .line 71
    .line 72
    .line 73
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    const v5, 0x58696e67

    .line 79
    .line 80
    .line 81
    if-lt v2, v11, :cond_4

    .line 82
    .line 83
    invoke-virtual {v14, v9}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-eq v2, v5, :cond_6

    .line 91
    .line 92
    if-ne v2, v15, :cond_4

    .line 93
    .line 94
    move v2, v15

    .line 95
    goto :goto_2

    .line 96
    :cond_4
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzek;->zzd()I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    const/16 v6, 0x28

    .line 101
    .line 102
    if-lt v2, v6, :cond_5

    .line 103
    .line 104
    invoke-virtual {v14, v10}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-ne v2, v12, :cond_5

    .line 112
    .line 113
    move v2, v12

    .line 114
    goto :goto_2

    .line 115
    :cond_5
    move v2, v4

    .line 116
    :cond_6
    :goto_2
    if-eq v2, v15, :cond_8

    .line 117
    .line 118
    if-eq v2, v12, :cond_7

    .line 119
    .line 120
    if-eq v2, v5, :cond_8

    .line 121
    .line 122
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzado;->zzj()V

    .line 123
    .line 124
    .line 125
    const/4 v2, 0x0

    .line 126
    :goto_3
    const/16 v20, 0x0

    .line 127
    .line 128
    goto/16 :goto_7

    .line 129
    .line 130
    :cond_7
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzado;->zzd()J

    .line 131
    .line 132
    .line 133
    move-result-wide v9

    .line 134
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzado;->zzf()J

    .line 135
    .line 136
    .line 137
    move-result-wide v11

    .line 138
    invoke-static/range {v9 .. v14}, Lcom/google/android/gms/internal/ads/zzahz;->zzb(JJLcom/google/android/gms/internal/ads/zzaef;Lcom/google/android/gms/internal/ads/zzek;)Lcom/google/android/gms/internal/ads/zzahz;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    iget v5, v13, Lcom/google/android/gms/internal/ads/zzaef;->zzc:I

    .line 143
    .line 144
    invoke-interface {v1, v5}, Lcom/google/android/gms/internal/ads/zzado;->zzk(I)V

    .line 145
    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_8
    invoke-static {v13, v14}, Lcom/google/android/gms/internal/ads/zzaia;->zzb(Lcom/google/android/gms/internal/ads/zzaef;Lcom/google/android/gms/internal/ads/zzek;)Lcom/google/android/gms/internal/ads/zzaia;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzahw;->zzc:Lcom/google/android/gms/internal/ads/zzaeb;

    .line 153
    .line 154
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzaeb;->zza()Z

    .line 155
    .line 156
    .line 157
    move-result v10

    .line 158
    if-nez v10, :cond_9

    .line 159
    .line 160
    iget v10, v6, Lcom/google/android/gms/internal/ads/zzaia;->zzd:I

    .line 161
    .line 162
    if-eq v10, v3, :cond_9

    .line 163
    .line 164
    iget v11, v6, Lcom/google/android/gms/internal/ads/zzaia;->zze:I

    .line 165
    .line 166
    if-eq v11, v3, :cond_9

    .line 167
    .line 168
    iput v10, v9, Lcom/google/android/gms/internal/ads/zzaeb;->zza:I

    .line 169
    .line 170
    iput v11, v9, Lcom/google/android/gms/internal/ads/zzaeb;->zzb:I

    .line 171
    .line 172
    :cond_9
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzado;->zzf()J

    .line 173
    .line 174
    .line 175
    move-result-wide v9

    .line 176
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzado;->zzd()J

    .line 177
    .line 178
    .line 179
    move-result-wide v11

    .line 180
    const-wide/16 v14, -0x1

    .line 181
    .line 182
    cmp-long v11, v11, v14

    .line 183
    .line 184
    if-eqz v11, :cond_a

    .line 185
    .line 186
    iget-wide v11, v6, Lcom/google/android/gms/internal/ads/zzaia;->zzc:J

    .line 187
    .line 188
    cmp-long v18, v11, v14

    .line 189
    .line 190
    if-eqz v18, :cond_a

    .line 191
    .line 192
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzado;->zzd()J

    .line 193
    .line 194
    .line 195
    move-result-wide v18

    .line 196
    add-long/2addr v11, v9

    .line 197
    cmp-long v18, v18, v11

    .line 198
    .line 199
    if-eqz v18, :cond_a

    .line 200
    .line 201
    move-wide/from16 v18, v14

    .line 202
    .line 203
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzado;->zzd()J

    .line 204
    .line 205
    .line 206
    move-result-wide v14

    .line 207
    const/16 v20, 0x0

    .line 208
    .line 209
    new-instance v7, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .line 213
    .line 214
    const-string v8, "Data size mismatch between stream ("

    .line 215
    .line 216
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    const-string v8, ") and Xing frame ("

    .line 223
    .line 224
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    const-string v8, "), using Xing value."

    .line 231
    .line 232
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v7

    .line 239
    const-string v8, "Mp3Extractor"

    .line 240
    .line 241
    invoke-static {v8, v7}, Lcom/google/android/gms/internal/ads/zzdx;->zze(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    goto :goto_4

    .line 245
    :cond_a
    move-wide/from16 v18, v14

    .line 246
    .line 247
    const/16 v20, 0x0

    .line 248
    .line 249
    :goto_4
    iget v7, v13, Lcom/google/android/gms/internal/ads/zzaef;->zzc:I

    .line 250
    .line 251
    invoke-interface {v1, v7}, Lcom/google/android/gms/internal/ads/zzado;->zzk(I)V

    .line 252
    .line 253
    .line 254
    if-ne v2, v5, :cond_b

    .line 255
    .line 256
    invoke-static {v6, v9, v10}, Lcom/google/android/gms/internal/ads/zzaib;->zzb(Lcom/google/android/gms/internal/ads/zzaia;J)Lcom/google/android/gms/internal/ads/zzaib;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    goto :goto_7

    .line 261
    :cond_b
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzado;->zzd()J

    .line 262
    .line 263
    .line 264
    move-result-wide v7

    .line 265
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzaia;->zza()J

    .line 266
    .line 267
    .line 268
    move-result-wide v25

    .line 269
    cmp-long v2, v25, v16

    .line 270
    .line 271
    if-nez v2, :cond_d

    .line 272
    .line 273
    :cond_c
    move-object/from16 v2, v20

    .line 274
    .line 275
    goto :goto_7

    .line 276
    :cond_d
    iget-wide v11, v6, Lcom/google/android/gms/internal/ads/zzaia;->zzc:J

    .line 277
    .line 278
    cmp-long v2, v11, v18

    .line 279
    .line 280
    if-eqz v2, :cond_e

    .line 281
    .line 282
    add-long v7, v9, v11

    .line 283
    .line 284
    iget-object v2, v6, Lcom/google/android/gms/internal/ads/zzaia;->zza:Lcom/google/android/gms/internal/ads/zzaef;

    .line 285
    .line 286
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzc:I

    .line 287
    .line 288
    :goto_5
    int-to-long v14, v2

    .line 289
    sub-long/2addr v11, v14

    .line 290
    move-wide/from16 v28, v7

    .line 291
    .line 292
    move-wide/from16 v21, v11

    .line 293
    .line 294
    goto :goto_6

    .line 295
    :cond_e
    cmp-long v2, v7, v18

    .line 296
    .line 297
    if-eqz v2, :cond_c

    .line 298
    .line 299
    sub-long v11, v7, v9

    .line 300
    .line 301
    iget-object v2, v6, Lcom/google/android/gms/internal/ads/zzaia;->zza:Lcom/google/android/gms/internal/ads/zzaef;

    .line 302
    .line 303
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzc:I

    .line 304
    .line 305
    goto :goto_5

    .line 306
    :goto_6
    sget-object v27, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 307
    .line 308
    const-wide/32 v23, 0x7a1200

    .line 309
    .line 310
    .line 311
    invoke-static/range {v21 .. v27}, Lcom/google/android/gms/internal/ads/zzeu;->zzu(JJJLjava/math/RoundingMode;)J

    .line 312
    .line 313
    .line 314
    move-result-wide v7

    .line 315
    move-wide/from16 v11, v21

    .line 316
    .line 317
    move-object/from16 v2, v27

    .line 318
    .line 319
    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzgbf;->zzb(J)I

    .line 320
    .line 321
    .line 322
    move-result v32

    .line 323
    iget-wide v7, v6, Lcom/google/android/gms/internal/ads/zzaia;->zzb:J

    .line 324
    .line 325
    invoke-static {v11, v12, v7, v8, v2}, Lcom/google/android/gms/internal/ads/zzgba;->zzb(JJLjava/math/RoundingMode;)J

    .line 326
    .line 327
    .line 328
    move-result-wide v7

    .line 329
    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzgbf;->zzb(J)I

    .line 330
    .line 331
    .line 332
    move-result v33

    .line 333
    iget-object v2, v6, Lcom/google/android/gms/internal/ads/zzaia;->zza:Lcom/google/android/gms/internal/ads/zzaef;

    .line 334
    .line 335
    new-instance v27, Lcom/google/android/gms/internal/ads/zzaht;

    .line 336
    .line 337
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzaef;->zzc:I

    .line 338
    .line 339
    int-to-long v5, v2

    .line 340
    add-long v30, v9, v5

    .line 341
    .line 342
    const/16 v34, 0x0

    .line 343
    .line 344
    invoke-direct/range {v27 .. v34}, Lcom/google/android/gms/internal/ads/zzaht;-><init>(JJIIZ)V

    .line 345
    .line 346
    .line 347
    move-object/from16 v2, v27

    .line 348
    .line 349
    :goto_7
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzahw;->zzj:Lcom/google/android/gms/internal/ads/zzav;

    .line 350
    .line 351
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzado;->zzf()J

    .line 352
    .line 353
    .line 354
    move-result-wide v6

    .line 355
    if-eqz v5, :cond_12

    .line 356
    .line 357
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzav;->zza()I

    .line 358
    .line 359
    .line 360
    move-result v8

    .line 361
    move v9, v4

    .line 362
    :goto_8
    if-ge v9, v8, :cond_12

    .line 363
    .line 364
    invoke-virtual {v5, v9}, Lcom/google/android/gms/internal/ads/zzav;->zzb(I)Lcom/google/android/gms/internal/ads/zzau;

    .line 365
    .line 366
    .line 367
    move-result-object v10

    .line 368
    instance-of v11, v10, Lcom/google/android/gms/internal/ads/zzaha;

    .line 369
    .line 370
    if-eqz v11, :cond_11

    .line 371
    .line 372
    check-cast v10, Lcom/google/android/gms/internal/ads/zzaha;

    .line 373
    .line 374
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzav;->zza()I

    .line 375
    .line 376
    .line 377
    move-result v8

    .line 378
    move v9, v4

    .line 379
    :goto_9
    if-ge v9, v8, :cond_10

    .line 380
    .line 381
    invoke-virtual {v5, v9}, Lcom/google/android/gms/internal/ads/zzav;->zzb(I)Lcom/google/android/gms/internal/ads/zzau;

    .line 382
    .line 383
    .line 384
    move-result-object v11

    .line 385
    instance-of v12, v11, Lcom/google/android/gms/internal/ads/zzahc;

    .line 386
    .line 387
    if-eqz v12, :cond_f

    .line 388
    .line 389
    check-cast v11, Lcom/google/android/gms/internal/ads/zzahc;

    .line 390
    .line 391
    iget-object v12, v11, Lcom/google/android/gms/internal/ads/zzagx;->zzf:Ljava/lang/String;

    .line 392
    .line 393
    const-string v14, "TLEN"

    .line 394
    .line 395
    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 396
    .line 397
    .line 398
    move-result v12

    .line 399
    if-eqz v12, :cond_f

    .line 400
    .line 401
    iget-object v5, v11, Lcom/google/android/gms/internal/ads/zzahc;->zzb:Lcom/google/android/gms/internal/ads/zzfyc;

    .line 402
    .line 403
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object v5

    .line 407
    check-cast v5, Ljava/lang/String;

    .line 408
    .line 409
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 410
    .line 411
    .line 412
    move-result-wide v8

    .line 413
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzeu;->zzs(J)J

    .line 414
    .line 415
    .line 416
    move-result-wide v8

    .line 417
    goto :goto_a

    .line 418
    :cond_f
    add-int/lit8 v9, v9, 0x1

    .line 419
    .line 420
    goto :goto_9

    .line 421
    :cond_10
    move-wide/from16 v8, v16

    .line 422
    .line 423
    :goto_a
    invoke-static {v6, v7, v10, v8, v9}, Lcom/google/android/gms/internal/ads/zzahv;->zzb(JLcom/google/android/gms/internal/ads/zzaha;J)Lcom/google/android/gms/internal/ads/zzahv;

    .line 424
    .line 425
    .line 426
    move-result-object v5

    .line 427
    goto :goto_b

    .line 428
    :cond_11
    add-int/lit8 v9, v9, 0x1

    .line 429
    .line 430
    goto :goto_8

    .line 431
    :cond_12
    move-object/from16 v5, v20

    .line 432
    .line 433
    :goto_b
    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzahw;->zzq:Z

    .line 434
    .line 435
    if-eqz v6, :cond_13

    .line 436
    .line 437
    new-instance v2, Lcom/google/android/gms/internal/ads/zzahx;

    .line 438
    .line 439
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzahx;-><init>()V

    .line 440
    .line 441
    .line 442
    goto :goto_d

    .line 443
    :cond_13
    if-eqz v5, :cond_14

    .line 444
    .line 445
    move-object v2, v5

    .line 446
    goto :goto_c

    .line 447
    :cond_14
    if-nez v2, :cond_15

    .line 448
    .line 449
    move-object/from16 v2, v20

    .line 450
    .line 451
    :cond_15
    :goto_c
    if-nez v2, :cond_16

    .line 452
    .line 453
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahw;->zza:Lcom/google/android/gms/internal/ads/zzek;

    .line 454
    .line 455
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 456
    .line 457
    .line 458
    move-result-object v5

    .line 459
    const/4 v6, 0x4

    .line 460
    invoke-interface {v1, v5, v4, v6}, Lcom/google/android/gms/internal/ads/zzado;->zzh([BII)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    .line 467
    .line 468
    .line 469
    move-result v2

    .line 470
    invoke-virtual {v13, v2}, Lcom/google/android/gms/internal/ads/zzaef;->zza(I)Z

    .line 471
    .line 472
    .line 473
    new-instance v5, Lcom/google/android/gms/internal/ads/zzaht;

    .line 474
    .line 475
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzado;->zzd()J

    .line 476
    .line 477
    .line 478
    move-result-wide v6

    .line 479
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzado;->zzf()J

    .line 480
    .line 481
    .line 482
    move-result-wide v8

    .line 483
    iget v10, v13, Lcom/google/android/gms/internal/ads/zzaef;->zzf:I

    .line 484
    .line 485
    iget v11, v13, Lcom/google/android/gms/internal/ads/zzaef;->zzc:I

    .line 486
    .line 487
    const/4 v12, 0x0

    .line 488
    invoke-direct/range {v5 .. v12}, Lcom/google/android/gms/internal/ads/zzaht;-><init>(JJIIZ)V

    .line 489
    .line 490
    .line 491
    move-object v2, v5

    .line 492
    :cond_16
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzahw;->zzg:Lcom/google/android/gms/internal/ads/zzaet;

    .line 493
    .line 494
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzaem;->zza()J

    .line 495
    .line 496
    .line 497
    move-result-wide v6

    .line 498
    invoke-interface {v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzaet;->zzl(J)V

    .line 499
    .line 500
    .line 501
    :goto_d
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzahw;->zzp:Lcom/google/android/gms/internal/ads/zzahy;

    .line 502
    .line 503
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzahw;->zzf:Lcom/google/android/gms/internal/ads/zzadq;

    .line 504
    .line 505
    invoke-interface {v5, v2}, Lcom/google/android/gms/internal/ads/zzadq;->zzP(Lcom/google/android/gms/internal/ads/zzaem;)V

    .line 506
    .line 507
    .line 508
    new-instance v2, Lcom/google/android/gms/internal/ads/zzx;

    .line 509
    .line 510
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    .line 511
    .line 512
    .line 513
    const-string v5, "audio/mpeg"

    .line 514
    .line 515
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzx;->zzE(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 516
    .line 517
    .line 518
    iget-object v5, v13, Lcom/google/android/gms/internal/ads/zzaef;->zzb:Ljava/lang/String;

    .line 519
    .line 520
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzx;->zzad(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 521
    .line 522
    .line 523
    const/16 v5, 0x1000

    .line 524
    .line 525
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzx;->zzT(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 526
    .line 527
    .line 528
    iget v5, v13, Lcom/google/android/gms/internal/ads/zzaef;->zze:I

    .line 529
    .line 530
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzx;->zzB(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 531
    .line 532
    .line 533
    iget v5, v13, Lcom/google/android/gms/internal/ads/zzaef;->zzd:I

    .line 534
    .line 535
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzx;->zzae(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 536
    .line 537
    .line 538
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzahw;->zzc:Lcom/google/android/gms/internal/ads/zzaeb;

    .line 539
    .line 540
    iget v6, v5, Lcom/google/android/gms/internal/ads/zzaeb;->zza:I

    .line 541
    .line 542
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzx;->zzI(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 543
    .line 544
    .line 545
    iget v5, v5, Lcom/google/android/gms/internal/ads/zzaeb;->zzb:I

    .line 546
    .line 547
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzx;->zzJ(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 548
    .line 549
    .line 550
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzahw;->zzj:Lcom/google/android/gms/internal/ads/zzav;

    .line 551
    .line 552
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzx;->zzW(Lcom/google/android/gms/internal/ads/zzav;)Lcom/google/android/gms/internal/ads/zzx;

    .line 553
    .line 554
    .line 555
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzahw;->zzp:Lcom/google/android/gms/internal/ads/zzahy;

    .line 556
    .line 557
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzahy;->zzc()I

    .line 558
    .line 559
    .line 560
    move-result v5

    .line 561
    const v6, -0x7fffffff

    .line 562
    .line 563
    .line 564
    if-eq v5, v6, :cond_17

    .line 565
    .line 566
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzahw;->zzp:Lcom/google/android/gms/internal/ads/zzahy;

    .line 567
    .line 568
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzahy;->zzc()I

    .line 569
    .line 570
    .line 571
    move-result v5

    .line 572
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzx;->zzA(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 573
    .line 574
    .line 575
    :cond_17
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzahw;->zzh:Lcom/google/android/gms/internal/ads/zzaet;

    .line 576
    .line 577
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzx;->zzaj()Lcom/google/android/gms/internal/ads/zzz;

    .line 578
    .line 579
    .line 580
    move-result-object v2

    .line 581
    invoke-interface {v5, v2}, Lcom/google/android/gms/internal/ads/zzaet;->zzm(Lcom/google/android/gms/internal/ads/zzz;)V

    .line 582
    .line 583
    .line 584
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzado;->zzf()J

    .line 585
    .line 586
    .line 587
    move-result-wide v5

    .line 588
    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzahw;->zzm:J

    .line 589
    .line 590
    goto :goto_e

    .line 591
    :cond_18
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    const/16 v20, 0x0

    .line 597
    .line 598
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzahw;->zzm:J

    .line 599
    .line 600
    const-wide/16 v7, 0x0

    .line 601
    .line 602
    cmp-long v2, v5, v7

    .line 603
    .line 604
    if-eqz v2, :cond_19

    .line 605
    .line 606
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzado;->zzf()J

    .line 607
    .line 608
    .line 609
    move-result-wide v7

    .line 610
    cmp-long v2, v7, v5

    .line 611
    .line 612
    if-gez v2, :cond_19

    .line 613
    .line 614
    sub-long/2addr v5, v7

    .line 615
    long-to-int v2, v5

    .line 616
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzado;->zzk(I)V

    .line 617
    .line 618
    .line 619
    :cond_19
    :goto_e
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzahw;->zzo:I

    .line 620
    .line 621
    if-nez v2, :cond_1e

    .line 622
    .line 623
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzado;->zzj()V

    .line 624
    .line 625
    .line 626
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzahw;->zzl(Lcom/google/android/gms/internal/ads/zzado;)Z

    .line 627
    .line 628
    .line 629
    move-result v2

    .line 630
    if-eqz v2, :cond_1a

    .line 631
    .line 632
    return v3

    .line 633
    :cond_1a
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahw;->zza:Lcom/google/android/gms/internal/ads/zzek;

    .line 634
    .line 635
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 636
    .line 637
    .line 638
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    .line 639
    .line 640
    .line 641
    move-result v2

    .line 642
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzahw;->zzi:I

    .line 643
    .line 644
    int-to-long v5, v5

    .line 645
    invoke-static {v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzahw;->zzk(IJ)Z

    .line 646
    .line 647
    .line 648
    move-result v5

    .line 649
    if-eqz v5, :cond_1b

    .line 650
    .line 651
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzaeg;->zzb(I)I

    .line 652
    .line 653
    .line 654
    move-result v5

    .line 655
    if-ne v5, v3, :cond_1c

    .line 656
    .line 657
    :cond_1b
    const/4 v5, 0x1

    .line 658
    goto :goto_f

    .line 659
    :cond_1c
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzahw;->zzb:Lcom/google/android/gms/internal/ads/zzaef;

    .line 660
    .line 661
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzaef;->zza(I)Z

    .line 662
    .line 663
    .line 664
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzahw;->zzk:J

    .line 665
    .line 666
    cmp-long v2, v6, v16

    .line 667
    .line 668
    if-nez v2, :cond_1d

    .line 669
    .line 670
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahw;->zzp:Lcom/google/android/gms/internal/ads/zzahy;

    .line 671
    .line 672
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzado;->zzf()J

    .line 673
    .line 674
    .line 675
    move-result-wide v6

    .line 676
    invoke-interface {v2, v6, v7}, Lcom/google/android/gms/internal/ads/zzahy;->zze(J)J

    .line 677
    .line 678
    .line 679
    move-result-wide v6

    .line 680
    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/zzahw;->zzk:J

    .line 681
    .line 682
    :cond_1d
    iget v2, v5, Lcom/google/android/gms/internal/ads/zzaef;->zzc:I

    .line 683
    .line 684
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzahw;->zzo:I

    .line 685
    .line 686
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzado;->zzf()J

    .line 687
    .line 688
    .line 689
    move-result-wide v6

    .line 690
    int-to-long v8, v2

    .line 691
    add-long/2addr v6, v8

    .line 692
    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/zzahw;->zzn:J

    .line 693
    .line 694
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzahw;->zzp:Lcom/google/android/gms/internal/ads/zzahy;

    .line 695
    .line 696
    instance-of v6, v6, Lcom/google/android/gms/internal/ads/zzahu;

    .line 697
    .line 698
    if-nez v6, :cond_1f

    .line 699
    .line 700
    :cond_1e
    const/4 v5, 0x1

    .line 701
    goto :goto_10

    .line 702
    :cond_1f
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzahw;->zzl:J

    .line 703
    .line 704
    iget v3, v5, Lcom/google/android/gms/internal/ads/zzaef;->zzg:I

    .line 705
    .line 706
    int-to-long v3, v3

    .line 707
    add-long/2addr v1, v3

    .line 708
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzahw;->zzh(J)J

    .line 709
    .line 710
    .line 711
    throw v20

    .line 712
    :goto_f
    invoke-interface {v1, v5}, Lcom/google/android/gms/internal/ads/zzado;->zzk(I)V

    .line 713
    .line 714
    .line 715
    iput v4, v0, Lcom/google/android/gms/internal/ads/zzahw;->zzi:I

    .line 716
    .line 717
    return v4

    .line 718
    :goto_10
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzahw;->zzh:Lcom/google/android/gms/internal/ads/zzaet;

    .line 719
    .line 720
    invoke-interface {v6, v1, v2, v5}, Lcom/google/android/gms/internal/ads/zzaet;->zzf(Lcom/google/android/gms/internal/ads/zzl;IZ)I

    .line 721
    .line 722
    .line 723
    move-result v1

    .line 724
    if-ne v1, v3, :cond_20

    .line 725
    .line 726
    return v3

    .line 727
    :cond_20
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzahw;->zzo:I

    .line 728
    .line 729
    sub-int/2addr v2, v1

    .line 730
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzahw;->zzo:I

    .line 731
    .line 732
    if-lez v2, :cond_21

    .line 733
    .line 734
    return v4

    .line 735
    :cond_21
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzahw;->zzh:Lcom/google/android/gms/internal/ads/zzaet;

    .line 736
    .line 737
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzahw;->zzl:J

    .line 738
    .line 739
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzahw;->zzh(J)J

    .line 740
    .line 741
    .line 742
    move-result-wide v6

    .line 743
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahw;->zzb:Lcom/google/android/gms/internal/ads/zzaef;

    .line 744
    .line 745
    iget v9, v1, Lcom/google/android/gms/internal/ads/zzaef;->zzc:I

    .line 746
    .line 747
    const/4 v10, 0x0

    .line 748
    const/4 v11, 0x0

    .line 749
    const/4 v8, 0x1

    .line 750
    invoke-interface/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzaet;->zzt(JIIILcom/google/android/gms/internal/ads/zzaes;)V

    .line 751
    .line 752
    .line 753
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzahw;->zzl:J

    .line 754
    .line 755
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzaef;->zzg:I

    .line 756
    .line 757
    int-to-long v5, v1

    .line 758
    add-long/2addr v2, v5

    .line 759
    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzahw;->zzl:J

    .line 760
    .line 761
    iput v4, v0, Lcom/google/android/gms/internal/ads/zzahw;->zzo:I

    .line 762
    .line 763
    return v4
.end method

.method private final zzh(J)J
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahw;->zzb:Lcom/google/android/gms/internal/ads/zzaef;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzahw;->zzk:J

    .line 4
    .line 5
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzaef;->zzd:I

    .line 6
    .line 7
    int-to-long v3, v0

    .line 8
    const-wide/32 v5, 0xf4240

    .line 9
    .line 10
    .line 11
    mul-long/2addr p1, v5

    .line 12
    div-long/2addr p1, v3

    .line 13
    add-long/2addr v1, p1

    .line 14
    return-wide v1
.end method

.method private final zzj()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahw;->zzp:Lcom/google/android/gms/internal/ads/zzahy;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzaht;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaem;->zzh()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahw;->zzn:J

    .line 14
    .line 15
    const-wide/16 v2, -0x1

    .line 16
    .line 17
    cmp-long v2, v0, v2

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzahw;->zzp:Lcom/google/android/gms/internal/ads/zzahy;

    .line 22
    .line 23
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzahy;->zzd()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    cmp-long v0, v0, v2

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahw;->zzp:Lcom/google/android/gms/internal/ads/zzahy;

    .line 32
    .line 33
    check-cast v0, Lcom/google/android/gms/internal/ads/zzaht;

    .line 34
    .line 35
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzahw;->zzn:J

    .line 36
    .line 37
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaht;->zzf(J)Lcom/google/android/gms/internal/ads/zzaht;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzahw;->zzp:Lcom/google/android/gms/internal/ads/zzahy;

    .line 42
    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahw;->zzf:Lcom/google/android/gms/internal/ads/zzadq;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzahw;->zzp:Lcom/google/android/gms/internal/ads/zzahy;

    .line 49
    .line 50
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzadq;->zzP(Lcom/google/android/gms/internal/ads/zzaem;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahw;->zzg:Lcom/google/android/gms/internal/ads/zzaet;

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahw;->zzp:Lcom/google/android/gms/internal/ads/zzahy;

    .line 59
    .line 60
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaem;->zza()J

    .line 61
    .line 62
    .line 63
    :cond_0
    return-void
.end method

.method private static zzk(IJ)Z
    .locals 4

    .line 1
    const v0, -0x1f400

    .line 2
    .line 3
    .line 4
    and-int/2addr p0, v0

    .line 5
    int-to-long v0, p0

    .line 6
    const-wide/32 v2, -0x1f400

    .line 7
    .line 8
    .line 9
    and-long/2addr p1, v2

    .line 10
    cmp-long p0, v0, p1

    .line 11
    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    return p0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return p0
.end method

.method private final zzl(Lcom/google/android/gms/internal/ads/zzado;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahw;->zzp:Lcom/google/android/gms/internal/ads/zzahy;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzahy;->zzd()J

    .line 7
    .line 8
    .line 9
    move-result-wide v2

    .line 10
    const-wide/16 v4, -0x1

    .line 11
    .line 12
    cmp-long v0, v2, v4

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzado;->zze()J

    .line 17
    .line 18
    .line 19
    move-result-wide v4

    .line 20
    const-wide/16 v6, -0x4

    .line 21
    .line 22
    add-long/2addr v2, v6

    .line 23
    cmp-long v0, v4, v2

    .line 24
    .line 25
    if-gtz v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return v1

    .line 29
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahw;->zza:Lcom/google/android/gms/internal/ads/zzek;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/4 v2, 0x4

    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-interface {p1, v0, v3, v2, v1}, Lcom/google/android/gms/internal/ads/zzado;->zzm([BIIZ)Z

    .line 38
    .line 39
    .line 40
    move-result p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    if-nez p1, :cond_2

    .line 42
    .line 43
    return v1

    .line 44
    :cond_2
    return v3

    .line 45
    :catch_0
    return v1
.end method

.method private final zzm(Lcom/google/android/gms/internal/ads/zzado;Z)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzado;->zzj()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzado;->zzf()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v0, v0, v2

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahw;->zzd:Lcom/google/android/gms/internal/ads/zzaed;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzaed;->zza(Lcom/google/android/gms/internal/ads/zzado;Lcom/google/android/gms/internal/ads/zzagu;)Lcom/google/android/gms/internal/ads/zzav;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzahw;->zzj:Lcom/google/android/gms/internal/ads/zzav;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzahw;->zzc:Lcom/google/android/gms/internal/ads/zzaeb;

    .line 27
    .line 28
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzaeb;->zzb(Lcom/google/android/gms/internal/ads/zzav;)Z

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzado;->zze()J

    .line 32
    .line 33
    .line 34
    move-result-wide v2

    .line 35
    long-to-int v0, v2

    .line 36
    if-nez p2, :cond_1

    .line 37
    .line 38
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzado;->zzk(I)V

    .line 39
    .line 40
    .line 41
    :cond_1
    move v2, v1

    .line 42
    :goto_0
    move v3, v2

    .line 43
    move v4, v3

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    move v0, v1

    .line 46
    move v2, v0

    .line 47
    goto :goto_0

    .line 48
    :goto_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahw;->zzl(Lcom/google/android/gms/internal/ads/zzado;)Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    const/4 v6, 0x1

    .line 53
    if-eqz v5, :cond_4

    .line 54
    .line 55
    if-lez v3, :cond_3

    .line 56
    .line 57
    goto :goto_4

    .line 58
    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzahw;->zzj()V

    .line 59
    .line 60
    .line 61
    new-instance p1, Ljava/io/EOFException;

    .line 62
    .line 63
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 64
    .line 65
    .line 66
    throw p1

    .line 67
    :cond_4
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzahw;->zza:Lcom/google/android/gms/internal/ads/zzek;

    .line 68
    .line 69
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    if-eqz v2, :cond_5

    .line 77
    .line 78
    int-to-long v7, v2

    .line 79
    invoke-static {v5, v7, v8}, Lcom/google/android/gms/internal/ads/zzahw;->zzk(IJ)Z

    .line 80
    .line 81
    .line 82
    move-result v7

    .line 83
    if-eqz v7, :cond_6

    .line 84
    .line 85
    :cond_5
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzaeg;->zzb(I)I

    .line 86
    .line 87
    .line 88
    move-result v7

    .line 89
    const/4 v8, -0x1

    .line 90
    if-ne v7, v8, :cond_b

    .line 91
    .line 92
    :cond_6
    if-eq v6, p2, :cond_7

    .line 93
    .line 94
    const/high16 v2, 0x20000

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_7
    const v2, 0x8000

    .line 98
    .line 99
    .line 100
    :goto_2
    add-int/lit8 v3, v4, 0x1

    .line 101
    .line 102
    if-ne v4, v2, :cond_9

    .line 103
    .line 104
    if-eqz p2, :cond_8

    .line 105
    .line 106
    return v1

    .line 107
    :cond_8
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzahw;->zzj()V

    .line 108
    .line 109
    .line 110
    new-instance p1, Ljava/io/EOFException;

    .line 111
    .line 112
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 113
    .line 114
    .line 115
    throw p1

    .line 116
    :cond_9
    if-eqz p2, :cond_a

    .line 117
    .line 118
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzado;->zzj()V

    .line 119
    .line 120
    .line 121
    add-int v2, v0, v3

    .line 122
    .line 123
    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/ads/zzado;->zzg(I)V

    .line 124
    .line 125
    .line 126
    :goto_3
    move v2, v1

    .line 127
    move v4, v3

    .line 128
    move v3, v2

    .line 129
    goto :goto_1

    .line 130
    :cond_a
    invoke-interface {p1, v6}, Lcom/google/android/gms/internal/ads/zzado;->zzk(I)V

    .line 131
    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_b
    add-int/lit8 v3, v3, 0x1

    .line 135
    .line 136
    if-ne v3, v6, :cond_c

    .line 137
    .line 138
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzahw;->zzb:Lcom/google/android/gms/internal/ads/zzaef;

    .line 139
    .line 140
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzaef;->zza(I)Z

    .line 141
    .line 142
    .line 143
    move v2, v5

    .line 144
    goto :goto_6

    .line 145
    :cond_c
    const/4 v5, 0x4

    .line 146
    if-ne v3, v5, :cond_e

    .line 147
    .line 148
    :goto_4
    if-eqz p2, :cond_d

    .line 149
    .line 150
    add-int/2addr v0, v4

    .line 151
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzado;->zzk(I)V

    .line 152
    .line 153
    .line 154
    goto :goto_5

    .line 155
    :cond_d
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzado;->zzj()V

    .line 156
    .line 157
    .line 158
    :goto_5
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzahw;->zzi:I

    .line 159
    .line 160
    return v6

    .line 161
    :cond_e
    :goto_6
    add-int/lit8 v7, v7, -0x4

    .line 162
    .line 163
    invoke-interface {p1, v7}, Lcom/google/android/gms/internal/ads/zzado;->zzg(I)V

    .line 164
    .line 165
    .line 166
    goto :goto_1
.end method


# virtual methods
.method public final zza()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahw;->zzq:Z

    .line 3
    .line 4
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzado;Lcom/google/android/gms/internal/ads/zzaej;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzahw;->zzg:Lcom/google/android/gms/internal/ads/zzaet;

    .line 2
    .line 3
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdc;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    sget-object p2, Lcom/google/android/gms/internal/ads/zzeu;->zza:Ljava/lang/String;

    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahw;->zzg(Lcom/google/android/gms/internal/ads/zzado;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/4 p2, -0x1

    .line 13
    if-ne p1, p2, :cond_1

    .line 14
    .line 15
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzahw;->zzp:Lcom/google/android/gms/internal/ads/zzahy;

    .line 16
    .line 17
    instance-of p2, p2, Lcom/google/android/gms/internal/ads/zzahu;

    .line 18
    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahw;->zzl:J

    .line 22
    .line 23
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzahw;->zzh(J)J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzahw;->zzp:Lcom/google/android/gms/internal/ads/zzahy;

    .line 28
    .line 29
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzaem;->zza()J

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    cmp-long p2, v2, v0

    .line 34
    .line 35
    if-nez p2, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahw;->zzp:Lcom/google/android/gms/internal/ads/zzahy;

    .line 39
    .line 40
    check-cast p1, Lcom/google/android/gms/internal/ads/zzahu;

    .line 41
    .line 42
    const/4 p1, 0x0

    .line 43
    throw p1

    .line 44
    :cond_1
    :goto_0
    return p1
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
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahw;->zzf:Lcom/google/android/gms/internal/ads/zzadq;

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
    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahw;->zzg:Lcom/google/android/gms/internal/ads/zzaet;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahw;->zzh:Lcom/google/android/gms/internal/ads/zzaet;

    .line 12
    .line 13
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahw;->zzf:Lcom/google/android/gms/internal/ads/zzadq;

    .line 14
    .line 15
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzadq;->zzG()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final zzf(JJ)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzahw;->zzi:I

    .line 3
    .line 4
    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzahw;->zzk:J

    .line 10
    .line 11
    const-wide/16 p2, 0x0

    .line 12
    .line 13
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzahw;->zzl:J

    .line 14
    .line 15
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzahw;->zzo:I

    .line 16
    .line 17
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahw;->zzp:Lcom/google/android/gms/internal/ads/zzahy;

    .line 18
    .line 19
    instance-of p1, p1, Lcom/google/android/gms/internal/ads/zzahu;

    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    throw p1
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzado;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzahw;->zzm(Lcom/google/android/gms/internal/ads/zzado;Z)Z

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    return p1
.end method
