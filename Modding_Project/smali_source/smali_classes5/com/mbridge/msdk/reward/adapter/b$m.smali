.class final Lcom/mbridge/msdk/reward/adapter/b$m;
.super Landroid/os/Handler;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/reward/adapter/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "m"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/mbridge/msdk/reward/adapter/b$h;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lj$/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {p1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/mbridge/msdk/reward/adapter/b$m;->b:Lj$/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    new-instance p1, Lj$/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-direct {p1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/mbridge/msdk/reward/adapter/b$m;->c:Lj$/util/concurrent/ConcurrentHashMap;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mbridge/msdk/reward/adapter/b$m;->a:Landroid/content/Context;

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/mbridge/msdk/reward/adapter/b$h;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/b$m;->b:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/b$m;->c:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 28

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    sget-object v3, Lcom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    const-string v4, "unit_id"

    .line 16
    .line 17
    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    const-string v5, "request_id"

    .line 22
    .line 23
    invoke-virtual {v2, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    const-string v6, "key"

    .line 28
    .line 29
    invoke-virtual {v2, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    invoke-static {}, Lcom/mbridge/msdk/reward/adapter/b;->a()Lj$/util/concurrent/ConcurrentHashMap;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    invoke-virtual {v7, v6}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    check-cast v7, Lcom/mbridge/msdk/reward/adapter/b$f;

    .line 42
    .line 43
    iget-object v8, v1, Lcom/mbridge/msdk/reward/adapter/b$m;->b:Lj$/util/concurrent/ConcurrentHashMap;

    .line 44
    .line 45
    invoke-virtual {v8, v6}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    check-cast v8, Lcom/mbridge/msdk/reward/adapter/b$h;

    .line 50
    .line 51
    iget-object v9, v1, Lcom/mbridge/msdk/reward/adapter/b$m;->c:Lj$/util/concurrent/ConcurrentHashMap;

    .line 52
    .line 53
    invoke-virtual {v9, v6}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v9

    .line 57
    move-object/from16 v17, v9

    .line 58
    .line 59
    check-cast v17, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 60
    .line 61
    iget v9, v0, Landroid/os/Message;->what:I

    .line 62
    .line 63
    const-string v10, "RewardCampaignsResourceManager"

    .line 64
    .line 65
    const/4 v11, 0x0

    .line 66
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v12

    .line 70
    packed-switch v9, :pswitch_data_0

    .line 71
    .line 72
    .line 73
    packed-switch v9, :pswitch_data_1

    .line 74
    .line 75
    .line 76
    goto/16 :goto_10

    .line 77
    .line 78
    :pswitch_0
    if-eqz v7, :cond_21

    .line 79
    .line 80
    if-eqz v8, :cond_21

    .line 81
    .line 82
    const-string v9, "message"

    .line 83
    .line 84
    invoke-virtual {v2, v9}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v9

    .line 88
    if-nez v9, :cond_0

    .line 89
    .line 90
    const-string v9, ""

    .line 91
    .line 92
    :cond_0
    iget v13, v0, Landroid/os/Message;->what:I

    .line 93
    .line 94
    invoke-static {v13}, Lcom/mbridge/msdk/reward/adapter/b;->a(I)I

    .line 95
    .line 96
    .line 97
    move-result v13

    .line 98
    new-instance v14, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    const-string v15, "resource download failed "

    .line 104
    .line 105
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget v15, v0, Landroid/os/Message;->what:I

    .line 109
    .line 110
    invoke-static {v15}, Lcom/mbridge/msdk/reward/adapter/b;->b(I)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v15

    .line 114
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v15, " "

    .line 118
    .line 119
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v9

    .line 129
    iget-object v14, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 130
    .line 131
    if-eqz v14, :cond_1

    .line 132
    .line 133
    invoke-virtual {v14}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 134
    .line 135
    .line 136
    move-result v14

    .line 137
    if-lez v14, :cond_1

    .line 138
    .line 139
    iget-object v14, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 140
    .line 141
    invoke-virtual {v14, v11}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v14

    .line 145
    check-cast v14, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 146
    .line 147
    move-object/from16 v18, v14

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_1
    const/16 v18, 0x0

    .line 151
    .line 152
    :goto_0
    :try_start_0
    iget-boolean v14, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .line 154
    const/16 v19, 0x3

    .line 155
    .line 156
    const/16 v11, 0xc8

    .line 157
    .line 158
    const/16 v23, 0x2

    .line 159
    .line 160
    const/4 v15, 0x1

    .line 161
    if-eqz v14, :cond_19

    .line 162
    .line 163
    :try_start_1
    iget-object v14, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 164
    .line 165
    if-eqz v14, :cond_19

    .line 166
    .line 167
    iget v14, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->c:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 168
    .line 169
    if-ne v14, v15, :cond_8

    .line 170
    .line 171
    if-eqz v18, :cond_7

    .line 172
    .line 173
    :try_start_2
    invoke-virtual/range {v18 .. v18}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    if-eqz v2, :cond_7

    .line 178
    .line 179
    invoke-virtual/range {v18 .. v18}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 184
    .line 185
    .line 186
    move-result v2

    .line 187
    if-lez v2, :cond_7

    .line 188
    .line 189
    iget v0, v0, Landroid/os/Message;->what:I

    .line 190
    .line 191
    if-eq v0, v11, :cond_6

    .line 192
    .line 193
    const/16 v2, 0xc9

    .line 194
    .line 195
    if-eq v0, v2, :cond_5

    .line 196
    .line 197
    const/16 v2, 0xcb

    .line 198
    .line 199
    if-eq v0, v2, :cond_4

    .line 200
    .line 201
    const/16 v2, 0xcd

    .line 202
    .line 203
    if-eq v0, v2, :cond_2

    .line 204
    .line 205
    goto/16 :goto_2

    .line 206
    .line 207
    :cond_2
    invoke-virtual/range {v18 .. v18}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    if-eqz v0, :cond_3

    .line 220
    .line 221
    goto/16 :goto_10

    .line 222
    .line 223
    :cond_3
    iget-object v0, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 224
    .line 225
    if-eqz v0, :cond_7

    .line 226
    .line 227
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    if-lez v0, :cond_7

    .line 232
    .line 233
    iget-object v0, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 234
    .line 235
    const/4 v14, 0x0

    .line 236
    invoke-virtual {v0, v14}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    check-cast v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 241
    .line 242
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCMPTEntryUrl()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    move-result v0

    .line 254
    if-eqz v0, :cond_7

    .line 255
    .line 256
    invoke-virtual/range {v18 .. v18}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    if-eqz v0, :cond_7

    .line 269
    .line 270
    goto/16 :goto_10

    .line 271
    .line 272
    :catch_0
    move-exception v0

    .line 273
    :goto_1
    move v2, v13

    .line 274
    goto/16 :goto_d

    .line 275
    .line 276
    :cond_4
    invoke-virtual/range {v18 .. v18}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    move-result v0

    .line 288
    if-eqz v0, :cond_7

    .line 289
    .line 290
    goto/16 :goto_10

    .line 291
    .line 292
    :cond_5
    invoke-virtual/range {v18 .. v18}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    if-eqz v0, :cond_7

    .line 305
    .line 306
    goto/16 :goto_10

    .line 307
    .line 308
    :cond_6
    invoke-virtual/range {v18 .. v18}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 316
    if-eqz v0, :cond_7

    .line 317
    .line 318
    goto/16 :goto_10

    .line 319
    .line 320
    :cond_7
    :goto_2
    :try_start_3
    new-instance v0, Lcom/mbridge/msdk/out/MBridgeIds;

    .line 321
    .line 322
    invoke-direct {v0, v3, v4, v5}, Lcom/mbridge/msdk/out/MBridgeIds;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    iget-object v2, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->h:Ljava/util/concurrent/CopyOnWriteArrayList;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 326
    .line 327
    const/4 v10, 0x0

    .line 328
    :try_start_4
    invoke-static {v13, v0, v9, v10, v10}, Lcom/mbridge/msdk/reward/adapter/b;->a(ILcom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Lcom/mbridge/msdk/foundation/error/b;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    invoke-interface {v8, v2, v0}, Lcom/mbridge/msdk/reward/adapter/b$h;->a(Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/mbridge/msdk/foundation/error/b;)V

    .line 333
    .line 334
    .line 335
    iget-object v0, v1, Lcom/mbridge/msdk/reward/adapter/b$m;->b:Lj$/util/concurrent/ConcurrentHashMap;

    .line 336
    .line 337
    invoke-virtual {v0, v6}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    invoke-static {}, Lcom/mbridge/msdk/reward/adapter/b;->a()Lj$/util/concurrent/ConcurrentHashMap;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    invoke-virtual {v0, v6}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    iget-object v0, v1, Lcom/mbridge/msdk/reward/adapter/b$m;->c:Lj$/util/concurrent/ConcurrentHashMap;

    .line 348
    .line 349
    invoke-virtual {v0, v6}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 350
    .line 351
    .line 352
    return-void

    .line 353
    :catch_1
    move-exception v0

    .line 354
    const/4 v10, 0x0

    .line 355
    goto :goto_1

    .line 356
    :cond_8
    const/16 v16, 0x0

    .line 357
    .line 358
    :try_start_5
    const-string v14, "url"

    .line 359
    .line 360
    invoke-virtual {v2, v14}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v2

    .line 364
    iget v0, v0, Landroid/os/Message;->what:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 365
    .line 366
    if-eq v0, v11, :cond_14

    .line 367
    .line 368
    const/16 v14, 0xc9

    .line 369
    .line 370
    if-eq v0, v14, :cond_f

    .line 371
    .line 372
    const/16 v11, 0xcb

    .line 373
    .line 374
    if-eq v0, v11, :cond_b

    .line 375
    .line 376
    const/16 v11, 0xcd

    .line 377
    .line 378
    if-eq v0, v11, :cond_9

    .line 379
    .line 380
    goto/16 :goto_6

    .line 381
    .line 382
    :cond_9
    if-eqz v18, :cond_a

    .line 383
    .line 384
    :try_start_6
    invoke-virtual/range {v18 .. v18}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    if-eqz v0, :cond_a

    .line 389
    .line 390
    invoke-virtual/range {v18 .. v18}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 395
    .line 396
    .line 397
    move-result v0

    .line 398
    if-lez v0, :cond_a

    .line 399
    .line 400
    invoke-virtual/range {v18 .. v18}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 405
    .line 406
    .line 407
    move-result-object v2

    .line 408
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 409
    .line 410
    .line 411
    move-result v0

    .line 412
    if-eqz v0, :cond_a

    .line 413
    .line 414
    const-string v0, "Is TPL but download BTL Template fail but hit ignoreCheckRule"

    .line 415
    .line 416
    invoke-static {v10, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    return-void

    .line 420
    :cond_a
    iget-object v0, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 421
    .line 422
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 423
    .line 424
    .line 425
    invoke-static {}, Lcom/mbridge/msdk/reward/adapter/b;->a()Lj$/util/concurrent/ConcurrentHashMap;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    invoke-virtual {v0, v6}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    invoke-static {}, Lcom/mbridge/msdk/reward/adapter/b;->a()Lj$/util/concurrent/ConcurrentHashMap;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    invoke-virtual {v0, v6, v7}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    .line 438
    .line 439
    goto/16 :goto_6

    .line 440
    .line 441
    :cond_b
    if-eqz v18, :cond_c

    .line 442
    .line 443
    invoke-virtual/range {v18 .. v18}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    if-eqz v0, :cond_c

    .line 448
    .line 449
    invoke-virtual/range {v18 .. v18}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 454
    .line 455
    .line 456
    move-result v0

    .line 457
    if-lez v0, :cond_c

    .line 458
    .line 459
    invoke-virtual/range {v18 .. v18}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 464
    .line 465
    .line 466
    move-result-object v11

    .line 467
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 468
    .line 469
    .line 470
    move-result v0

    .line 471
    if-eqz v0, :cond_c

    .line 472
    .line 473
    const-string v0, "Is TPL but download template fail but hit ignoreCheckRule"

    .line 474
    .line 475
    invoke-static {v10, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    return-void

    .line 479
    :cond_c
    const/4 v11, 0x0

    .line 480
    :goto_3
    iget-object v0, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 481
    .line 482
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 483
    .line 484
    .line 485
    move-result v0

    .line 486
    if-ge v11, v0, :cond_e

    .line 487
    .line 488
    iget-object v0, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 489
    .line 490
    invoke-virtual {v0, v11}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    move-result-object v0

    .line 494
    check-cast v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 495
    .line 496
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    .line 497
    .line 498
    .line 499
    move-result-object v10

    .line 500
    if-eqz v10, :cond_d

    .line 501
    .line 502
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    .line 503
    .line 504
    .line 505
    move-result-object v0

    .line 506
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->e()Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object v0

    .line 510
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 511
    .line 512
    .line 513
    move-result v0

    .line 514
    if-eqz v0, :cond_d

    .line 515
    .line 516
    iget-object v0, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 517
    .line 518
    invoke-virtual {v0, v11}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 519
    .line 520
    .line 521
    :cond_d
    add-int/lit8 v11, v11, 0x1

    .line 522
    .line 523
    goto :goto_3

    .line 524
    :cond_e
    invoke-static {}, Lcom/mbridge/msdk/reward/adapter/b;->a()Lj$/util/concurrent/ConcurrentHashMap;

    .line 525
    .line 526
    .line 527
    move-result-object v0

    .line 528
    invoke-virtual {v0, v6}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    .line 530
    .line 531
    invoke-static {}, Lcom/mbridge/msdk/reward/adapter/b;->a()Lj$/util/concurrent/ConcurrentHashMap;

    .line 532
    .line 533
    .line 534
    move-result-object v0

    .line 535
    invoke-virtual {v0, v6, v7}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    .line 537
    .line 538
    goto/16 :goto_6

    .line 539
    .line 540
    :cond_f
    if-eqz v18, :cond_10

    .line 541
    .line 542
    invoke-virtual/range {v18 .. v18}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    .line 543
    .line 544
    .line 545
    move-result-object v0

    .line 546
    if-eqz v0, :cond_10

    .line 547
    .line 548
    invoke-virtual/range {v18 .. v18}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    .line 549
    .line 550
    .line 551
    move-result-object v0

    .line 552
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 553
    .line 554
    .line 555
    move-result v0

    .line 556
    if-lez v0, :cond_10

    .line 557
    .line 558
    invoke-virtual/range {v18 .. v18}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    .line 559
    .line 560
    .line 561
    move-result-object v0

    .line 562
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 563
    .line 564
    .line 565
    move-result-object v11

    .line 566
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 567
    .line 568
    .line 569
    move-result v0

    .line 570
    if-eqz v0, :cond_10

    .line 571
    .line 572
    const-string v0, "Is TPL but download endcard fail but hit ignoreCheckRule"

    .line 573
    .line 574
    invoke-static {v10, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    .line 576
    .line 577
    return-void

    .line 578
    :cond_10
    const/4 v11, 0x0

    .line 579
    :goto_4
    iget-object v0, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 580
    .line 581
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 582
    .line 583
    .line 584
    move-result v0

    .line 585
    if-ge v11, v0, :cond_13

    .line 586
    .line 587
    iget-object v0, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 588
    .line 589
    invoke-virtual {v0, v11}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 590
    .line 591
    .line 592
    move-result-object v0

    .line 593
    check-cast v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 594
    .line 595
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    .line 596
    .line 597
    .line 598
    move-result-object v10

    .line 599
    if-eqz v10, :cond_11

    .line 600
    .line 601
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    .line 602
    .line 603
    .line 604
    move-result-object v10

    .line 605
    invoke-virtual {v10}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->c()Ljava/lang/String;

    .line 606
    .line 607
    .line 608
    move-result-object v10

    .line 609
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 610
    .line 611
    .line 612
    move-result v10

    .line 613
    if-eqz v10, :cond_11

    .line 614
    .line 615
    iget-object v10, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 616
    .line 617
    invoke-virtual {v10, v11}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 618
    .line 619
    .line 620
    :cond_11
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    .line 621
    .line 622
    .line 623
    move-result-object v10

    .line 624
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 625
    .line 626
    .line 627
    move-result v10

    .line 628
    if-nez v10, :cond_12

    .line 629
    .line 630
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    .line 631
    .line 632
    .line 633
    move-result-object v0

    .line 634
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 635
    .line 636
    .line 637
    move-result v0

    .line 638
    if-eqz v0, :cond_12

    .line 639
    .line 640
    iget-object v0, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 641
    .line 642
    invoke-virtual {v0, v11}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 643
    .line 644
    .line 645
    :cond_12
    add-int/lit8 v11, v11, 0x1

    .line 646
    .line 647
    goto :goto_4

    .line 648
    :cond_13
    invoke-static {}, Lcom/mbridge/msdk/reward/adapter/b;->a()Lj$/util/concurrent/ConcurrentHashMap;

    .line 649
    .line 650
    .line 651
    move-result-object v0

    .line 652
    invoke-virtual {v0, v6}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    .line 654
    .line 655
    invoke-static {}, Lcom/mbridge/msdk/reward/adapter/b;->a()Lj$/util/concurrent/ConcurrentHashMap;

    .line 656
    .line 657
    .line 658
    move-result-object v0

    .line 659
    invoke-virtual {v0, v6, v7}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    .line 661
    .line 662
    goto :goto_6

    .line 663
    :cond_14
    if-eqz v18, :cond_15

    .line 664
    .line 665
    invoke-virtual/range {v18 .. v18}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    .line 666
    .line 667
    .line 668
    move-result-object v0

    .line 669
    if-eqz v0, :cond_15

    .line 670
    .line 671
    invoke-virtual/range {v18 .. v18}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    .line 672
    .line 673
    .line 674
    move-result-object v0

    .line 675
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 676
    .line 677
    .line 678
    move-result v0

    .line 679
    if-lez v0, :cond_15

    .line 680
    .line 681
    invoke-virtual/range {v18 .. v18}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    .line 682
    .line 683
    .line 684
    move-result-object v0

    .line 685
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 686
    .line 687
    .line 688
    move-result v0

    .line 689
    if-eqz v0, :cond_15

    .line 690
    .line 691
    const-string v0, "Is TPL but  video download fail but hit ignoreCheckRule"

    .line 692
    .line 693
    invoke-static {v10, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 694
    .line 695
    .line 696
    return-void

    .line 697
    :cond_15
    const/4 v11, 0x0

    .line 698
    :goto_5
    :try_start_7
    iget-object v0, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 699
    .line 700
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 701
    .line 702
    .line 703
    move-result v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 704
    if-ge v11, v0, :cond_17

    .line 705
    .line 706
    :try_start_8
    iget-object v0, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 707
    .line 708
    invoke-virtual {v0, v11}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 709
    .line 710
    .line 711
    move-result-object v0

    .line 712
    check-cast v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 713
    .line 714
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    .line 715
    .line 716
    .line 717
    move-result-object v0

    .line 718
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 719
    .line 720
    .line 721
    move-result v0

    .line 722
    if-eqz v0, :cond_16

    .line 723
    .line 724
    iget-object v0, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 725
    .line 726
    invoke-virtual {v0, v11}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 727
    .line 728
    .line 729
    :cond_16
    add-int/lit8 v11, v11, 0x1

    .line 730
    .line 731
    goto :goto_5

    .line 732
    :cond_17
    :try_start_9
    invoke-static {}, Lcom/mbridge/msdk/reward/adapter/b;->a()Lj$/util/concurrent/ConcurrentHashMap;

    .line 733
    .line 734
    .line 735
    move-result-object v0

    .line 736
    invoke-virtual {v0, v6}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    .line 738
    .line 739
    invoke-static {}, Lcom/mbridge/msdk/reward/adapter/b;->a()Lj$/util/concurrent/ConcurrentHashMap;

    .line 740
    .line 741
    .line 742
    move-result-object v0

    .line 743
    invoke-virtual {v0, v6, v7}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    .line 745
    .line 746
    :goto_6
    invoke-static {}, Lcom/mbridge/msdk/videocommon/download/b;->getInstance()Lcom/mbridge/msdk/videocommon/download/b;

    .line 747
    .line 748
    .line 749
    move-result-object v10

    .line 750
    iget-object v12, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->e:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 751
    .line 752
    move v2, v13

    .line 753
    :try_start_a
    iget-boolean v13, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->b:Z

    .line 754
    .line 755
    iget v14, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->d:I

    .line 756
    .line 757
    iget-boolean v15, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->a:Z

    .line 758
    .line 759
    iget v0, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->c:I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 760
    .line 761
    const/16 v11, 0x5e

    .line 762
    .line 763
    move/from16 v16, v0

    .line 764
    .line 765
    :try_start_b
    invoke-virtual/range {v10 .. v17}, Lcom/mbridge/msdk/videocommon/download/b;->a(ILjava/lang/String;ZIZILjava/util/List;)Z

    .line 766
    .line 767
    .line 768
    move-result v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    .line 769
    if-eqz v0, :cond_18

    .line 770
    .line 771
    :try_start_c
    iget-object v0, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 772
    .line 773
    invoke-interface {v8, v3, v4, v5, v0}, Lcom/mbridge/msdk/reward/adapter/b$h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList;)V

    .line 774
    .line 775
    .line 776
    iget-object v0, v1, Lcom/mbridge/msdk/reward/adapter/b$m;->b:Lj$/util/concurrent/ConcurrentHashMap;

    .line 777
    .line 778
    invoke-virtual {v0, v6}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    .line 780
    .line 781
    invoke-static {}, Lcom/mbridge/msdk/reward/adapter/b;->a()Lj$/util/concurrent/ConcurrentHashMap;

    .line 782
    .line 783
    .line 784
    move-result-object v0

    .line 785
    invoke-virtual {v0, v6}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    .line 787
    .line 788
    iget-object v0, v1, Lcom/mbridge/msdk/reward/adapter/b$m;->c:Lj$/util/concurrent/ConcurrentHashMap;

    .line 789
    .line 790
    invoke-virtual {v0, v6}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    .line 791
    .line 792
    .line 793
    return-void

    .line 794
    :catch_2
    move-exception v0

    .line 795
    goto/16 :goto_d

    .line 796
    .line 797
    :cond_18
    :try_start_d
    iget-object v0, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 798
    .line 799
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 800
    .line 801
    .line 802
    move-result v0

    .line 803
    if-nez v0, :cond_21

    .line 804
    .line 805
    new-instance v0, Lcom/mbridge/msdk/out/MBridgeIds;

    .line 806
    .line 807
    invoke-direct {v0, v3, v4, v5}, Lcom/mbridge/msdk/out/MBridgeIds;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    .line 809
    .line 810
    iget-object v10, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->h:Ljava/util/concurrent/CopyOnWriteArrayList;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    .line 811
    .line 812
    const/4 v13, 0x0

    .line 813
    :try_start_e
    invoke-static {v2, v0, v9, v13, v13}, Lcom/mbridge/msdk/reward/adapter/b;->a(ILcom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Lcom/mbridge/msdk/foundation/error/b;

    .line 814
    .line 815
    .line 816
    move-result-object v0

    .line 817
    invoke-interface {v8, v10, v0}, Lcom/mbridge/msdk/reward/adapter/b$h;->a(Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/mbridge/msdk/foundation/error/b;)V

    .line 818
    .line 819
    .line 820
    iget-object v0, v1, Lcom/mbridge/msdk/reward/adapter/b$m;->b:Lj$/util/concurrent/ConcurrentHashMap;

    .line 821
    .line 822
    invoke-virtual {v0, v6}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    .line 824
    .line 825
    invoke-static {}, Lcom/mbridge/msdk/reward/adapter/b;->a()Lj$/util/concurrent/ConcurrentHashMap;

    .line 826
    .line 827
    .line 828
    move-result-object v0

    .line 829
    invoke-virtual {v0, v6}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    .line 831
    .line 832
    iget-object v0, v1, Lcom/mbridge/msdk/reward/adapter/b$m;->c:Lj$/util/concurrent/ConcurrentHashMap;

    .line 833
    .line 834
    invoke-virtual {v0, v6}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    .line 836
    .line 837
    return-void

    .line 838
    :catch_3
    move-exception v0

    .line 839
    :goto_7
    const/4 v13, 0x0

    .line 840
    goto/16 :goto_d

    .line 841
    .line 842
    :catch_4
    move-exception v0

    .line 843
    :goto_8
    move-object/from16 v13, v16

    .line 844
    .line 845
    goto/16 :goto_d

    .line 846
    .line 847
    :catch_5
    move-exception v0

    .line 848
    move v2, v13

    .line 849
    goto :goto_8

    .line 850
    :catch_6
    move-exception v0

    .line 851
    move v2, v13

    .line 852
    goto :goto_7

    .line 853
    :cond_19
    move v2, v13

    .line 854
    const/4 v13, 0x0

    .line 855
    const/16 v14, 0xc9

    .line 856
    .line 857
    const/16 v21, 0xcd

    .line 858
    .line 859
    const/16 v22, 0xcb

    .line 860
    .line 861
    invoke-static {}, Lcom/mbridge/msdk/videocommon/download/b;->getInstance()Lcom/mbridge/msdk/videocommon/download/b;

    .line 862
    .line 863
    .line 864
    move-result-object v10

    .line 865
    move-object/from16 v16, v12

    .line 866
    .line 867
    iget-object v12, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->e:Ljava/lang/String;

    .line 868
    .line 869
    move-object/from16 v25, v13

    .line 870
    .line 871
    iget-boolean v13, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->b:Z

    .line 872
    .line 873
    move/from16 v24, v14

    .line 874
    .line 875
    iget v14, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->d:I

    .line 876
    .line 877
    move/from16 v20, v15

    .line 878
    .line 879
    iget-boolean v15, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->a:Z

    .line 880
    .line 881
    iget v11, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->c:I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    .line 882
    .line 883
    move-object/from16 v26, v16

    .line 884
    .line 885
    move/from16 v16, v11

    .line 886
    .line 887
    const/16 v11, 0x5e

    .line 888
    .line 889
    move-object/from16 v27, v6

    .line 890
    .line 891
    move-object/from16 v6, v26

    .line 892
    .line 893
    const/16 v1, 0xc8

    .line 894
    .line 895
    :try_start_f
    invoke-virtual/range {v10 .. v17}, Lcom/mbridge/msdk/videocommon/download/b;->a(ILjava/lang/String;ZIZILjava/util/List;)Z

    .line 896
    .line 897
    .line 898
    move-result v10

    .line 899
    if-eqz v10, :cond_1a

    .line 900
    .line 901
    iget-object v0, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 902
    .line 903
    invoke-interface {v8, v3, v4, v5, v0}, Lcom/mbridge/msdk/reward/adapter/b$h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList;)V

    .line 904
    .line 905
    .line 906
    :goto_9
    move-object/from16 v1, p0

    .line 907
    .line 908
    goto/16 :goto_c

    .line 909
    .line 910
    :catch_7
    move-exception v0

    .line 911
    move-object/from16 v1, p0

    .line 912
    .line 913
    goto/16 :goto_d

    .line 914
    .line 915
    :cond_1a
    if-eqz v18, :cond_1f

    .line 916
    .line 917
    invoke-virtual/range {v18 .. v18}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    .line 918
    .line 919
    .line 920
    move-result-object v10

    .line 921
    if-eqz v10, :cond_1f

    .line 922
    .line 923
    invoke-virtual/range {v18 .. v18}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    .line 924
    .line 925
    .line 926
    move-result-object v10

    .line 927
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 928
    .line 929
    .line 930
    move-result v10

    .line 931
    if-lez v10, :cond_1f

    .line 932
    .line 933
    iget v0, v0, Landroid/os/Message;->what:I

    .line 934
    .line 935
    if-eq v0, v1, :cond_1e

    .line 936
    .line 937
    const/16 v14, 0xc9

    .line 938
    .line 939
    if-eq v0, v14, :cond_1d

    .line 940
    .line 941
    const/16 v11, 0xcb

    .line 942
    .line 943
    if-eq v0, v11, :cond_1c

    .line 944
    .line 945
    const/16 v11, 0xcd

    .line 946
    .line 947
    if-eq v0, v11, :cond_1b

    .line 948
    .line 949
    goto :goto_b

    .line 950
    :cond_1b
    invoke-virtual/range {v18 .. v18}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    .line 951
    .line 952
    .line 953
    move-result-object v0

    .line 954
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 955
    .line 956
    .line 957
    move-result-object v1

    .line 958
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 959
    .line 960
    .line 961
    move-result v0

    .line 962
    if-eqz v0, :cond_1f

    .line 963
    .line 964
    :goto_a
    move-object/from16 v1, p0

    .line 965
    .line 966
    goto/16 :goto_10

    .line 967
    .line 968
    :cond_1c
    invoke-virtual/range {v18 .. v18}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    .line 969
    .line 970
    .line 971
    move-result-object v0

    .line 972
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 973
    .line 974
    .line 975
    move-result-object v1

    .line 976
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 977
    .line 978
    .line 979
    move-result v0

    .line 980
    if-eqz v0, :cond_1f

    .line 981
    .line 982
    goto :goto_a

    .line 983
    :cond_1d
    invoke-virtual/range {v18 .. v18}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    .line 984
    .line 985
    .line 986
    move-result-object v0

    .line 987
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 988
    .line 989
    .line 990
    move-result-object v1

    .line 991
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 992
    .line 993
    .line 994
    move-result v0

    .line 995
    if-eqz v0, :cond_1f

    .line 996
    .line 997
    goto :goto_a

    .line 998
    :cond_1e
    invoke-virtual/range {v18 .. v18}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRsIgnoreCheckRule()Ljava/util/ArrayList;

    .line 999
    .line 1000
    .line 1001
    move-result-object v0

    .line 1002
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1003
    .line 1004
    .line 1005
    move-result v0

    .line 1006
    if-eqz v0, :cond_1f

    .line 1007
    .line 1008
    goto :goto_a

    .line 1009
    :cond_1f
    :goto_b
    new-instance v0, Lcom/mbridge/msdk/out/MBridgeIds;

    .line 1010
    .line 1011
    invoke-direct {v0, v3, v4, v5}, Lcom/mbridge/msdk/out/MBridgeIds;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    .line 1013
    .line 1014
    iget-object v1, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1015
    .line 1016
    const/4 v10, 0x0

    .line 1017
    invoke-static {v2, v0, v9, v10, v10}, Lcom/mbridge/msdk/reward/adapter/b;->a(ILcom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Lcom/mbridge/msdk/foundation/error/b;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v0

    .line 1021
    invoke-interface {v8, v1, v0}, Lcom/mbridge/msdk/reward/adapter/b$h;->a(Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/mbridge/msdk/foundation/error/b;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    .line 1022
    .line 1023
    .line 1024
    goto :goto_9

    .line 1025
    :goto_c
    :try_start_10
    iget-object v0, v1, Lcom/mbridge/msdk/reward/adapter/b$m;->b:Lj$/util/concurrent/ConcurrentHashMap;

    .line 1026
    .line 1027
    move-object/from16 v6, v27

    .line 1028
    .line 1029
    invoke-virtual {v0, v6}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    .line 1031
    .line 1032
    invoke-static {}, Lcom/mbridge/msdk/reward/adapter/b;->a()Lj$/util/concurrent/ConcurrentHashMap;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v0

    .line 1036
    invoke-virtual {v0, v6}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1037
    .line 1038
    .line 1039
    iget-object v0, v1, Lcom/mbridge/msdk/reward/adapter/b$m;->c:Lj$/util/concurrent/ConcurrentHashMap;

    .line 1040
    .line 1041
    invoke-virtual {v0, v6}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2

    .line 1042
    .line 1043
    .line 1044
    return-void

    .line 1045
    :goto_d
    new-instance v6, Lcom/mbridge/msdk/out/MBridgeIds;

    .line 1046
    .line 1047
    invoke-direct {v6, v3, v4, v5}, Lcom/mbridge/msdk/out/MBridgeIds;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    .line 1049
    .line 1050
    iget-object v3, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1051
    .line 1052
    const/4 v10, 0x0

    .line 1053
    invoke-static {v2, v6, v9, v0, v10}, Lcom/mbridge/msdk/reward/adapter/b;->a(ILcom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Lcom/mbridge/msdk/foundation/error/b;

    .line 1054
    .line 1055
    .line 1056
    move-result-object v0

    .line 1057
    invoke-interface {v8, v3, v0}, Lcom/mbridge/msdk/reward/adapter/b$h;->a(Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/mbridge/msdk/foundation/error/b;)V

    .line 1058
    .line 1059
    .line 1060
    goto :goto_10

    .line 1061
    :pswitch_1
    if-eqz v7, :cond_21

    .line 1062
    .line 1063
    if-eqz v8, :cond_21

    .line 1064
    .line 1065
    move-object v2, v10

    .line 1066
    :try_start_11
    invoke-static {}, Lcom/mbridge/msdk/videocommon/download/b;->getInstance()Lcom/mbridge/msdk/videocommon/download/b;

    .line 1067
    .line 1068
    .line 1069
    move-result-object v10

    .line 1070
    iget-object v12, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->e:Ljava/lang/String;

    .line 1071
    .line 1072
    iget-boolean v13, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->b:Z

    .line 1073
    .line 1074
    iget v14, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->d:I

    .line 1075
    .line 1076
    iget-boolean v15, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->a:Z

    .line 1077
    .line 1078
    iget v0, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->c:I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_9

    .line 1079
    .line 1080
    const/16 v11, 0x5e

    .line 1081
    .line 1082
    move/from16 v16, v0

    .line 1083
    .line 1084
    const/16 v20, 0x0

    .line 1085
    .line 1086
    :try_start_12
    invoke-virtual/range {v10 .. v17}, Lcom/mbridge/msdk/videocommon/download/b;->a(ILjava/lang/String;ZIZILjava/util/List;)Z

    .line 1087
    .line 1088
    .line 1089
    move-result v11
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_8

    .line 1090
    goto :goto_f

    .line 1091
    :catch_8
    move-exception v0

    .line 1092
    goto :goto_e

    .line 1093
    :catch_9
    move-exception v0

    .line 1094
    const/16 v20, 0x0

    .line 1095
    .line 1096
    :goto_e
    sget-boolean v9, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    .line 1097
    .line 1098
    if-eqz v9, :cond_20

    .line 1099
    .line 1100
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 1101
    .line 1102
    .line 1103
    move-result-object v0

    .line 1104
    invoke-static {v2, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    .line 1106
    .line 1107
    :cond_20
    move/from16 v11, v20

    .line 1108
    .line 1109
    :goto_f
    if-eqz v11, :cond_21

    .line 1110
    .line 1111
    iget-object v0, v7, Lcom/mbridge/msdk/reward/adapter/b$f;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1112
    .line 1113
    invoke-interface {v8, v3, v4, v5, v0}, Lcom/mbridge/msdk/reward/adapter/b$h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList;)V

    .line 1114
    .line 1115
    .line 1116
    iget-object v0, v1, Lcom/mbridge/msdk/reward/adapter/b$m;->b:Lj$/util/concurrent/ConcurrentHashMap;

    .line 1117
    .line 1118
    invoke-virtual {v0, v6}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    .line 1120
    .line 1121
    invoke-static {}, Lcom/mbridge/msdk/reward/adapter/b;->a()Lj$/util/concurrent/ConcurrentHashMap;

    .line 1122
    .line 1123
    .line 1124
    move-result-object v0

    .line 1125
    invoke-virtual {v0, v6}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1126
    .line 1127
    .line 1128
    iget-object v0, v1, Lcom/mbridge/msdk/reward/adapter/b$m;->c:Lj$/util/concurrent/ConcurrentHashMap;

    .line 1129
    .line 1130
    invoke-virtual {v0, v6}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1131
    .line 1132
    .line 1133
    :cond_21
    :goto_10
    return-void

    .line 1134
    nop

    .line 1135
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    .line 1150
    .line 1151
    .line 1152
    .line 1153
    :pswitch_data_1
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
