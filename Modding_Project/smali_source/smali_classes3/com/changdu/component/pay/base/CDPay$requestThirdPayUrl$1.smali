.class final Lcom/changdu/component/pay/base/CDPay$requestThirdPayUrl$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Proguard"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/changdu/component/pay/base/CDPay;->requestThirdPayUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/changdu/component/pay/base/model/PayRequestItem;Lcom/changdu/component/pay/base/CDPay$OnThirdPayUrlListener;)V
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
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
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
    c = "com.changdu.component.pay.base.CDPay$requestThirdPayUrl$1"
    f = "CDPay.kt"
    i = {}
    l = {
        0x4f7
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $channelExtInfo:Ljava/lang/String;

.field final synthetic $currencyCode:Ljava/lang/String;

.field final synthetic $currencyOrderMoney:Ljava/lang/Long;

.field final synthetic $listener:Lcom/changdu/component/pay/base/CDPay$OnThirdPayUrlListener;

.field final synthetic $payRequestItem:Lcom/changdu/component/pay/base/model/PayRequestItem;

.field label:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/changdu/component/pay/base/CDPay$OnThirdPayUrlListener;Lcom/changdu/component/pay/base/model/PayRequestItem;Ljava/lang/String;Ljava/lang/Long;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/changdu/component/pay/base/CDPay$OnThirdPayUrlListener;",
            "Lcom/changdu/component/pay/base/model/PayRequestItem;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/changdu/component/pay/base/CDPay$requestThirdPayUrl$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/changdu/component/pay/base/CDPay$requestThirdPayUrl$1;->$channelExtInfo:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/changdu/component/pay/base/CDPay$requestThirdPayUrl$1;->$listener:Lcom/changdu/component/pay/base/CDPay$OnThirdPayUrlListener;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/changdu/component/pay/base/CDPay$requestThirdPayUrl$1;->$payRequestItem:Lcom/changdu/component/pay/base/model/PayRequestItem;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/changdu/component/pay/base/CDPay$requestThirdPayUrl$1;->$currencyCode:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/changdu/component/pay/base/CDPay$requestThirdPayUrl$1;->$currencyOrderMoney:Ljava/lang/Long;

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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
    new-instance v0, Lcom/changdu/component/pay/base/CDPay$requestThirdPayUrl$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/changdu/component/pay/base/CDPay$requestThirdPayUrl$1;->$channelExtInfo:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/changdu/component/pay/base/CDPay$requestThirdPayUrl$1;->$listener:Lcom/changdu/component/pay/base/CDPay$OnThirdPayUrlListener;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/changdu/component/pay/base/CDPay$requestThirdPayUrl$1;->$payRequestItem:Lcom/changdu/component/pay/base/model/PayRequestItem;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/changdu/component/pay/base/CDPay$requestThirdPayUrl$1;->$currencyCode:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/changdu/component/pay/base/CDPay$requestThirdPayUrl$1;->$currencyOrderMoney:Ljava/lang/Long;

    .line 12
    .line 13
    move-object v6, p2

    .line 14
    invoke-direct/range {v0 .. v6}, Lcom/changdu/component/pay/base/CDPay$requestThirdPayUrl$1;-><init>(Ljava/lang/String;Lcom/changdu/component/pay/base/CDPay$OnThirdPayUrlListener;Lcom/changdu/component/pay/base/model/PayRequestItem;Ljava/lang/String;Ljava/lang/Long;Lkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/changdu/component/pay/base/CDPay$requestThirdPayUrl$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/changdu/component/pay/base/CDPay$requestThirdPayUrl$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/changdu/component/pay/base/CDPay$requestThirdPayUrl$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/changdu/component/pay/base/CDPay$requestThirdPayUrl$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v13

    .line 5
    iget v0, p0, Lcom/changdu/component/pay/base/CDPay$requestThirdPayUrl$1;->label:I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    move-object v0, p1

    .line 16
    goto/16 :goto_0

    .line 17
    .line 18
    :catch_0
    move-exception v0

    .line 19
    goto/16 :goto_1

    .line 20
    .line 21
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v0

    .line 29
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    .line 33
    .line 34
    iget-object v2, p0, Lcom/changdu/component/pay/base/CDPay$requestThirdPayUrl$1;->$channelExtInfo:Ljava/lang/String;

    .line 35
    .line 36
    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v2, "PayChanelId"

    .line 40
    .line 41
    const/4 v3, -0x1

    .line 42
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-gez v0, :cond_2

    .line 47
    .line 48
    iget-object v0, p0, Lcom/changdu/component/pay/base/CDPay$requestThirdPayUrl$1;->$listener:Lcom/changdu/component/pay/base/CDPay$OnThirdPayUrlListener;

    .line 49
    .line 50
    const-string v1, "payChannelId < 0"

    .line 51
    .line 52
    invoke-interface {v0, v1}, Lcom/changdu/component/pay/base/CDPay$OnThirdPayUrlListener;->onFail(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 56
    .line 57
    return-object v0

    .line 58
    :cond_2
    sget-object v2, Lcom/changdu/component/core/CDComponent;->context:Landroid/content/Context;

    .line 59
    .line 60
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    iget-object v3, p0, Lcom/changdu/component/pay/base/CDPay$requestThirdPayUrl$1;->$payRequestItem:Lcom/changdu/component/pay/base/model/PayRequestItem;

    .line 65
    .line 66
    invoke-virtual {v3}, Lcom/changdu/component/pay/base/model/PayRequestItem;->getItemId()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    new-instance v4, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v2, "|"

    .line 79
    .line 80
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v10

    .line 90
    new-instance v11, Ljava/util/HashMap;

    .line 91
    .line 92
    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 93
    .line 94
    .line 95
    iget-object v2, p0, Lcom/changdu/component/pay/base/CDPay$requestThirdPayUrl$1;->$channelExtInfo:Ljava/lang/String;

    .line 96
    .line 97
    iget-object v3, p0, Lcom/changdu/component/pay/base/CDPay$requestThirdPayUrl$1;->$currencyCode:Ljava/lang/String;

    .line 98
    .line 99
    iget-object v4, p0, Lcom/changdu/component/pay/base/CDPay$requestThirdPayUrl$1;->$currencyOrderMoney:Ljava/lang/Long;

    .line 100
    .line 101
    const-string v5, "ChannelExtInfo"

    .line 102
    .line 103
    invoke-virtual {v11, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    if-eqz v3, :cond_3

    .line 107
    .line 108
    const-string v2, "CurrencyCode"

    .line 109
    .line 110
    invoke-virtual {v11, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    :cond_3
    if-eqz v4, :cond_4

    .line 114
    .line 115
    const-string v2, "CurrencyOrderMoney"

    .line 116
    .line 117
    sget-object v3, Lcom/changdu/component/pay/base/CDPay;->INSTANCE:Lcom/changdu/component/pay/base/CDPay;

    .line 118
    .line 119
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 120
    .line 121
    .line 122
    move-result-wide v4

    .line 123
    invoke-static {v3, v4, v5}, Lcom/changdu/component/pay/base/CDPay;->access$getPriceDoubleDollar(Lcom/changdu/component/pay/base/CDPay;J)D

    .line 124
    .line 125
    .line 126
    move-result-wide v3

    .line 127
    invoke-static {v3, v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxDouble(D)Ljava/lang/Double;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    invoke-virtual {v11, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    :cond_4
    move v2, v0

    .line 135
    sget-object v0, Lcom/changdu/component/pay/base/CDPay;->INSTANCE:Lcom/changdu/component/pay/base/CDPay;

    .line 136
    .line 137
    iget-object v3, p0, Lcom/changdu/component/pay/base/CDPay$requestThirdPayUrl$1;->$payRequestItem:Lcom/changdu/component/pay/base/model/PayRequestItem;

    .line 138
    .line 139
    invoke-virtual {v3}, Lcom/changdu/component/pay/base/model/PayRequestItem;->getPayConfigId()I

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    iget-object v4, p0, Lcom/changdu/component/pay/base/CDPay$requestThirdPayUrl$1;->$payRequestItem:Lcom/changdu/component/pay/base/model/PayRequestItem;

    .line 144
    .line 145
    invoke-virtual {v4}, Lcom/changdu/component/pay/base/model/PayRequestItem;->getItemId()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    iget-object v5, p0, Lcom/changdu/component/pay/base/CDPay$requestThirdPayUrl$1;->$payRequestItem:Lcom/changdu/component/pay/base/model/PayRequestItem;

    .line 150
    .line 151
    invoke-virtual {v5}, Lcom/changdu/component/pay/base/model/PayRequestItem;->getShopItemId()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    iget-object v6, p0, Lcom/changdu/component/pay/base/CDPay$requestThirdPayUrl$1;->$payRequestItem:Lcom/changdu/component/pay/base/model/PayRequestItem;

    .line 156
    .line 157
    invoke-virtual {v6}, Lcom/changdu/component/pay/base/model/PayRequestItem;->getOrderPrice()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    iget-object v7, p0, Lcom/changdu/component/pay/base/CDPay$requestThirdPayUrl$1;->$payRequestItem:Lcom/changdu/component/pay/base/model/PayRequestItem;

    .line 162
    .line 163
    invoke-virtual {v7}, Lcom/changdu/component/pay/base/model/PayRequestItem;->getCouponId()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v7

    .line 167
    iget-object v8, p0, Lcom/changdu/component/pay/base/CDPay$requestThirdPayUrl$1;->$payRequestItem:Lcom/changdu/component/pay/base/model/PayRequestItem;

    .line 168
    .line 169
    invoke-virtual {v8}, Lcom/changdu/component/pay/base/model/PayRequestItem;->getPaySource()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v8

    .line 173
    iget-object v9, p0, Lcom/changdu/component/pay/base/CDPay$requestThirdPayUrl$1;->$payRequestItem:Lcom/changdu/component/pay/base/model/PayRequestItem;

    .line 174
    .line 175
    invoke-virtual {v9}, Lcom/changdu/component/pay/base/model/PayRequestItem;->getPayCustomData()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v9

    .line 179
    iput v1, p0, Lcom/changdu/component/pay/base/CDPay$requestThirdPayUrl$1;->label:I

    .line 180
    .line 181
    move v1, v2

    .line 182
    move v2, v1

    .line 183
    move-object v12, p0

    .line 184
    invoke-virtual/range {v0 .. v12}, Lcom/changdu/component/pay/base/CDPay;->createOrder(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    if-ne v0, v13, :cond_5

    .line 189
    .line 190
    return-object v13

    .line 191
    :cond_5
    :goto_0
    check-cast v0, Lcom/changdu/component/pay/base/model/PayCreateOrderResult;

    .line 192
    .line 193
    if-eqz v0, :cond_6

    .line 194
    .line 195
    invoke-virtual {v0}, Lcom/changdu/component/pay/base/model/PayCreateOrderResult;->isSuccess()Z

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    if-eqz v1, :cond_6

    .line 200
    .line 201
    iget-object v1, p0, Lcom/changdu/component/pay/base/CDPay$requestThirdPayUrl$1;->$listener:Lcom/changdu/component/pay/base/CDPay$OnThirdPayUrlListener;

    .line 202
    .line 203
    invoke-virtual {v0}, Lcom/changdu/component/pay/base/model/PayCreateOrderResult;->getJumpUrl()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    invoke-virtual {v0}, Lcom/changdu/component/pay/base/model/PayCreateOrderResult;->getParameter()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-interface {v1, v2, v0}, Lcom/changdu/component/pay/base/CDPay$OnThirdPayUrlListener;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    goto :goto_2

    .line 215
    :cond_6
    iget-object v1, p0, Lcom/changdu/component/pay/base/CDPay$requestThirdPayUrl$1;->$listener:Lcom/changdu/component/pay/base/CDPay$OnThirdPayUrlListener;

    .line 216
    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .line 221
    .line 222
    const-string v3, "create Order fail: "

    .line 223
    .line 224
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    invoke-interface {v1, v0}, Lcom/changdu/component/pay/base/CDPay$OnThirdPayUrlListener;->onFail(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 235
    .line 236
    .line 237
    goto :goto_2

    .line 238
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 239
    .line 240
    .line 241
    iget-object v1, p0, Lcom/changdu/component/pay/base/CDPay$requestThirdPayUrl$1;->$listener:Lcom/changdu/component/pay/base/CDPay$OnThirdPayUrlListener;

    .line 242
    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    .line 244
    .line 245
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    .line 247
    .line 248
    const-string v3, "exception: "

    .line 249
    .line 250
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-interface {v1, v0}, Lcom/changdu/component/pay/base/CDPay$OnThirdPayUrlListener;->onFail(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 264
    .line 265
    return-object v0
.end method
