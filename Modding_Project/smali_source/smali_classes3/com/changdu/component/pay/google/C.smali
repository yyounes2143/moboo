.class public final Lcom/changdu/component/pay/google/C;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Proguard"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:I

.field public final synthetic c:Lcom/android/billingclient/api/Purchase;


# direct methods
.method public constructor <init>(Lcom/android/billingclient/api/Purchase;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/component/pay/google/C;->c:Lcom/android/billingclient/api/Purchase;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    new-instance p1, Lcom/changdu/component/pay/google/C;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/changdu/component/pay/google/C;->c:Lcom/android/billingclient/api/Purchase;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/changdu/component/pay/google/C;-><init>(Lcom/android/billingclient/api/Purchase;Lkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    new-instance p1, Lcom/changdu/component/pay/google/C;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/changdu/component/pay/google/C;->c:Lcom/android/billingclient/api/Purchase;

    .line 8
    .line 9
    invoke-direct {p1, v0, p2}, Lcom/changdu/component/pay/google/C;-><init>(Lcom/android/billingclient/api/Purchase;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Lcom/changdu/component/pay/google/C;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v12, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v13

    .line 7
    iget v0, v12, Lcom/changdu/component/pay/google/C;->b:I

    .line 8
    .line 9
    const-string v1, "\nobfuscatedAccountId: "

    .line 10
    .line 11
    const-string v2, ""

    .line 12
    .line 13
    const/4 v14, 0x0

    .line 14
    const/4 v3, 0x1

    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw v0

    .line 26
    :pswitch_0
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    move-object/from16 v0, p1

    .line 30
    .line 31
    goto/16 :goto_a

    .line 32
    .line 33
    :pswitch_1
    iget-object v0, v12, Lcom/changdu/component/pay/google/C;->a:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v0, Ljava/lang/String;

    .line 36
    .line 37
    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 38
    .line 39
    .line 40
    move-object v15, v0

    .line 41
    move-object/from16 v0, p1

    .line 42
    .line 43
    goto/16 :goto_7

    .line 44
    .line 45
    :pswitch_2
    iget-object v0, v12, Lcom/changdu/component/pay/google/C;->a:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v0, Ljava/lang/String;

    .line 48
    .line 49
    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    move-object v2, v0

    .line 53
    move-object/from16 v0, p1

    .line 54
    .line 55
    goto/16 :goto_6

    .line 56
    .line 57
    :pswitch_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 58
    .line 59
    .line 60
    goto/16 :goto_3

    .line 61
    .line 62
    :pswitch_4
    iget-object v0, v12, Lcom/changdu/component/pay/google/C;->a:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v0, Lcom/changdu/component/pay/google/localdb/PurchaseOrder;

    .line 65
    .line 66
    :try_start_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 67
    .line 68
    .line 69
    move-object/from16 v3, p1

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :pswitch_5
    iget-object v0, v12, Lcom/changdu/component/pay/google/C;->a:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v0, Lcom/changdu/component/pay/google/localdb/PurchaseOrder;

    .line 75
    .line 76
    :try_start_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :pswitch_6
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 81
    .line 82
    .line 83
    move-object/from16 v0, p1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :pswitch_7
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    :try_start_5
    sget-object v0, Lcom/changdu/component/pay/google/I;->a:Lkotlin/Lazy;

    .line 90
    .line 91
    iget-object v0, v12, Lcom/changdu/component/pay/google/C;->c:Lcom/android/billingclient/api/Purchase;

    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    iput v3, v12, Lcom/changdu/component/pay/google/C;->b:I

    .line 98
    .line 99
    invoke-static {v0, v12}, Lcom/changdu/component/pay/google/I;->a(Ljava/lang/String;Lcom/changdu/component/pay/google/C;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    if-ne v0, v13, :cond_0

    .line 104
    .line 105
    goto/16 :goto_9

    .line 106
    .line 107
    :cond_0
    :goto_0
    check-cast v0, Lcom/changdu/component/pay/google/localdb/PurchaseOrder;

    .line 108
    .line 109
    invoke-static {v0}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    if-eqz v0, :cond_7

    .line 113
    .line 114
    invoke-virtual {v0, v3}, Lcom/changdu/component/pay/google/localdb/PurchaseOrder;->setStatus(I)V

    .line 115
    .line 116
    .line 117
    iget-object v3, v12, Lcom/changdu/component/pay/google/C;->c:Lcom/android/billingclient/api/Purchase;

    .line 118
    .line 119
    invoke-virtual {v0, v3}, Lcom/changdu/component/pay/google/localdb/PurchaseOrder;->setPurchaseData(Lcom/android/billingclient/api/Purchase;)V

    .line 120
    .line 121
    .line 122
    sget-object v3, Lcom/changdu/component/pay/google/I;->a:Lkotlin/Lazy;

    .line 123
    .line 124
    iput-object v0, v12, Lcom/changdu/component/pay/google/C;->a:Ljava/lang/Object;

    .line 125
    .line 126
    const/4 v3, 0x2

    .line 127
    iput v3, v12, Lcom/changdu/component/pay/google/C;->b:I

    .line 128
    .line 129
    invoke-static {v0, v12}, Lcom/changdu/component/pay/google/I;->a(Lcom/changdu/component/pay/google/localdb/PurchaseOrder;Lcom/changdu/component/pay/google/C;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    if-ne v3, v13, :cond_1

    .line 134
    .line 135
    goto/16 :goto_9

    .line 136
    .line 137
    :cond_1
    :goto_1
    invoke-static {v0}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    sget-object v3, Lcom/changdu/component/pay/google/I;->a:Lkotlin/Lazy;

    .line 141
    .line 142
    invoke-virtual {v0}, Lcom/changdu/component/pay/google/localdb/PurchaseOrder;->getJumpUrl()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    invoke-virtual {v0}, Lcom/changdu/component/pay/google/localdb/PurchaseOrder;->getCdOrderId()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    iget-object v5, v12, Lcom/changdu/component/pay/google/C;->c:Lcom/android/billingclient/api/Purchase;

    .line 151
    .line 152
    invoke-virtual {v5}, Lcom/android/billingclient/api/Purchase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    iget-object v6, v12, Lcom/changdu/component/pay/google/C;->c:Lcom/android/billingclient/api/Purchase;

    .line 157
    .line 158
    invoke-virtual {v6}, Lcom/android/billingclient/api/Purchase;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    iput-object v0, v12, Lcom/changdu/component/pay/google/C;->a:Ljava/lang/Object;

    .line 163
    .line 164
    const/4 v7, 0x3

    .line 165
    iput v7, v12, Lcom/changdu/component/pay/google/C;->b:I

    .line 166
    .line 167
    invoke-static {v3, v4, v5, v6, v12}, Lcom/changdu/component/pay/google/I;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    if-ne v3, v13, :cond_2

    .line 172
    .line 173
    goto/16 :goto_9

    .line 174
    .line 175
    :cond_2
    :goto_2
    check-cast v3, Ljava/lang/Boolean;

    .line 176
    .line 177
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    if-eqz v3, :cond_3

    .line 182
    .line 183
    invoke-static {v0}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    sget-object v3, Lcom/changdu/component/pay/google/I;->a:Lkotlin/Lazy;

    .line 187
    .line 188
    invoke-virtual {v0}, Lcom/changdu/component/pay/google/localdb/PurchaseOrder;->getCdOrderId()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    iput-object v14, v12, Lcom/changdu/component/pay/google/C;->a:Ljava/lang/Object;

    .line 193
    .line 194
    const/4 v3, 0x4

    .line 195
    iput v3, v12, Lcom/changdu/component/pay/google/C;->b:I

    .line 196
    .line 197
    invoke-static {v0, v12}, Lcom/changdu/component/pay/google/I;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    if-ne v0, v13, :cond_4

    .line 202
    .line 203
    goto/16 :goto_9

    .line 204
    .line 205
    :cond_3
    invoke-static {v0}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    :cond_4
    :goto_3
    sget-object v0, Lcom/changdu/component/pay/base/CDPay;->INSTANCE:Lcom/changdu/component/pay/base/CDPay;

    .line 209
    .line 210
    new-instance v3, Lcom/changdu/component/pay/base/model/PayReportMessage;

    .line 211
    .line 212
    const-string v4, "PayBizWatch"

    .line 213
    .line 214
    iget-object v5, v12, Lcom/changdu/component/pay/google/C;->c:Lcom/android/billingclient/api/Purchase;

    .line 215
    .line 216
    invoke-virtual {v5}, Lcom/android/billingclient/api/Purchase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/AccountIdentifiers;

    .line 217
    .line 218
    .line 219
    move-result-object v6

    .line 220
    if-eqz v6, :cond_6

    .line 221
    .line 222
    invoke-virtual {v6}, Lcom/android/billingclient/api/AccountIdentifiers;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v6

    .line 226
    if-nez v6, :cond_5

    .line 227
    .line 228
    goto :goto_4

    .line 229
    :cond_5
    move-object v2, v6

    .line 230
    :cond_6
    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .line 234
    .line 235
    const-string v7, "\u56de\u4f20\u8ba2\u5355\uff1a\u672c\u5730\u6570\u636e\u5e93\u6709\u8bb0\u5f55\npurchase: "

    .line 236
    .line 237
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v5

    .line 253
    const/16 v10, 0x3c

    .line 254
    .line 255
    const/4 v11, 0x0

    .line 256
    const/4 v6, 0x0

    .line 257
    const/4 v7, 0x0

    .line 258
    const/4 v8, 0x0

    .line 259
    const/4 v9, 0x0

    .line 260
    invoke-direct/range {v3 .. v11}, Lcom/changdu/component/pay/base/model/PayReportMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0, v3}, Lcom/changdu/component/pay/base/CDPay;->notifyReceiveReportMessage(Lcom/changdu/component/pay/base/model/PayReportMessage;)V

    .line 264
    .line 265
    .line 266
    goto/16 :goto_d

    .line 267
    .line 268
    :cond_7
    iget-object v0, v12, Lcom/changdu/component/pay/google/C;->c:Lcom/android/billingclient/api/Purchase;

    .line 269
    .line 270
    invoke-static {v0}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    iget-object v0, v12, Lcom/changdu/component/pay/google/C;->c:Lcom/android/billingclient/api/Purchase;

    .line 274
    .line 275
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/AccountIdentifiers;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    if-eqz v0, :cond_9

    .line 280
    .line 281
    invoke-virtual {v0}, Lcom/android/billingclient/api/AccountIdentifiers;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    if-nez v0, :cond_8

    .line 286
    .line 287
    goto :goto_5

    .line 288
    :cond_8
    move-object v2, v0

    .line 289
    :cond_9
    :goto_5
    sget-object v0, Lcom/changdu/component/pay/base/CDPay;->INSTANCE:Lcom/changdu/component/pay/base/CDPay;

    .line 290
    .line 291
    new-instance v3, Lcom/changdu/component/pay/base/model/PayReportMessage;

    .line 292
    .line 293
    const-string v4, "PayBizWatch"

    .line 294
    .line 295
    iget-object v5, v12, Lcom/changdu/component/pay/google/C;->c:Lcom/android/billingclient/api/Purchase;

    .line 296
    .line 297
    new-instance v6, Ljava/lang/StringBuilder;

    .line 298
    .line 299
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    .line 301
    .line 302
    const-string v7, "\u56de\u4f20\u8ba2\u5355\uff1a\u672c\u5730\u6570\u636e\u5e93\u65e0\u8bb0\u5f55\npurchase: "

    .line 303
    .line 304
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v5

    .line 320
    const/16 v10, 0x3c

    .line 321
    .line 322
    const/4 v11, 0x0

    .line 323
    const/4 v6, 0x0

    .line 324
    const/4 v7, 0x0

    .line 325
    const/4 v8, 0x0

    .line 326
    const/4 v9, 0x0

    .line 327
    invoke-direct/range {v3 .. v11}, Lcom/changdu/component/pay/base/model/PayReportMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v0, v3}, Lcom/changdu/component/pay/base/CDPay;->notifyReceiveReportMessage(Lcom/changdu/component/pay/base/model/PayReportMessage;)V

    .line 331
    .line 332
    .line 333
    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 334
    .line 335
    .line 336
    move-result v1

    .line 337
    if-eqz v1, :cond_a

    .line 338
    .line 339
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 340
    .line 341
    return-object v0

    .line 342
    :cond_a
    invoke-virtual {v0}, Lcom/changdu/component/pay/base/CDPay;->getPlayPurchaseCallbackUrl()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    if-eqz v1, :cond_b

    .line 347
    .line 348
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 349
    .line 350
    .line 351
    move-result v1

    .line 352
    if-eqz v1, :cond_14

    .line 353
    .line 354
    :cond_b
    invoke-virtual {v0}, Lcom/changdu/component/pay/base/CDPay;->isPayConfigPrepared()Z

    .line 355
    .line 356
    .line 357
    move-result v1

    .line 358
    if-nez v1, :cond_d

    .line 359
    .line 360
    iput-object v2, v12, Lcom/changdu/component/pay/google/C;->a:Ljava/lang/Object;

    .line 361
    .line 362
    const/4 v1, 0x5

    .line 363
    iput v1, v12, Lcom/changdu/component/pay/google/C;->b:I

    .line 364
    .line 365
    invoke-virtual {v0, v12}, Lcom/changdu/component/pay/base/CDPay;->requestPayConfig(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    if-ne v0, v13, :cond_c

    .line 370
    .line 371
    goto/16 :goto_9

    .line 372
    .line 373
    :cond_c
    :goto_6
    check-cast v0, Ljava/lang/Boolean;

    .line 374
    .line 375
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 376
    .line 377
    .line 378
    :cond_d
    move-object v15, v2

    .line 379
    sget-object v0, Lcom/changdu/component/pay/base/CDPay;->INSTANCE:Lcom/changdu/component/pay/base/CDPay;

    .line 380
    .line 381
    const/16 v1, 0xc

    .line 382
    .line 383
    const/4 v2, -0x1

    .line 384
    invoke-virtual {v0, v1, v2}, Lcom/changdu/component/pay/base/CDPay;->getPayChannelItemByPayCodeType(II)Lcom/changdu/component/pay/base/model/PayServerConfigChannel;

    .line 385
    .line 386
    .line 387
    move-result-object v1

    .line 388
    if-nez v1, :cond_e

    .line 389
    .line 390
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 391
    .line 392
    return-object v0

    .line 393
    :cond_e
    iget-object v2, v12, Lcom/changdu/component/pay/google/C;->c:Lcom/android/billingclient/api/Purchase;

    .line 394
    .line 395
    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    .line 396
    .line 397
    .line 398
    move-result-object v2

    .line 399
    const/4 v3, 0x0

    .line 400
    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v2

    .line 404
    move-object v4, v2

    .line 405
    check-cast v4, Ljava/lang/String;

    .line 406
    .line 407
    if-nez v4, :cond_f

    .line 408
    .line 409
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 410
    .line 411
    return-object v0

    .line 412
    :cond_f
    sget-object v2, Lcom/changdu/component/core/CDComponent;->context:Landroid/content/Context;

    .line 413
    .line 414
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v2

    .line 418
    new-instance v3, Ljava/lang/StringBuilder;

    .line 419
    .line 420
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    const-string v2, "|"

    .line 427
    .line 428
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v10

    .line 438
    move-object v2, v1

    .line 439
    invoke-virtual {v2}, Lcom/changdu/component/pay/base/model/PayServerConfigChannel;->getPayType()I

    .line 440
    .line 441
    .line 442
    move-result v1

    .line 443
    invoke-virtual {v2}, Lcom/changdu/component/pay/base/model/PayServerConfigChannel;->getPayId()I

    .line 444
    .line 445
    .line 446
    move-result v2

    .line 447
    const-string v5, ""

    .line 448
    .line 449
    const-string v6, "0"

    .line 450
    .line 451
    const-string v7, "0"

    .line 452
    .line 453
    const-string v8, ""

    .line 454
    .line 455
    const-string v9, ""

    .line 456
    .line 457
    iput-object v15, v12, Lcom/changdu/component/pay/google/C;->a:Ljava/lang/Object;

    .line 458
    .line 459
    const/4 v3, 0x6

    .line 460
    iput v3, v12, Lcom/changdu/component/pay/google/C;->b:I

    .line 461
    .line 462
    const/4 v3, 0x0

    .line 463
    const/4 v11, 0x0

    .line 464
    invoke-virtual/range {v0 .. v12}, Lcom/changdu/component/pay/base/CDPay;->createOrder(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 465
    .line 466
    .line 467
    move-result-object v0

    .line 468
    if-ne v0, v13, :cond_10

    .line 469
    .line 470
    goto :goto_9

    .line 471
    :cond_10
    :goto_7
    check-cast v0, Lcom/changdu/component/pay/base/model/PayCreateOrderResult;

    .line 472
    .line 473
    if-eqz v0, :cond_18

    .line 474
    .line 475
    invoke-virtual {v0}, Lcom/changdu/component/pay/base/model/PayCreateOrderResult;->isSuccess()Z

    .line 476
    .line 477
    .line 478
    move-result v1

    .line 479
    if-nez v1, :cond_11

    .line 480
    .line 481
    goto :goto_c

    .line 482
    :cond_11
    invoke-virtual {v0}, Lcom/changdu/component/pay/base/model/PayCreateOrderResult;->getJumpUrl()Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v1

    .line 486
    if-eqz v1, :cond_13

    .line 487
    .line 488
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 489
    .line 490
    .line 491
    move-result v1

    .line 492
    if-eqz v1, :cond_12

    .line 493
    .line 494
    goto :goto_8

    .line 495
    :cond_12
    sget-object v1, Lcom/changdu/component/pay/base/CDPay;->INSTANCE:Lcom/changdu/component/pay/base/CDPay;

    .line 496
    .line 497
    invoke-virtual {v0}, Lcom/changdu/component/pay/base/model/PayCreateOrderResult;->getJumpUrl()Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    invoke-virtual {v1, v0}, Lcom/changdu/component/pay/base/CDPay;->setPlayPurchaseCallbackUrl(Ljava/lang/String;)V

    .line 502
    .line 503
    .line 504
    :cond_13
    :goto_8
    move-object v2, v15

    .line 505
    :cond_14
    sget-object v0, Lcom/changdu/component/pay/base/CDPay;->INSTANCE:Lcom/changdu/component/pay/base/CDPay;

    .line 506
    .line 507
    invoke-virtual {v0}, Lcom/changdu/component/pay/base/CDPay;->getPlayPurchaseCallbackUrl()Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v1

    .line 511
    if-eqz v1, :cond_17

    .line 512
    .line 513
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 514
    .line 515
    .line 516
    move-result v1

    .line 517
    if-eqz v1, :cond_15

    .line 518
    .line 519
    goto :goto_b

    .line 520
    :cond_15
    sget-object v1, Lcom/changdu/component/pay/google/I;->a:Lkotlin/Lazy;

    .line 521
    .line 522
    invoke-virtual {v0}, Lcom/changdu/component/pay/base/CDPay;->getPlayPurchaseCallbackUrl()Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object v0

    .line 526
    iget-object v1, v12, Lcom/changdu/component/pay/google/C;->c:Lcom/android/billingclient/api/Purchase;

    .line 527
    .line 528
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v1

    .line 532
    iget-object v3, v12, Lcom/changdu/component/pay/google/C;->c:Lcom/android/billingclient/api/Purchase;

    .line 533
    .line 534
    invoke-virtual {v3}, Lcom/android/billingclient/api/Purchase;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v3

    .line 538
    iput-object v14, v12, Lcom/changdu/component/pay/google/C;->a:Ljava/lang/Object;

    .line 539
    .line 540
    const/4 v4, 0x7

    .line 541
    iput v4, v12, Lcom/changdu/component/pay/google/C;->b:I

    .line 542
    .line 543
    invoke-static {v0, v2, v1, v3, v12}, Lcom/changdu/component/pay/google/I;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 544
    .line 545
    .line 546
    move-result-object v0

    .line 547
    if-ne v0, v13, :cond_16

    .line 548
    .line 549
    :goto_9
    return-object v13

    .line 550
    :cond_16
    :goto_a
    check-cast v0, Ljava/lang/Boolean;

    .line 551
    .line 552
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 553
    .line 554
    .line 555
    iget-object v0, v12, Lcom/changdu/component/pay/google/C;->c:Lcom/android/billingclient/api/Purchase;

    .line 556
    .line 557
    invoke-static {v0}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    goto :goto_d

    .line 561
    :cond_17
    :goto_b
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 562
    .line 563
    return-object v0

    .line 564
    :cond_18
    :goto_c
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 565
    .line 566
    return-object v0

    .line 567
    :catch_0
    :goto_d
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 568
    .line 569
    return-object v0

    .line 570
    nop

    .line 571
    :pswitch_data_0
    .packed-switch 0x0
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
