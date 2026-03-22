.class public abstract Lcom/google/android/gms/internal/ads/zzbhz;
.super Lcom/google/android/gms/internal/ads/zzayl;
.source "Proguard"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbia;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.ads.internal.formats.client.IUnifiedNativeAd"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzayl;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final zzde(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    return p1

    .line 6
    :pswitch_0
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzaym;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Landroid/os/Bundle;

    .line 13
    .line 14
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaym;->zzc(Landroid/os/Parcel;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbia;->zzB(Landroid/os/Bundle;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 21
    .line 22
    .line 23
    goto/16 :goto_1

    .line 24
    .line 25
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/client/zzdp;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/client/zzdq;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaym;->zzc(Landroid/os/Parcel;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbia;->zzF(Lcom/google/android/gms/ads/internal/client/zzdq;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 40
    .line 41
    .line 42
    goto/16 :goto_1

    .line 43
    .line 44
    :pswitch_2
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbia;->zzg()Lcom/google/android/gms/ads/internal/client/zzdx;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 49
    .line 50
    .line 51
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzaym;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 52
    .line 53
    .line 54
    goto/16 :goto_1

    .line 55
    .line 56
    :pswitch_3
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbia;->zzH()Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    .line 62
    .line 63
    sget p2, Lcom/google/android/gms/internal/ads/zzaym;->zza:I

    .line 64
    .line 65
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    .line 67
    .line 68
    goto/16 :goto_1

    .line 69
    .line 70
    :pswitch_4
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbia;->zzj()Lcom/google/android/gms/internal/ads/zzbgd;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    .line 76
    .line 77
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzaym;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 78
    .line 79
    .line 80
    goto/16 :goto_1

    .line 81
    .line 82
    :pswitch_5
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbia;->zzA()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    .line 87
    .line 88
    goto/16 :goto_1

    .line 89
    .line 90
    :pswitch_6
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbia;->zzD()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    .line 95
    .line 96
    goto/16 :goto_1

    .line 97
    .line 98
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/client/zzdb;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/client/zzdc;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaym;->zzc(Landroid/os/Parcel;)V

    .line 107
    .line 108
    .line 109
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbia;->zzE(Lcom/google/android/gms/ads/internal/client/zzdc;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    .line 114
    .line 115
    goto/16 :goto_1

    .line 116
    .line 117
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/client/zzdf;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/client/zzdg;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaym;->zzc(Landroid/os/Parcel;)V

    .line 126
    .line 127
    .line 128
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbia;->zzy(Lcom/google/android/gms/ads/internal/client/zzdg;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    .line 133
    .line 134
    goto/16 :goto_1

    .line 135
    .line 136
    :pswitch_9
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbia;->zzI()Z

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    .line 142
    .line 143
    sget p2, Lcom/google/android/gms/internal/ads/zzaym;->zza:I

    .line 144
    .line 145
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    .line 147
    .line 148
    goto/16 :goto_1

    .line 149
    .line 150
    :pswitch_a
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbia;->zzv()Ljava/util/List;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 158
    .line 159
    .line 160
    goto/16 :goto_1

    .line 161
    .line 162
    :pswitch_b
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbia;->zzw()V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    .line 167
    .line 168
    goto/16 :goto_1

    .line 169
    .line 170
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    if-nez p1, :cond_0

    .line 175
    .line 176
    const/4 p1, 0x0

    .line 177
    goto :goto_0

    .line 178
    :cond_0
    const-string p4, "com.google.android.gms.ads.internal.formats.client.IUnconfirmedClickListener"

    .line 179
    .line 180
    invoke-interface {p1, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 181
    .line 182
    .line 183
    move-result-object p4

    .line 184
    instance-of v0, p4, Lcom/google/android/gms/internal/ads/zzbhx;

    .line 185
    .line 186
    if-eqz v0, :cond_1

    .line 187
    .line 188
    move-object p1, p4

    .line 189
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbhx;

    .line 190
    .line 191
    goto :goto_0

    .line 192
    :cond_1
    new-instance p4, Lcom/google/android/gms/internal/ads/zzbhv;

    .line 193
    .line 194
    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/zzbhv;-><init>(Landroid/os/IBinder;)V

    .line 195
    .line 196
    .line 197
    move-object p1, p4

    .line 198
    :goto_0
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaym;->zzc(Landroid/os/Parcel;)V

    .line 199
    .line 200
    .line 201
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbia;->zzG(Lcom/google/android/gms/internal/ads/zzbhx;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    .line 206
    .line 207
    goto/16 :goto_1

    .line 208
    .line 209
    :pswitch_d
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbia;->zzf()Landroid/os/Bundle;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    .line 215
    .line 216
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzaym;->zze(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 217
    .line 218
    .line 219
    goto/16 :goto_1

    .line 220
    .line 221
    :pswitch_e
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbia;->zzl()Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    .line 227
    .line 228
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzaym;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 229
    .line 230
    .line 231
    goto/16 :goto_1

    .line 232
    .line 233
    :pswitch_f
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbia;->zzm()Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    .line 239
    .line 240
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzaym;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 241
    .line 242
    .line 243
    goto/16 :goto_1

    .line 244
    .line 245
    :pswitch_10
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 246
    .line 247
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzaym;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    check-cast p1, Landroid/os/Bundle;

    .line 252
    .line 253
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaym;->zzc(Landroid/os/Parcel;)V

    .line 254
    .line 255
    .line 256
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbia;->zzC(Landroid/os/Bundle;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    .line 261
    .line 262
    goto/16 :goto_1

    .line 263
    .line 264
    :pswitch_11
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 265
    .line 266
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzaym;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    check-cast p1, Landroid/os/Bundle;

    .line 271
    .line 272
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaym;->zzc(Landroid/os/Parcel;)V

    .line 273
    .line 274
    .line 275
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbia;->zzJ(Landroid/os/Bundle;)Z

    .line 276
    .line 277
    .line 278
    move-result p1

    .line 279
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    .line 281
    .line 282
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    .line 284
    .line 285
    goto/16 :goto_1

    .line 286
    .line 287
    :pswitch_12
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 288
    .line 289
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzaym;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    check-cast p1, Landroid/os/Bundle;

    .line 294
    .line 295
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaym;->zzc(Landroid/os/Parcel;)V

    .line 296
    .line 297
    .line 298
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbia;->zzz(Landroid/os/Bundle;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    .line 303
    .line 304
    goto/16 :goto_1

    .line 305
    .line 306
    :pswitch_13
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbia;->zzi()Lcom/google/android/gms/internal/ads/zzbfz;

    .line 307
    .line 308
    .line 309
    move-result-object p1

    .line 310
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    .line 312
    .line 313
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzaym;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 314
    .line 315
    .line 316
    goto/16 :goto_1

    .line 317
    .line 318
    :pswitch_14
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbia;->zzx()V

    .line 319
    .line 320
    .line 321
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    .line 323
    .line 324
    goto/16 :goto_1

    .line 325
    .line 326
    :pswitch_15
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbia;->zzr()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object p1

    .line 330
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    .line 332
    .line 333
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    goto/16 :goto_1

    .line 337
    .line 338
    :pswitch_16
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbia;->zzh()Lcom/google/android/gms/ads/internal/client/zzea;

    .line 339
    .line 340
    .line 341
    move-result-object p1

    .line 342
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    .line 344
    .line 345
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzaym;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 346
    .line 347
    .line 348
    goto :goto_1

    .line 349
    :pswitch_17
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbia;->zzs()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object p1

    .line 353
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    .line 355
    .line 356
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    goto :goto_1

    .line 360
    :pswitch_18
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbia;->zzt()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object p1

    .line 364
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    .line 366
    .line 367
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    goto :goto_1

    .line 371
    :pswitch_19
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbia;->zze()D

    .line 372
    .line 373
    .line 374
    move-result-wide p1

    .line 375
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    .line 377
    .line 378
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 379
    .line 380
    .line 381
    goto :goto_1

    .line 382
    :pswitch_1a
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbia;->zzn()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object p1

    .line 386
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    .line 388
    .line 389
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    goto :goto_1

    .line 393
    :pswitch_1b
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbia;->zzp()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object p1

    .line 397
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    .line 399
    .line 400
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    goto :goto_1

    .line 404
    :pswitch_1c
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbia;->zzk()Lcom/google/android/gms/internal/ads/zzbgg;

    .line 405
    .line 406
    .line 407
    move-result-object p1

    .line 408
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    .line 410
    .line 411
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzaym;->zzf(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 412
    .line 413
    .line 414
    goto :goto_1

    .line 415
    :pswitch_1d
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbia;->zzo()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object p1

    .line 419
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    .line 421
    .line 422
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    goto :goto_1

    .line 426
    :pswitch_1e
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbia;->zzu()Ljava/util/List;

    .line 427
    .line 428
    .line 429
    move-result-object p1

    .line 430
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 431
    .line 432
    .line 433
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 434
    .line 435
    .line 436
    goto :goto_1

    .line 437
    :pswitch_1f
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbia;->zzq()Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object p1

    .line 441
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    .line 443
    .line 444
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    :goto_1
    const/4 p1, 0x1

    .line 448
    return p1

    .line 449
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
