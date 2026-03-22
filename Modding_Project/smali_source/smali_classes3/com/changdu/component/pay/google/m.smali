.class public final Lcom/changdu/component/pay/google/m;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Proguard"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public b:Ljava/util/Iterator;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/String;

.field public e:Lcom/changdu/component/pay/base/model/LocalPurchaseItem;

.field public f:I

.field public final synthetic g:Ljava/util/List;

.field public final synthetic h:Lcom/changdu/component/pay/google/x;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/changdu/component/pay/google/x;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/component/pay/google/m;->g:Ljava/util/List;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/changdu/component/pay/google/m;->h:Lcom/changdu/component/pay/google/x;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    new-instance p1, Lcom/changdu/component/pay/google/m;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/changdu/component/pay/google/m;->g:Ljava/util/List;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/changdu/component/pay/google/m;->h:Lcom/changdu/component/pay/google/x;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/changdu/component/pay/google/m;-><init>(Ljava/util/List;Lcom/changdu/component/pay/google/x;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    new-instance p1, Lcom/changdu/component/pay/google/m;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/changdu/component/pay/google/m;->g:Ljava/util/List;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/changdu/component/pay/google/m;->h:Lcom/changdu/component/pay/google/x;

    .line 10
    .line 11
    invoke-direct {p1, v0, v1, p2}, Lcom/changdu/component/pay/google/m;-><init>(Ljava/util/List;Lcom/changdu/component/pay/google/x;Lkotlin/coroutines/Continuation;)V

    .line 12
    .line 13
    .line 14
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Lcom/changdu/component/pay/google/m;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    .line 1
    move-object/from16 v5, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v6

    .line 7
    iget v0, v5, Lcom/changdu/component/pay/google/m;->f:I

    .line 8
    .line 9
    const/4 v7, 0x5

    .line 10
    const/4 v8, 0x4

    .line 11
    const/4 v9, 0x3

    .line 12
    const/4 v10, 0x1

    .line 13
    const/4 v11, 0x2

    .line 14
    const/4 v12, 0x0

    .line 15
    if-eqz v0, :cond_5

    .line 16
    .line 17
    if-eq v0, v10, :cond_4

    .line 18
    .line 19
    if-eq v0, v11, :cond_3

    .line 20
    .line 21
    if-eq v0, v9, :cond_2

    .line 22
    .line 23
    if-eq v0, v8, :cond_1

    .line 24
    .line 25
    if-ne v0, v7, :cond_0

    .line 26
    .line 27
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    goto/16 :goto_10

    .line 31
    .line 32
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 33
    .line 34
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 35
    .line 36
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v0

    .line 40
    :cond_1
    iget-object v0, v5, Lcom/changdu/component/pay/google/m;->c:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v0, Ljava/lang/String;

    .line 43
    .line 44
    iget-object v1, v5, Lcom/changdu/component/pay/google/m;->b:Ljava/util/Iterator;

    .line 45
    .line 46
    iget-object v2, v5, Lcom/changdu/component/pay/google/m;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 47
    .line 48
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    move-object v13, v1

    .line 52
    :goto_0
    move-object v14, v2

    .line 53
    goto/16 :goto_e

    .line 54
    .line 55
    :cond_2
    iget-object v1, v5, Lcom/changdu/component/pay/google/m;->e:Lcom/changdu/component/pay/base/model/LocalPurchaseItem;

    .line 56
    .line 57
    iget-object v2, v5, Lcom/changdu/component/pay/google/m;->d:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v0, v5, Lcom/changdu/component/pay/google/m;->c:Ljava/lang/Object;

    .line 60
    .line 61
    move-object v3, v0

    .line 62
    check-cast v3, Lcom/android/billingclient/api/Purchase;

    .line 63
    .line 64
    iget-object v4, v5, Lcom/changdu/component/pay/google/m;->b:Ljava/util/Iterator;

    .line 65
    .line 66
    iget-object v13, v5, Lcom/changdu/component/pay/google/m;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 67
    .line 68
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .line 70
    .line 71
    move-object/from16 v0, p1

    .line 72
    .line 73
    goto/16 :goto_9

    .line 74
    .line 75
    :catchall_0
    move-exception v0

    .line 76
    goto/16 :goto_c

    .line 77
    .line 78
    :cond_3
    iget-object v1, v5, Lcom/changdu/component/pay/google/m;->e:Lcom/changdu/component/pay/base/model/LocalPurchaseItem;

    .line 79
    .line 80
    iget-object v2, v5, Lcom/changdu/component/pay/google/m;->d:Ljava/lang/String;

    .line 81
    .line 82
    iget-object v0, v5, Lcom/changdu/component/pay/google/m;->c:Ljava/lang/Object;

    .line 83
    .line 84
    move-object v3, v0

    .line 85
    check-cast v3, Lcom/android/billingclient/api/Purchase;

    .line 86
    .line 87
    iget-object v4, v5, Lcom/changdu/component/pay/google/m;->b:Ljava/util/Iterator;

    .line 88
    .line 89
    iget-object v13, v5, Lcom/changdu/component/pay/google/m;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 90
    .line 91
    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    .line 93
    .line 94
    move-object/from16 v0, p1

    .line 95
    .line 96
    goto/16 :goto_8

    .line 97
    .line 98
    :cond_4
    iget-object v1, v5, Lcom/changdu/component/pay/google/m;->e:Lcom/changdu/component/pay/base/model/LocalPurchaseItem;

    .line 99
    .line 100
    iget-object v2, v5, Lcom/changdu/component/pay/google/m;->d:Ljava/lang/String;

    .line 101
    .line 102
    iget-object v0, v5, Lcom/changdu/component/pay/google/m;->c:Ljava/lang/Object;

    .line 103
    .line 104
    move-object v3, v0

    .line 105
    check-cast v3, Lcom/android/billingclient/api/Purchase;

    .line 106
    .line 107
    iget-object v4, v5, Lcom/changdu/component/pay/google/m;->b:Ljava/util/Iterator;

    .line 108
    .line 109
    iget-object v13, v5, Lcom/changdu/component/pay/google/m;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 110
    .line 111
    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 112
    .line 113
    .line 114
    move-object/from16 v0, p1

    .line 115
    .line 116
    goto/16 :goto_5

    .line 117
    .line 118
    :catchall_1
    move-exception v0

    .line 119
    goto/16 :goto_6

    .line 120
    .line 121
    :cond_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 125
    .line 126
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 127
    .line 128
    .line 129
    iget-object v1, v5, Lcom/changdu/component/pay/google/m;->g:Ljava/util/List;

    .line 130
    .line 131
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    move-object v14, v0

    .line 136
    move-object v13, v1

    .line 137
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-eqz v0, :cond_11

    .line 142
    .line 143
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    move-object v4, v0

    .line 148
    check-cast v4, Lcom/android/billingclient/api/Purchase;

    .line 149
    .line 150
    invoke-virtual {v4}, Lcom/android/billingclient/api/Purchase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/AccountIdentifiers;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    if-eqz v0, :cond_7

    .line 155
    .line 156
    invoke-virtual {v0}, Lcom/android/billingclient/api/AccountIdentifiers;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    if-nez v0, :cond_6

    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_6
    :goto_2
    move-object v15, v0

    .line 164
    goto :goto_4

    .line 165
    :cond_7
    :goto_3
    const-string v0, ""

    .line 166
    .line 167
    goto :goto_2

    .line 168
    :goto_4
    sget-object v0, Lcom/changdu/component/pay/base/CDPay;->INSTANCE:Lcom/changdu/component/pay/base/CDPay;

    .line 169
    .line 170
    new-instance v16, Lcom/changdu/component/pay/base/model/PayReportMessage;

    .line 171
    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .line 176
    .line 177
    const-string v2, "\u4ed8\u6b3e\u6210\u529f\uff1a\npurchase: "

    .line 178
    .line 179
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    const-string v2, "\nobfuscatedAccountId: "

    .line 186
    .line 187
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v18

    .line 197
    const/16 v23, 0x3c

    .line 198
    .line 199
    const/16 v24, 0x0

    .line 200
    .line 201
    const-string v17, "PayBizWatch"

    .line 202
    .line 203
    const/16 v19, 0x0

    .line 204
    .line 205
    const/16 v20, 0x0

    .line 206
    .line 207
    const/16 v21, 0x0

    .line 208
    .line 209
    const/16 v22, 0x0

    .line 210
    .line 211
    invoke-direct/range {v16 .. v24}, Lcom/changdu/component/pay/base/model/PayReportMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 212
    .line 213
    .line 214
    move-object/from16 v1, v16

    .line 215
    .line 216
    invoke-virtual {v0, v1}, Lcom/changdu/component/pay/base/CDPay;->notifyReceiveReportMessage(Lcom/changdu/component/pay/base/model/PayReportMessage;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    if-nez v0, :cond_8

    .line 224
    .line 225
    goto :goto_1

    .line 226
    :cond_8
    iget-object v0, v5, Lcom/changdu/component/pay/google/m;->h:Lcom/changdu/component/pay/google/x;

    .line 227
    .line 228
    invoke-static {v0}, Lcom/changdu/component/pay/google/x;->b(Lcom/changdu/component/pay/google/x;)Lj$/util/concurrent/ConcurrentHashMap;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-virtual {v0, v15}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    move-object v1, v0

    .line 237
    check-cast v1, Lcom/changdu/component/pay/base/model/LocalPurchaseItem;

    .line 238
    .line 239
    if-nez v1, :cond_9

    .line 240
    .line 241
    goto :goto_1

    .line 242
    :cond_9
    iget-object v0, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 243
    .line 244
    if-nez v0, :cond_a

    .line 245
    .line 246
    iput-object v4, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 247
    .line 248
    :cond_a
    :try_start_3
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 249
    .line 250
    sget-object v0, Lcom/changdu/component/pay/google/I;->a:Lkotlin/Lazy;

    .line 251
    .line 252
    invoke-virtual {v1}, Lcom/changdu/component/pay/base/model/LocalPurchaseItem;->getCdOrderId()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    invoke-virtual {v1}, Lcom/changdu/component/pay/base/model/LocalPurchaseItem;->getCdCallbackUrl()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    move-object v3, v2

    .line 261
    invoke-virtual {v1}, Lcom/changdu/component/pay/base/model/LocalPurchaseItem;->getItemId()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    move-object/from16 v16, v3

    .line 266
    .line 267
    invoke-virtual {v1}, Lcom/changdu/component/pay/base/model/LocalPurchaseItem;->getSkuType()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v3

    .line 271
    iput-object v14, v5, Lcom/changdu/component/pay/google/m;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 272
    .line 273
    iput-object v13, v5, Lcom/changdu/component/pay/google/m;->b:Ljava/util/Iterator;

    .line 274
    .line 275
    iput-object v4, v5, Lcom/changdu/component/pay/google/m;->c:Ljava/lang/Object;

    .line 276
    .line 277
    iput-object v15, v5, Lcom/changdu/component/pay/google/m;->d:Ljava/lang/String;

    .line 278
    .line 279
    iput-object v1, v5, Lcom/changdu/component/pay/google/m;->e:Lcom/changdu/component/pay/base/model/LocalPurchaseItem;

    .line 280
    .line 281
    iput v10, v5, Lcom/changdu/component/pay/google/m;->f:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 282
    .line 283
    move-object/from16 v25, v16

    .line 284
    .line 285
    move-object/from16 v16, v1

    .line 286
    .line 287
    move-object/from16 v1, v25

    .line 288
    .line 289
    :try_start_4
    invoke-static/range {v0 .. v5}, Lcom/changdu/component/pay/google/I;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/Purchase;Lcom/changdu/component/pay/google/m;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 293
    if-ne v0, v6, :cond_b

    .line 294
    .line 295
    goto/16 :goto_f

    .line 296
    .line 297
    :cond_b
    move-object v3, v4

    .line 298
    move-object v4, v13

    .line 299
    move-object v13, v14

    .line 300
    move-object v2, v15

    .line 301
    move-object/from16 v1, v16

    .line 302
    .line 303
    :goto_5
    :try_start_5
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 304
    .line 305
    .line 306
    goto :goto_7

    .line 307
    :catchall_2
    move-exception v0

    .line 308
    move-object v3, v4

    .line 309
    move-object v4, v13

    .line 310
    move-object v13, v14

    .line 311
    move-object v2, v15

    .line 312
    move-object/from16 v1, v16

    .line 313
    .line 314
    goto :goto_6

    .line 315
    :catchall_3
    move-exception v0

    .line 316
    move-object/from16 v16, v1

    .line 317
    .line 318
    move-object v3, v4

    .line 319
    move-object v4, v13

    .line 320
    move-object v13, v14

    .line 321
    move-object v2, v15

    .line 322
    :goto_6
    sget-object v14, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 323
    .line 324
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    :goto_7
    iget-object v0, v5, Lcom/changdu/component/pay/google/m;->h:Lcom/changdu/component/pay/google/x;

    .line 332
    .line 333
    :try_start_6
    invoke-virtual {v1}, Lcom/changdu/component/pay/base/model/LocalPurchaseItem;->getSkuType()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v14

    .line 337
    const-string v15, "subs"

    .line 338
    .line 339
    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    move-result v14

    .line 343
    if-eqz v14, :cond_d

    .line 344
    .line 345
    iput-object v13, v5, Lcom/changdu/component/pay/google/m;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 346
    .line 347
    iput-object v4, v5, Lcom/changdu/component/pay/google/m;->b:Ljava/util/Iterator;

    .line 348
    .line 349
    iput-object v3, v5, Lcom/changdu/component/pay/google/m;->c:Ljava/lang/Object;

    .line 350
    .line 351
    iput-object v2, v5, Lcom/changdu/component/pay/google/m;->d:Ljava/lang/String;

    .line 352
    .line 353
    iput-object v1, v5, Lcom/changdu/component/pay/google/m;->e:Lcom/changdu/component/pay/base/model/LocalPurchaseItem;

    .line 354
    .line 355
    iput v11, v5, Lcom/changdu/component/pay/google/m;->f:I

    .line 356
    .line 357
    invoke-virtual {v0, v3, v5}, Lcom/changdu/component/pay/google/x;->a(Lcom/android/billingclient/api/Purchase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    if-ne v0, v6, :cond_c

    .line 362
    .line 363
    goto/16 :goto_f

    .line 364
    .line 365
    :cond_c
    :goto_8
    check-cast v0, Ljava/lang/Boolean;

    .line 366
    .line 367
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 368
    .line 369
    .line 370
    move-result v0

    .line 371
    goto :goto_a

    .line 372
    :cond_d
    iput-object v13, v5, Lcom/changdu/component/pay/google/m;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 373
    .line 374
    iput-object v4, v5, Lcom/changdu/component/pay/google/m;->b:Ljava/util/Iterator;

    .line 375
    .line 376
    iput-object v3, v5, Lcom/changdu/component/pay/google/m;->c:Ljava/lang/Object;

    .line 377
    .line 378
    iput-object v2, v5, Lcom/changdu/component/pay/google/m;->d:Ljava/lang/String;

    .line 379
    .line 380
    iput-object v1, v5, Lcom/changdu/component/pay/google/m;->e:Lcom/changdu/component/pay/base/model/LocalPurchaseItem;

    .line 381
    .line 382
    iput v9, v5, Lcom/changdu/component/pay/google/m;->f:I

    .line 383
    .line 384
    invoke-virtual {v0, v3, v5}, Lcom/changdu/component/pay/google/x;->b(Lcom/android/billingclient/api/Purchase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    if-ne v0, v6, :cond_e

    .line 389
    .line 390
    goto/16 :goto_f

    .line 391
    .line 392
    :cond_e
    :goto_9
    check-cast v0, Ljava/lang/Boolean;

    .line 393
    .line 394
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 395
    .line 396
    .line 397
    move-result v0

    .line 398
    :goto_a
    if-eqz v0, :cond_f

    .line 399
    .line 400
    sget-object v0, Lcom/changdu/component/pay/google/I;->a:Lkotlin/Lazy;

    .line 401
    .line 402
    invoke-virtual {v1}, Lcom/changdu/component/pay/base/model/LocalPurchaseItem;->getSkuType()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    invoke-static {v3}, Lcom/changdu/component/pay/google/I;->a(Lcom/android/billingclient/api/Purchase;)V

    .line 406
    .line 407
    .line 408
    :cond_f
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 409
    .line 410
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 411
    .line 412
    .line 413
    :goto_b
    move-object v0, v2

    .line 414
    move-object v2, v13

    .line 415
    goto :goto_d

    .line 416
    :goto_c
    sget-object v14, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 417
    .line 418
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    goto :goto_b

    .line 426
    :goto_d
    invoke-virtual {v1}, Lcom/changdu/component/pay/base/model/LocalPurchaseItem;->getCdOrderId()Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v13

    .line 430
    sget-object v14, Lcom/changdu/component/pay/base/PayUtil;->INSTANCE:Lcom/changdu/component/pay/base/PayUtil;

    .line 431
    .line 432
    invoke-virtual {v3}, Lcom/android/billingclient/api/Purchase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v15

    .line 436
    invoke-static {v14, v15, v12, v11, v12}, Lcom/changdu/component/pay/base/PayUtil;->base64EncodeToString$default(Lcom/changdu/component/pay/base/PayUtil;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v15

    .line 440
    invoke-virtual {v3}, Lcom/android/billingclient/api/Purchase;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v9

    .line 444
    invoke-static {v14, v9, v12, v11, v12}, Lcom/changdu/component/pay/base/PayUtil;->base64EncodeToString$default(Lcom/changdu/component/pay/base/PayUtil;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v9

    .line 448
    new-instance v14, Ljava/lang/StringBuilder;

    .line 449
    .line 450
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 451
    .line 452
    .line 453
    const-string v10, "OrderId="

    .line 454
    .line 455
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    const-string v10, "&GoogleData="

    .line 462
    .line 463
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    .line 469
    const-string v10, "&Signature="

    .line 470
    .line 471
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v9

    .line 481
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 482
    .line 483
    .line 484
    move-result-object v10

    .line 485
    new-instance v13, Lcom/changdu/component/pay/google/k;

    .line 486
    .line 487
    invoke-direct {v13, v1, v3, v9, v12}, Lcom/changdu/component/pay/google/k;-><init>(Lcom/changdu/component/pay/base/model/LocalPurchaseItem;Lcom/android/billingclient/api/Purchase;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 488
    .line 489
    .line 490
    iput-object v2, v5, Lcom/changdu/component/pay/google/m;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 491
    .line 492
    iput-object v4, v5, Lcom/changdu/component/pay/google/m;->b:Ljava/util/Iterator;

    .line 493
    .line 494
    iput-object v0, v5, Lcom/changdu/component/pay/google/m;->c:Ljava/lang/Object;

    .line 495
    .line 496
    iput-object v12, v5, Lcom/changdu/component/pay/google/m;->d:Ljava/lang/String;

    .line 497
    .line 498
    iput-object v12, v5, Lcom/changdu/component/pay/google/m;->e:Lcom/changdu/component/pay/base/model/LocalPurchaseItem;

    .line 499
    .line 500
    iput v8, v5, Lcom/changdu/component/pay/google/m;->f:I

    .line 501
    .line 502
    invoke-static {v10, v13, v5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 503
    .line 504
    .line 505
    move-result-object v1

    .line 506
    if-ne v1, v6, :cond_10

    .line 507
    .line 508
    goto :goto_f

    .line 509
    :cond_10
    move-object v13, v4

    .line 510
    goto/16 :goto_0

    .line 511
    .line 512
    :goto_e
    iget-object v1, v5, Lcom/changdu/component/pay/google/m;->h:Lcom/changdu/component/pay/google/x;

    .line 513
    .line 514
    invoke-static {v1}, Lcom/changdu/component/pay/google/x;->b(Lcom/changdu/component/pay/google/x;)Lj$/util/concurrent/ConcurrentHashMap;

    .line 515
    .line 516
    .line 517
    move-result-object v1

    .line 518
    invoke-virtual {v1, v0}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    .line 520
    .line 521
    const/4 v9, 0x3

    .line 522
    const/4 v10, 0x1

    .line 523
    goto/16 :goto_1

    .line 524
    .line 525
    :cond_11
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 526
    .line 527
    .line 528
    move-result-object v0

    .line 529
    new-instance v1, Lcom/changdu/component/pay/google/l;

    .line 530
    .line 531
    iget-object v2, v5, Lcom/changdu/component/pay/google/m;->h:Lcom/changdu/component/pay/google/x;

    .line 532
    .line 533
    invoke-direct {v1, v2, v14, v12}, Lcom/changdu/component/pay/google/l;-><init>(Lcom/changdu/component/pay/google/x;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    .line 534
    .line 535
    .line 536
    iput-object v12, v5, Lcom/changdu/component/pay/google/m;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 537
    .line 538
    iput-object v12, v5, Lcom/changdu/component/pay/google/m;->b:Ljava/util/Iterator;

    .line 539
    .line 540
    iput-object v12, v5, Lcom/changdu/component/pay/google/m;->c:Ljava/lang/Object;

    .line 541
    .line 542
    iput v7, v5, Lcom/changdu/component/pay/google/m;->f:I

    .line 543
    .line 544
    invoke-static {v0, v1, v5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 545
    .line 546
    .line 547
    move-result-object v0

    .line 548
    if-ne v0, v6, :cond_12

    .line 549
    .line 550
    :goto_f
    return-object v6

    .line 551
    :cond_12
    :goto_10
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 552
    .line 553
    return-object v0
.end method
