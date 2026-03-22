.class public final Lcom/google/android/gms/internal/consent_sdk/zzcl;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field public zza:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public zzb:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public zzc:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public zzd:Ljava/util/List;

.field public zze:Ljava/util/List;

.field public zzf:I

.field public zzg:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzcl;->zzf:I

    .line 6
    .line 7
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 8
    .line 9
    iput-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzcl;->zzd:Ljava/util/List;

    .line 10
    .line 11
    iput-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzcl;->zze:Ljava/util/List;

    .line 12
    .line 13
    iput v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzcl;->zzg:I

    .line 14
    .line 15
    return-void
.end method

.method public static zza(Landroid/util/JsonReader;)Lcom/google/android/gms/internal/consent_sdk/zzcl;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzcl;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/consent_sdk/zzcl;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_18

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x6

    .line 24
    const/4 v4, 0x5

    .line 25
    const/4 v5, 0x4

    .line 26
    const/4 v6, -0x1

    .line 27
    const/4 v7, 0x0

    .line 28
    const/4 v8, 0x3

    .line 29
    const/4 v9, 0x2

    .line 30
    const/4 v10, 0x1

    .line 31
    sparse-switch v2, :sswitch_data_0

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :sswitch_0
    const-string v2, "consent_form_payload"

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    move v1, v10

    .line 44
    goto :goto_2

    .line 45
    :sswitch_1
    const-string v2, "request_info_keys"

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_0

    .line 52
    .line 53
    move v1, v5

    .line 54
    goto :goto_2

    .line 55
    :sswitch_2
    const-string v2, "actions"

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_0

    .line 62
    .line 63
    move v1, v4

    .line 64
    goto :goto_2

    .line 65
    :sswitch_3
    const-string v2, "privacy_options_required"

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_0

    .line 72
    .line 73
    move v1, v3

    .line 74
    goto :goto_2

    .line 75
    :sswitch_4
    const-string v2, "consent_form_base_url"

    .line 76
    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_0

    .line 82
    .line 83
    move v1, v9

    .line 84
    goto :goto_2

    .line 85
    :sswitch_5
    const-string v2, "error_message"

    .line 86
    .line 87
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_0

    .line 92
    .line 93
    move v1, v8

    .line 94
    goto :goto_2

    .line 95
    :sswitch_6
    const-string v2, "consent_signal"

    .line 96
    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_0

    .line 102
    .line 103
    move v1, v7

    .line 104
    goto :goto_2

    .line 105
    :cond_0
    :goto_1
    move v1, v6

    .line 106
    :goto_2
    packed-switch v1, :pswitch_data_0

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :pswitch_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    const v3, -0x70970855

    .line 122
    .line 123
    .line 124
    if-eq v2, v3, :cond_3

    .line 125
    .line 126
    const v3, 0x17371b9f

    .line 127
    .line 128
    .line 129
    if-eq v2, v3, :cond_2

    .line 130
    .line 131
    const v3, 0x19d1382a

    .line 132
    .line 133
    .line 134
    if-eq v2, v3, :cond_1

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_1
    const-string v2, "UNKNOWN"

    .line 138
    .line 139
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    if-eqz v2, :cond_4

    .line 144
    .line 145
    move v6, v7

    .line 146
    goto :goto_3

    .line 147
    :cond_2
    const-string v2, "REQUIRED"

    .line 148
    .line 149
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    if-eqz v2, :cond_4

    .line 154
    .line 155
    move v6, v10

    .line 156
    goto :goto_3

    .line 157
    :cond_3
    const-string v2, "NOT_REQUIRED"

    .line 158
    .line 159
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    if-eqz v2, :cond_4

    .line 164
    .line 165
    move v6, v9

    .line 166
    :cond_4
    :goto_3
    if-eqz v6, :cond_7

    .line 167
    .line 168
    if-eq v6, v10, :cond_6

    .line 169
    .line 170
    if-ne v6, v9, :cond_5

    .line 171
    .line 172
    goto :goto_4

    .line 173
    :cond_5
    new-instance p0, Ljava/io/IOException;

    .line 174
    .line 175
    const-string v0, "Failed to parse contentads.contributor.direct.serving.appswitchboard.proto.ApplicationGdprResponse.PrivacyOptionsRequirementStatusfrom: "

    .line 176
    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    throw p0

    .line 185
    :cond_6
    move v8, v9

    .line 186
    goto :goto_4

    .line 187
    :cond_7
    move v8, v10

    .line 188
    :goto_4
    iput v8, v0, Lcom/google/android/gms/internal/consent_sdk/zzcl;->zzg:I

    .line 189
    .line 190
    goto/16 :goto_0

    .line 191
    .line 192
    :pswitch_1
    new-instance v1, Ljava/util/ArrayList;

    .line 193
    .line 194
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .line 196
    .line 197
    iput-object v1, v0, Lcom/google/android/gms/internal/consent_sdk/zzcl;->zze:Ljava/util/List;

    .line 198
    .line 199
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 200
    .line 201
    .line 202
    :goto_5
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    if-eqz v1, :cond_15

    .line 207
    .line 208
    new-instance v1, Lcom/google/android/gms/internal/consent_sdk/zzck;

    .line 209
    .line 210
    invoke-direct {v1}, Lcom/google/android/gms/internal/consent_sdk/zzck;-><init>()V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 214
    .line 215
    .line 216
    :goto_6
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    if-eqz v2, :cond_14

    .line 221
    .line 222
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 227
    .line 228
    .line 229
    move-result v3

    .line 230
    const v4, -0x7d8028f6

    .line 231
    .line 232
    .line 233
    if-eq v3, v4, :cond_9

    .line 234
    .line 235
    const v4, 0x5e663ba3

    .line 236
    .line 237
    .line 238
    if-eq v3, v4, :cond_8

    .line 239
    .line 240
    goto :goto_7

    .line 241
    :cond_8
    const-string v3, "action_type"

    .line 242
    .line 243
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v2

    .line 247
    if-eqz v2, :cond_a

    .line 248
    .line 249
    move v2, v7

    .line 250
    goto :goto_8

    .line 251
    :cond_9
    const-string v3, "args_json"

    .line 252
    .line 253
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v2

    .line 257
    if-eqz v2, :cond_a

    .line 258
    .line 259
    move v2, v10

    .line 260
    goto :goto_8

    .line 261
    :cond_a
    :goto_7
    move v2, v6

    .line 262
    :goto_8
    if-eqz v2, :cond_c

    .line 263
    .line 264
    if-eq v2, v10, :cond_b

    .line 265
    .line 266
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    .line 267
    .line 268
    .line 269
    goto :goto_6

    .line 270
    :cond_b
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v2

    .line 274
    iput-object v2, v1, Lcom/google/android/gms/internal/consent_sdk/zzck;->zza:Ljava/lang/String;

    .line 275
    .line 276
    goto :goto_6

    .line 277
    :cond_c
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 282
    .line 283
    .line 284
    move-result v3

    .line 285
    const v4, 0x3d3be2d

    .line 286
    .line 287
    .line 288
    if-eq v3, v4, :cond_f

    .line 289
    .line 290
    const v4, 0x4f05fbf

    .line 291
    .line 292
    .line 293
    if-eq v3, v4, :cond_e

    .line 294
    .line 295
    const v4, 0x6ea5670e

    .line 296
    .line 297
    .line 298
    if-eq v3, v4, :cond_d

    .line 299
    .line 300
    goto :goto_9

    .line 301
    :cond_d
    const-string v3, "UNKNOWN_ACTION_TYPE"

    .line 302
    .line 303
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result v3

    .line 307
    if-eqz v3, :cond_10

    .line 308
    .line 309
    move v3, v7

    .line 310
    goto :goto_a

    .line 311
    :cond_e
    const-string v3, "WRITE"

    .line 312
    .line 313
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    move-result v3

    .line 317
    if-eqz v3, :cond_10

    .line 318
    .line 319
    move v3, v10

    .line 320
    goto :goto_a

    .line 321
    :cond_f
    const-string v3, "CLEAR"

    .line 322
    .line 323
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    move-result v3

    .line 327
    if-eqz v3, :cond_10

    .line 328
    .line 329
    move v3, v9

    .line 330
    goto :goto_a

    .line 331
    :cond_10
    :goto_9
    move v3, v6

    .line 332
    :goto_a
    if-eqz v3, :cond_13

    .line 333
    .line 334
    if-eq v3, v10, :cond_12

    .line 335
    .line 336
    if-ne v3, v9, :cond_11

    .line 337
    .line 338
    move v2, v8

    .line 339
    goto :goto_b

    .line 340
    :cond_11
    new-instance p0, Ljava/io/IOException;

    .line 341
    .line 342
    const-string v0, "Failed to parse contentads.contributor.direct.serving.appswitchboard.proto.ApplicationGdprResponse.Action.ActionTypefrom: "

    .line 343
    .line 344
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    throw p0

    .line 352
    :cond_12
    move v2, v9

    .line 353
    goto :goto_b

    .line 354
    :cond_13
    move v2, v10

    .line 355
    :goto_b
    iput v2, v1, Lcom/google/android/gms/internal/consent_sdk/zzck;->zzb:I

    .line 356
    .line 357
    goto/16 :goto_6

    .line 358
    .line 359
    :cond_14
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 360
    .line 361
    .line 362
    iget-object v2, v0, Lcom/google/android/gms/internal/consent_sdk/zzcl;->zze:Ljava/util/List;

    .line 363
    .line 364
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    .line 366
    .line 367
    goto/16 :goto_5

    .line 368
    .line 369
    :cond_15
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    .line 370
    .line 371
    .line 372
    goto/16 :goto_0

    .line 373
    .line 374
    :pswitch_2
    new-instance v1, Ljava/util/ArrayList;

    .line 375
    .line 376
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 377
    .line 378
    .line 379
    iput-object v1, v0, Lcom/google/android/gms/internal/consent_sdk/zzcl;->zzd:Ljava/util/List;

    .line 380
    .line 381
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 382
    .line 383
    .line 384
    :goto_c
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    .line 385
    .line 386
    .line 387
    move-result v1

    .line 388
    if-eqz v1, :cond_16

    .line 389
    .line 390
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v1

    .line 394
    iget-object v2, v0, Lcom/google/android/gms/internal/consent_sdk/zzcl;->zzd:Ljava/util/List;

    .line 395
    .line 396
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    .line 398
    .line 399
    goto :goto_c

    .line 400
    :cond_16
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    .line 401
    .line 402
    .line 403
    goto/16 :goto_0

    .line 404
    .line 405
    :pswitch_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v1

    .line 409
    iput-object v1, v0, Lcom/google/android/gms/internal/consent_sdk/zzcl;->zzc:Ljava/lang/String;

    .line 410
    .line 411
    goto/16 :goto_0

    .line 412
    .line 413
    :pswitch_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v1

    .line 417
    iput-object v1, v0, Lcom/google/android/gms/internal/consent_sdk/zzcl;->zzb:Ljava/lang/String;

    .line 418
    .line 419
    goto/16 :goto_0

    .line 420
    .line 421
    :pswitch_5
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v1

    .line 425
    iput-object v1, v0, Lcom/google/android/gms/internal/consent_sdk/zzcl;->zza:Ljava/lang/String;

    .line 426
    .line 427
    goto/16 :goto_0

    .line 428
    .line 429
    :pswitch_6
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v1

    .line 433
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 434
    .line 435
    .line 436
    move-result v2

    .line 437
    const/4 v11, 0x7

    .line 438
    sparse-switch v2, :sswitch_data_1

    .line 439
    .line 440
    .line 441
    goto :goto_d

    .line 442
    :sswitch_7
    const-string v2, "CONSENT_SIGNAL_NOT_REQUIRED"

    .line 443
    .line 444
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 445
    .line 446
    .line 447
    move-result v2

    .line 448
    if-eqz v2, :cond_17

    .line 449
    .line 450
    move v6, v4

    .line 451
    goto :goto_d

    .line 452
    :sswitch_8
    const-string v2, "CONSENT_SIGNAL_PERSONALIZED_ADS"

    .line 453
    .line 454
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 455
    .line 456
    .line 457
    move-result v2

    .line 458
    if-eqz v2, :cond_17

    .line 459
    .line 460
    move v6, v10

    .line 461
    goto :goto_d

    .line 462
    :sswitch_9
    const-string v2, "CONSENT_SIGNAL_SUFFICIENT"

    .line 463
    .line 464
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 465
    .line 466
    .line 467
    move-result v2

    .line 468
    if-eqz v2, :cond_17

    .line 469
    .line 470
    move v6, v8

    .line 471
    goto :goto_d

    .line 472
    :sswitch_a
    const-string v2, "CONSENT_SIGNAL_PUBLISHER_MISCONFIGURATION"

    .line 473
    .line 474
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 475
    .line 476
    .line 477
    move-result v2

    .line 478
    if-eqz v2, :cond_17

    .line 479
    .line 480
    move v6, v11

    .line 481
    goto :goto_d

    .line 482
    :sswitch_b
    const-string v2, "CONSENT_SIGNAL_NON_PERSONALIZED_ADS"

    .line 483
    .line 484
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 485
    .line 486
    .line 487
    move-result v2

    .line 488
    if-eqz v2, :cond_17

    .line 489
    .line 490
    move v6, v9

    .line 491
    goto :goto_d

    .line 492
    :sswitch_c
    const-string v2, "CONSENT_SIGNAL_UNKNOWN"

    .line 493
    .line 494
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 495
    .line 496
    .line 497
    move-result v2

    .line 498
    if-eqz v2, :cond_17

    .line 499
    .line 500
    move v6, v7

    .line 501
    goto :goto_d

    .line 502
    :sswitch_d
    const-string v2, "CONSENT_SIGNAL_ERROR"

    .line 503
    .line 504
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 505
    .line 506
    .line 507
    move-result v2

    .line 508
    if-eqz v2, :cond_17

    .line 509
    .line 510
    move v6, v3

    .line 511
    goto :goto_d

    .line 512
    :sswitch_e
    const-string v2, "CONSENT_SIGNAL_COLLECT_CONSENT"

    .line 513
    .line 514
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 515
    .line 516
    .line 517
    move-result v2

    .line 518
    if-eqz v2, :cond_17

    .line 519
    .line 520
    move v6, v5

    .line 521
    :cond_17
    :goto_d
    packed-switch v6, :pswitch_data_1

    .line 522
    .line 523
    .line 524
    new-instance p0, Ljava/io/IOException;

    .line 525
    .line 526
    const-string v0, "Failed to parse contentads.contributor.direct.serving.appswitchboard.proto.ApplicationGdprResponse.ConsentSignalfrom: "

    .line 527
    .line 528
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v0

    .line 532
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 533
    .line 534
    .line 535
    throw p0

    .line 536
    :pswitch_7
    const/16 v3, 0x8

    .line 537
    .line 538
    goto :goto_e

    .line 539
    :pswitch_8
    move v3, v11

    .line 540
    goto :goto_e

    .line 541
    :pswitch_9
    move v3, v4

    .line 542
    goto :goto_e

    .line 543
    :pswitch_a
    move v3, v5

    .line 544
    goto :goto_e

    .line 545
    :pswitch_b
    move v3, v8

    .line 546
    goto :goto_e

    .line 547
    :pswitch_c
    move v3, v9

    .line 548
    goto :goto_e

    .line 549
    :pswitch_d
    move v3, v10

    .line 550
    :goto_e
    :pswitch_e
    iput v3, v0, Lcom/google/android/gms/internal/consent_sdk/zzcl;->zzf:I

    .line 551
    .line 552
    goto/16 :goto_0

    .line 553
    .line 554
    :cond_18
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 555
    .line 556
    .line 557
    return-object v0

    .line 558
    nop

    .line 559
    :sswitch_data_0
    .sparse-switch
        -0x774ac593 -> :sswitch_6
        -0x738f0f30 -> :sswitch_5
        -0x6e5c3749 -> :sswitch_4
        -0x4ef2d809 -> :sswitch_3
        -0x453fb703 -> :sswitch_2
        -0x3ad17acb -> :sswitch_1
        -0x2f244ae8 -> :sswitch_0
    .end sparse-switch

    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    :sswitch_data_1
    .sparse-switch
        -0x7ab5a7ed -> :sswitch_e
        -0x755d1a4a -> :sswitch_d
        -0x4b527788 -> :sswitch_c
        -0x38e1da9b -> :sswitch_b
        -0x36c1e70c -> :sswitch_a
        0x19984e10 -> :sswitch_9
        0x1be36b13 -> :sswitch_8
        0x66d8a81d -> :sswitch_7
    .end sparse-switch

    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_e
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method
