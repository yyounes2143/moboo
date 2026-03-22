.class public final Lcom/google/android/gms/internal/ads/zzbso;
.super Lcom/google/android/gms/internal/ads/zzbsp;
.source "Proguard"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbjw;


# instance fields
.field zza:Landroid/util/DisplayMetrics;

.field zzb:I

.field zzc:I

.field zzd:I

.field zze:I

.field zzf:I

.field zzg:I

.field private final zzh:Lcom/google/android/gms/internal/ads/zzcfb;

.field private final zzi:Landroid/content/Context;

.field private final zzj:Landroid/view/WindowManager;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzbcd;

.field private zzl:F

.field private zzm:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcfb;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbcd;)V
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbsp;-><init>(Lcom/google/android/gms/internal/ads/zzcfb;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzb:I

    .line 8
    .line 9
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzc:I

    .line 10
    .line 11
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzd:I

    .line 12
    .line 13
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbso;->zze:I

    .line 14
    .line 15
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzf:I

    .line 16
    .line 17
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzg:I

    .line 18
    .line 19
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzh:Lcom/google/android/gms/internal/ads/zzcfb;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzi:Landroid/content/Context;

    .line 22
    .line 23
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzk:Lcom/google/android/gms/internal/ads/zzbcd;

    .line 24
    .line 25
    const-string p1, "window"

    .line 26
    .line 27
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Landroid/view/WindowManager;

    .line 32
    .line 33
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzj:Landroid/view/WindowManager;

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 10

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcfb;

    .line 2
    .line 3
    new-instance p1, Landroid/util/DisplayMetrics;

    .line 4
    .line 5
    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbso;->zza:Landroid/util/DisplayMetrics;

    .line 9
    .line 10
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzj:Landroid/view/WindowManager;

    .line 11
    .line 12
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbso;->zza:Landroid/util/DisplayMetrics;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbso;->zza:Landroid/util/DisplayMetrics;

    .line 22
    .line 23
    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    .line 24
    .line 25
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzl:F

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzm:I

    .line 32
    .line 33
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzb()Lcom/google/android/gms/ads/internal/util/client/zzf;

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbso;->zza:Landroid/util/DisplayMetrics;

    .line 37
    .line 38
    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 39
    .line 40
    invoke-static {p1, p2}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzw(Landroid/util/DisplayMetrics;I)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzb:I

    .line 45
    .line 46
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzb()Lcom/google/android/gms/ads/internal/util/client/zzf;

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbso;->zza:Landroid/util/DisplayMetrics;

    .line 50
    .line 51
    iget p2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 52
    .line 53
    invoke-static {p1, p2}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzw(Landroid/util/DisplayMetrics;I)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzc:I

    .line 58
    .line 59
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzh:Lcom/google/android/gms/internal/ads/zzcfb;

    .line 60
    .line 61
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfb;->zzi()Landroid/app/Activity;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    const/4 v1, 0x1

    .line 66
    const/4 v2, 0x0

    .line 67
    if-eqz p2, :cond_1

    .line 68
    .line 69
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-nez v0, :cond_0

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 77
    .line 78
    .line 79
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zzs;->zzR(Landroid/app/Activity;)[I

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzb()Lcom/google/android/gms/ads/internal/util/client/zzf;

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbso;->zza:Landroid/util/DisplayMetrics;

    .line 87
    .line 88
    aget v3, p2, v2

    .line 89
    .line 90
    invoke-static {v0, v3}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzw(Landroid/util/DisplayMetrics;I)I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzd:I

    .line 95
    .line 96
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzb()Lcom/google/android/gms/ads/internal/util/client/zzf;

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbso;->zza:Landroid/util/DisplayMetrics;

    .line 100
    .line 101
    aget p2, p2, v1

    .line 102
    .line 103
    invoke-static {v0, p2}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzw(Landroid/util/DisplayMetrics;I)I

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbso;->zze:I

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_1
    :goto_0
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzb:I

    .line 111
    .line 112
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzd:I

    .line 113
    .line 114
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzc:I

    .line 115
    .line 116
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbso;->zze:I

    .line 117
    .line 118
    :goto_1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfb;->zzO()Lcom/google/android/gms/internal/ads/zzcgv;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcgv;->zzi()Z

    .line 123
    .line 124
    .line 125
    move-result p2

    .line 126
    if-eqz p2, :cond_2

    .line 127
    .line 128
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzb:I

    .line 129
    .line 130
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzf:I

    .line 131
    .line 132
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzc:I

    .line 133
    .line 134
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzg:I

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_2
    invoke-interface {p1, v2, v2}, Lcom/google/android/gms/internal/ads/zzcfb;->measure(II)V

    .line 138
    .line 139
    .line 140
    :goto_2
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzb:I

    .line 141
    .line 142
    iget v5, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzc:I

    .line 143
    .line 144
    iget v6, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzd:I

    .line 145
    .line 146
    iget v7, p0, Lcom/google/android/gms/internal/ads/zzbso;->zze:I

    .line 147
    .line 148
    iget v8, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzl:F

    .line 149
    .line 150
    iget v9, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzm:I

    .line 151
    .line 152
    move-object v3, p0

    .line 153
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzbsp;->zzj(IIIIFI)V

    .line 154
    .line 155
    .line 156
    new-instance p2, Lcom/google/android/gms/internal/ads/zzbsn;

    .line 157
    .line 158
    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzbsn;-><init>()V

    .line 159
    .line 160
    .line 161
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzbso;->zzk:Lcom/google/android/gms/internal/ads/zzbcd;

    .line 162
    .line 163
    new-instance v4, Landroid/content/Intent;

    .line 164
    .line 165
    const-string v5, "android.intent.action.DIAL"

    .line 166
    .line 167
    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    const-string v5, "tel:"

    .line 171
    .line 172
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzbcd;->zza(Landroid/content/Intent;)Z

    .line 180
    .line 181
    .line 182
    move-result v4

    .line 183
    invoke-virtual {p2, v4}, Lcom/google/android/gms/internal/ads/zzbsn;->zze(Z)Lcom/google/android/gms/internal/ads/zzbsn;

    .line 184
    .line 185
    .line 186
    new-instance v4, Landroid/content/Intent;

    .line 187
    .line 188
    const-string v5, "android.intent.action.VIEW"

    .line 189
    .line 190
    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    const-string v5, "sms:"

    .line 194
    .line 195
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 196
    .line 197
    .line 198
    move-result-object v5

    .line 199
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzbcd;->zza(Landroid/content/Intent;)Z

    .line 203
    .line 204
    .line 205
    move-result v4

    .line 206
    invoke-virtual {p2, v4}, Lcom/google/android/gms/internal/ads/zzbsn;->zzc(Z)Lcom/google/android/gms/internal/ads/zzbsn;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbcd;->zzb()Z

    .line 210
    .line 211
    .line 212
    move-result v4

    .line 213
    invoke-virtual {p2, v4}, Lcom/google/android/gms/internal/ads/zzbsn;->zza(Z)Lcom/google/android/gms/internal/ads/zzbsn;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbcd;->zzc()Z

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzbsn;->zzd(Z)Lcom/google/android/gms/internal/ads/zzbsn;

    .line 221
    .line 222
    .line 223
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/zzbsn;->zzb(Z)Lcom/google/android/gms/internal/ads/zzbsn;

    .line 224
    .line 225
    .line 226
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbsn;->zzh(Lcom/google/android/gms/internal/ads/zzbsn;)Z

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbsn;->zzj(Lcom/google/android/gms/internal/ads/zzbsn;)Z

    .line 231
    .line 232
    .line 233
    move-result v4

    .line 234
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbsn;->zzf(Lcom/google/android/gms/internal/ads/zzbsn;)Z

    .line 235
    .line 236
    .line 237
    move-result v5

    .line 238
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbsn;->zzi(Lcom/google/android/gms/internal/ads/zzbsn;)Z

    .line 239
    .line 240
    .line 241
    move-result v6

    .line 242
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbsn;->zzg(Lcom/google/android/gms/internal/ads/zzbsn;)Z

    .line 243
    .line 244
    .line 245
    move-result p2

    .line 246
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    .line 247
    .line 248
    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 249
    .line 250
    .line 251
    const-string v8, "sms"

    .line 252
    .line 253
    invoke-virtual {v7, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    const-string v7, "tel"

    .line 258
    .line 259
    invoke-virtual {v0, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    const-string v4, "calendar"

    .line 264
    .line 265
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    const-string v4, "storePicture"

    .line 270
    .line 271
    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    const-string v4, "inlineVideo"

    .line 276
    .line 277
    invoke-virtual {v0, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 278
    .line 279
    .line 280
    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    goto :goto_3

    .line 282
    :catch_0
    move-exception v0

    .line 283
    move-object p2, v0

    .line 284
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 285
    .line 286
    const-string v0, "Error occurred while obtaining the MRAID capabilities."

    .line 287
    .line 288
    invoke-static {v0, p2}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 289
    .line 290
    .line 291
    const/4 p2, 0x0

    .line 292
    :goto_3
    const-string v0, "onDeviceFeaturesReceived"

    .line 293
    .line 294
    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzbmr;->zze(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 295
    .line 296
    .line 297
    const/4 p2, 0x2

    .line 298
    new-array v0, p2, [I

    .line 299
    .line 300
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzcfb;->getLocationOnScreen([I)V

    .line 301
    .line 302
    .line 303
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzbso;->zzi:Landroid/content/Context;

    .line 304
    .line 305
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzb()Lcom/google/android/gms/ads/internal/util/client/zzf;

    .line 306
    .line 307
    .line 308
    move-result-object v5

    .line 309
    aget v2, v0, v2

    .line 310
    .line 311
    invoke-virtual {v5, v4, v2}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzb(Landroid/content/Context;I)I

    .line 312
    .line 313
    .line 314
    move-result v2

    .line 315
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzb()Lcom/google/android/gms/ads/internal/util/client/zzf;

    .line 316
    .line 317
    .line 318
    move-result-object v5

    .line 319
    aget v0, v0, v1

    .line 320
    .line 321
    invoke-virtual {v5, v4, v0}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzb(Landroid/content/Context;I)I

    .line 322
    .line 323
    .line 324
    move-result v0

    .line 325
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/internal/ads/zzbso;->zzb(II)V

    .line 326
    .line 327
    .line 328
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzm(I)Z

    .line 329
    .line 330
    .line 331
    move-result p2

    .line 332
    if-eqz p2, :cond_3

    .line 333
    .line 334
    const-string p2, "Dispatching Ready Event."

    .line 335
    .line 336
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    :cond_3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfb;->zzm()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 340
    .line 341
    .line 342
    move-result-object p1

    .line 343
    iget-object p1, p1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    .line 344
    .line 345
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbsp;->zzi(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    return-void
.end method

.method public final zzb(II)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzi:Landroid/content/Context;

    .line 2
    .line 3
    instance-of v1, v0, Landroid/app/Activity;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 9
    .line 10
    .line 11
    move-object v1, v0

    .line 12
    check-cast v1, Landroid/app/Activity;

    .line 13
    .line 14
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzS(Landroid/app/Activity;)[I

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    aget v1, v1, v2

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v1, v2

    .line 22
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzh:Lcom/google/android/gms/internal/ads/zzcfb;

    .line 23
    .line 24
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcfb;->zzO()Lcom/google/android/gms/internal/ads/zzcgv;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    if-eqz v4, :cond_1

    .line 29
    .line 30
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcfb;->zzO()Lcom/google/android/gms/internal/ads/zzcgv;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzcgv;->zzi()Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-nez v4, :cond_6

    .line 39
    .line 40
    :cond_1
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcfb;->getWidth()I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcfb;->getHeight()I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    sget-object v6, Lcom/google/android/gms/internal/ads/zzbcv;->zzag:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 49
    .line 50
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    check-cast v6, Ljava/lang/Boolean;

    .line 59
    .line 60
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    if-eqz v6, :cond_4

    .line 65
    .line 66
    if-nez v4, :cond_3

    .line 67
    .line 68
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcfb;->zzO()Lcom/google/android/gms/internal/ads/zzcgv;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    if-eqz v4, :cond_2

    .line 73
    .line 74
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcfb;->zzO()Lcom/google/android/gms/internal/ads/zzcgv;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    iget v4, v4, Lcom/google/android/gms/internal/ads/zzcgv;->zzb:I

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    move v4, v2

    .line 82
    :cond_3
    :goto_1
    if-nez v5, :cond_4

    .line 83
    .line 84
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcfb;->zzO()Lcom/google/android/gms/internal/ads/zzcgv;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    if-eqz v5, :cond_5

    .line 89
    .line 90
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcfb;->zzO()Lcom/google/android/gms/internal/ads/zzcgv;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzcgv;->zza:I

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_4
    move v2, v5

    .line 98
    :cond_5
    :goto_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzb()Lcom/google/android/gms/ads/internal/util/client/zzf;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    invoke-virtual {v5, v0, v4}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzb(Landroid/content/Context;I)I

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    iput v4, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzf:I

    .line 107
    .line 108
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzb()Lcom/google/android/gms/ads/internal/util/client/zzf;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-virtual {v4, v0, v2}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzb(Landroid/content/Context;I)I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzg:I

    .line 117
    .line 118
    :cond_6
    sub-int v0, p2, v1

    .line 119
    .line 120
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzf:I

    .line 121
    .line 122
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbso;->zzg:I

    .line 123
    .line 124
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbsp;->zzg(IIII)V

    .line 125
    .line 126
    .line 127
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcfb;->zzN()Lcom/google/android/gms/internal/ads/zzcgt;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcgt;->zzE(II)V

    .line 132
    .line 133
    .line 134
    return-void
.end method
