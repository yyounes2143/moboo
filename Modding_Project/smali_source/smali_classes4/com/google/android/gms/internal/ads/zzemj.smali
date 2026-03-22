.class public final Lcom/google/android/gms/internal/ads/zzemj;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzetv;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzetv;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfcp;

.field private final zzc:Landroid/content/Context;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzbzn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzeon;Lcom/google/android/gms/internal/ads/zzfcp;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbzn;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzemj;->zza:Lcom/google/android/gms/internal/ads/zzetv;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzemj;->zzb:Lcom/google/android/gms/internal/ads/zzfcp;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzemj;->zzc:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzemj;->zzd:Lcom/google/android/gms/internal/ads/zzbzn;

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/ads/zzemj;Lcom/google/android/gms/internal/ads/zzeue;)Lcom/google/android/gms/internal/ads/zzemk;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzemj;->zzb:Lcom/google/android/gms/internal/ads/zzfcp;

    .line 4
    .line 5
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzfcp;->zze:Lcom/google/android/gms/ads/internal/client/zzr;

    .line 6
    .line 7
    iget-object v2, v3, Lcom/google/android/gms/ads/internal/client/zzr;->zzg:[Lcom/google/android/gms/ads/internal/client/zzr;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v6, 0x0

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    iget-object v7, v3, Lcom/google/android/gms/ads/internal/client/zzr;->zza:Ljava/lang/String;

    .line 14
    .line 15
    iget-boolean v8, v3, Lcom/google/android/gms/ads/internal/client/zzr;->zzi:Z

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    move-object v7, v4

    .line 19
    move v8, v6

    .line 20
    move v9, v8

    .line 21
    move v10, v9

    .line 22
    move v11, v10

    .line 23
    :goto_0
    array-length v12, v2

    .line 24
    if-ge v9, v12, :cond_5

    .line 25
    .line 26
    aget-object v12, v2, v9

    .line 27
    .line 28
    iget-boolean v13, v12, Lcom/google/android/gms/ads/internal/client/zzr;->zzi:Z

    .line 29
    .line 30
    if-nez v13, :cond_1

    .line 31
    .line 32
    if-nez v10, :cond_1

    .line 33
    .line 34
    iget-object v7, v12, Lcom/google/android/gms/ads/internal/client/zzr;->zza:Ljava/lang/String;

    .line 35
    .line 36
    const/4 v10, 0x1

    .line 37
    :cond_1
    if-eqz v13, :cond_3

    .line 38
    .line 39
    if-nez v11, :cond_2

    .line 40
    .line 41
    const/4 v8, 0x1

    .line 42
    :cond_2
    const/4 v11, 0x1

    .line 43
    :cond_3
    if-eqz v10, :cond_4

    .line 44
    .line 45
    if-nez v11, :cond_5

    .line 46
    .line 47
    :cond_4
    add-int/lit8 v9, v9, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_5
    :goto_1
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzemj;->zzc:Landroid/content/Context;

    .line 51
    .line 52
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 53
    .line 54
    .line 55
    move-result-object v10

    .line 56
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 57
    .line 58
    const/16 v12, 0x1d

    .line 59
    .line 60
    if-lt v11, v12, :cond_6

    .line 61
    .line 62
    invoke-static {}, Lcom/google/android/gms/internal/ads/Wwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/graphics/Insets;

    .line 63
    .line 64
    .line 65
    move-result-object v12

    .line 66
    goto :goto_2

    .line 67
    :cond_6
    move-object v12, v4

    .line 68
    :goto_2
    const/4 v13, 0x0

    .line 69
    if-eqz v10, :cond_7

    .line 70
    .line 71
    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 72
    .line 73
    .line 74
    move-result-object v10

    .line 75
    if-eqz v10, :cond_7

    .line 76
    .line 77
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzemj;->zzd:Lcom/google/android/gms/internal/ads/zzbzn;

    .line 78
    .line 79
    iget v4, v10, Landroid/util/DisplayMetrics;->density:F

    .line 80
    .line 81
    iget v14, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 82
    .line 83
    iget v10, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbzn;->zzi()Lcom/google/android/gms/ads/internal/util/zzg;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/util/zzg;->zzj()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    move/from16 v17, v10

    .line 94
    .line 95
    move-object v10, v0

    .line 96
    move/from16 v0, v17

    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_7
    move-object v10, v4

    .line 100
    move v0, v6

    .line 101
    move v14, v0

    .line 102
    move v4, v13

    .line 103
    :goto_3
    sget-object v15, Lcom/google/android/gms/internal/ads/zzbcv;->zzny:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 104
    .line 105
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    invoke-virtual {v5, v15}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    check-cast v5, Ljava/lang/Boolean;

    .line 114
    .line 115
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    if-eqz v5, :cond_9

    .line 120
    .line 121
    const/16 v5, 0x23

    .line 122
    .line 123
    if-lt v11, v5, :cond_9

    .line 124
    .line 125
    const-string v5, "window"

    .line 126
    .line 127
    invoke-virtual {v9, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    check-cast v5, Landroid/view/WindowManager;

    .line 132
    .line 133
    if-eqz v5, :cond_8

    .line 134
    .line 135
    cmpl-float v9, v4, v13

    .line 136
    .line 137
    if-eqz v9, :cond_8

    .line 138
    .line 139
    invoke-static {v5}, LWwwwwwwwwwwwwwwwwwwwwwwww/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/view/WindowManager;)Landroid/view/WindowMetrics;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    invoke-static {v5}, Landroidx/window/layout/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/view/WindowMetrics;)Landroid/view/WindowInsets;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    invoke-static {}, Landroidx/core/view/IIllllll;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 148
    .line 149
    .line 150
    move-result v9

    .line 151
    invoke-static {}, Landroidx/core/view/O0000000000;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 152
    .line 153
    .line 154
    move-result v11

    .line 155
    or-int/2addr v9, v11

    .line 156
    invoke-static {}, Landroidx/core/view/IIlllll;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 157
    .line 158
    .line 159
    move-result v11

    .line 160
    or-int/2addr v9, v11

    .line 161
    invoke-static {}, Landroidx/core/view/IIllll;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 162
    .line 163
    .line 164
    move-result v11

    .line 165
    or-int/2addr v9, v11

    .line 166
    invoke-static {v5, v9}, Landroidx/core/view/IIlllllllll;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    invoke-static {v5}, Landroidx/appcompat/widget/Wwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/graphics/Insets;)I

    .line 171
    .line 172
    .line 173
    move-result v9

    .line 174
    int-to-float v9, v9

    .line 175
    div-float/2addr v9, v4

    .line 176
    float-to-double v11, v9

    .line 177
    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    .line 178
    .line 179
    .line 180
    move-result-wide v11

    .line 181
    double-to-int v9, v11

    .line 182
    invoke-static {v5}, Landroidx/appcompat/widget/Wwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/graphics/Insets;)I

    .line 183
    .line 184
    .line 185
    move-result v11

    .line 186
    int-to-float v11, v11

    .line 187
    div-float/2addr v11, v4

    .line 188
    float-to-double v11, v11

    .line 189
    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    .line 190
    .line 191
    .line 192
    move-result-wide v11

    .line 193
    double-to-int v11, v11

    .line 194
    invoke-static {v5}, Landroidx/appcompat/widget/Wwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/graphics/Insets;)I

    .line 195
    .line 196
    .line 197
    move-result v12

    .line 198
    int-to-float v12, v12

    .line 199
    div-float/2addr v12, v4

    .line 200
    move v15, v13

    .line 201
    move/from16 p0, v14

    .line 202
    .line 203
    float-to-double v13, v12

    .line 204
    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    .line 205
    .line 206
    .line 207
    move-result-wide v12

    .line 208
    double-to-int v12, v12

    .line 209
    invoke-static {v5}, Landroidx/appcompat/widget/Wwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/graphics/Insets;)I

    .line 210
    .line 211
    .line 212
    move-result v5

    .line 213
    int-to-float v5, v5

    .line 214
    div-float/2addr v5, v4

    .line 215
    float-to-double v13, v5

    .line 216
    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    .line 217
    .line 218
    .line 219
    move-result-wide v13

    .line 220
    double-to-int v5, v13

    .line 221
    invoke-static {v9, v11, v12, v5}, Lcom/google/android/gms/internal/ads/Wwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(IIII)Landroid/graphics/Insets;

    .line 222
    .line 223
    .line 224
    move-result-object v12

    .line 225
    goto :goto_4

    .line 226
    :cond_8
    move v15, v13

    .line 227
    move/from16 p0, v14

    .line 228
    .line 229
    invoke-static {}, Lcom/google/android/gms/internal/ads/Wwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/graphics/Insets;

    .line 230
    .line 231
    .line 232
    move-result-object v12

    .line 233
    goto :goto_4

    .line 234
    :cond_9
    move v15, v13

    .line 235
    move/from16 p0, v14

    .line 236
    .line 237
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    .line 241
    .line 242
    if-eqz v2, :cond_12

    .line 243
    .line 244
    move v9, v6

    .line 245
    move v11, v9

    .line 246
    :goto_5
    array-length v13, v2

    .line 247
    const-string v14, "|"

    .line 248
    .line 249
    if-ge v9, v13, :cond_10

    .line 250
    .line 251
    aget-object v13, v2, v9

    .line 252
    .line 253
    move/from16 v16, v15

    .line 254
    .line 255
    iget-boolean v15, v13, Lcom/google/android/gms/ads/internal/client/zzr;->zzi:Z

    .line 256
    .line 257
    if-eqz v15, :cond_a

    .line 258
    .line 259
    const/4 v11, 0x1

    .line 260
    goto :goto_8

    .line 261
    :cond_a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    .line 262
    .line 263
    .line 264
    move-result v15

    .line 265
    if-eqz v15, :cond_b

    .line 266
    .line 267
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    :cond_b
    iget v14, v13, Lcom/google/android/gms/ads/internal/client/zzr;->zze:I

    .line 271
    .line 272
    const/4 v15, -0x1

    .line 273
    if-ne v14, v15, :cond_d

    .line 274
    .line 275
    cmpl-float v14, v4, v16

    .line 276
    .line 277
    if-eqz v14, :cond_c

    .line 278
    .line 279
    iget v14, v13, Lcom/google/android/gms/ads/internal/client/zzr;->zzf:I

    .line 280
    .line 281
    int-to-float v14, v14

    .line 282
    div-float/2addr v14, v4

    .line 283
    float-to-int v14, v14

    .line 284
    goto :goto_6

    .line 285
    :cond_c
    move v14, v15

    .line 286
    :cond_d
    :goto_6
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    const-string v14, "x"

    .line 290
    .line 291
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    iget v14, v13, Lcom/google/android/gms/ads/internal/client/zzr;->zzb:I

    .line 295
    .line 296
    const/4 v15, -0x2

    .line 297
    if-ne v14, v15, :cond_f

    .line 298
    .line 299
    cmpl-float v14, v4, v16

    .line 300
    .line 301
    if-eqz v14, :cond_e

    .line 302
    .line 303
    iget v13, v13, Lcom/google/android/gms/ads/internal/client/zzr;->zzc:I

    .line 304
    .line 305
    int-to-float v13, v13

    .line 306
    div-float/2addr v13, v4

    .line 307
    float-to-int v14, v13

    .line 308
    goto :goto_7

    .line 309
    :cond_e
    move v14, v15

    .line 310
    :cond_f
    :goto_7
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    :goto_8
    add-int/lit8 v9, v9, 0x1

    .line 314
    .line 315
    move/from16 v15, v16

    .line 316
    .line 317
    goto :goto_5

    .line 318
    :cond_10
    if-eqz v11, :cond_12

    .line 319
    .line 320
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    .line 321
    .line 322
    .line 323
    move-result v2

    .line 324
    if-eqz v2, :cond_11

    .line 325
    .line 326
    invoke-virtual {v5, v6, v14}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    :cond_11
    const-string v2, "320x50"

    .line 330
    .line 331
    invoke-virtual {v5, v6, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    :cond_12
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v6

    .line 338
    iget-boolean v11, v1, Lcom/google/android/gms/internal/ads/zzfcp;->zzq:Z

    .line 339
    .line 340
    new-instance v2, Lcom/google/android/gms/internal/ads/zzemk;

    .line 341
    .line 342
    move-object v5, v7

    .line 343
    move v7, v4

    .line 344
    move-object v4, v5

    .line 345
    move v9, v0

    .line 346
    move v5, v8

    .line 347
    move/from16 v8, p0

    .line 348
    .line 349
    invoke-direct/range {v2 .. v12}, Lcom/google/android/gms/internal/ads/zzemk;-><init>(Lcom/google/android/gms/ads/internal/client/zzr;Ljava/lang/String;ZLjava/lang/String;FIILjava/lang/String;ZLandroid/graphics/Insets;)V

    .line 350
    .line 351
    .line 352
    return-object v2
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    const/4 v0, 0x7

    .line 2
    return v0
.end method

.method public final zzb()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemj;->zza:Lcom/google/android/gms/internal/ads/zzetv;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzetv;->zzb()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/google/android/gms/internal/ads/zzemi;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzemi;-><init>(Lcom/google/android/gms/internal/ads/zzemj;)V

    .line 10
    .line 11
    .line 12
    sget-object v2, Lcom/google/android/gms/internal/ads/zzcaa;->zzg:Lcom/google/android/gms/internal/ads/zzgdj;

    .line 13
    .line 14
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgcy;->zzm(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfur;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method
