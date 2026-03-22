.class public final Lcom/changdu/component/pay/google/w;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Proguard"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Lcom/changdu/component/pay/google/x;

.field public final synthetic d:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lcom/changdu/component/pay/google/x;Ljava/util/ArrayList;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/component/pay/google/w;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/changdu/component/pay/google/w;->c:Lcom/changdu/component/pay/google/x;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/changdu/component/pay/google/w;->d:Ljava/util/ArrayList;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    .line 1
    new-instance p1, Lcom/changdu/component/pay/google/w;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/changdu/component/pay/google/w;->b:Ljava/util/ArrayList;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/changdu/component/pay/google/w;->c:Lcom/changdu/component/pay/google/x;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/changdu/component/pay/google/w;->d:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/changdu/component/pay/google/w;-><init>(Ljava/util/ArrayList;Lcom/changdu/component/pay/google/x;Ljava/util/ArrayList;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/changdu/component/pay/google/w;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/changdu/component/pay/google/w;

    .line 10
    .line 11
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/changdu/component/pay/google/w;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v2, v0, Lcom/changdu/component/pay/google/w;->a:I

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const-string v4, ":"

    .line 11
    .line 12
    const/4 v5, 0x1

    .line 13
    const/4 v6, 0x0

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    if-ne v2, v5, :cond_0

    .line 17
    .line 18
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 19
    .line 20
    .line 21
    move-object/from16 v2, p1

    .line 22
    .line 23
    goto/16 :goto_2

    .line 24
    .line 25
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 28
    .line 29
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v1

    .line 33
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    iget-object v7, v0, Lcom/changdu/component/pay/google/w;->b:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    move v9, v6

    .line 48
    :cond_2
    :goto_0
    if-ge v9, v8, :cond_5

    .line 49
    .line 50
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v10

    .line 54
    add-int/lit8 v9, v9, 0x1

    .line 55
    .line 56
    move-object v11, v10

    .line 57
    check-cast v11, Ljava/lang/String;

    .line 58
    .line 59
    const/4 v10, 0x2

    .line 60
    invoke-static {v11, v4, v6, v10, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 64
    if-eqz v10, :cond_3

    .line 65
    .line 66
    :try_start_2
    filled-new-array {v4}, [Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v12

    .line 70
    const/4 v15, 0x6

    .line 71
    const/16 v16, 0x0

    .line 72
    .line 73
    const/4 v13, 0x0

    .line 74
    const/4 v14, 0x0

    .line 75
    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v10

    .line 79
    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v10

    .line 83
    check-cast v10, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 84
    .line 85
    move-object v11, v10

    .line 86
    :catch_0
    :cond_3
    if-eqz v11, :cond_2

    .line 87
    .line 88
    :try_start_3
    invoke-static {v11}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 89
    .line 90
    .line 91
    move-result v10

    .line 92
    if-eqz v10, :cond_4

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_4
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v10

    .line 99
    if-nez v10, :cond_2

    .line 100
    .line 101
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_5
    new-instance v7, Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 111
    .line 112
    .line 113
    move-result v8

    .line 114
    move v9, v6

    .line 115
    :goto_1
    if-ge v9, v8, :cond_6

    .line 116
    .line 117
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v10

    .line 121
    add-int/lit8 v9, v9, 0x1

    .line 122
    .line 123
    check-cast v10, Ljava/lang/String;

    .line 124
    .line 125
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    .line 126
    .line 127
    .line 128
    move-result-object v11

    .line 129
    invoke-virtual {v11, v10}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    .line 130
    .line 131
    .line 132
    move-result-object v10

    .line 133
    const-string v11, "subs"

    .line 134
    .line 135
    invoke-virtual {v10, v11}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    .line 136
    .line 137
    .line 138
    move-result-object v10

    .line 139
    invoke-virtual {v10}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    .line 140
    .line 141
    .line 142
    move-result-object v10

    .line 143
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_6
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-virtual {v2, v7}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/List;)Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-virtual {v2}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/QueryProductDetailsParams;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    iget-object v7, v0, Lcom/changdu/component/pay/google/w;->c:Lcom/changdu/component/pay/google/x;

    .line 160
    .line 161
    invoke-static {v7}, Lcom/changdu/component/pay/google/x;->a(Lcom/changdu/component/pay/google/x;)Lcom/android/billingclient/api/BillingClient;

    .line 162
    .line 163
    .line 164
    move-result-object v7

    .line 165
    iput v5, v0, Lcom/changdu/component/pay/google/w;->a:I

    .line 166
    .line 167
    invoke-static {v7, v2, v0}, Lcom/android/billingclient/api/BillingClientKotlinKt;->Wwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingClient;Lcom/android/billingclient/api/QueryProductDetailsParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    if-ne v2, v1, :cond_7

    .line 172
    .line 173
    return-object v1

    .line 174
    :cond_7
    :goto_2
    check-cast v2, Lcom/android/billingclient/api/ProductDetailsResult;

    .line 175
    .line 176
    invoke-virtual {v2}, Lcom/android/billingclient/api/ProductDetailsResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/BillingResult;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    if-nez v1, :cond_f

    .line 185
    .line 186
    invoke-virtual {v2}, Lcom/android/billingclient/api/ProductDetailsResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    if-eqz v1, :cond_f

    .line 191
    .line 192
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    if-eqz v1, :cond_8

    .line 197
    .line 198
    goto/16 :goto_5

    .line 199
    .line 200
    :cond_8
    invoke-virtual {v2}, Lcom/android/billingclient/api/ProductDetailsResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    :cond_9
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    if-eqz v2, :cond_f

    .line 213
    .line 214
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    check-cast v2, Lcom/android/billingclient/api/ProductDetails;

    .line 219
    .line 220
    invoke-virtual {v2}, Lcom/android/billingclient/api/ProductDetails;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    .line 221
    .line 222
    .line 223
    move-result-object v5

    .line 224
    if-eqz v5, :cond_9

    .line 225
    .line 226
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 227
    .line 228
    .line 229
    move-result v5

    .line 230
    if-eqz v5, :cond_a

    .line 231
    .line 232
    goto :goto_3

    .line 233
    :cond_a
    invoke-virtual {v2}, Lcom/android/billingclient/api/ProductDetails;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    .line 234
    .line 235
    .line 236
    move-result-object v5

    .line 237
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 238
    .line 239
    .line 240
    move-result-object v5

    .line 241
    move-object v7, v3

    .line 242
    :cond_b
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 243
    .line 244
    .line 245
    move-result v8

    .line 246
    if-eqz v8, :cond_e

    .line 247
    .line 248
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v8

    .line 252
    check-cast v8, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    .line 253
    .line 254
    invoke-virtual {v8}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v9

    .line 258
    if-nez v9, :cond_b

    .line 259
    .line 260
    invoke-virtual {v8}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/ProductDetails$PricingPhases;

    .line 261
    .line 262
    .line 263
    move-result-object v9

    .line 264
    invoke-virtual {v9}, Lcom/android/billingclient/api/ProductDetails$PricingPhases;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    .line 265
    .line 266
    .line 267
    move-result-object v9

    .line 268
    invoke-static {v9, v6}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v9

    .line 272
    check-cast v9, Lcom/android/billingclient/api/ProductDetails$PricingPhase;

    .line 273
    .line 274
    if-nez v9, :cond_c

    .line 275
    .line 276
    goto :goto_4

    .line 277
    :cond_c
    if-nez v7, :cond_d

    .line 278
    .line 279
    new-instance v10, Lcom/changdu/component/pay/base/model/PurchaseItemMonetization;

    .line 280
    .line 281
    invoke-virtual {v2}, Lcom/android/billingclient/api/ProductDetails;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v12

    .line 285
    invoke-virtual {v9}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v13

    .line 289
    invoke-virtual {v9}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 290
    .line 291
    .line 292
    move-result-wide v14

    .line 293
    invoke-virtual {v9}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v16

    .line 297
    const/4 v11, 0x1

    .line 298
    invoke-direct/range {v10 .. v16}, Lcom/changdu/component/pay/base/model/PurchaseItemMonetization;-><init>(ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 299
    .line 300
    .line 301
    move-object v7, v10

    .line 302
    :cond_d
    invoke-virtual {v2}, Lcom/android/billingclient/api/ProductDetails;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v10

    .line 306
    invoke-virtual {v8}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v8

    .line 310
    new-instance v11, Ljava/lang/StringBuilder;

    .line 311
    .line 312
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v14

    .line 328
    iget-object v8, v0, Lcom/changdu/component/pay/google/w;->b:Ljava/util/ArrayList;

    .line 329
    .line 330
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    move-result v8

    .line 334
    if-eqz v8, :cond_b

    .line 335
    .line 336
    iget-object v8, v0, Lcom/changdu/component/pay/google/w;->d:Ljava/util/ArrayList;

    .line 337
    .line 338
    new-instance v12, Lcom/changdu/component/pay/base/model/PurchaseItemMonetization;

    .line 339
    .line 340
    invoke-virtual {v9}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v15

    .line 344
    invoke-virtual {v9}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 345
    .line 346
    .line 347
    move-result-wide v16

    .line 348
    invoke-virtual {v9}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v18

    .line 352
    const/4 v13, 0x1

    .line 353
    invoke-direct/range {v12 .. v18}, Lcom/changdu/component/pay/base/model/PurchaseItemMonetization;-><init>(ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    goto :goto_4

    .line 360
    :cond_e
    if-eqz v7, :cond_9

    .line 361
    .line 362
    iget-object v5, v0, Lcom/changdu/component/pay/google/w;->b:Ljava/util/ArrayList;

    .line 363
    .line 364
    invoke-virtual {v2}, Lcom/android/billingclient/api/ProductDetails;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v2

    .line 368
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 369
    .line 370
    .line 371
    move-result v2

    .line 372
    if-eqz v2, :cond_9

    .line 373
    .line 374
    iget-object v2, v0, Lcom/changdu/component/pay/google/w;->d:Ljava/util/ArrayList;

    .line 375
    .line 376
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 377
    .line 378
    .line 379
    goto/16 :goto_3

    .line 380
    .line 381
    :catch_1
    :cond_f
    :goto_5
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 382
    .line 383
    return-object v1
.end method
