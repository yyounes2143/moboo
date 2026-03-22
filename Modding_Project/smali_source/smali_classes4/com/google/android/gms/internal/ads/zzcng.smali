.class public final Lcom/google/android/gms/internal/ads/zzcng;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbog;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzayq;

.field private final zzc:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzayq;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcng;->zza:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcng;->zzb:Lcom/google/android/gms/internal/ads/zzayq;

    .line 7
    .line 8
    const-string p2, "power"

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Landroid/os/PowerManager;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcng;->zzc:Landroid/os/PowerManager;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzcnj;)Lorg/json/JSONObject;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lorg/json/JSONObject;

    .line 7
    .line 8
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzcnj;->zzf:Lcom/google/android/gms/internal/ads/zzayt;

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    new-instance p1, Lorg/json/JSONObject;

    .line 16
    .line 17
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 18
    .line 19
    .line 20
    goto/16 :goto_1

    .line 21
    .line 22
    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcng;->zzb:Lcom/google/android/gms/internal/ads/zzayq;

    .line 23
    .line 24
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzayq;->zzd()Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    if-eqz v4, :cond_4

    .line 29
    .line 30
    iget-boolean v4, v2, Lcom/google/android/gms/internal/ads/zzayt;->zza:Z

    .line 31
    .line 32
    new-instance v5, Lorg/json/JSONObject;

    .line 33
    .line 34
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzayq;->zzb()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    const-string v7, "afmaVersion"

    .line 42
    .line 43
    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzayq;->zzd()Lorg/json/JSONObject;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    const-string v8, "activeViewJSON"

    .line 52
    .line 53
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    iget-wide v7, p1, Lcom/google/android/gms/internal/ads/zzcnj;->zzd:J

    .line 58
    .line 59
    const-string v9, "timestamp"

    .line 60
    .line 61
    invoke-virtual {v6, v9, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzayq;->zza()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    const-string v8, "adFormat"

    .line 70
    .line 71
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzayq;->zzc()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    const-string v8, "hashCode"

    .line 80
    .line 81
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    const-string v7, "isMraid"

    .line 86
    .line 87
    const/4 v8, 0x0

    .line 88
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    const-string v7, "isStopped"

    .line 93
    .line 94
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    iget-boolean v7, p1, Lcom/google/android/gms/internal/ads/zzcnj;->zzb:Z

    .line 99
    .line 100
    const-string v8, "isPaused"

    .line 101
    .line 102
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzayq;->zze()Z

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    const-string v7, "isNative"

    .line 111
    .line 112
    invoke-virtual {v6, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzcng;->zzc:Landroid/os/PowerManager;

    .line 117
    .line 118
    const-string v7, "isScreenOn"

    .line 119
    .line 120
    invoke-virtual {v6}, Landroid/os/PowerManager;->isInteractive()Z

    .line 121
    .line 122
    .line 123
    move-result v6

    .line 124
    invoke-virtual {v3, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzt()Lcom/google/android/gms/ads/internal/util/zzab;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    invoke-virtual {v6}, Lcom/google/android/gms/ads/internal/util/zzab;->zze()Z

    .line 133
    .line 134
    .line 135
    move-result v6

    .line 136
    const-string v7, "appMuted"

    .line 137
    .line 138
    invoke-virtual {v3, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzt()Lcom/google/android/gms/ads/internal/util/zzab;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    invoke-virtual {v6}, Lcom/google/android/gms/ads/internal/util/zzab;->zza()F

    .line 147
    .line 148
    .line 149
    move-result v6

    .line 150
    float-to-double v6, v6

    .line 151
    const-string v8, "appVolume"

    .line 152
    .line 153
    invoke-virtual {v3, v8, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzcng;->zza:Landroid/content/Context;

    .line 158
    .line 159
    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 160
    .line 161
    .line 162
    move-result-object v7

    .line 163
    invoke-static {v7}, Lcom/google/android/gms/ads/internal/util/zzab;->zzb(Landroid/content/Context;)F

    .line 164
    .line 165
    .line 166
    move-result v7

    .line 167
    float-to-double v7, v7

    .line 168
    const-string v9, "deviceVolume"

    .line 169
    .line 170
    invoke-virtual {v3, v9, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    iget v6, v2, Lcom/google/android/gms/internal/ads/zzayt;->zzb:I

    .line 182
    .line 183
    const-string v7, "windowVisibility"

    .line 184
    .line 185
    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    const-string v7, "isAttachedToWindow"

    .line 190
    .line 191
    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    new-instance v6, Lorg/json/JSONObject;

    .line 196
    .line 197
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 198
    .line 199
    .line 200
    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzayt;->zzc:Landroid/graphics/Rect;

    .line 201
    .line 202
    iget v8, v7, Landroid/graphics/Rect;->top:I

    .line 203
    .line 204
    const-string v9, "top"

    .line 205
    .line 206
    invoke-virtual {v6, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 207
    .line 208
    .line 209
    move-result-object v6

    .line 210
    iget v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 211
    .line 212
    const-string v10, "bottom"

    .line 213
    .line 214
    invoke-virtual {v6, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 215
    .line 216
    .line 217
    move-result-object v6

    .line 218
    iget v8, v7, Landroid/graphics/Rect;->left:I

    .line 219
    .line 220
    const-string v11, "left"

    .line 221
    .line 222
    invoke-virtual {v6, v11, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 223
    .line 224
    .line 225
    move-result-object v6

    .line 226
    iget v7, v7, Landroid/graphics/Rect;->right:I

    .line 227
    .line 228
    const-string v8, "right"

    .line 229
    .line 230
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 231
    .line 232
    .line 233
    move-result-object v6

    .line 234
    const-string v7, "viewBox"

    .line 235
    .line 236
    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 237
    .line 238
    .line 239
    move-result-object v4

    .line 240
    new-instance v6, Lorg/json/JSONObject;

    .line 241
    .line 242
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 243
    .line 244
    .line 245
    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzayt;->zzd:Landroid/graphics/Rect;

    .line 246
    .line 247
    iget v12, v7, Landroid/graphics/Rect;->top:I

    .line 248
    .line 249
    invoke-virtual {v6, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 250
    .line 251
    .line 252
    move-result-object v6

    .line 253
    iget v12, v7, Landroid/graphics/Rect;->bottom:I

    .line 254
    .line 255
    invoke-virtual {v6, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 256
    .line 257
    .line 258
    move-result-object v6

    .line 259
    iget v12, v7, Landroid/graphics/Rect;->left:I

    .line 260
    .line 261
    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 262
    .line 263
    .line 264
    move-result-object v6

    .line 265
    iget v7, v7, Landroid/graphics/Rect;->right:I

    .line 266
    .line 267
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 268
    .line 269
    .line 270
    move-result-object v6

    .line 271
    const-string v7, "adBox"

    .line 272
    .line 273
    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 274
    .line 275
    .line 276
    move-result-object v4

    .line 277
    new-instance v6, Lorg/json/JSONObject;

    .line 278
    .line 279
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 280
    .line 281
    .line 282
    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzayt;->zze:Landroid/graphics/Rect;

    .line 283
    .line 284
    iget v12, v7, Landroid/graphics/Rect;->top:I

    .line 285
    .line 286
    invoke-virtual {v6, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 287
    .line 288
    .line 289
    move-result-object v6

    .line 290
    iget v12, v7, Landroid/graphics/Rect;->bottom:I

    .line 291
    .line 292
    invoke-virtual {v6, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 293
    .line 294
    .line 295
    move-result-object v6

    .line 296
    iget v12, v7, Landroid/graphics/Rect;->left:I

    .line 297
    .line 298
    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 299
    .line 300
    .line 301
    move-result-object v6

    .line 302
    iget v7, v7, Landroid/graphics/Rect;->right:I

    .line 303
    .line 304
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 305
    .line 306
    .line 307
    move-result-object v6

    .line 308
    const-string v7, "globalVisibleBox"

    .line 309
    .line 310
    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 311
    .line 312
    .line 313
    move-result-object v4

    .line 314
    iget-boolean v6, v2, Lcom/google/android/gms/internal/ads/zzayt;->zzf:Z

    .line 315
    .line 316
    const-string v7, "globalVisibleBoxVisible"

    .line 317
    .line 318
    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 319
    .line 320
    .line 321
    move-result-object v4

    .line 322
    new-instance v6, Lorg/json/JSONObject;

    .line 323
    .line 324
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 325
    .line 326
    .line 327
    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzayt;->zzg:Landroid/graphics/Rect;

    .line 328
    .line 329
    iget v12, v7, Landroid/graphics/Rect;->top:I

    .line 330
    .line 331
    invoke-virtual {v6, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 332
    .line 333
    .line 334
    move-result-object v6

    .line 335
    iget v12, v7, Landroid/graphics/Rect;->bottom:I

    .line 336
    .line 337
    invoke-virtual {v6, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 338
    .line 339
    .line 340
    move-result-object v6

    .line 341
    iget v12, v7, Landroid/graphics/Rect;->left:I

    .line 342
    .line 343
    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 344
    .line 345
    .line 346
    move-result-object v6

    .line 347
    iget v7, v7, Landroid/graphics/Rect;->right:I

    .line 348
    .line 349
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 350
    .line 351
    .line 352
    move-result-object v6

    .line 353
    const-string v7, "localVisibleBox"

    .line 354
    .line 355
    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 356
    .line 357
    .line 358
    move-result-object v4

    .line 359
    iget-boolean v6, v2, Lcom/google/android/gms/internal/ads/zzayt;->zzh:Z

    .line 360
    .line 361
    const-string v7, "localVisibleBoxVisible"

    .line 362
    .line 363
    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 364
    .line 365
    .line 366
    move-result-object v4

    .line 367
    new-instance v6, Lorg/json/JSONObject;

    .line 368
    .line 369
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 370
    .line 371
    .line 372
    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzayt;->zzi:Landroid/graphics/Rect;

    .line 373
    .line 374
    iget v12, v7, Landroid/graphics/Rect;->top:I

    .line 375
    .line 376
    invoke-virtual {v6, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 377
    .line 378
    .line 379
    move-result-object v6

    .line 380
    iget v12, v7, Landroid/graphics/Rect;->bottom:I

    .line 381
    .line 382
    invoke-virtual {v6, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 383
    .line 384
    .line 385
    move-result-object v6

    .line 386
    iget v12, v7, Landroid/graphics/Rect;->left:I

    .line 387
    .line 388
    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 389
    .line 390
    .line 391
    move-result-object v6

    .line 392
    iget v7, v7, Landroid/graphics/Rect;->right:I

    .line 393
    .line 394
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 395
    .line 396
    .line 397
    move-result-object v6

    .line 398
    const-string v7, "hitBox"

    .line 399
    .line 400
    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 401
    .line 402
    .line 403
    move-result-object v4

    .line 404
    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 405
    .line 406
    float-to-double v6, v3

    .line 407
    const-string v3, "screenDensity"

    .line 408
    .line 409
    invoke-virtual {v4, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 410
    .line 411
    .line 412
    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzcnj;->zza:Z

    .line 413
    .line 414
    const-string v4, "isVisible"

    .line 415
    .line 416
    invoke-virtual {v5, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 417
    .line 418
    .line 419
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbcv;->zzbC:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 420
    .line 421
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 422
    .line 423
    .line 424
    move-result-object v4

    .line 425
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-result-object v3

    .line 429
    check-cast v3, Ljava/lang/Boolean;

    .line 430
    .line 431
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 432
    .line 433
    .line 434
    move-result v3

    .line 435
    if-eqz v3, :cond_2

    .line 436
    .line 437
    new-instance v3, Lorg/json/JSONArray;

    .line 438
    .line 439
    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 440
    .line 441
    .line 442
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzayt;->zzk:Ljava/util/List;

    .line 443
    .line 444
    if-eqz v2, :cond_1

    .line 445
    .line 446
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 447
    .line 448
    .line 449
    move-result-object v2

    .line 450
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 451
    .line 452
    .line 453
    move-result v4

    .line 454
    if-eqz v4, :cond_1

    .line 455
    .line 456
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    move-result-object v4

    .line 460
    check-cast v4, Landroid/graphics/Rect;

    .line 461
    .line 462
    new-instance v6, Lorg/json/JSONObject;

    .line 463
    .line 464
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 465
    .line 466
    .line 467
    iget v7, v4, Landroid/graphics/Rect;->top:I

    .line 468
    .line 469
    invoke-virtual {v6, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 470
    .line 471
    .line 472
    move-result-object v6

    .line 473
    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    .line 474
    .line 475
    invoke-virtual {v6, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 476
    .line 477
    .line 478
    move-result-object v6

    .line 479
    iget v7, v4, Landroid/graphics/Rect;->left:I

    .line 480
    .line 481
    invoke-virtual {v6, v11, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 482
    .line 483
    .line 484
    move-result-object v6

    .line 485
    iget v4, v4, Landroid/graphics/Rect;->right:I

    .line 486
    .line 487
    invoke-virtual {v6, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 488
    .line 489
    .line 490
    move-result-object v4

    .line 491
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 492
    .line 493
    .line 494
    goto :goto_0

    .line 495
    :cond_1
    const-string v2, "scrollableContainerBoxes"

    .line 496
    .line 497
    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 498
    .line 499
    .line 500
    :cond_2
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcnj;->zze:Ljava/lang/String;

    .line 501
    .line 502
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 503
    .line 504
    .line 505
    move-result p1

    .line 506
    if-nez p1, :cond_3

    .line 507
    .line 508
    const-string p1, "doneReasonCode"

    .line 509
    .line 510
    const-string v2, "u"

    .line 511
    .line 512
    invoke-virtual {v5, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 513
    .line 514
    .line 515
    :cond_3
    move-object p1, v5

    .line 516
    :goto_1
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 517
    .line 518
    .line 519
    const-string p1, "units"

    .line 520
    .line 521
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 522
    .line 523
    .line 524
    return-object v1

    .line 525
    :cond_4
    new-instance p1, Lorg/json/JSONException;

    .line 526
    .line 527
    const-string v0, "Active view Info cannot be null."

    .line 528
    .line 529
    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    .line 530
    .line 531
    .line 532
    throw p1
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcnj;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzcng;->zza(Lcom/google/android/gms/internal/ads/zzcnj;)Lorg/json/JSONObject;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
