.class public final Lokhttp3/CacheControl$Companion;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/CacheControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0007\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J%\u0010\r\u001a\u00020\u000b*\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0011\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0010\u00a8\u0006\u0012"
    }
    d2 = {
        "Lokhttp3/CacheControl$Companion;",
        "",
        "<init>",
        "()V",
        "Lokhttp3/Headers;",
        "headers",
        "Lokhttp3/CacheControl;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lokhttp3/Headers;)Lokhttp3/CacheControl;",
        "",
        "characters",
        "",
        "startIndex",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Ljava/lang/String;Ljava/lang/String;I)I",
        "FORCE_CACHE",
        "Lokhttp3/CacheControl;",
        "FORCE_NETWORK",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lokhttp3/CacheControl$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Headers;)Lokhttp3/CacheControl;
    .locals 32
    .param p1    # Lokhttp3/Headers;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual {v1}, Lokhttp3/Headers;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v5, 0x1

    .line 10
    move v8, v5

    .line 11
    const/4 v7, 0x0

    .line 12
    const/4 v9, 0x0

    .line 13
    const/4 v10, 0x0

    .line 14
    const/4 v11, 0x0

    .line 15
    const/4 v12, -0x1

    .line 16
    const/4 v13, -0x1

    .line 17
    const/4 v14, 0x0

    .line 18
    const/4 v15, 0x0

    .line 19
    const/16 v16, 0x0

    .line 20
    .line 21
    const/16 v17, -0x1

    .line 22
    .line 23
    const/16 v18, -0x1

    .line 24
    .line 25
    const/16 v19, 0x0

    .line 26
    .line 27
    const/16 v20, 0x0

    .line 28
    .line 29
    const/16 v21, 0x0

    .line 30
    .line 31
    :goto_0
    if-ge v7, v2, :cond_13

    .line 32
    .line 33
    add-int/lit8 v22, v7, 0x1

    .line 34
    .line 35
    invoke-virtual {v1, v7}, Lokhttp3/Headers;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v1, v7}, Lokhttp3/Headers;->Wwwwwwwwwwwwwwwwwwwwwwwwww(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    const-string v6, "Cache-Control"

    .line 44
    .line 45
    invoke-static {v3, v6, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    if-eqz v6, :cond_1

    .line 50
    .line 51
    if-eqz v9, :cond_0

    .line 52
    .line 53
    :goto_1
    const/4 v8, 0x0

    .line 54
    goto :goto_2

    .line 55
    :cond_0
    move-object v9, v7

    .line 56
    goto :goto_2

    .line 57
    :cond_1
    const-string v6, "Pragma"

    .line 58
    .line 59
    invoke-static {v3, v6, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_12

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :goto_2
    const/4 v3, 0x0

    .line 67
    :goto_3
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    if-ge v3, v6, :cond_12

    .line 72
    .line 73
    const-string v6, "=,;"

    .line 74
    .line 75
    invoke-virtual {v0, v7, v6, v3}, Lokhttp3/CacheControl$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;I)I

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    invoke-virtual {v7, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-static {v3}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    if-eq v6, v4, :cond_5

    .line 96
    .line 97
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    move/from16 v30, v5

    .line 102
    .line 103
    const/16 v5, 0x2c

    .line 104
    .line 105
    if-eq v4, v5, :cond_2

    .line 106
    .line 107
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    const/16 v5, 0x3b

    .line 112
    .line 113
    if-ne v4, v5, :cond_3

    .line 114
    .line 115
    :cond_2
    :goto_4
    move-object v5, v7

    .line 116
    goto :goto_5

    .line 117
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 118
    .line 119
    invoke-static {v7, v6}, Lokhttp3/internal/Util;->Wwwww(Ljava/lang/String;I)I

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    if-ge v4, v5, :cond_4

    .line 128
    .line 129
    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    .line 130
    .line 131
    .line 132
    move-result v5

    .line 133
    const/16 v6, 0x22

    .line 134
    .line 135
    if-ne v5, v6, :cond_4

    .line 136
    .line 137
    add-int/lit8 v26, v4, 0x1

    .line 138
    .line 139
    const/16 v28, 0x4

    .line 140
    .line 141
    const/16 v29, 0x0

    .line 142
    .line 143
    const/16 v25, 0x22

    .line 144
    .line 145
    const/16 v27, 0x0

    .line 146
    .line 147
    move-object/from16 v24, v7

    .line 148
    .line 149
    invoke-static/range {v24 .. v29}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    move-object/from16 v5, v24

    .line 154
    .line 155
    move/from16 v6, v26

    .line 156
    .line 157
    invoke-virtual {v5, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    add-int/lit8 v4, v4, 0x1

    .line 162
    .line 163
    move-object/from16 v31, v6

    .line 164
    .line 165
    move v6, v4

    .line 166
    move-object/from16 v4, v31

    .line 167
    .line 168
    goto :goto_6

    .line 169
    :cond_4
    move-object v5, v7

    .line 170
    const-string v6, ",;"

    .line 171
    .line 172
    invoke-virtual {v0, v5, v6, v4}, Lokhttp3/CacheControl$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;I)I

    .line 173
    .line 174
    .line 175
    move-result v6

    .line 176
    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    invoke-static {v4}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    goto :goto_6

    .line 189
    :cond_5
    move/from16 v30, v5

    .line 190
    .line 191
    goto :goto_4

    .line 192
    :goto_5
    add-int/lit8 v6, v6, 0x1

    .line 193
    .line 194
    const/4 v4, 0x0

    .line 195
    :goto_6
    const-string v7, "no-cache"

    .line 196
    .line 197
    move/from16 v0, v30

    .line 198
    .line 199
    invoke-static {v7, v3, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 200
    .line 201
    .line 202
    move-result v7

    .line 203
    if-eqz v7, :cond_6

    .line 204
    .line 205
    move v10, v0

    .line 206
    move-object v7, v5

    .line 207
    move v3, v6

    .line 208
    move-object/from16 v0, p0

    .line 209
    .line 210
    move v5, v10

    .line 211
    goto/16 :goto_3

    .line 212
    .line 213
    :cond_6
    const-string v7, "no-store"

    .line 214
    .line 215
    invoke-static {v7, v3, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 216
    .line 217
    .line 218
    move-result v7

    .line 219
    if-eqz v7, :cond_7

    .line 220
    .line 221
    move v11, v0

    .line 222
    move-object v7, v5

    .line 223
    move v3, v6

    .line 224
    move-object/from16 v0, p0

    .line 225
    .line 226
    move v5, v11

    .line 227
    goto/16 :goto_3

    .line 228
    .line 229
    :cond_7
    const-string v7, "max-age"

    .line 230
    .line 231
    invoke-static {v7, v3, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 232
    .line 233
    .line 234
    move-result v7

    .line 235
    if-eqz v7, :cond_9

    .line 236
    .line 237
    const/4 v7, -0x1

    .line 238
    invoke-static {v4, v7}, Lokhttp3/internal/Util;->Kkkkkkkk(Ljava/lang/String;I)I

    .line 239
    .line 240
    .line 241
    move-result v12

    .line 242
    :cond_8
    :goto_7
    move-object v7, v5

    .line 243
    move v3, v6

    .line 244
    move v5, v0

    .line 245
    move-object/from16 v0, p0

    .line 246
    .line 247
    goto/16 :goto_3

    .line 248
    .line 249
    :cond_9
    const-string v7, "s-maxage"

    .line 250
    .line 251
    invoke-static {v7, v3, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 252
    .line 253
    .line 254
    move-result v7

    .line 255
    if-eqz v7, :cond_a

    .line 256
    .line 257
    const/4 v7, -0x1

    .line 258
    invoke-static {v4, v7}, Lokhttp3/internal/Util;->Kkkkkkkk(Ljava/lang/String;I)I

    .line 259
    .line 260
    .line 261
    move-result v13

    .line 262
    goto :goto_7

    .line 263
    :cond_a
    const-string v7, "private"

    .line 264
    .line 265
    invoke-static {v7, v3, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 266
    .line 267
    .line 268
    move-result v7

    .line 269
    if-eqz v7, :cond_b

    .line 270
    .line 271
    move v14, v0

    .line 272
    move-object v7, v5

    .line 273
    move v3, v6

    .line 274
    move-object/from16 v0, p0

    .line 275
    .line 276
    move v5, v14

    .line 277
    goto/16 :goto_3

    .line 278
    .line 279
    :cond_b
    const-string v7, "public"

    .line 280
    .line 281
    invoke-static {v7, v3, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 282
    .line 283
    .line 284
    move-result v7

    .line 285
    if-eqz v7, :cond_c

    .line 286
    .line 287
    move v15, v0

    .line 288
    move-object v7, v5

    .line 289
    move v3, v6

    .line 290
    move-object/from16 v0, p0

    .line 291
    .line 292
    move v5, v15

    .line 293
    goto/16 :goto_3

    .line 294
    .line 295
    :cond_c
    const-string v7, "must-revalidate"

    .line 296
    .line 297
    invoke-static {v7, v3, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 298
    .line 299
    .line 300
    move-result v7

    .line 301
    if-eqz v7, :cond_d

    .line 302
    .line 303
    move/from16 v16, v0

    .line 304
    .line 305
    move-object v7, v5

    .line 306
    move v3, v6

    .line 307
    move-object/from16 v0, p0

    .line 308
    .line 309
    move/from16 v5, v16

    .line 310
    .line 311
    goto/16 :goto_3

    .line 312
    .line 313
    :cond_d
    const-string v7, "max-stale"

    .line 314
    .line 315
    invoke-static {v7, v3, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 316
    .line 317
    .line 318
    move-result v7

    .line 319
    if-eqz v7, :cond_e

    .line 320
    .line 321
    const v3, 0x7fffffff

    .line 322
    .line 323
    .line 324
    invoke-static {v4, v3}, Lokhttp3/internal/Util;->Kkkkkkkk(Ljava/lang/String;I)I

    .line 325
    .line 326
    .line 327
    move-result v17

    .line 328
    goto :goto_7

    .line 329
    :cond_e
    const-string v7, "min-fresh"

    .line 330
    .line 331
    invoke-static {v7, v3, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 332
    .line 333
    .line 334
    move-result v7

    .line 335
    if-eqz v7, :cond_f

    .line 336
    .line 337
    const/4 v7, -0x1

    .line 338
    invoke-static {v4, v7}, Lokhttp3/internal/Util;->Kkkkkkkk(Ljava/lang/String;I)I

    .line 339
    .line 340
    .line 341
    move-result v18

    .line 342
    goto :goto_7

    .line 343
    :cond_f
    const/4 v7, -0x1

    .line 344
    const-string v4, "only-if-cached"

    .line 345
    .line 346
    invoke-static {v4, v3, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 347
    .line 348
    .line 349
    move-result v4

    .line 350
    if-eqz v4, :cond_10

    .line 351
    .line 352
    move/from16 v19, v0

    .line 353
    .line 354
    move-object v7, v5

    .line 355
    move v3, v6

    .line 356
    move-object/from16 v0, p0

    .line 357
    .line 358
    move/from16 v5, v19

    .line 359
    .line 360
    goto/16 :goto_3

    .line 361
    .line 362
    :cond_10
    const-string v4, "no-transform"

    .line 363
    .line 364
    invoke-static {v4, v3, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 365
    .line 366
    .line 367
    move-result v4

    .line 368
    if-eqz v4, :cond_11

    .line 369
    .line 370
    move/from16 v20, v0

    .line 371
    .line 372
    move-object v7, v5

    .line 373
    move v3, v6

    .line 374
    move-object/from16 v0, p0

    .line 375
    .line 376
    move/from16 v5, v20

    .line 377
    .line 378
    goto/16 :goto_3

    .line 379
    .line 380
    :cond_11
    const-string v4, "immutable"

    .line 381
    .line 382
    invoke-static {v4, v3, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 383
    .line 384
    .line 385
    move-result v3

    .line 386
    if-eqz v3, :cond_8

    .line 387
    .line 388
    move/from16 v21, v0

    .line 389
    .line 390
    move-object v7, v5

    .line 391
    move v3, v6

    .line 392
    move-object/from16 v0, p0

    .line 393
    .line 394
    move/from16 v5, v21

    .line 395
    .line 396
    goto/16 :goto_3

    .line 397
    .line 398
    :cond_12
    move-object/from16 v0, p0

    .line 399
    .line 400
    move/from16 v7, v22

    .line 401
    .line 402
    goto/16 :goto_0

    .line 403
    .line 404
    :cond_13
    if-nez v8, :cond_14

    .line 405
    .line 406
    const/16 v22, 0x0

    .line 407
    .line 408
    goto :goto_8

    .line 409
    :cond_14
    move-object/from16 v22, v9

    .line 410
    .line 411
    :goto_8
    new-instance v9, Lokhttp3/CacheControl;

    .line 412
    .line 413
    const/16 v23, 0x0

    .line 414
    .line 415
    invoke-direct/range {v9 .. v23}, Lokhttp3/CacheControl;-><init>(ZZIIZZZIIZZZLjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 416
    .line 417
    .line 418
    return-object v9
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :goto_0
    if-ge p3, v0, :cond_1

    .line 6
    .line 7
    add-int/lit8 v1, p3, 0x1

    .line 8
    .line 9
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x2

    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x0

    .line 16
    invoke-static {p2, v2, v5, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    return p3

    .line 23
    :cond_0
    move p3, v1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    return p1
.end method
