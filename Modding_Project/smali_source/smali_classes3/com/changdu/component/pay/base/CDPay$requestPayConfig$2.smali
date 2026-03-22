.class final Lcom/changdu/component/pay/base/CDPay$requestPayConfig$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Proguard"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/changdu/component/pay/base/CDPay;->requestPayConfig(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.changdu.component.pay.base.CDPay$requestPayConfig$2"
    f = "CDPay.kt"
    i = {
        0x1
    }
    l = {
        0x185,
        0x186,
        0x196,
        0x197
    }
    m = "invokeSuspend"
    n = {
        "strKey"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/changdu/component/pay/base/CDPay$requestPayConfig$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance p1, Lcom/changdu/component/pay/base/CDPay$requestPayConfig$2;

    .line 2
    .line 3
    invoke-direct {p1, p2}, Lcom/changdu/component/pay/base/CDPay$requestPayConfig$2;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/changdu/component/pay/base/CDPay$requestPayConfig$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lkotlinx/coroutines/CoroutineScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/changdu/component/pay/base/CDPay$requestPayConfig$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/changdu/component/pay/base/CDPay$requestPayConfig$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/changdu/component/pay/base/CDPay$requestPayConfig$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v0, 0x7

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x1

    .line 6
    const/4 v4, 0x3

    .line 7
    const/4 v5, 0x4

    .line 8
    const/4 v6, 0x0

    .line 9
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v7

    .line 13
    iget v8, v1, Lcom/changdu/component/pay/base/CDPay$requestPayConfig$2;->label:I

    .line 14
    .line 15
    if-eqz v8, :cond_4

    .line 16
    .line 17
    if-eq v8, v3, :cond_3

    .line 18
    .line 19
    if-eq v8, v2, :cond_2

    .line 20
    .line 21
    if-eq v8, v4, :cond_1

    .line 22
    .line 23
    if-ne v8, v5, :cond_0

    .line 24
    .line 25
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    return-object p1

    .line 29
    :catch_0
    move-exception v0

    .line 30
    goto/16 :goto_4

    .line 31
    .line 32
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 33
    .line 34
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 35
    .line 36
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v0

    .line 40
    :cond_1
    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 41
    .line 42
    .line 43
    move-object/from16 v0, p1

    .line 44
    .line 45
    goto/16 :goto_2

    .line 46
    .line 47
    :cond_2
    iget-object v8, v1, Lcom/changdu/component/pay/base/CDPay$requestPayConfig$2;->L$1:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v8, Lcom/changdu/component/pay/base/internal/a;

    .line 50
    .line 51
    iget-object v9, v1, Lcom/changdu/component/pay/base/CDPay$requestPayConfig$2;->L$0:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v9, Ljava/lang/String;

    .line 54
    .line 55
    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    move-object/from16 v10, p1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 62
    .line 63
    .line 64
    move-object/from16 v8, p1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    :try_start_3
    sget-object v8, Lcom/changdu/component/pay/base/CDPay;->INSTANCE:Lcom/changdu/component/pay/base/CDPay;

    .line 71
    .line 72
    iput v3, v1, Lcom/changdu/component/pay/base/CDPay$requestPayConfig$2;->label:I

    .line 73
    .line 74
    invoke-static {v8, v1}, Lcom/changdu/component/pay/base/CDPay;->access$getRandomKey(Lcom/changdu/component/pay/base/CDPay;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v8

    .line 78
    if-ne v8, v7, :cond_5

    .line 79
    .line 80
    goto/16 :goto_3

    .line 81
    .line 82
    :cond_5
    :goto_0
    move-object v9, v8

    .line 83
    check-cast v9, Ljava/lang/String;

    .line 84
    .line 85
    sget-object v8, Lcom/changdu/component/pay/base/internal/a;->a:Lcom/changdu/component/pay/base/internal/a;

    .line 86
    .line 87
    sget-object v10, Lcom/changdu/component/pay/base/CDPay;->INSTANCE:Lcom/changdu/component/pay/base/CDPay;

    .line 88
    .line 89
    iput-object v9, v1, Lcom/changdu/component/pay/base/CDPay$requestPayConfig$2;->L$0:Ljava/lang/Object;

    .line 90
    .line 91
    iput-object v8, v1, Lcom/changdu/component/pay/base/CDPay$requestPayConfig$2;->L$1:Ljava/lang/Object;

    .line 92
    .line 93
    iput v2, v1, Lcom/changdu/component/pay/base/CDPay$requestPayConfig$2;->label:I

    .line 94
    .line 95
    invoke-static {v10, v1}, Lcom/changdu/component/pay/base/CDPay;->access$getConfigBase64Content(Lcom/changdu/component/pay/base/CDPay;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v10

    .line 99
    if-ne v10, v7, :cond_6

    .line 100
    .line 101
    goto/16 :goto_3

    .line 102
    .line 103
    :cond_6
    :goto_1
    invoke-static {}, Lcom/changdu/component/pay/base/CDPay;->access$getMLocalKey$p()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v11

    .line 107
    new-instance v12, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v10

    .line 122
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    invoke-static {v10}, Lcom/changdu/component/pay/base/internal/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v8

    .line 129
    sget-object v10, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 130
    .line 131
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 132
    .line 133
    sget-object v11, Lcom/changdu/component/pay/base/CDPay;->INSTANCE:Lcom/changdu/component/pay/base/CDPay;

    .line 134
    .line 135
    invoke-static {v11}, Lcom/changdu/component/pay/base/CDPay;->access$getPayConfigUrl(Lcom/changdu/component/pay/base/CDPay;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v12

    .line 139
    invoke-virtual {v11}, Lcom/changdu/component/pay/base/CDPay;->getMerchantId()J

    .line 140
    .line 141
    .line 142
    move-result-wide v13

    .line 143
    invoke-static {v13, v14}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    .line 144
    .line 145
    .line 146
    move-result-object v11

    .line 147
    invoke-static {}, Lcom/changdu/component/pay/base/CDPay;->access$getMPayAppId$p()J

    .line 148
    .line 149
    .line 150
    move-result-wide v13

    .line 151
    invoke-static {v13, v14}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    .line 152
    .line 153
    .line 154
    move-result-object v13

    .line 155
    invoke-static {}, Lcom/changdu/component/pay/base/CDPay;->access$getMPayVersion$p()J

    .line 156
    .line 157
    .line 158
    move-result-wide v14

    .line 159
    invoke-static {v14, v15}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    .line 160
    .line 161
    .line 162
    move-result-object v14

    .line 163
    invoke-static {}, Lcom/changdu/component/pay/base/CDPay;->access$getSESSION_ID$p()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v15

    .line 167
    move/from16 v16, v3

    .line 168
    .line 169
    new-array v3, v0, [Ljava/lang/Object;

    .line 170
    .line 171
    aput-object v11, v3, v6

    .line 172
    .line 173
    aput-object v13, v3, v16

    .line 174
    .line 175
    const-string v11, "3"

    .line 176
    .line 177
    aput-object v11, v3, v2

    .line 178
    .line 179
    aput-object v14, v3, v4

    .line 180
    .line 181
    aput-object v15, v3, v5

    .line 182
    .line 183
    const/4 v11, 0x5

    .line 184
    aput-object v9, v3, v11

    .line 185
    .line 186
    const/4 v9, 0x6

    .line 187
    aput-object v8, v3, v9

    .line 188
    .line 189
    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-static {v10, v12, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    sget-object v3, Lcom/changdu/component/httpbiz/CDHttpRequest;->INSTANCE:Lcom/changdu/component/httpbiz/CDHttpRequest;

    .line 198
    .line 199
    const-class v8, Lcom/changdu/component/pay/base/internal/PayApiService;

    .line 200
    .line 201
    const/4 v9, 0x0

    .line 202
    invoke-static {v3, v8, v6, v2, v9}, Lcom/changdu/component/http/HttpRequest;->getApiService$default(Lcom/changdu/component/http/HttpRequest;Ljava/lang/Class;ZILjava/lang/Object;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    check-cast v2, Lcom/changdu/component/pay/base/internal/PayApiService;

    .line 207
    .line 208
    iput-object v9, v1, Lcom/changdu/component/pay/base/CDPay$requestPayConfig$2;->L$0:Ljava/lang/Object;

    .line 209
    .line 210
    iput-object v9, v1, Lcom/changdu/component/pay/base/CDPay$requestPayConfig$2;->L$1:Ljava/lang/Object;

    .line 211
    .line 212
    iput v4, v1, Lcom/changdu/component/pay/base/CDPay$requestPayConfig$2;->label:I

    .line 213
    .line 214
    invoke-interface {v2, v0, v1}, Lcom/changdu/component/pay/base/internal/PayApiService;->getAsString(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    if-ne v0, v7, :cond_7

    .line 219
    .line 220
    goto :goto_3

    .line 221
    :cond_7
    :goto_2
    check-cast v0, Ljava/lang/String;

    .line 222
    .line 223
    sget-object v2, Lcom/changdu/component/pay/base/CDPay;->INSTANCE:Lcom/changdu/component/pay/base/CDPay;

    .line 224
    .line 225
    iput v5, v1, Lcom/changdu/component/pay/base/CDPay$requestPayConfig$2;->label:I

    .line 226
    .line 227
    invoke-static {v2, v0, v1}, Lcom/changdu/component/pay/base/CDPay;->access$decodePayConfig(Lcom/changdu/component/pay/base/CDPay;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 231
    if-ne v0, v7, :cond_8

    .line 232
    .line 233
    :goto_3
    return-object v7

    .line 234
    :cond_8
    return-object v0

    .line 235
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 236
    .line 237
    .line 238
    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    return-object v0
.end method
