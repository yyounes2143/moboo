.class final Lcom/google/android/gms/internal/ads/zzafj;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzafb;


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzfyc;

.field private final zzb:I


# direct methods
.method private constructor <init>(ILcom/google/android/gms/internal/ads/zzfyc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzafj;->zzb:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzafj;->zza:Lcom/google/android/gms/internal/ads/zzfyc;

    .line 7
    .line 8
    return-void
.end method

.method public static zzc(ILcom/google/android/gms/internal/ads/zzek;)Lcom/google/android/gms/internal/ads/zzafj;
    .locals 13

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfxz;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfxz;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzek;->zzd()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, -0x2

    .line 11
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const/16 v4, 0x8

    .line 16
    .line 17
    if-le v3, v4, :cond_f

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzek;->zzi()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzek;->zzi()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    add-int/2addr v5, v4

    .line 32
    invoke-virtual {p1, v5}, Lcom/google/android/gms/internal/ads/zzek;->zzK(I)V

    .line 33
    .line 34
    .line 35
    const v4, 0x5453494c

    .line 36
    .line 37
    .line 38
    if-ne v3, v4, :cond_0

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzek;->zzi()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    invoke-static {v3, p1}, Lcom/google/android/gms/internal/ads/zzafj;->zzc(ILcom/google/android/gms/internal/ads/zzek;)Lcom/google/android/gms/internal/ads/zzafj;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    goto/16 :goto_5

    .line 49
    .line 50
    :cond_0
    const/4 v4, 0x0

    .line 51
    sparse-switch v3, :sswitch_data_0

    .line 52
    .line 53
    .line 54
    :goto_1
    move-object v3, v4

    .line 55
    goto/16 :goto_5

    .line 56
    .line 57
    :sswitch_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzafl;->zzb(Lcom/google/android/gms/internal/ads/zzek;)Lcom/google/android/gms/internal/ads/zzafl;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    goto/16 :goto_5

    .line 62
    .line 63
    :sswitch_1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzafh;->zzd(Lcom/google/android/gms/internal/ads/zzek;)Lcom/google/android/gms/internal/ads/zzafh;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    goto/16 :goto_5

    .line 68
    .line 69
    :sswitch_2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzb(Lcom/google/android/gms/internal/ads/zzek;)Lcom/google/android/gms/internal/ads/zzafg;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    goto/16 :goto_5

    .line 74
    .line 75
    :sswitch_3
    const/4 v3, 0x2

    .line 76
    const-string v6, "StreamFormatChunk"

    .line 77
    .line 78
    if-ne v2, v3, :cond_2

    .line 79
    .line 80
    const/4 v3, 0x4

    .line 81
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzek;->zzi()I

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzek;->zzi()I

    .line 89
    .line 90
    .line 91
    move-result v8

    .line 92
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzek;->zzi()I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    sparse-switch v3, :sswitch_data_1

    .line 100
    .line 101
    .line 102
    move-object v9, v4

    .line 103
    goto :goto_2

    .line 104
    :sswitch_4
    const-string v9, "video/mjpeg"

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :sswitch_5
    const-string v9, "video/mp43"

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :sswitch_6
    const-string v9, "video/mp42"

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :sswitch_7
    const-string v9, "video/avc"

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :sswitch_8
    const-string v9, "video/mp4v-es"

    .line 117
    .line 118
    :goto_2
    if-nez v9, :cond_1

    .line 119
    .line 120
    new-instance v7, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    const-string v8, "Ignoring track with unsupported compression "

    .line 126
    .line 127
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    invoke-static {v6, v3}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_1
    new-instance v3, Lcom/google/android/gms/internal/ads/zzx;

    .line 142
    .line 143
    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/zzx;->zzai(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/zzx;->zzM(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/zzx;->zzad(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 153
    .line 154
    .line 155
    new-instance v4, Lcom/google/android/gms/internal/ads/zzafk;

    .line 156
    .line 157
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzx;->zzaj()Lcom/google/android/gms/internal/ads/zzz;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/ads/zzafk;-><init>(Lcom/google/android/gms/internal/ads/zzz;)V

    .line 162
    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_2
    const/4 v3, 0x1

    .line 166
    if-ne v2, v3, :cond_c

    .line 167
    .line 168
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzek;->zzk()I

    .line 169
    .line 170
    .line 171
    move-result v7

    .line 172
    const-string v8, "audio/raw"

    .line 173
    .line 174
    const-string v9, "audio/mp4a-latm"

    .line 175
    .line 176
    if-eq v7, v3, :cond_7

    .line 177
    .line 178
    const/16 v3, 0x55

    .line 179
    .line 180
    if-eq v7, v3, :cond_6

    .line 181
    .line 182
    const/16 v3, 0xff

    .line 183
    .line 184
    if-eq v7, v3, :cond_5

    .line 185
    .line 186
    const/16 v3, 0x2000

    .line 187
    .line 188
    if-eq v7, v3, :cond_4

    .line 189
    .line 190
    const/16 v3, 0x2001

    .line 191
    .line 192
    if-eq v7, v3, :cond_3

    .line 193
    .line 194
    move-object v3, v4

    .line 195
    goto :goto_3

    .line 196
    :cond_3
    const-string v3, "audio/vnd.dts"

    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_4
    const-string v3, "audio/ac3"

    .line 200
    .line 201
    goto :goto_3

    .line 202
    :cond_5
    move-object v3, v9

    .line 203
    goto :goto_3

    .line 204
    :cond_6
    const-string v3, "audio/mpeg"

    .line 205
    .line 206
    goto :goto_3

    .line 207
    :cond_7
    move-object v3, v8

    .line 208
    :goto_3
    if-nez v3, :cond_8

    .line 209
    .line 210
    new-instance v3, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    .line 214
    .line 215
    const-string v8, "Ignoring track with unsupported format tag "

    .line 216
    .line 217
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    invoke-static {v6, v3}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    goto/16 :goto_1

    .line 231
    .line 232
    :cond_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzek;->zzk()I

    .line 233
    .line 234
    .line 235
    move-result v4

    .line 236
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzek;->zzi()I

    .line 237
    .line 238
    .line 239
    move-result v6

    .line 240
    const/4 v7, 0x6

    .line 241
    invoke-virtual {p1, v7}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzek;->zzk()I

    .line 245
    .line 246
    .line 247
    move-result v7

    .line 248
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzeu;->zzn(I)I

    .line 249
    .line 250
    .line 251
    move-result v7

    .line 252
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    .line 253
    .line 254
    .line 255
    move-result v10

    .line 256
    const/4 v11, 0x0

    .line 257
    if-lez v10, :cond_9

    .line 258
    .line 259
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzek;->zzk()I

    .line 260
    .line 261
    .line 262
    move-result v10

    .line 263
    goto :goto_4

    .line 264
    :cond_9
    move v10, v11

    .line 265
    :goto_4
    new-instance v12, Lcom/google/android/gms/internal/ads/zzx;

    .line 266
    .line 267
    invoke-direct {v12}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/ads/zzx;->zzad(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/ads/zzx;->zzB(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v12, v6}, Lcom/google/android/gms/internal/ads/zzx;->zzae(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    move-result v4

    .line 283
    if-eqz v4, :cond_a

    .line 284
    .line 285
    if-eqz v7, :cond_a

    .line 286
    .line 287
    invoke-virtual {v12, v7}, Lcom/google/android/gms/internal/ads/zzx;->zzX(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 288
    .line 289
    .line 290
    :cond_a
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    move-result v3

    .line 294
    if-eqz v3, :cond_b

    .line 295
    .line 296
    if-lez v10, :cond_b

    .line 297
    .line 298
    new-array v3, v10, [B

    .line 299
    .line 300
    invoke-virtual {p1, v3, v11, v10}, Lcom/google/android/gms/internal/ads/zzek;->zzH([BII)V

    .line 301
    .line 302
    .line 303
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzfyc;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyc;

    .line 304
    .line 305
    .line 306
    move-result-object v3

    .line 307
    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/ads/zzx;->zzP(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzx;

    .line 308
    .line 309
    .line 310
    :cond_b
    new-instance v3, Lcom/google/android/gms/internal/ads/zzafk;

    .line 311
    .line 312
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzx;->zzaj()Lcom/google/android/gms/internal/ads/zzz;

    .line 313
    .line 314
    .line 315
    move-result-object v4

    .line 316
    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/zzafk;-><init>(Lcom/google/android/gms/internal/ads/zzz;)V

    .line 317
    .line 318
    .line 319
    goto :goto_5

    .line 320
    :cond_c
    const-string v3, "Ignoring strf box for unsupported track type: "

    .line 321
    .line 322
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzeu;->zzD(I)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v7

    .line 326
    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v3

    .line 330
    invoke-static {v6, v3}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    goto/16 :goto_1

    .line 334
    .line 335
    :goto_5
    if-eqz v3, :cond_e

    .line 336
    .line 337
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzafb;->zza()I

    .line 338
    .line 339
    .line 340
    move-result v4

    .line 341
    const v6, 0x68727473

    .line 342
    .line 343
    .line 344
    if-ne v4, v6, :cond_d

    .line 345
    .line 346
    move-object v2, v3

    .line 347
    check-cast v2, Lcom/google/android/gms/internal/ads/zzafh;

    .line 348
    .line 349
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzafh;->zzb()I

    .line 350
    .line 351
    .line 352
    move-result v2

    .line 353
    :cond_d
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfxz;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfxz;

    .line 354
    .line 355
    .line 356
    :cond_e
    invoke-virtual {p1, v5}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzek;->zzK(I)V

    .line 360
    .line 361
    .line 362
    goto/16 :goto_0

    .line 363
    .line 364
    :cond_f
    new-instance p1, Lcom/google/android/gms/internal/ads/zzafj;

    .line 365
    .line 366
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfxz;->zzi()Lcom/google/android/gms/internal/ads/zzfyc;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/internal/ads/zzafj;-><init>(ILcom/google/android/gms/internal/ads/zzfyc;)V

    .line 371
    .line 372
    .line 373
    return-object p1

    .line 374
    nop

    .line 375
    :sswitch_data_0
    .sparse-switch
        0x66727473 -> :sswitch_3
        0x68697661 -> :sswitch_2
        0x68727473 -> :sswitch_1
        0x6e727473 -> :sswitch_0
    .end sparse-switch

    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    :sswitch_data_1
    .sparse-switch
        0x30355844 -> :sswitch_8
        0x31435641 -> :sswitch_7
        0x31637661 -> :sswitch_7
        0x3234504d -> :sswitch_6
        0x3334504d -> :sswitch_5
        0x34363248 -> :sswitch_7
        0x34504d46 -> :sswitch_8
        0x44495633 -> :sswitch_8
        0x44495658 -> :sswitch_8
        0x47504a4d -> :sswitch_4
        0x58564944 -> :sswitch_8
        0x64697678 -> :sswitch_8
        0x67706a6d -> :sswitch_4
        0x78766964 -> :sswitch_8
    .end sparse-switch
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzafj;->zzb:I

    .line 2
    .line 3
    return v0
.end method

.method public final zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzafb;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafj;->zza:Lcom/google/android/gms/internal/ads/zzfyc;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    :cond_0
    if-ge v2, v1, :cond_1

    .line 9
    .line 10
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    check-cast v3, Lcom/google/android/gms/internal/ads/zzafb;

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    if-ne v4, p1, :cond_0

    .line 23
    .line 24
    return-object v3

    .line 25
    :cond_1
    const/4 p1, 0x0

    .line 26
    return-object p1
.end method
