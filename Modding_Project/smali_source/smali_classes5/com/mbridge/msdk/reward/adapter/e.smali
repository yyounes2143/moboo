.class public Lcom/mbridge/msdk/reward/adapter/e;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Z

.field private final d:Lcom/mbridge/msdk/videocommon/setting/c;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/mbridge/msdk/videocommon/setting/c;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mbridge/msdk/reward/adapter/e;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mbridge/msdk/reward/adapter/e;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/mbridge/msdk/reward/adapter/e;->c:Z

    .line 9
    .line 10
    iput-object p4, p0, Lcom/mbridge/msdk/reward/adapter/e;->d:Lcom/mbridge/msdk/videocommon/setting/c;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/mbridge/msdk/reward/adapter/e;->e:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lcom/mbridge/msdk/foundation/same/net/wrapper/e;
    .locals 10

    .line 1
    move/from16 v0, p9

    .line 2
    .line 3
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/controller/a;->c()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-static {v2}, Lcom/mbridge/msdk/foundation/tools/SameMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    if-eqz p1, :cond_0

    .line 47
    .line 48
    const/4 p1, 0x2

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/4 p1, 0x3

    .line 51
    :goto_0
    iget-object v3, p0, Lcom/mbridge/msdk/reward/adapter/e;->d:Lcom/mbridge/msdk/videocommon/setting/c;

    .line 52
    .line 53
    if-eqz v3, :cond_1

    .line 54
    .line 55
    invoke-virtual {v3}, Lcom/mbridge/msdk/videocommon/setting/c;->e()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    iget-object v4, p0, Lcom/mbridge/msdk/reward/adapter/e;->d:Lcom/mbridge/msdk/videocommon/setting/c;

    .line 60
    .line 61
    invoke-virtual {v4}, Lcom/mbridge/msdk/videocommon/setting/c;->b()I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    const/4 v3, 0x0

    .line 67
    move v4, v3

    .line 68
    :goto_1
    iget-object v5, p0, Lcom/mbridge/msdk/reward/adapter/e;->b:Ljava/lang/String;

    .line 69
    .line 70
    const-string v6, "reward"

    .line 71
    .line 72
    invoke-static {v5, v6}, Lcom/mbridge/msdk/foundation/same/buffer/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    iget-boolean v6, p0, Lcom/mbridge/msdk/reward/adapter/e;->c:Z

    .line 77
    .line 78
    if-eqz v6, :cond_2

    .line 79
    .line 80
    const/16 v6, 0x11f

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_2
    const/16 v6, 0x5e

    .line 84
    .line 85
    :goto_2
    new-instance v7, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;

    .line 86
    .line 87
    invoke-direct {v7}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string v8, "app_id"

    .line 91
    .line 92
    invoke-static {v7, v8, v1}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget-object v1, p0, Lcom/mbridge/msdk/reward/adapter/e;->b:Ljava/lang/String;

    .line 96
    .line 97
    const-string v8, "unit_id"

    .line 98
    .line 99
    invoke-static {v7, v8, v1}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-object v1, p0, Lcom/mbridge/msdk/reward/adapter/e;->a:Ljava/lang/String;

    .line 103
    .line 104
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-nez v1, :cond_3

    .line 109
    .line 110
    sget-object v1, Lcom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    .line 111
    .line 112
    iget-object v8, p0, Lcom/mbridge/msdk/reward/adapter/e;->a:Ljava/lang/String;

    .line 113
    .line 114
    invoke-static {v7, v1, v8}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    :cond_3
    invoke-static {}, Lcom/mbridge/msdk/util/b;->a()Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    const-string v8, ""

    .line 122
    .line 123
    if-eqz v1, :cond_6

    .line 124
    .line 125
    if-nez p6, :cond_4

    .line 126
    .line 127
    move-object v1, v8

    .line 128
    goto :goto_3

    .line 129
    :cond_4
    move-object/from16 v1, p6

    .line 130
    .line 131
    :goto_3
    const-string v9, "ttc_ids"

    .line 132
    .line 133
    invoke-static {v7, v9, v1}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    if-nez p5, :cond_5

    .line 137
    .line 138
    move-object v1, v8

    .line 139
    goto :goto_4

    .line 140
    :cond_5
    move-object v1, p5

    .line 141
    :goto_4
    const-string v9, "install_ids"

    .line 142
    .line 143
    invoke-static {v7, v9, v1}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    :cond_6
    const-string v1, "sign"

    .line 147
    .line 148
    invoke-static {v7, v1, v2}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    const-string v1, "req_type"

    .line 156
    .line 157
    invoke-static {v7, v1, p1}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    const-string v1, "ad_num"

    .line 165
    .line 166
    invoke-static {v7, v1, p1}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    iget-boolean p1, p0, Lcom/mbridge/msdk/reward/adapter/e;->c:Z

    .line 170
    .line 171
    const/4 v1, 0x1

    .line 172
    if-eqz p1, :cond_7

    .line 173
    .line 174
    move v4, v1

    .line 175
    :cond_7
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    const-string v2, "tnum"

    .line 180
    .line 181
    invoke-static {v7, v2, p1}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    const-string p1, "only_impression"

    .line 185
    .line 186
    const-string v2, "1"

    .line 187
    .line 188
    invoke-static {v7, p1, v2}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    const-string p1, "ping_mode"

    .line 192
    .line 193
    invoke-static {v7, p1, v2}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    sget-object p1, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->g:Ljava/lang/String;

    .line 197
    .line 198
    invoke-static {v7, p1, v5}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    sget-object p1, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->h:Ljava/lang/String;

    .line 202
    .line 203
    if-nez p2, :cond_8

    .line 204
    .line 205
    move-object p2, v8

    .line 206
    :cond_8
    invoke-static {v7, p1, p2}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    const-string p2, "ad_source_id"

    .line 214
    .line 215
    invoke-static {v7, p2, p1}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    sget-object p1, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->i:Ljava/lang/String;

    .line 219
    .line 220
    if-nez p4, :cond_9

    .line 221
    .line 222
    move-object p4, v8

    .line 223
    :cond_9
    invoke-static {v7, p1, p4}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    const-string p2, "ad_type"

    .line 231
    .line 232
    invoke-static {v7, p2, p1}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    const-string p2, "offset"

    .line 240
    .line 241
    invoke-static {v7, p2, p1}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 245
    .line 246
    .line 247
    move-result p1

    .line 248
    if-nez p1, :cond_a

    .line 249
    .line 250
    const-string p1, "token"

    .line 251
    .line 252
    move-object/from16 p2, p7

    .line 253
    .line 254
    invoke-static {v7, p1, p2}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    :cond_a
    iget-boolean p1, p0, Lcom/mbridge/msdk/reward/adapter/e;->c:Z

    .line 258
    .line 259
    const-string p2, "0"

    .line 260
    .line 261
    if-eqz p1, :cond_d

    .line 262
    .line 263
    sget p1, Lcom/mbridge/msdk/foundation/same/a;->I:I

    .line 264
    .line 265
    const-string p3, "ivrwd"

    .line 266
    .line 267
    if-eq v0, p1, :cond_c

    .line 268
    .line 269
    sget p1, Lcom/mbridge/msdk/foundation/same/a;->H:I

    .line 270
    .line 271
    if-ne v0, p1, :cond_b

    .line 272
    .line 273
    goto :goto_5

    .line 274
    :cond_b
    invoke-static {v7, p3, p2}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    goto :goto_6

    .line 278
    :cond_c
    :goto_5
    invoke-static {v7, p3, v2}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    :cond_d
    :goto_6
    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/e;->d:Lcom/mbridge/msdk/videocommon/setting/c;

    .line 282
    .line 283
    if-eqz p1, :cond_e

    .line 284
    .line 285
    invoke-virtual {p1}, Lcom/mbridge/msdk/videocommon/setting/c;->a()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 290
    .line 291
    .line 292
    move-result p1

    .line 293
    if-nez p1, :cond_e

    .line 294
    .line 295
    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/e;->d:Lcom/mbridge/msdk/videocommon/setting/c;

    .line 296
    .line 297
    invoke-virtual {p1}, Lcom/mbridge/msdk/videocommon/setting/c;->a()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    const-string p3, "u_stid"

    .line 302
    .line 303
    invoke-static {v7, p3, p1}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    :cond_e
    invoke-static {}, Lcom/mbridge/msdk/videocommon/setting/b;->b()Lcom/mbridge/msdk/videocommon/setting/b;

    .line 307
    .line 308
    .line 309
    move-result-object p1

    .line 310
    invoke-virtual {p1}, Lcom/mbridge/msdk/videocommon/setting/b;->c()Lcom/mbridge/msdk/videocommon/setting/a;

    .line 311
    .line 312
    .line 313
    move-result-object p1

    .line 314
    if-eqz p1, :cond_f

    .line 315
    .line 316
    invoke-virtual {p1}, Lcom/mbridge/msdk/videocommon/setting/a;->a()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object p3

    .line 320
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 321
    .line 322
    .line 323
    move-result p3

    .line 324
    if-nez p3, :cond_f

    .line 325
    .line 326
    invoke-virtual {p1}, Lcom/mbridge/msdk/videocommon/setting/a;->a()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object p1

    .line 330
    const-string p3, "r_stid"

    .line 331
    .line 332
    invoke-static {v7, p3, p1}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    :cond_f
    if-eqz p8, :cond_10

    .line 336
    .line 337
    goto :goto_7

    .line 338
    :cond_10
    move-object v2, p2

    .line 339
    :goto_7
    const-string p1, "rw_plus"

    .line 340
    .line 341
    invoke-static {v7, p1, v2}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/e;->b:Ljava/lang/String;

    .line 345
    .line 346
    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/t0;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object p1

    .line 350
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 351
    .line 352
    .line 353
    move-result p2

    .line 354
    if-nez p2, :cond_11

    .line 355
    .line 356
    const-string p2, "j"

    .line 357
    .line 358
    invoke-static {v7, p2, p1}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    :cond_11
    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/e;->e:Ljava/lang/String;

    .line 362
    .line 363
    if-nez p1, :cond_12

    .line 364
    .line 365
    goto :goto_8

    .line 366
    :cond_12
    move-object v8, p1

    .line 367
    :goto_8
    const-string p1, "local_rid"

    .line 368
    .line 369
    invoke-static {v7, p1, v8}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    return-object v7
.end method
