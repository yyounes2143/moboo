.class public final Lcom/changdu/component/pay/google/q;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Proguard"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:I

.field public final synthetic g:Lcom/changdu/component/pay/base/model/PayRequestItem;

.field public final synthetic h:Lcom/changdu/component/pay/google/x;

.field public final synthetic i:Lcom/changdu/component/pay/base/model/PayCreateOrderResult;

.field public final synthetic j:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/changdu/component/pay/base/model/PayRequestItem;Lcom/changdu/component/pay/google/x;Lcom/changdu/component/pay/base/model/PayCreateOrderResult;Landroid/app/Activity;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/component/pay/google/q;->g:Lcom/changdu/component/pay/base/model/PayRequestItem;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/changdu/component/pay/google/q;->h:Lcom/changdu/component/pay/google/x;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/changdu/component/pay/google/q;->i:Lcom/changdu/component/pay/base/model/PayCreateOrderResult;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/changdu/component/pay/google/q;->j:Landroid/app/Activity;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    .line 1
    new-instance v0, Lcom/changdu/component/pay/google/q;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/changdu/component/pay/google/q;->g:Lcom/changdu/component/pay/base/model/PayRequestItem;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/changdu/component/pay/google/q;->h:Lcom/changdu/component/pay/google/x;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/changdu/component/pay/google/q;->i:Lcom/changdu/component/pay/base/model/PayCreateOrderResult;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/changdu/component/pay/google/q;->j:Landroid/app/Activity;

    .line 10
    .line 11
    move-object v5, p2

    .line 12
    invoke-direct/range {v0 .. v5}, Lcom/changdu/component/pay/google/q;-><init>(Lcom/changdu/component/pay/base/model/PayRequestItem;Lcom/changdu/component/pay/google/x;Lcom/changdu/component/pay/base/model/PayCreateOrderResult;Landroid/app/Activity;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    return-object v0
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
    invoke-virtual {p0, p1, p2}, Lcom/changdu/component/pay/google/q;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/changdu/component/pay/google/q;

    .line 10
    .line 11
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/changdu/component/pay/google/q;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, ":"

    .line 4
    .line 5
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget v3, v0, Lcom/changdu/component/pay/google/q;->f:I

    .line 10
    .line 11
    const-string v4, "inapp"

    .line 12
    .line 13
    const/4 v5, 0x3

    .line 14
    const/4 v6, 0x4

    .line 15
    const/4 v7, 0x0

    .line 16
    const-string v8, "subs"

    .line 17
    .line 18
    const/4 v9, 0x2

    .line 19
    const/4 v10, 0x1

    .line 20
    const-string v11, ""

    .line 21
    .line 22
    const/4 v12, 0x0

    .line 23
    if-eqz v3, :cond_3

    .line 24
    .line 25
    if-eq v3, v10, :cond_2

    .line 26
    .line 27
    if-eq v3, v9, :cond_1

    .line 28
    .line 29
    if-ne v3, v5, :cond_0

    .line 30
    .line 31
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 32
    .line 33
    .line 34
    goto/16 :goto_15

    .line 35
    .line 36
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 37
    .line 38
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 39
    .line 40
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v1

    .line 44
    :cond_1
    iget-object v1, v0, Lcom/changdu/component/pay/google/q;->d:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v3, v0, Lcom/changdu/component/pay/google/q;->c:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v4, v0, Lcom/changdu/component/pay/google/q;->b:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v4, Lcom/android/billingclient/api/ProductDetails;

    .line 51
    .line 52
    iget-object v7, v0, Lcom/changdu/component/pay/google/q;->a:Ljava/lang/String;

    .line 53
    .line 54
    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 55
    .line 56
    .line 57
    move-object v10, v4

    .line 58
    move-object/from16 v4, p1

    .line 59
    .line 60
    goto/16 :goto_d

    .line 61
    .line 62
    :cond_2
    iget v1, v0, Lcom/changdu/component/pay/google/q;->e:I

    .line 63
    .line 64
    iget-object v3, v0, Lcom/changdu/component/pay/google/q;->d:Ljava/lang/String;

    .line 65
    .line 66
    iget-object v10, v0, Lcom/changdu/component/pay/google/q;->c:Ljava/lang/String;

    .line 67
    .line 68
    iget-object v13, v0, Lcom/changdu/component/pay/google/q;->b:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v13, Ljava/lang/String;

    .line 71
    .line 72
    iget-object v14, v0, Lcom/changdu/component/pay/google/q;->a:Ljava/lang/String;

    .line 73
    .line 74
    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 75
    .line 76
    .line 77
    move-object/from16 v5, p1

    .line 78
    .line 79
    move-object v9, v3

    .line 80
    move-object v3, v10

    .line 81
    :goto_0
    move-object/from16 v19, v14

    .line 82
    .line 83
    goto/16 :goto_5

    .line 84
    .line 85
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    :try_start_3
    iget-object v3, v0, Lcom/changdu/component/pay/google/q;->g:Lcom/changdu/component/pay/base/model/PayRequestItem;

    .line 89
    .line 90
    invoke-virtual {v3}, Lcom/changdu/component/pay/base/model/PayRequestItem;->isSubscription()Z

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    if-eqz v3, :cond_4

    .line 95
    .line 96
    move-object v14, v8

    .line 97
    goto :goto_1

    .line 98
    :cond_4
    move-object v14, v4

    .line 99
    :goto_1
    iget-object v3, v0, Lcom/changdu/component/pay/google/q;->g:Lcom/changdu/component/pay/base/model/PayRequestItem;

    .line 100
    .line 101
    invoke-virtual {v3}, Lcom/changdu/component/pay/base/model/PayRequestItem;->getItemId()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-static {v3, v1, v7, v9, v12}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 109
    if-eqz v3, :cond_5

    .line 110
    .line 111
    :try_start_4
    iget-object v3, v0, Lcom/changdu/component/pay/google/q;->g:Lcom/changdu/component/pay/base/model/PayRequestItem;

    .line 112
    .line 113
    invoke-virtual {v3}, Lcom/changdu/component/pay/base/model/PayRequestItem;->getItemId()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v15

    .line 117
    filled-new-array {v1}, [Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v16

    .line 121
    const/16 v19, 0x6

    .line 122
    .line 123
    const/16 v20, 0x0

    .line 124
    .line 125
    const/16 v17, 0x0

    .line 126
    .line 127
    const/16 v18, 0x0

    .line 128
    .line 129
    invoke-static/range {v15 .. v20}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    check-cast v3, Ljava/lang/String;

    .line 138
    .line 139
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    check-cast v1, Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 144
    .line 145
    goto :goto_4

    .line 146
    :catch_0
    :try_start_5
    iget-object v1, v0, Lcom/changdu/component/pay/google/q;->g:Lcom/changdu/component/pay/base/model/PayRequestItem;

    .line 147
    .line 148
    invoke-virtual {v1}, Lcom/changdu/component/pay/base/model/PayRequestItem;->getItemId()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    :goto_2
    move-object v3, v1

    .line 153
    goto :goto_3

    .line 154
    :cond_5
    iget-object v1, v0, Lcom/changdu/component/pay/google/q;->g:Lcom/changdu/component/pay/base/model/PayRequestItem;

    .line 155
    .line 156
    invoke-virtual {v1}, Lcom/changdu/component/pay/base/model/PayRequestItem;->getItemId()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    goto :goto_2

    .line 161
    :goto_3
    move-object v1, v11

    .line 162
    :goto_4
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    .line 163
    .line 164
    .line 165
    move-result-object v13

    .line 166
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    .line 167
    .line 168
    .line 169
    move-result-object v15

    .line 170
    invoke-virtual {v15, v3}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    .line 171
    .line 172
    .line 173
    move-result-object v15

    .line 174
    invoke-virtual {v15, v14}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    .line 175
    .line 176
    .line 177
    move-result-object v15

    .line 178
    invoke-virtual {v15}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    .line 179
    .line 180
    .line 181
    move-result-object v15

    .line 182
    invoke-static {v15}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 183
    .line 184
    .line 185
    move-result-object v15

    .line 186
    invoke-virtual {v13, v15}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/List;)Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    .line 187
    .line 188
    .line 189
    move-result-object v13

    .line 190
    invoke-virtual {v13}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/QueryProductDetailsParams;

    .line 191
    .line 192
    .line 193
    move-result-object v13

    .line 194
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 195
    .line 196
    .line 197
    move-result-object v15

    .line 198
    new-instance v5, Lcom/changdu/component/pay/google/p;

    .line 199
    .line 200
    iget-object v9, v0, Lcom/changdu/component/pay/google/q;->h:Lcom/changdu/component/pay/google/x;

    .line 201
    .line 202
    invoke-direct {v5, v9, v13, v12}, Lcom/changdu/component/pay/google/p;-><init>(Lcom/changdu/component/pay/google/x;Lcom/android/billingclient/api/QueryProductDetailsParams;Lkotlin/coroutines/Continuation;)V

    .line 203
    .line 204
    .line 205
    iput-object v14, v0, Lcom/changdu/component/pay/google/q;->a:Ljava/lang/String;

    .line 206
    .line 207
    iput-object v11, v0, Lcom/changdu/component/pay/google/q;->b:Ljava/lang/Object;

    .line 208
    .line 209
    iput-object v3, v0, Lcom/changdu/component/pay/google/q;->c:Ljava/lang/String;

    .line 210
    .line 211
    iput-object v1, v0, Lcom/changdu/component/pay/google/q;->d:Ljava/lang/String;

    .line 212
    .line 213
    const/16 v9, 0x3ee

    .line 214
    .line 215
    iput v9, v0, Lcom/changdu/component/pay/google/q;->e:I

    .line 216
    .line 217
    iput v10, v0, Lcom/changdu/component/pay/google/q;->f:I

    .line 218
    .line 219
    invoke-static {v15, v5, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v5

    .line 223
    if-ne v5, v2, :cond_6

    .line 224
    .line 225
    goto/16 :goto_13

    .line 226
    .line 227
    :cond_6
    move v13, v9

    .line 228
    move-object v9, v1

    .line 229
    move v1, v13

    .line 230
    move-object v13, v11

    .line 231
    goto/16 :goto_0

    .line 232
    .line 233
    :goto_5
    check-cast v5, Lcom/android/billingclient/api/ProductDetailsResult;

    .line 234
    .line 235
    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetailsResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/BillingResult;

    .line 236
    .line 237
    .line 238
    move-result-object v10

    .line 239
    invoke-virtual {v10}, Lcom/android/billingclient/api/BillingResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 240
    .line 241
    .line 242
    move-result v10

    .line 243
    if-nez v10, :cond_a

    .line 244
    .line 245
    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetailsResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    .line 246
    .line 247
    .line 248
    move-result-object v10

    .line 249
    if-eqz v10, :cond_9

    .line 250
    .line 251
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    .line 252
    .line 253
    .line 254
    move-result v14

    .line 255
    if-eqz v14, :cond_7

    .line 256
    .line 257
    goto :goto_6

    .line 258
    :cond_7
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 259
    .line 260
    .line 261
    move-result-object v5

    .line 262
    :cond_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 263
    .line 264
    .line 265
    move-result v10

    .line 266
    if-eqz v10, :cond_b

    .line 267
    .line 268
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v10

    .line 272
    check-cast v10, Lcom/android/billingclient/api/ProductDetails;

    .line 273
    .line 274
    invoke-virtual {v10}, Lcom/android/billingclient/api/ProductDetails;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v14

    .line 278
    invoke-static {v14, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result v14

    .line 282
    if-eqz v14, :cond_8

    .line 283
    .line 284
    goto :goto_9

    .line 285
    :cond_9
    :goto_6
    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetailsResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/BillingResult;

    .line 286
    .line 287
    .line 288
    move-result-object v5

    .line 289
    invoke-virtual {v5}, Lcom/android/billingclient/api/BillingResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v5

    .line 293
    :goto_7
    move-object v13, v5

    .line 294
    goto :goto_8

    .line 295
    :cond_a
    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetailsResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/BillingResult;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 300
    .line 301
    .line 302
    move-result v1

    .line 303
    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetailsResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/BillingResult;

    .line 304
    .line 305
    .line 306
    move-result-object v5

    .line 307
    invoke-virtual {v5}, Lcom/android/billingclient/api/BillingResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v5

    .line 311
    goto :goto_7

    .line 312
    :cond_b
    :goto_8
    move-object v10, v12

    .line 313
    :goto_9
    if-nez v10, :cond_d

    .line 314
    .line 315
    iget-object v2, v0, Lcom/changdu/component/pay/google/q;->h:Lcom/changdu/component/pay/google/x;

    .line 316
    .line 317
    invoke-static {v2}, Lcom/changdu/component/pay/google/x;->c(Lcom/changdu/component/pay/google/x;)Lcom/changdu/component/pay/google/OnPurchaseListener;

    .line 318
    .line 319
    .line 320
    move-result-object v2

    .line 321
    if-eqz v2, :cond_c

    .line 322
    .line 323
    invoke-static {v2, v1, v13, v6}, Lcom/changdu/component/pay/google/b;->a(Lcom/changdu/component/pay/google/OnPurchaseListener;ILjava/lang/String;I)V

    .line 324
    .line 325
    .line 326
    :cond_c
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 327
    .line 328
    return-object v1

    .line 329
    :cond_d
    new-instance v18, Lcom/changdu/component/pay/base/model/LocalPurchaseItem;

    .line 330
    .line 331
    iget-object v5, v0, Lcom/changdu/component/pay/google/q;->g:Lcom/changdu/component/pay/base/model/PayRequestItem;

    .line 332
    .line 333
    invoke-virtual {v5}, Lcom/changdu/component/pay/base/model/PayRequestItem;->getItemId()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v20

    .line 337
    iget-object v5, v0, Lcom/changdu/component/pay/google/q;->g:Lcom/changdu/component/pay/base/model/PayRequestItem;

    .line 338
    .line 339
    invoke-virtual {v5}, Lcom/changdu/component/pay/base/model/PayRequestItem;->getHwItemId()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v21

    .line 343
    iget-object v5, v0, Lcom/changdu/component/pay/google/q;->g:Lcom/changdu/component/pay/base/model/PayRequestItem;

    .line 344
    .line 345
    invoke-virtual {v5}, Lcom/changdu/component/pay/base/model/PayRequestItem;->getOrderPrice()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v22

    .line 349
    iget-object v5, v0, Lcom/changdu/component/pay/google/q;->i:Lcom/changdu/component/pay/base/model/PayCreateOrderResult;

    .line 350
    .line 351
    invoke-virtual {v5}, Lcom/changdu/component/pay/base/model/PayCreateOrderResult;->getParameter()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v23

    .line 355
    iget-object v5, v0, Lcom/changdu/component/pay/google/q;->i:Lcom/changdu/component/pay/base/model/PayCreateOrderResult;

    .line 356
    .line 357
    invoke-virtual {v5}, Lcom/changdu/component/pay/base/model/PayCreateOrderResult;->getJumpUrl()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v24

    .line 361
    invoke-direct/range {v18 .. v24}, Lcom/changdu/component/pay/base/model/LocalPurchaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    move-object/from16 v5, v18

    .line 365
    .line 366
    move-object/from16 v14, v19

    .line 367
    .line 368
    iget-object v15, v0, Lcom/changdu/component/pay/google/q;->h:Lcom/changdu/component/pay/google/x;

    .line 369
    .line 370
    invoke-static {v15}, Lcom/changdu/component/pay/google/x;->b(Lcom/changdu/component/pay/google/x;)Lj$/util/concurrent/ConcurrentHashMap;

    .line 371
    .line 372
    .line 373
    move-result-object v15

    .line 374
    iget-object v12, v0, Lcom/changdu/component/pay/google/q;->i:Lcom/changdu/component/pay/base/model/PayCreateOrderResult;

    .line 375
    .line 376
    invoke-virtual {v12}, Lcom/changdu/component/pay/base/model/PayCreateOrderResult;->getParameter()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v12

    .line 380
    invoke-virtual {v15, v12, v5}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    invoke-static {v14, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 384
    .line 385
    .line 386
    move-result v4

    .line 387
    if-eqz v4, :cond_e

    .line 388
    .line 389
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    .line 390
    .line 391
    .line 392
    move-result-object v1

    .line 393
    invoke-virtual {v1, v10}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/ProductDetails;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    .line 394
    .line 395
    .line 396
    move-result-object v1

    .line 397
    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    .line 398
    .line 399
    .line 400
    move-result-object v1

    .line 401
    const/4 v5, 0x0

    .line 402
    goto/16 :goto_10

    .line 403
    .line 404
    :cond_e
    invoke-virtual {v10}, Lcom/android/billingclient/api/ProductDetails;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    .line 405
    .line 406
    .line 407
    move-result-object v4

    .line 408
    if-eqz v4, :cond_23

    .line 409
    .line 410
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 411
    .line 412
    .line 413
    move-result v4

    .line 414
    if-eqz v4, :cond_f

    .line 415
    .line 416
    goto/16 :goto_14

    .line 417
    .line 418
    :cond_f
    if-eqz v9, :cond_12

    .line 419
    .line 420
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 421
    .line 422
    .line 423
    move-result v1

    .line 424
    if-nez v1, :cond_10

    .line 425
    .line 426
    goto :goto_b

    .line 427
    :cond_10
    invoke-virtual {v10}, Lcom/android/billingclient/api/ProductDetails;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 432
    .line 433
    .line 434
    move-result-object v1

    .line 435
    move-object v4, v11

    .line 436
    :cond_11
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 437
    .line 438
    .line 439
    move-result v5

    .line 440
    if-eqz v5, :cond_13

    .line 441
    .line 442
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    move-result-object v5

    .line 446
    check-cast v5, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    .line 447
    .line 448
    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v12

    .line 452
    invoke-static {v12, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 453
    .line 454
    .line 455
    move-result v12

    .line 456
    if-eqz v12, :cond_11

    .line 457
    .line 458
    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v4

    .line 462
    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v5

    .line 466
    if-eqz v5, :cond_11

    .line 467
    .line 468
    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 469
    .line 470
    .line 471
    move-result v5

    .line 472
    if-eqz v5, :cond_13

    .line 473
    .line 474
    goto :goto_a

    .line 475
    :cond_12
    :goto_b
    move-object v4, v11

    .line 476
    :cond_13
    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 477
    .line 478
    .line 479
    move-result v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 480
    if-eqz v1, :cond_15

    .line 481
    .line 482
    :try_start_6
    invoke-virtual {v10}, Lcom/android/billingclient/api/ProductDetails;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    .line 483
    .line 484
    .line 485
    move-result-object v1

    .line 486
    invoke-static {v1, v7}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    .line 487
    .line 488
    .line 489
    move-result-object v1

    .line 490
    check-cast v1, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    .line 491
    .line 492
    if-eqz v1, :cond_14

    .line 493
    .line 494
    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 498
    if-nez v1, :cond_16

    .line 499
    .line 500
    :catch_1
    :cond_14
    move-object v1, v11

    .line 501
    goto :goto_c

    .line 502
    :cond_15
    move-object v1, v4

    .line 503
    :cond_16
    :goto_c
    :try_start_7
    iget-object v4, v0, Lcom/changdu/component/pay/google/q;->h:Lcom/changdu/component/pay/google/x;

    .line 504
    .line 505
    invoke-static {v4}, Lcom/changdu/component/pay/google/x;->a(Lcom/changdu/component/pay/google/x;)Lcom/android/billingclient/api/BillingClient;

    .line 506
    .line 507
    .line 508
    move-result-object v4

    .line 509
    invoke-static {}, Lcom/android/billingclient/api/QueryPurchasesParams;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    .line 510
    .line 511
    .line 512
    move-result-object v5

    .line 513
    invoke-virtual {v5, v8}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    .line 514
    .line 515
    .line 516
    move-result-object v5

    .line 517
    invoke-virtual {v5}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/QueryPurchasesParams;

    .line 518
    .line 519
    .line 520
    move-result-object v5

    .line 521
    iput-object v14, v0, Lcom/changdu/component/pay/google/q;->a:Ljava/lang/String;

    .line 522
    .line 523
    iput-object v10, v0, Lcom/changdu/component/pay/google/q;->b:Ljava/lang/Object;

    .line 524
    .line 525
    iput-object v3, v0, Lcom/changdu/component/pay/google/q;->c:Ljava/lang/String;

    .line 526
    .line 527
    iput-object v1, v0, Lcom/changdu/component/pay/google/q;->d:Ljava/lang/String;

    .line 528
    .line 529
    const/4 v7, 0x2

    .line 530
    iput v7, v0, Lcom/changdu/component/pay/google/q;->f:I

    .line 531
    .line 532
    invoke-static {v4, v5, v0}, Lcom/android/billingclient/api/BillingClientKotlinKt;->Wwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingClient;Lcom/android/billingclient/api/QueryPurchasesParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 533
    .line 534
    .line 535
    move-result-object v4

    .line 536
    if-ne v4, v2, :cond_17

    .line 537
    .line 538
    goto/16 :goto_13

    .line 539
    .line 540
    :cond_17
    move-object v7, v14

    .line 541
    :goto_d
    check-cast v4, Lcom/android/billingclient/api/PurchasesResult;

    .line 542
    .line 543
    invoke-virtual {v4}, Lcom/android/billingclient/api/PurchasesResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/BillingResult;

    .line 544
    .line 545
    .line 546
    move-result-object v5

    .line 547
    invoke-virtual {v5}, Lcom/android/billingclient/api/BillingResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 548
    .line 549
    .line 550
    move-result v5

    .line 551
    if-nez v5, :cond_1b

    .line 552
    .line 553
    invoke-virtual {v4}, Lcom/android/billingclient/api/PurchasesResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    .line 554
    .line 555
    .line 556
    move-result-object v5

    .line 557
    if-eqz v5, :cond_1b

    .line 558
    .line 559
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 560
    .line 561
    .line 562
    move-result v5

    .line 563
    if-eqz v5, :cond_18

    .line 564
    .line 565
    goto :goto_f

    .line 566
    :cond_18
    invoke-virtual {v4}, Lcom/android/billingclient/api/PurchasesResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    .line 567
    .line 568
    .line 569
    move-result-object v4

    .line 570
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 571
    .line 572
    .line 573
    move-result-object v4

    .line 574
    const/4 v5, 0x0

    .line 575
    :cond_19
    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 576
    .line 577
    .line 578
    move-result v9

    .line 579
    if-eqz v9, :cond_1c

    .line 580
    .line 581
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 582
    .line 583
    .line 584
    move-result-object v9

    .line 585
    check-cast v9, Lcom/android/billingclient/api/Purchase;

    .line 586
    .line 587
    invoke-virtual {v9}, Lcom/android/billingclient/api/Purchase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    .line 588
    .line 589
    .line 590
    move-result-object v12

    .line 591
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 592
    .line 593
    .line 594
    move-result-object v12

    .line 595
    :cond_1a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 596
    .line 597
    .line 598
    move-result v13

    .line 599
    if-eqz v13, :cond_19

    .line 600
    .line 601
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 602
    .line 603
    .line 604
    move-result-object v13

    .line 605
    check-cast v13, Ljava/lang/String;

    .line 606
    .line 607
    invoke-static {v3, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 608
    .line 609
    .line 610
    move-result v13

    .line 611
    if-eqz v13, :cond_1a

    .line 612
    .line 613
    move-object v5, v9

    .line 614
    goto :goto_e

    .line 615
    :cond_1b
    :goto_f
    const/4 v5, 0x0

    .line 616
    :cond_1c
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    .line 617
    .line 618
    .line 619
    move-result-object v3

    .line 620
    invoke-virtual {v3, v10}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/ProductDetails;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    .line 621
    .line 622
    .line 623
    move-result-object v3

    .line 624
    invoke-virtual {v3, v1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    .line 625
    .line 626
    .line 627
    move-result-object v1

    .line 628
    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    .line 629
    .line 630
    .line 631
    move-result-object v1

    .line 632
    move-object v14, v7

    .line 633
    :goto_10
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    .line 634
    .line 635
    .line 636
    move-result-object v3

    .line 637
    iget-object v4, v0, Lcom/changdu/component/pay/google/q;->i:Lcom/changdu/component/pay/base/model/PayCreateOrderResult;

    .line 638
    .line 639
    invoke-virtual {v4}, Lcom/changdu/component/pay/base/model/PayCreateOrderResult;->getParameter()Ljava/lang/String;

    .line 640
    .line 641
    .line 642
    move-result-object v4

    .line 643
    invoke-virtual {v3, v4}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    .line 644
    .line 645
    .line 646
    move-result-object v3

    .line 647
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 648
    .line 649
    .line 650
    move-result-object v1

    .line 651
    invoke-virtual {v3, v1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/List;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    .line 652
    .line 653
    .line 654
    move-result-object v1

    .line 655
    invoke-static {v14, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 656
    .line 657
    .line 658
    move-result v3

    .line 659
    if-eqz v3, :cond_21

    .line 660
    .line 661
    if-eqz v5, :cond_20

    .line 662
    .line 663
    invoke-virtual {v5}, Lcom/android/billingclient/api/Purchase;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 664
    .line 665
    .line 666
    move-result v3

    .line 667
    if-eqz v3, :cond_20

    .line 668
    .line 669
    invoke-virtual {v5}, Lcom/android/billingclient/api/Purchase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/AccountIdentifiers;

    .line 670
    .line 671
    .line 672
    move-result-object v3

    .line 673
    if-eqz v3, :cond_1e

    .line 674
    .line 675
    invoke-virtual {v3}, Lcom/android/billingclient/api/AccountIdentifiers;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 676
    .line 677
    .line 678
    move-result-object v3

    .line 679
    if-nez v3, :cond_1d

    .line 680
    .line 681
    goto :goto_11

    .line 682
    :cond_1d
    move-object v11, v3

    .line 683
    :cond_1e
    :goto_11
    invoke-static {v11}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 684
    .line 685
    .line 686
    move-result v3

    .line 687
    if-eqz v3, :cond_1f

    .line 688
    .line 689
    iget-object v3, v0, Lcom/changdu/component/pay/google/q;->i:Lcom/changdu/component/pay/base/model/PayCreateOrderResult;

    .line 690
    .line 691
    invoke-virtual {v3}, Lcom/changdu/component/pay/base/model/PayCreateOrderResult;->getParameter()Ljava/lang/String;

    .line 692
    .line 693
    .line 694
    move-result-object v11

    .line 695
    :cond_1f
    invoke-virtual {v1, v11}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    .line 696
    .line 697
    .line 698
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;

    .line 699
    .line 700
    .line 701
    move-result-object v3

    .line 702
    invoke-virtual {v5}, Lcom/android/billingclient/api/Purchase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 703
    .line 704
    .line 705
    move-result-object v4

    .line 706
    invoke-virtual {v3, v4}, Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;

    .line 707
    .line 708
    .line 709
    move-result-object v3

    .line 710
    const/4 v4, 0x5

    .line 711
    invoke-virtual {v3, v4}, Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;

    .line 712
    .line 713
    .line 714
    move-result-object v3

    .line 715
    invoke-virtual {v3}, Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;

    .line 716
    .line 717
    .line 718
    move-result-object v3

    .line 719
    invoke-virtual {v1, v3}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    .line 720
    .line 721
    .line 722
    goto :goto_12

    .line 723
    :cond_20
    iget-object v3, v0, Lcom/changdu/component/pay/google/q;->i:Lcom/changdu/component/pay/base/model/PayCreateOrderResult;

    .line 724
    .line 725
    invoke-virtual {v3}, Lcom/changdu/component/pay/base/model/PayCreateOrderResult;->getParameter()Ljava/lang/String;

    .line 726
    .line 727
    .line 728
    move-result-object v3

    .line 729
    invoke-virtual {v1, v3}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    .line 730
    .line 731
    .line 732
    goto :goto_12

    .line 733
    :cond_21
    iget-object v3, v0, Lcom/changdu/component/pay/google/q;->i:Lcom/changdu/component/pay/base/model/PayCreateOrderResult;

    .line 734
    .line 735
    invoke-virtual {v3}, Lcom/changdu/component/pay/base/model/PayCreateOrderResult;->getParameter()Ljava/lang/String;

    .line 736
    .line 737
    .line 738
    move-result-object v3

    .line 739
    invoke-virtual {v1, v3}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    .line 740
    .line 741
    .line 742
    :goto_12
    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/BillingFlowParams;

    .line 743
    .line 744
    .line 745
    move-result-object v1

    .line 746
    iget-object v3, v0, Lcom/changdu/component/pay/google/q;->h:Lcom/changdu/component/pay/google/x;

    .line 747
    .line 748
    invoke-static {v3}, Lcom/changdu/component/pay/google/x;->a(Lcom/changdu/component/pay/google/x;)Lcom/android/billingclient/api/BillingClient;

    .line 749
    .line 750
    .line 751
    move-result-object v3

    .line 752
    iget-object v4, v0, Lcom/changdu/component/pay/google/q;->j:Landroid/app/Activity;

    .line 753
    .line 754
    invoke-virtual {v3, v4, v1}, Lcom/android/billingclient/api/BillingClient;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    .line 755
    .line 756
    .line 757
    move-result-object v1

    .line 758
    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 759
    .line 760
    .line 761
    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 762
    .line 763
    .line 764
    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 765
    .line 766
    .line 767
    move-result v3

    .line 768
    if-eqz v3, :cond_22

    .line 769
    .line 770
    iget-object v3, v0, Lcom/changdu/component/pay/google/q;->h:Lcom/changdu/component/pay/google/x;

    .line 771
    .line 772
    invoke-static {v3}, Lcom/changdu/component/pay/google/x;->c(Lcom/changdu/component/pay/google/x;)Lcom/changdu/component/pay/google/OnPurchaseListener;

    .line 773
    .line 774
    .line 775
    move-result-object v3

    .line 776
    if-eqz v3, :cond_22

    .line 777
    .line 778
    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 779
    .line 780
    .line 781
    move-result v4

    .line 782
    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 783
    .line 784
    .line 785
    move-result-object v1

    .line 786
    invoke-static {v3, v4, v1, v6}, Lcom/changdu/component/pay/google/b;->a(Lcom/changdu/component/pay/google/OnPurchaseListener;ILjava/lang/String;I)V

    .line 787
    .line 788
    .line 789
    :cond_22
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 790
    .line 791
    .line 792
    move-result-object v1

    .line 793
    new-instance v3, Lcom/changdu/component/pay/google/o;

    .line 794
    .line 795
    iget-object v4, v0, Lcom/changdu/component/pay/google/q;->g:Lcom/changdu/component/pay/base/model/PayRequestItem;

    .line 796
    .line 797
    iget-object v5, v0, Lcom/changdu/component/pay/google/q;->i:Lcom/changdu/component/pay/base/model/PayCreateOrderResult;

    .line 798
    .line 799
    const/4 v6, 0x0

    .line 800
    invoke-direct {v3, v4, v5, v6}, Lcom/changdu/component/pay/google/o;-><init>(Lcom/changdu/component/pay/base/model/PayRequestItem;Lcom/changdu/component/pay/base/model/PayCreateOrderResult;Lkotlin/coroutines/Continuation;)V

    .line 801
    .line 802
    .line 803
    iput-object v6, v0, Lcom/changdu/component/pay/google/q;->a:Ljava/lang/String;

    .line 804
    .line 805
    iput-object v6, v0, Lcom/changdu/component/pay/google/q;->b:Ljava/lang/Object;

    .line 806
    .line 807
    iput-object v6, v0, Lcom/changdu/component/pay/google/q;->c:Ljava/lang/String;

    .line 808
    .line 809
    iput-object v6, v0, Lcom/changdu/component/pay/google/q;->d:Ljava/lang/String;

    .line 810
    .line 811
    const/4 v4, 0x3

    .line 812
    iput v4, v0, Lcom/changdu/component/pay/google/q;->f:I

    .line 813
    .line 814
    invoke-static {v1, v3, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 815
    .line 816
    .line 817
    move-result-object v1

    .line 818
    if-ne v1, v2, :cond_25

    .line 819
    .line 820
    :goto_13
    return-object v2

    .line 821
    :cond_23
    :goto_14
    iget-object v2, v0, Lcom/changdu/component/pay/google/q;->h:Lcom/changdu/component/pay/google/x;

    .line 822
    .line 823
    invoke-static {v2}, Lcom/changdu/component/pay/google/x;->c(Lcom/changdu/component/pay/google/x;)Lcom/changdu/component/pay/google/OnPurchaseListener;

    .line 824
    .line 825
    .line 826
    move-result-object v2

    .line 827
    if-eqz v2, :cond_24

    .line 828
    .line 829
    invoke-static {v2, v1, v13, v6}, Lcom/changdu/component/pay/google/b;->a(Lcom/changdu/component/pay/google/OnPurchaseListener;ILjava/lang/String;I)V

    .line 830
    .line 831
    .line 832
    :cond_24
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 833
    .line 834
    return-object v1

    .line 835
    :catch_2
    iget-object v1, v0, Lcom/changdu/component/pay/google/q;->h:Lcom/changdu/component/pay/google/x;

    .line 836
    .line 837
    invoke-static {v1}, Lcom/changdu/component/pay/google/x;->c(Lcom/changdu/component/pay/google/x;)Lcom/changdu/component/pay/google/OnPurchaseListener;

    .line 838
    .line 839
    .line 840
    move-result-object v1

    .line 841
    if-eqz v1, :cond_25

    .line 842
    .line 843
    const/16 v2, 0x3e8

    .line 844
    .line 845
    const/4 v3, 0x6

    .line 846
    const/4 v6, 0x0

    .line 847
    invoke-static {v1, v2, v6, v3}, Lcom/changdu/component/pay/google/b;->a(Lcom/changdu/component/pay/google/OnPurchaseListener;ILjava/lang/String;I)V

    .line 848
    .line 849
    .line 850
    :cond_25
    :goto_15
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 851
    .line 852
    return-object v1
.end method
