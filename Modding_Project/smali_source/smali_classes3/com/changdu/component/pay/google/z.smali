.class public final Lcom/changdu/component/pay/google/z;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Proguard"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/component/pay/google/z;->d:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/changdu/component/pay/google/z;->e:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/changdu/component/pay/google/z;->f:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/changdu/component/pay/google/z;->g:Ljava/lang/String;

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
    new-instance v0, Lcom/changdu/component/pay/google/z;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/changdu/component/pay/google/z;->d:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/changdu/component/pay/google/z;->e:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/changdu/component/pay/google/z;->f:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/changdu/component/pay/google/z;->g:Ljava/lang/String;

    .line 10
    .line 11
    move-object v5, p2

    .line 12
    invoke-direct/range {v0 .. v5}, Lcom/changdu/component/pay/google/z;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/changdu/component/pay/google/z;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/changdu/component/pay/google/z;

    .line 10
    .line 11
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/changdu/component/pay/google/z;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    iget v0, v1, Lcom/changdu/component/pay/google/z;->c:I

    .line 8
    .line 9
    const-string v3, "\nsignature: "

    .line 10
    .line 11
    const-string v4, "\noriginalJson: "

    .line 12
    .line 13
    const-string v5, "\ncdOrderId: "

    .line 14
    .line 15
    const-string v6, "GooglePlay \u652f\u4ed8\u6210\u529f\u4f46\u56de\u4f20\u8ba2\u5355\u5931\u8d25\nurl: "

    .line 16
    .line 17
    const/4 v7, 0x0

    .line 18
    const/4 v8, 0x1

    .line 19
    const/4 v9, 0x0

    .line 20
    const/4 v10, 0x2

    .line 21
    if-eqz v0, :cond_3

    .line 22
    .line 23
    if-eq v0, v8, :cond_2

    .line 24
    .line 25
    if-ne v0, v10, :cond_1

    .line 26
    .line 27
    iget v0, v1, Lcom/changdu/component/pay/google/z;->b:I

    .line 28
    .line 29
    iget-object v11, v1, Lcom/changdu/component/pay/google/z;->a:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    move/from16 v23, v7

    .line 35
    .line 36
    move/from16 v24, v8

    .line 37
    .line 38
    move v7, v10

    .line 39
    :cond_0
    move-object v12, v11

    .line 40
    goto/16 :goto_7

    .line 41
    .line 42
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw v0

    .line 50
    :cond_2
    iget v11, v1, Lcom/changdu/component/pay/google/z;->b:I

    .line 51
    .line 52
    iget-object v12, v1, Lcom/changdu/component/pay/google/z;->a:Ljava/lang/String;

    .line 53
    .line 54
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    move-object/from16 v0, p1

    .line 58
    .line 59
    goto/16 :goto_2

    .line 60
    .line 61
    :catch_0
    move-exception v0

    .line 62
    move/from16 v23, v7

    .line 63
    .line 64
    :goto_0
    move/from16 v24, v8

    .line 65
    .line 66
    goto/16 :goto_4

    .line 67
    .line 68
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, v1, Lcom/changdu/component/pay/google/z;->d:Ljava/lang/String;

    .line 72
    .line 73
    const-string v11, "?"

    .line 74
    .line 75
    invoke-static {v0, v11, v7, v10, v9}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v12

    .line 79
    if-nez v12, :cond_4

    .line 80
    .line 81
    new-instance v12, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    :cond_4
    iget-object v11, v1, Lcom/changdu/component/pay/google/z;->e:Ljava/lang/String;

    .line 97
    .line 98
    new-instance v12, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v0, "&OrderId="

    .line 107
    .line 108
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    sget-object v11, Lcom/changdu/component/pay/base/PayUtil;->INSTANCE:Lcom/changdu/component/pay/base/PayUtil;

    .line 119
    .line 120
    iget-object v12, v1, Lcom/changdu/component/pay/google/z;->f:Ljava/lang/String;

    .line 121
    .line 122
    invoke-static {v11, v12, v9, v10, v9}, Lcom/changdu/component/pay/base/PayUtil;->base64EncodeToString$default(Lcom/changdu/component/pay/base/PayUtil;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v12

    .line 126
    new-instance v13, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string v0, "&GoogleData="

    .line 135
    .line 136
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    iget-object v12, v1, Lcom/changdu/component/pay/google/z;->g:Ljava/lang/String;

    .line 147
    .line 148
    invoke-static {v11, v12, v9, v10, v9}, Lcom/changdu/component/pay/base/PayUtil;->base64EncodeToString$default(Lcom/changdu/component/pay/base/PayUtil;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v11

    .line 152
    new-instance v12, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v0, "&Signature="

    .line 161
    .line 162
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    move-object v12, v0

    .line 173
    move v11, v7

    .line 174
    :goto_1
    const/4 v0, 0x3

    .line 175
    if-ge v11, v0, :cond_7

    .line 176
    .line 177
    :try_start_1
    sget-object v0, Lcom/changdu/component/httpbiz/CDHttpRequest;->INSTANCE:Lcom/changdu/component/httpbiz/CDHttpRequest;

    .line 178
    .line 179
    const-class v13, Lcom/changdu/component/pay/base/internal/PayApiService;

    .line 180
    .line 181
    invoke-static {v0, v13, v7, v10, v9}, Lcom/changdu/component/http/HttpRequest;->getApiService$default(Lcom/changdu/component/http/HttpRequest;Ljava/lang/Class;ZILjava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    check-cast v0, Lcom/changdu/component/pay/base/internal/PayApiService;

    .line 186
    .line 187
    iput-object v12, v1, Lcom/changdu/component/pay/google/z;->a:Ljava/lang/String;

    .line 188
    .line 189
    iput v11, v1, Lcom/changdu/component/pay/google/z;->b:I

    .line 190
    .line 191
    iput v8, v1, Lcom/changdu/component/pay/google/z;->c:I

    .line 192
    .line 193
    invoke-interface {v0, v12, v1}, Lcom/changdu/component/pay/base/internal/PayApiService;->getAsString(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    if-ne v0, v2, :cond_5

    .line 198
    .line 199
    goto/16 :goto_6

    .line 200
    .line 201
    :cond_5
    :goto_2
    check-cast v0, Ljava/lang/String;

    .line 202
    .line 203
    const-string v13, "success"

    .line 204
    .line 205
    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v13

    .line 209
    if-eqz v13, :cond_6

    .line 210
    .line 211
    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    return-object v0

    .line 216
    :cond_6
    sget-object v13, Lcom/changdu/component/pay/base/CDPay;->INSTANCE:Lcom/changdu/component/pay/base/CDPay;

    .line 217
    .line 218
    new-instance v14, Lcom/changdu/component/pay/base/model/PayReportMessage;

    .line 219
    .line 220
    new-instance v15, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 223
    .line 224
    .line 225
    move/from16 v23, v7

    .line 226
    .line 227
    :try_start_2
    const-string v7, "result: "

    .line 228
    .line 229
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v16

    .line 239
    iget-object v0, v1, Lcom/changdu/component/pay/google/z;->d:Ljava/lang/String;

    .line 240
    .line 241
    iget-object v7, v1, Lcom/changdu/component/pay/google/z;->e:Ljava/lang/String;

    .line 242
    .line 243
    iget-object v15, v1, Lcom/changdu/component/pay/google/z;->f:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 244
    .line 245
    move/from16 v24, v8

    .line 246
    .line 247
    :try_start_3
    iget-object v8, v1, Lcom/changdu/component/pay/google/z;->g:Ljava/lang/String;

    .line 248
    .line 249
    new-instance v9, Ljava/lang/StringBuilder;

    .line 250
    .line 251
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v17

    .line 282
    const/16 v21, 0x39

    .line 283
    .line 284
    const/16 v22, 0x0

    .line 285
    .line 286
    const/4 v15, 0x0

    .line 287
    const/16 v18, 0x0

    .line 288
    .line 289
    const/16 v19, 0x0

    .line 290
    .line 291
    const/16 v20, 0x0

    .line 292
    .line 293
    invoke-direct/range {v14 .. v22}, Lcom/changdu/component/pay/base/model/PayReportMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v13, v14}, Lcom/changdu/component/pay/base/CDPay;->notifyReceiveReportMessage(Lcom/changdu/component/pay/base/model/PayReportMessage;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 297
    .line 298
    .line 299
    :goto_3
    move v0, v11

    .line 300
    move-object v11, v12

    .line 301
    goto :goto_5

    .line 302
    :catch_1
    move-exception v0

    .line 303
    goto :goto_4

    .line 304
    :catch_2
    move-exception v0

    .line 305
    goto/16 :goto_0

    .line 306
    .line 307
    :goto_4
    sget-object v7, Lcom/changdu/component/pay/base/CDPay;->INSTANCE:Lcom/changdu/component/pay/base/CDPay;

    .line 308
    .line 309
    new-instance v13, Lcom/changdu/component/pay/base/model/PayReportMessage;

    .line 310
    .line 311
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    new-instance v8, Ljava/lang/StringBuilder;

    .line 316
    .line 317
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 318
    .line 319
    .line 320
    const-string v9, "resultException: "

    .line 321
    .line 322
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v15

    .line 332
    iget-object v0, v1, Lcom/changdu/component/pay/google/z;->d:Ljava/lang/String;

    .line 333
    .line 334
    iget-object v8, v1, Lcom/changdu/component/pay/google/z;->e:Ljava/lang/String;

    .line 335
    .line 336
    iget-object v9, v1, Lcom/changdu/component/pay/google/z;->f:Ljava/lang/String;

    .line 337
    .line 338
    iget-object v14, v1, Lcom/changdu/component/pay/google/z;->g:Ljava/lang/String;

    .line 339
    .line 340
    new-instance v10, Ljava/lang/StringBuilder;

    .line 341
    .line 342
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v16

    .line 373
    const/16 v20, 0x39

    .line 374
    .line 375
    const/16 v21, 0x0

    .line 376
    .line 377
    const/4 v14, 0x0

    .line 378
    const/16 v17, 0x0

    .line 379
    .line 380
    const/16 v18, 0x0

    .line 381
    .line 382
    const/16 v19, 0x0

    .line 383
    .line 384
    invoke-direct/range {v13 .. v21}, Lcom/changdu/component/pay/base/model/PayReportMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v7, v13}, Lcom/changdu/component/pay/base/CDPay;->notifyReceiveReportMessage(Lcom/changdu/component/pay/base/model/PayReportMessage;)V

    .line 388
    .line 389
    .line 390
    goto :goto_3

    .line 391
    :goto_5
    iput-object v11, v1, Lcom/changdu/component/pay/google/z;->a:Ljava/lang/String;

    .line 392
    .line 393
    iput v0, v1, Lcom/changdu/component/pay/google/z;->b:I

    .line 394
    .line 395
    const/4 v7, 0x2

    .line 396
    iput v7, v1, Lcom/changdu/component/pay/google/z;->c:I

    .line 397
    .line 398
    const-wide/16 v8, 0x1f4

    .line 399
    .line 400
    invoke-static {v8, v9, v1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v8

    .line 404
    if-ne v8, v2, :cond_0

    .line 405
    .line 406
    :goto_6
    return-object v2

    .line 407
    :goto_7
    add-int/lit8 v11, v0, 0x1

    .line 408
    .line 409
    move v10, v7

    .line 410
    move/from16 v7, v23

    .line 411
    .line 412
    move/from16 v8, v24

    .line 413
    .line 414
    const/4 v9, 0x0

    .line 415
    goto/16 :goto_1

    .line 416
    .line 417
    :cond_7
    move/from16 v23, v7

    .line 418
    .line 419
    invoke-static/range {v23 .. v23}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    return-object v0
.end method
