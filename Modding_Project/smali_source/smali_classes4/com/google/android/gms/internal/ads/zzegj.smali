.class public abstract Lcom/google/android/gms/internal/ads/zzegj;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzedf;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static zzd(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    new-instance p0, Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfcg;Lcom/google/android/gms/internal/ads/zzfbu;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 36

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzfbu;->zzv:Lorg/json/JSONObject;

    .line 6
    .line 7
    const-string v3, "pubid"

    .line 8
    .line 9
    const-string v4, ""

    .line 10
    .line 11
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzfcg;->zza:Lcom/google/android/gms/internal/ads/zzfcd;

    .line 16
    .line 17
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzfcd;->zza:Lcom/google/android/gms/internal/ads/zzfcp;

    .line 18
    .line 19
    new-instance v5, Lcom/google/android/gms/internal/ads/zzfcn;

    .line 20
    .line 21
    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzfcn;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzfcn;->zzq(Lcom/google/android/gms/internal/ads/zzfcp;)Lcom/google/android/gms/internal/ads/zzfcn;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzfcn;->zzt(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfcn;

    .line 28
    .line 29
    .line 30
    iget-object v3, v4, Lcom/google/android/gms/internal/ads/zzfcp;->zzd:Lcom/google/android/gms/ads/internal/client/zzm;

    .line 31
    .line 32
    iget-object v6, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzm:Landroid/os/Bundle;

    .line 33
    .line 34
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzegj;->zzd(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    const-string v7, "com.google.ads.mediation.admob.AdMobAdapter"

    .line 39
    .line 40
    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzegj;->zzd(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 45
    .line 46
    .line 47
    move-result-object v11

    .line 48
    const-string v8, "gw"

    .line 49
    .line 50
    const/4 v9, 0x1

    .line 51
    invoke-virtual {v11, v8, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 52
    .line 53
    .line 54
    const-string v8, "mad_hac"

    .line 55
    .line 56
    const/4 v10, 0x0

    .line 57
    invoke-virtual {v2, v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v12

    .line 61
    if-eqz v12, :cond_0

    .line 62
    .line 63
    invoke-virtual {v11, v8, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :cond_0
    const-string v8, "adJson"

    .line 67
    .line 68
    invoke-virtual {v2, v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    if-eqz v2, :cond_1

    .line 73
    .line 74
    const-string v8, "_ad"

    .line 75
    .line 76
    invoke-virtual {v11, v8, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :cond_1
    const-string v2, "_noRefresh"

    .line 80
    .line 81
    invoke-virtual {v11, v2, v9}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 82
    .line 83
    .line 84
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzfbu;->zzD:Lorg/json/JSONObject;

    .line 85
    .line 86
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object v8

    .line 90
    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v12

    .line 94
    if-eqz v12, :cond_3

    .line 95
    .line 96
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v12

    .line 100
    check-cast v12, Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {v2, v12, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v13

    .line 106
    if-eqz v12, :cond_2

    .line 107
    .line 108
    invoke-virtual {v11, v12, v13}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_3
    invoke-virtual {v6, v7, v11}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 113
    .line 114
    .line 115
    iget v8, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zza:I

    .line 116
    .line 117
    move v2, v9

    .line 118
    iget-wide v9, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzb:J

    .line 119
    .line 120
    iget v12, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzd:I

    .line 121
    .line 122
    iget-object v13, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zze:Ljava/util/List;

    .line 123
    .line 124
    iget-boolean v14, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzf:Z

    .line 125
    .line 126
    iget v15, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzg:I

    .line 127
    .line 128
    iget-boolean v7, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzh:Z

    .line 129
    .line 130
    iget-object v2, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzi:Ljava/lang/String;

    .line 131
    .line 132
    move-object/from16 v17, v2

    .line 133
    .line 134
    iget-object v2, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzj:Lcom/google/android/gms/ads/internal/client/zzft;

    .line 135
    .line 136
    move-object/from16 v18, v2

    .line 137
    .line 138
    iget-object v2, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzk:Landroid/location/Location;

    .line 139
    .line 140
    move-object/from16 v19, v2

    .line 141
    .line 142
    iget-object v2, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzl:Ljava/lang/String;

    .line 143
    .line 144
    move-object/from16 v20, v2

    .line 145
    .line 146
    iget-object v2, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzn:Landroid/os/Bundle;

    .line 147
    .line 148
    move-object/from16 v22, v2

    .line 149
    .line 150
    iget-object v2, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzo:Ljava/util/List;

    .line 151
    .line 152
    move-object/from16 v23, v2

    .line 153
    .line 154
    iget-object v2, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzp:Ljava/lang/String;

    .line 155
    .line 156
    move-object/from16 v24, v2

    .line 157
    .line 158
    iget-object v2, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzq:Ljava/lang/String;

    .line 159
    .line 160
    move-object/from16 v25, v2

    .line 161
    .line 162
    iget-boolean v2, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzr:Z

    .line 163
    .line 164
    move/from16 v26, v2

    .line 165
    .line 166
    iget-object v2, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzs:Lcom/google/android/gms/ads/internal/client/zzc;

    .line 167
    .line 168
    move-object/from16 v27, v2

    .line 169
    .line 170
    iget v2, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzt:I

    .line 171
    .line 172
    move/from16 v28, v2

    .line 173
    .line 174
    iget-object v2, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzu:Ljava/lang/String;

    .line 175
    .line 176
    move-object/from16 v29, v2

    .line 177
    .line 178
    iget-object v2, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzv:Ljava/util/List;

    .line 179
    .line 180
    move-object/from16 v30, v2

    .line 181
    .line 182
    iget v2, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzw:I

    .line 183
    .line 184
    move/from16 v31, v2

    .line 185
    .line 186
    iget-object v2, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzx:Ljava/lang/String;

    .line 187
    .line 188
    move-object/from16 v32, v2

    .line 189
    .line 190
    iget v2, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzy:I

    .line 191
    .line 192
    move/from16 v33, v2

    .line 193
    .line 194
    iget-wide v2, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzz:J

    .line 195
    .line 196
    move/from16 v16, v7

    .line 197
    .line 198
    const/16 v21, 0x1

    .line 199
    .line 200
    new-instance v7, Lcom/google/android/gms/ads/internal/client/zzm;

    .line 201
    .line 202
    move-wide/from16 v34, v2

    .line 203
    .line 204
    move/from16 v2, v21

    .line 205
    .line 206
    move-object/from16 v21, v6

    .line 207
    .line 208
    invoke-direct/range {v7 .. v35}, Lcom/google/android/gms/ads/internal/client/zzm;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/ads/internal/client/zzft;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/ads/internal/client/zzc;ILjava/lang/String;Ljava/util/List;ILjava/lang/String;IJ)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/zzfcn;->zzH(Lcom/google/android/gms/ads/internal/client/zzm;)Lcom/google/android/gms/internal/ads/zzfcn;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzfcn;->zzJ()Lcom/google/android/gms/internal/ads/zzfcp;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    new-instance v5, Landroid/os/Bundle;

    .line 219
    .line 220
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 221
    .line 222
    .line 223
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzfcg;->zzb:Lcom/google/android/gms/internal/ads/zzfcf;

    .line 224
    .line 225
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzfcf;->zzb:Lcom/google/android/gms/internal/ads/zzfbx;

    .line 226
    .line 227
    new-instance v7, Landroid/os/Bundle;

    .line 228
    .line 229
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 230
    .line 231
    .line 232
    new-instance v8, Ljava/util/ArrayList;

    .line 233
    .line 234
    iget-object v9, v6, Lcom/google/android/gms/internal/ads/zzfbx;->zza:Ljava/util/List;

    .line 235
    .line 236
    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 237
    .line 238
    .line 239
    const-string v9, "nofill_urls"

    .line 240
    .line 241
    invoke-virtual {v7, v9, v8}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 242
    .line 243
    .line 244
    const-string v8, "refresh_interval"

    .line 245
    .line 246
    iget v9, v6, Lcom/google/android/gms/internal/ads/zzfbx;->zzc:I

    .line 247
    .line 248
    invoke-virtual {v7, v8, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 249
    .line 250
    .line 251
    const-string v8, "gws_query_id"

    .line 252
    .line 253
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzfbx;->zzb:Ljava/lang/String;

    .line 254
    .line 255
    invoke-virtual {v7, v8, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    const-string v6, "parent_common_config"

    .line 259
    .line 260
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 261
    .line 262
    .line 263
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzfcp;->zzf:Ljava/lang/String;

    .line 264
    .line 265
    new-instance v6, Landroid/os/Bundle;

    .line 266
    .line 267
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 268
    .line 269
    .line 270
    const-string v7, "initial_ad_unit_id"

    .line 271
    .line 272
    invoke-virtual {v6, v7, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzfbu;->zzw:Ljava/lang/String;

    .line 276
    .line 277
    const-string v7, "allocation_id"

    .line 278
    .line 279
    invoke-virtual {v6, v7, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzfbu;->zzF:Ljava/lang/String;

    .line 283
    .line 284
    const-string v7, "ad_source_name"

    .line 285
    .line 286
    invoke-virtual {v6, v7, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    new-instance v4, Ljava/util/ArrayList;

    .line 290
    .line 291
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzfbu;->zzc:Ljava/util/List;

    .line 292
    .line 293
    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 294
    .line 295
    .line 296
    const-string v7, "click_urls"

    .line 297
    .line 298
    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 299
    .line 300
    .line 301
    new-instance v4, Ljava/util/ArrayList;

    .line 302
    .line 303
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzfbu;->zzd:Ljava/util/List;

    .line 304
    .line 305
    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 306
    .line 307
    .line 308
    const-string v7, "imp_urls"

    .line 309
    .line 310
    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 311
    .line 312
    .line 313
    new-instance v4, Ljava/util/ArrayList;

    .line 314
    .line 315
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzfbu;->zzp:Ljava/util/List;

    .line 316
    .line 317
    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 318
    .line 319
    .line 320
    const-string v7, "manual_tracking_urls"

    .line 321
    .line 322
    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 323
    .line 324
    .line 325
    new-instance v4, Ljava/util/ArrayList;

    .line 326
    .line 327
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzfbu;->zzm:Ljava/util/List;

    .line 328
    .line 329
    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 330
    .line 331
    .line 332
    const-string v7, "fill_urls"

    .line 333
    .line 334
    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 335
    .line 336
    .line 337
    new-instance v4, Ljava/util/ArrayList;

    .line 338
    .line 339
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzfbu;->zzg:Ljava/util/List;

    .line 340
    .line 341
    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 342
    .line 343
    .line 344
    const-string v7, "video_start_urls"

    .line 345
    .line 346
    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 347
    .line 348
    .line 349
    new-instance v4, Ljava/util/ArrayList;

    .line 350
    .line 351
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzfbu;->zzh:Ljava/util/List;

    .line 352
    .line 353
    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 354
    .line 355
    .line 356
    const-string v7, "video_reward_urls"

    .line 357
    .line 358
    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 359
    .line 360
    .line 361
    new-instance v4, Ljava/util/ArrayList;

    .line 362
    .line 363
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzfbu;->zzi:Ljava/util/List;

    .line 364
    .line 365
    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 366
    .line 367
    .line 368
    const-string v7, "video_complete_urls"

    .line 369
    .line 370
    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 371
    .line 372
    .line 373
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzfbu;->zzj:Ljava/lang/String;

    .line 374
    .line 375
    const-string v7, "transaction_id"

    .line 376
    .line 377
    invoke-virtual {v6, v7, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzfbu;->zzk:Ljava/lang/String;

    .line 381
    .line 382
    const-string v7, "valid_from_timestamp"

    .line 383
    .line 384
    invoke-virtual {v6, v7, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzfbu;->zzP:Z

    .line 388
    .line 389
    const-string v7, "is_closable_area_disabled"

    .line 390
    .line 391
    invoke-virtual {v6, v7, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 392
    .line 393
    .line 394
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzfbu;->zzao:Ljava/lang/String;

    .line 395
    .line 396
    const-string v7, "recursive_server_response_data"

    .line 397
    .line 398
    invoke-virtual {v6, v7, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzfbu;->zzW:Z

    .line 402
    .line 403
    const-string v7, "is_analytics_logging_enabled"

    .line 404
    .line 405
    invoke-virtual {v6, v7, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 406
    .line 407
    .line 408
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzfbu;->zzl:Lcom/google/android/gms/internal/ads/zzbwj;

    .line 409
    .line 410
    if-eqz v4, :cond_4

    .line 411
    .line 412
    new-instance v7, Landroid/os/Bundle;

    .line 413
    .line 414
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 415
    .line 416
    .line 417
    const-string v8, "rb_amount"

    .line 418
    .line 419
    iget v9, v4, Lcom/google/android/gms/internal/ads/zzbwj;->zzb:I

    .line 420
    .line 421
    invoke-virtual {v7, v8, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 422
    .line 423
    .line 424
    const-string v8, "rb_type"

    .line 425
    .line 426
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzbwj;->zza:Ljava/lang/String;

    .line 427
    .line 428
    invoke-virtual {v7, v8, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    new-array v2, v2, [Landroid/os/Bundle;

    .line 432
    .line 433
    const/4 v4, 0x0

    .line 434
    aput-object v7, v2, v4

    .line 435
    .line 436
    const-string v4, "rewards"

    .line 437
    .line 438
    invoke-virtual {v6, v4, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 439
    .line 440
    .line 441
    :cond_4
    const-string v2, "parent_ad_config"

    .line 442
    .line 443
    invoke-virtual {v5, v2, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 444
    .line 445
    .line 446
    move-object/from16 v2, p0

    .line 447
    .line 448
    invoke-virtual {v2, v3, v5, v1, v0}, Lcom/google/android/gms/internal/ads/zzegj;->zzc(Lcom/google/android/gms/internal/ads/zzfcp;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzfbu;Lcom/google/android/gms/internal/ads/zzfcg;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 449
    .line 450
    .line 451
    move-result-object v0

    .line 452
    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfcg;Lcom/google/android/gms/internal/ads/zzfbu;)Z
    .locals 1

    .line 1
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzfbu;->zzv:Lorg/json/JSONObject;

    .line 2
    .line 3
    const-string p2, "pubid"

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    return p1

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    return p1
.end method

.method public abstract zzc(Lcom/google/android/gms/internal/ads/zzfcp;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzfbu;Lcom/google/android/gms/internal/ads/zzfcg;)Lcom/google/common/util/concurrent/ListenableFuture;
.end method
