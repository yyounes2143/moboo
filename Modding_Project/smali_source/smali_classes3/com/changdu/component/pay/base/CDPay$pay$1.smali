.class final Lcom/changdu/component/pay/base/CDPay$pay$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Proguard"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/changdu/component/pay/base/CDPay;->pay(Landroid/app/Activity;ILcom/changdu/component/pay/base/model/PayRequestItem;Lcom/changdu/component/pay/base/IPayCallback;)V
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
    c = "com.changdu.component.pay.base.CDPay$pay$1"
    f = "CDPay.kt"
    i = {}
    l = {
        0x1a9,
        0x1c8
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $payCallback:Lcom/changdu/component/pay/base/IPayCallback;

.field final synthetic $payRequestItem:Lcom/changdu/component/pay/base/model/PayRequestItem;

.field final synthetic $payServerCode:I

.field label:I


# direct methods
.method public constructor <init>(ILcom/changdu/component/pay/base/model/PayRequestItem;Lcom/changdu/component/pay/base/IPayCallback;Landroid/app/Activity;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/changdu/component/pay/base/model/PayRequestItem;",
            "Lcom/changdu/component/pay/base/IPayCallback;",
            "Landroid/app/Activity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/changdu/component/pay/base/CDPay$pay$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/changdu/component/pay/base/CDPay$pay$1;->$payServerCode:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/changdu/component/pay/base/CDPay$pay$1;->$payRequestItem:Lcom/changdu/component/pay/base/model/PayRequestItem;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/changdu/component/pay/base/CDPay$pay$1;->$payCallback:Lcom/changdu/component/pay/base/IPayCallback;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/changdu/component/pay/base/CDPay$pay$1;->$activity:Landroid/app/Activity;

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
    new-instance v0, Lcom/changdu/component/pay/base/CDPay$pay$1;

    .line 2
    .line 3
    iget v1, p0, Lcom/changdu/component/pay/base/CDPay$pay$1;->$payServerCode:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/changdu/component/pay/base/CDPay$pay$1;->$payRequestItem:Lcom/changdu/component/pay/base/model/PayRequestItem;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/changdu/component/pay/base/CDPay$pay$1;->$payCallback:Lcom/changdu/component/pay/base/IPayCallback;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/changdu/component/pay/base/CDPay$pay$1;->$activity:Landroid/app/Activity;

    .line 10
    .line 11
    move-object v5, p2

    .line 12
    invoke-direct/range {v0 .. v5}, Lcom/changdu/component/pay/base/CDPay$pay$1;-><init>(ILcom/changdu/component/pay/base/model/PayRequestItem;Lcom/changdu/component/pay/base/IPayCallback;Landroid/app/Activity;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/changdu/component/pay/base/CDPay$pay$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/changdu/component/pay/base/CDPay$pay$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/changdu/component/pay/base/CDPay$pay$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/changdu/component/pay/base/CDPay$pay$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

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
    iget v0, v12, Lcom/changdu/component/pay/base/CDPay$pay$1;->label:I

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    const/4 v14, 0x3

    .line 11
    const/4 v15, 0x0

    .line 12
    const/4 v2, 0x1

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    if-eq v0, v2, :cond_1

    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 20
    .line 21
    .line 22
    move-object/from16 v0, p1

    .line 23
    .line 24
    goto/16 :goto_4

    .line 25
    .line 26
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 29
    .line 30
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v0

    .line 34
    :cond_1
    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :try_start_2
    sget-object v0, Lcom/changdu/component/pay/base/CDPay;->INSTANCE:Lcom/changdu/component/pay/base/CDPay;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/changdu/component/pay/base/CDPay;->isPayConfigPrepared()Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-nez v3, :cond_3

    .line 48
    .line 49
    iput v2, v12, Lcom/changdu/component/pay/base/CDPay$pay$1;->label:I

    .line 50
    .line 51
    invoke-virtual {v0, v12}, Lcom/changdu/component/pay/base/CDPay;->requestPayConfig(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-ne v0, v13, :cond_3

    .line 56
    .line 57
    goto/16 :goto_3

    .line 58
    .line 59
    :cond_3
    :goto_0
    iget v0, v12, Lcom/changdu/component/pay/base/CDPay$pay$1;->$payServerCode:I

    .line 60
    .line 61
    if-ne v0, v14, :cond_7

    .line 62
    .line 63
    sget-object v0, Lcom/changdu/component/pay/base/CDPay;->INSTANCE:Lcom/changdu/component/pay/base/CDPay;

    .line 64
    .line 65
    invoke-virtual {v0, v14}, Lcom/changdu/component/pay/base/CDPay;->getPayCategoryByCode(I)Lcom/changdu/component/pay/base/model/PayServerConfigCategory;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    if-eqz v0, :cond_6

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/changdu/component/pay/base/model/PayServerConfigCategory;->getChannelList()Ljava/util/ArrayList;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    if-eqz v2, :cond_6

    .line 76
    .line 77
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_4

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_4
    invoke-virtual {v0}, Lcom/changdu/component/pay/base/model/PayServerConfigCategory;->getChannelList()Ljava/util/ArrayList;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    const/4 v3, 0x0

    .line 93
    :cond_5
    if-ge v3, v2, :cond_6

    .line 94
    .line 95
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    add-int/lit8 v3, v3, 0x1

    .line 100
    .line 101
    check-cast v4, Lcom/changdu/component/pay/base/model/PayServerConfigChannel;

    .line 102
    .line 103
    invoke-virtual {v4}, Lcom/changdu/component/pay/base/model/PayServerConfigChannel;->getViewType()I

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    const/4 v6, 0x4

    .line 108
    if-eq v5, v6, :cond_5

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_6
    :goto_1
    move-object v4, v15

    .line 112
    goto :goto_2

    .line 113
    :cond_7
    sget-object v2, Lcom/changdu/component/pay/base/CDPay;->INSTANCE:Lcom/changdu/component/pay/base/CDPay;

    .line 114
    .line 115
    const/4 v3, -0x1

    .line 116
    invoke-virtual {v2, v0, v3}, Lcom/changdu/component/pay/base/CDPay;->getPayChannelItemByPayCodeType(II)Lcom/changdu/component/pay/base/model/PayServerConfigChannel;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    :goto_2
    if-nez v4, :cond_9

    .line 121
    .line 122
    new-instance v16, Lcom/changdu/component/pay/base/model/PayReportMessage;

    .line 123
    .line 124
    iget v0, v12, Lcom/changdu/component/pay/base/CDPay$pay$1;->$payServerCode:I

    .line 125
    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    const-string v2, "\u652f\u4ed8xml\u914d\u7f6e\u4e2d\u627e\u4e0d\u5230\u76f8\u5173\u652f\u4ed8\u9879\u7684\u914d\u7f6e\u3002\u5f53\u524d\u8bf7\u6c42\u7684\u652f\u4ed8\u65b9\u5f0f\u4e3a\uff1a"

    .line 132
    .line 133
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v18

    .line 143
    invoke-static {}, Lcom/changdu/component/pay/base/CDPay;->access$getMCachedBase64PayConfigContent$p()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-static {}, Lcom/changdu/component/pay/base/CDPay;->access$getMMerchandiseList$p()Ljava/util/ArrayList;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    iget-object v2, v12, Lcom/changdu/component/pay/base/CDPay$pay$1;->$payRequestItem:Lcom/changdu/component/pay/base/model/PayRequestItem;

    .line 152
    .line 153
    iget v3, v12, Lcom/changdu/component/pay/base/CDPay$pay$1;->$payServerCode:I

    .line 154
    .line 155
    new-instance v4, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .line 159
    .line 160
    const-string v5, "\u5f53\u524d\u4e0b\u53d1\u7684\u672a\u89e3\u6790\u7684\u914d\u7f6e\u5185\u5bb9\u4e3a\uff1a"

    .line 161
    .line 162
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string v0, "\n\u89e3\u6790\u540e\u7684\u6570\u636e\u4e3a\uff1a"

    .line 169
    .line 170
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string v0, "\npayRequestItem\uff1a"

    .line 177
    .line 178
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const-string v0, "\npayType: "

    .line 185
    .line 186
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v19

    .line 196
    const/16 v23, 0x39

    .line 197
    .line 198
    const/16 v24, 0x0

    .line 199
    .line 200
    const/16 v17, 0x0

    .line 201
    .line 202
    const/16 v20, 0x0

    .line 203
    .line 204
    const/16 v21, 0x0

    .line 205
    .line 206
    const/16 v22, 0x0

    .line 207
    .line 208
    invoke-direct/range {v16 .. v24}, Lcom/changdu/component/pay/base/model/PayReportMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 209
    .line 210
    .line 211
    move-object/from16 v0, v16

    .line 212
    .line 213
    iget-object v1, v12, Lcom/changdu/component/pay/base/CDPay$pay$1;->$payCallback:Lcom/changdu/component/pay/base/IPayCallback;

    .line 214
    .line 215
    if-eqz v1, :cond_8

    .line 216
    .line 217
    const/16 v2, 0x3eb

    .line 218
    .line 219
    invoke-interface {v1, v2, v0}, Lcom/changdu/component/pay/base/IPayCallback;->failed(ILcom/changdu/component/pay/base/model/PayReportMessage;)V

    .line 220
    .line 221
    .line 222
    :cond_8
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 223
    .line 224
    return-object v0

    .line 225
    :cond_9
    sget-object v0, Lcom/changdu/component/core/CDComponent;->context:Landroid/content/Context;

    .line 226
    .line 227
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    iget-object v2, v12, Lcom/changdu/component/pay/base/CDPay$pay$1;->$payRequestItem:Lcom/changdu/component/pay/base/model/PayRequestItem;

    .line 232
    .line 233
    invoke-virtual {v2}, Lcom/changdu/component/pay/base/model/PayRequestItem;->getItemId()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    new-instance v3, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    const-string v0, "|"

    .line 246
    .line 247
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v10

    .line 257
    sget-object v0, Lcom/changdu/component/pay/base/CDPay;->INSTANCE:Lcom/changdu/component/pay/base/CDPay;

    .line 258
    .line 259
    invoke-virtual {v4}, Lcom/changdu/component/pay/base/model/PayServerConfigChannel;->getPayType()I

    .line 260
    .line 261
    .line 262
    move-result v2

    .line 263
    invoke-virtual {v4}, Lcom/changdu/component/pay/base/model/PayServerConfigChannel;->getPayId()I

    .line 264
    .line 265
    .line 266
    move-result v3

    .line 267
    iget-object v4, v12, Lcom/changdu/component/pay/base/CDPay$pay$1;->$payRequestItem:Lcom/changdu/component/pay/base/model/PayRequestItem;

    .line 268
    .line 269
    invoke-virtual {v4}, Lcom/changdu/component/pay/base/model/PayRequestItem;->getPayConfigId()I

    .line 270
    .line 271
    .line 272
    move-result v4

    .line 273
    iget-object v5, v12, Lcom/changdu/component/pay/base/CDPay$pay$1;->$payRequestItem:Lcom/changdu/component/pay/base/model/PayRequestItem;

    .line 274
    .line 275
    invoke-virtual {v5}, Lcom/changdu/component/pay/base/model/PayRequestItem;->getItemId()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v5

    .line 279
    iget-object v6, v12, Lcom/changdu/component/pay/base/CDPay$pay$1;->$payRequestItem:Lcom/changdu/component/pay/base/model/PayRequestItem;

    .line 280
    .line 281
    invoke-virtual {v6}, Lcom/changdu/component/pay/base/model/PayRequestItem;->getShopItemId()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v6

    .line 285
    iget-object v7, v12, Lcom/changdu/component/pay/base/CDPay$pay$1;->$payRequestItem:Lcom/changdu/component/pay/base/model/PayRequestItem;

    .line 286
    .line 287
    invoke-virtual {v7}, Lcom/changdu/component/pay/base/model/PayRequestItem;->getOrderPrice()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v7

    .line 291
    iget-object v8, v12, Lcom/changdu/component/pay/base/CDPay$pay$1;->$payRequestItem:Lcom/changdu/component/pay/base/model/PayRequestItem;

    .line 292
    .line 293
    invoke-virtual {v8}, Lcom/changdu/component/pay/base/model/PayRequestItem;->getCouponId()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v8

    .line 297
    iget-object v9, v12, Lcom/changdu/component/pay/base/CDPay$pay$1;->$payRequestItem:Lcom/changdu/component/pay/base/model/PayRequestItem;

    .line 298
    .line 299
    invoke-virtual {v9}, Lcom/changdu/component/pay/base/model/PayRequestItem;->getPaySource()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v9

    .line 303
    iget-object v11, v12, Lcom/changdu/component/pay/base/CDPay$pay$1;->$payRequestItem:Lcom/changdu/component/pay/base/model/PayRequestItem;

    .line 304
    .line 305
    invoke-virtual {v11}, Lcom/changdu/component/pay/base/model/PayRequestItem;->getPayCustomData()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v11

    .line 309
    iput v1, v12, Lcom/changdu/component/pay/base/CDPay$pay$1;->label:I

    .line 310
    .line 311
    move v1, v2

    .line 312
    move v2, v3

    .line 313
    move v3, v4

    .line 314
    move-object v4, v5

    .line 315
    move-object v5, v6

    .line 316
    move-object v6, v7

    .line 317
    move-object v7, v8

    .line 318
    move-object v8, v9

    .line 319
    move-object v9, v11

    .line 320
    const/4 v11, 0x0

    .line 321
    invoke-virtual/range {v0 .. v12}, Lcom/changdu/component/pay/base/CDPay;->createOrder(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    if-ne v0, v13, :cond_a

    .line 326
    .line 327
    :goto_3
    return-object v13

    .line 328
    :cond_a
    :goto_4
    check-cast v0, Lcom/changdu/component/pay/base/model/PayCreateOrderResult;

    .line 329
    .line 330
    if-eqz v0, :cond_b

    .line 331
    .line 332
    invoke-virtual {v0}, Lcom/changdu/component/pay/base/model/PayCreateOrderResult;->getJumpUrl()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v1

    .line 336
    goto :goto_5

    .line 337
    :cond_b
    move-object v1, v15

    .line 338
    :goto_5
    const/16 v2, 0x23

    .line 339
    .line 340
    const/16 v3, 0x18

    .line 341
    .line 342
    const/16 v4, 0xc

    .line 343
    .line 344
    if-eqz v1, :cond_f

    .line 345
    .line 346
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 347
    .line 348
    .line 349
    move-result v1

    .line 350
    if-eqz v1, :cond_c

    .line 351
    .line 352
    goto :goto_6

    .line 353
    :cond_c
    iget v1, v12, Lcom/changdu/component/pay/base/CDPay$pay$1;->$payServerCode:I

    .line 354
    .line 355
    if-ne v1, v4, :cond_d

    .line 356
    .line 357
    sget-object v1, Lcom/changdu/component/pay/base/CDPay;->INSTANCE:Lcom/changdu/component/pay/base/CDPay;

    .line 358
    .line 359
    invoke-virtual {v0}, Lcom/changdu/component/pay/base/model/PayCreateOrderResult;->getJumpUrl()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v5

    .line 363
    invoke-virtual {v1, v5}, Lcom/changdu/component/pay/base/CDPay;->setPlayPurchaseCallbackUrl(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    goto :goto_6

    .line 367
    :cond_d
    if-ne v1, v3, :cond_e

    .line 368
    .line 369
    sget-object v1, Lcom/changdu/component/pay/base/CDPay;->INSTANCE:Lcom/changdu/component/pay/base/CDPay;

    .line 370
    .line 371
    invoke-virtual {v0}, Lcom/changdu/component/pay/base/model/PayCreateOrderResult;->getJumpUrl()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v5

    .line 375
    invoke-virtual {v1, v5}, Lcom/changdu/component/pay/base/CDPay;->setHuaweiPurchaseCallbackUrl(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    goto :goto_6

    .line 379
    :cond_e
    if-ne v1, v2, :cond_f

    .line 380
    .line 381
    sget-object v1, Lcom/changdu/component/pay/base/CDPay;->INSTANCE:Lcom/changdu/component/pay/base/CDPay;

    .line 382
    .line 383
    invoke-virtual {v0}, Lcom/changdu/component/pay/base/model/PayCreateOrderResult;->getJumpUrl()Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v5

    .line 387
    invoke-virtual {v1, v5}, Lcom/changdu/component/pay/base/CDPay;->setMiGlobalPurchaseCallbackUrl(Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    :cond_f
    :goto_6
    if-eqz v0, :cond_17

    .line 391
    .line 392
    invoke-virtual {v0}, Lcom/changdu/component/pay/base/model/PayCreateOrderResult;->isSuccess()Z

    .line 393
    .line 394
    .line 395
    move-result v1

    .line 396
    if-nez v1, :cond_10

    .line 397
    .line 398
    goto/16 :goto_7

    .line 399
    .line 400
    :cond_10
    iget v1, v12, Lcom/changdu/component/pay/base/CDPay$pay$1;->$payServerCode:I

    .line 401
    .line 402
    const/16 v5, 0x3f1

    .line 403
    .line 404
    if-eq v1, v14, :cond_16

    .line 405
    .line 406
    if-eq v1, v4, :cond_15

    .line 407
    .line 408
    const/16 v4, 0xe

    .line 409
    .line 410
    if-eq v1, v4, :cond_14

    .line 411
    .line 412
    if-eq v1, v3, :cond_13

    .line 413
    .line 414
    if-eq v1, v2, :cond_12

    .line 415
    .line 416
    iget-object v0, v12, Lcom/changdu/component/pay/base/CDPay$pay$1;->$payCallback:Lcom/changdu/component/pay/base/IPayCallback;

    .line 417
    .line 418
    if-eqz v0, :cond_11

    .line 419
    .line 420
    new-instance v1, Lcom/changdu/component/pay/base/model/PayReportMessage;

    .line 421
    .line 422
    const-string v3, "\u65e0\u6548\u7684\u652f\u4ed8\u65b9\u5f0f"

    .line 423
    .line 424
    const/16 v8, 0x3d

    .line 425
    .line 426
    const/4 v9, 0x0

    .line 427
    const/4 v2, 0x0

    .line 428
    const/4 v4, 0x0

    .line 429
    const/4 v5, 0x0

    .line 430
    const/4 v6, 0x0

    .line 431
    const/4 v7, 0x0

    .line 432
    invoke-direct/range {v1 .. v9}, Lcom/changdu/component/pay/base/model/PayReportMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 433
    .line 434
    .line 435
    const/16 v2, 0x3ed

    .line 436
    .line 437
    invoke-interface {v0, v2, v1}, Lcom/changdu/component/pay/base/IPayCallback;->failed(ILcom/changdu/component/pay/base/model/PayReportMessage;)V

    .line 438
    .line 439
    .line 440
    :cond_11
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 441
    .line 442
    return-object v0

    .line 443
    :cond_12
    :try_start_3
    sget-object v1, Lcom/changdu/component/pay/base/CDPay;->INSTANCE:Lcom/changdu/component/pay/base/CDPay;

    .line 444
    .line 445
    invoke-virtual {v1}, Lcom/changdu/component/pay/base/CDPay;->getMiGlobalPayService()Lcom/changdu/component/pay/base/service/IPayServiceMiGlobal;

    .line 446
    .line 447
    .line 448
    move-result-object v1

    .line 449
    if-eqz v1, :cond_1b

    .line 450
    .line 451
    iget-object v2, v12, Lcom/changdu/component/pay/base/CDPay$pay$1;->$activity:Landroid/app/Activity;

    .line 452
    .line 453
    iget-object v3, v12, Lcom/changdu/component/pay/base/CDPay$pay$1;->$payRequestItem:Lcom/changdu/component/pay/base/model/PayRequestItem;

    .line 454
    .line 455
    iget-object v4, v12, Lcom/changdu/component/pay/base/CDPay$pay$1;->$payCallback:Lcom/changdu/component/pay/base/IPayCallback;

    .line 456
    .line 457
    invoke-interface {v1, v2, v3, v0, v4}, Lcom/changdu/component/pay/base/service/IPayService;->pay(Landroid/app/Activity;Lcom/changdu/component/pay/base/model/PayRequestItem;Lcom/changdu/component/pay/base/model/PayCreateOrderResult;Lcom/changdu/component/pay/base/IPayCallback;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 458
    .line 459
    .line 460
    goto/16 :goto_9

    .line 461
    .line 462
    :catch_0
    :try_start_4
    iget-object v0, v12, Lcom/changdu/component/pay/base/CDPay$pay$1;->$payCallback:Lcom/changdu/component/pay/base/IPayCallback;

    .line 463
    .line 464
    if-eqz v0, :cond_1b

    .line 465
    .line 466
    new-instance v13, Lcom/changdu/component/pay/base/model/PayReportMessage;

    .line 467
    .line 468
    const-string v15, "\u65e0\u6cd5\u627e\u5230\u5c0f\u7c73\u56fd\u9645\u652f\u4ed8\u6a21\u5757"

    .line 469
    .line 470
    const/16 v20, 0x3d

    .line 471
    .line 472
    const/16 v21, 0x0

    .line 473
    .line 474
    const/4 v14, 0x0

    .line 475
    const/16 v16, 0x0

    .line 476
    .line 477
    const/16 v17, 0x0

    .line 478
    .line 479
    const/16 v18, 0x0

    .line 480
    .line 481
    const/16 v19, 0x0

    .line 482
    .line 483
    invoke-direct/range {v13 .. v21}, Lcom/changdu/component/pay/base/model/PayReportMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 484
    .line 485
    .line 486
    invoke-interface {v0, v5, v13}, Lcom/changdu/component/pay/base/IPayCallback;->failed(ILcom/changdu/component/pay/base/model/PayReportMessage;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 487
    .line 488
    .line 489
    goto/16 :goto_9

    .line 490
    .line 491
    :cond_13
    :try_start_5
    sget-object v1, Lcom/changdu/component/pay/base/CDPay;->INSTANCE:Lcom/changdu/component/pay/base/CDPay;

    .line 492
    .line 493
    invoke-virtual {v1}, Lcom/changdu/component/pay/base/CDPay;->getHuaweiPayService()Lcom/changdu/component/pay/base/service/IPayServiceHuawei;

    .line 494
    .line 495
    .line 496
    move-result-object v1

    .line 497
    if-eqz v1, :cond_1b

    .line 498
    .line 499
    iget-object v2, v12, Lcom/changdu/component/pay/base/CDPay$pay$1;->$activity:Landroid/app/Activity;

    .line 500
    .line 501
    iget-object v3, v12, Lcom/changdu/component/pay/base/CDPay$pay$1;->$payRequestItem:Lcom/changdu/component/pay/base/model/PayRequestItem;

    .line 502
    .line 503
    iget-object v4, v12, Lcom/changdu/component/pay/base/CDPay$pay$1;->$payCallback:Lcom/changdu/component/pay/base/IPayCallback;

    .line 504
    .line 505
    invoke-interface {v1, v2, v3, v0, v4}, Lcom/changdu/component/pay/base/service/IPayService;->pay(Landroid/app/Activity;Lcom/changdu/component/pay/base/model/PayRequestItem;Lcom/changdu/component/pay/base/model/PayCreateOrderResult;Lcom/changdu/component/pay/base/IPayCallback;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 506
    .line 507
    .line 508
    goto/16 :goto_9

    .line 509
    .line 510
    :catch_1
    :try_start_6
    iget-object v0, v12, Lcom/changdu/component/pay/base/CDPay$pay$1;->$payCallback:Lcom/changdu/component/pay/base/IPayCallback;

    .line 511
    .line 512
    if-eqz v0, :cond_1b

    .line 513
    .line 514
    new-instance v13, Lcom/changdu/component/pay/base/model/PayReportMessage;

    .line 515
    .line 516
    const-string v15, "\u65e0\u6cd5\u627e\u5230\u534e\u4e3a\u652f\u4ed8\u6a21\u5757"

    .line 517
    .line 518
    const/16 v20, 0x3d

    .line 519
    .line 520
    const/16 v21, 0x0

    .line 521
    .line 522
    const/4 v14, 0x0

    .line 523
    const/16 v16, 0x0

    .line 524
    .line 525
    const/16 v17, 0x0

    .line 526
    .line 527
    const/16 v18, 0x0

    .line 528
    .line 529
    const/16 v19, 0x0

    .line 530
    .line 531
    invoke-direct/range {v13 .. v21}, Lcom/changdu/component/pay/base/model/PayReportMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 532
    .line 533
    .line 534
    invoke-interface {v0, v5, v13}, Lcom/changdu/component/pay/base/IPayCallback;->failed(ILcom/changdu/component/pay/base/model/PayReportMessage;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 535
    .line 536
    .line 537
    goto/16 :goto_9

    .line 538
    .line 539
    :cond_14
    :try_start_7
    sget-object v1, Lcom/changdu/component/pay/base/CDPay;->INSTANCE:Lcom/changdu/component/pay/base/CDPay;

    .line 540
    .line 541
    invoke-virtual {v1}, Lcom/changdu/component/pay/base/CDPay;->getWechatPayService()Lcom/changdu/component/pay/base/service/IPayServiceWechat;

    .line 542
    .line 543
    .line 544
    move-result-object v1

    .line 545
    if-eqz v1, :cond_1b

    .line 546
    .line 547
    iget-object v2, v12, Lcom/changdu/component/pay/base/CDPay$pay$1;->$activity:Landroid/app/Activity;

    .line 548
    .line 549
    iget-object v3, v12, Lcom/changdu/component/pay/base/CDPay$pay$1;->$payRequestItem:Lcom/changdu/component/pay/base/model/PayRequestItem;

    .line 550
    .line 551
    iget-object v4, v12, Lcom/changdu/component/pay/base/CDPay$pay$1;->$payCallback:Lcom/changdu/component/pay/base/IPayCallback;

    .line 552
    .line 553
    invoke-interface {v1, v2, v3, v0, v4}, Lcom/changdu/component/pay/base/service/IPayService;->pay(Landroid/app/Activity;Lcom/changdu/component/pay/base/model/PayRequestItem;Lcom/changdu/component/pay/base/model/PayCreateOrderResult;Lcom/changdu/component/pay/base/IPayCallback;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 554
    .line 555
    .line 556
    goto/16 :goto_9

    .line 557
    .line 558
    :catch_2
    :try_start_8
    iget-object v0, v12, Lcom/changdu/component/pay/base/CDPay$pay$1;->$payCallback:Lcom/changdu/component/pay/base/IPayCallback;

    .line 559
    .line 560
    if-eqz v0, :cond_1b

    .line 561
    .line 562
    new-instance v13, Lcom/changdu/component/pay/base/model/PayReportMessage;

    .line 563
    .line 564
    const-string v15, "\u65e0\u6cd5\u627e\u5230\u5fae\u4fe1\u652f\u4ed8\u6a21\u5757"

    .line 565
    .line 566
    const/16 v20, 0x3d

    .line 567
    .line 568
    const/16 v21, 0x0

    .line 569
    .line 570
    const/4 v14, 0x0

    .line 571
    const/16 v16, 0x0

    .line 572
    .line 573
    const/16 v17, 0x0

    .line 574
    .line 575
    const/16 v18, 0x0

    .line 576
    .line 577
    const/16 v19, 0x0

    .line 578
    .line 579
    invoke-direct/range {v13 .. v21}, Lcom/changdu/component/pay/base/model/PayReportMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 580
    .line 581
    .line 582
    invoke-interface {v0, v5, v13}, Lcom/changdu/component/pay/base/IPayCallback;->failed(ILcom/changdu/component/pay/base/model/PayReportMessage;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 583
    .line 584
    .line 585
    goto/16 :goto_9

    .line 586
    .line 587
    :cond_15
    :try_start_9
    sget-object v1, Lcom/changdu/component/pay/base/CDPay;->INSTANCE:Lcom/changdu/component/pay/base/CDPay;

    .line 588
    .line 589
    invoke-virtual {v1}, Lcom/changdu/component/pay/base/CDPay;->getGooglePayService()Lcom/changdu/component/pay/base/service/IPayServiceGoogle;

    .line 590
    .line 591
    .line 592
    move-result-object v1

    .line 593
    if-eqz v1, :cond_1b

    .line 594
    .line 595
    iget-object v2, v12, Lcom/changdu/component/pay/base/CDPay$pay$1;->$activity:Landroid/app/Activity;

    .line 596
    .line 597
    iget-object v3, v12, Lcom/changdu/component/pay/base/CDPay$pay$1;->$payRequestItem:Lcom/changdu/component/pay/base/model/PayRequestItem;

    .line 598
    .line 599
    iget-object v4, v12, Lcom/changdu/component/pay/base/CDPay$pay$1;->$payCallback:Lcom/changdu/component/pay/base/IPayCallback;

    .line 600
    .line 601
    invoke-interface {v1, v2, v3, v0, v4}, Lcom/changdu/component/pay/base/service/IPayService;->pay(Landroid/app/Activity;Lcom/changdu/component/pay/base/model/PayRequestItem;Lcom/changdu/component/pay/base/model/PayCreateOrderResult;Lcom/changdu/component/pay/base/IPayCallback;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 602
    .line 603
    .line 604
    goto/16 :goto_9

    .line 605
    .line 606
    :catch_3
    :try_start_a
    iget-object v0, v12, Lcom/changdu/component/pay/base/CDPay$pay$1;->$payCallback:Lcom/changdu/component/pay/base/IPayCallback;

    .line 607
    .line 608
    if-eqz v0, :cond_1b

    .line 609
    .line 610
    new-instance v13, Lcom/changdu/component/pay/base/model/PayReportMessage;

    .line 611
    .line 612
    const-string v15, "\u65e0\u6cd5\u627e\u5230Google\u652f\u4ed8\u6a21\u5757"

    .line 613
    .line 614
    const/16 v20, 0x3d

    .line 615
    .line 616
    const/16 v21, 0x0

    .line 617
    .line 618
    const/4 v14, 0x0

    .line 619
    const/16 v16, 0x0

    .line 620
    .line 621
    const/16 v17, 0x0

    .line 622
    .line 623
    const/16 v18, 0x0

    .line 624
    .line 625
    const/16 v19, 0x0

    .line 626
    .line 627
    invoke-direct/range {v13 .. v21}, Lcom/changdu/component/pay/base/model/PayReportMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 628
    .line 629
    .line 630
    invoke-interface {v0, v5, v13}, Lcom/changdu/component/pay/base/IPayCallback;->failed(ILcom/changdu/component/pay/base/model/PayReportMessage;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    .line 631
    .line 632
    .line 633
    goto/16 :goto_9

    .line 634
    .line 635
    :cond_16
    :try_start_b
    sget-object v1, Lcom/changdu/component/pay/base/CDPay;->INSTANCE:Lcom/changdu/component/pay/base/CDPay;

    .line 636
    .line 637
    invoke-virtual {v1}, Lcom/changdu/component/pay/base/CDPay;->getAlipayPayService()Lcom/changdu/component/pay/base/service/IPayServiceAlipay;

    .line 638
    .line 639
    .line 640
    move-result-object v1

    .line 641
    if-eqz v1, :cond_1b

    .line 642
    .line 643
    iget-object v2, v12, Lcom/changdu/component/pay/base/CDPay$pay$1;->$activity:Landroid/app/Activity;

    .line 644
    .line 645
    iget-object v3, v12, Lcom/changdu/component/pay/base/CDPay$pay$1;->$payRequestItem:Lcom/changdu/component/pay/base/model/PayRequestItem;

    .line 646
    .line 647
    iget-object v4, v12, Lcom/changdu/component/pay/base/CDPay$pay$1;->$payCallback:Lcom/changdu/component/pay/base/IPayCallback;

    .line 648
    .line 649
    invoke-interface {v1, v2, v3, v0, v4}, Lcom/changdu/component/pay/base/service/IPayService;->pay(Landroid/app/Activity;Lcom/changdu/component/pay/base/model/PayRequestItem;Lcom/changdu/component/pay/base/model/PayCreateOrderResult;Lcom/changdu/component/pay/base/IPayCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    .line 650
    .line 651
    .line 652
    goto :goto_9

    .line 653
    :catch_4
    :try_start_c
    iget-object v0, v12, Lcom/changdu/component/pay/base/CDPay$pay$1;->$payCallback:Lcom/changdu/component/pay/base/IPayCallback;

    .line 654
    .line 655
    if-eqz v0, :cond_1b

    .line 656
    .line 657
    new-instance v13, Lcom/changdu/component/pay/base/model/PayReportMessage;

    .line 658
    .line 659
    const-string v15, "\u65e0\u6cd5\u627e\u5230\u652f\u4ed8\u5b9d\u652f\u4ed8\u6a21\u5757"

    .line 660
    .line 661
    const/16 v20, 0x3d

    .line 662
    .line 663
    const/16 v21, 0x0

    .line 664
    .line 665
    const/4 v14, 0x0

    .line 666
    const/16 v16, 0x0

    .line 667
    .line 668
    const/16 v17, 0x0

    .line 669
    .line 670
    const/16 v18, 0x0

    .line 671
    .line 672
    const/16 v19, 0x0

    .line 673
    .line 674
    invoke-direct/range {v13 .. v21}, Lcom/changdu/component/pay/base/model/PayReportMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 675
    .line 676
    .line 677
    invoke-interface {v0, v5, v13}, Lcom/changdu/component/pay/base/IPayCallback;->failed(ILcom/changdu/component/pay/base/model/PayReportMessage;)V

    .line 678
    .line 679
    .line 680
    goto :goto_9

    .line 681
    :cond_17
    :goto_7
    if-eqz v0, :cond_18

    .line 682
    .line 683
    invoke-virtual {v0}, Lcom/changdu/component/pay/base/model/PayCreateOrderResult;->getPayReportMessage()Lcom/changdu/component/pay/base/model/PayReportMessage;

    .line 684
    .line 685
    .line 686
    move-result-object v15

    .line 687
    :cond_18
    if-eqz v15, :cond_19

    .line 688
    .line 689
    invoke-virtual {v0}, Lcom/changdu/component/pay/base/model/PayCreateOrderResult;->getPayReportMessage()Lcom/changdu/component/pay/base/model/PayReportMessage;

    .line 690
    .line 691
    .line 692
    move-result-object v1

    .line 693
    const-string v3, "\u521b\u5efa\u8ba2\u5355\u5931\u8d25"

    .line 694
    .line 695
    const/16 v8, 0x3d

    .line 696
    .line 697
    const/4 v9, 0x0

    .line 698
    const/4 v2, 0x0

    .line 699
    const/4 v4, 0x0

    .line 700
    const/4 v5, 0x0

    .line 701
    const/4 v6, 0x0

    .line 702
    const/4 v7, 0x0

    .line 703
    invoke-static/range {v1 .. v9}, Lcom/changdu/component/pay/base/model/PayReportMessage;->copy$default(Lcom/changdu/component/pay/base/model/PayReportMessage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ILjava/lang/Object;)Lcom/changdu/component/pay/base/model/PayReportMessage;

    .line 704
    .line 705
    .line 706
    move-result-object v0

    .line 707
    goto :goto_8

    .line 708
    :cond_19
    new-instance v1, Lcom/changdu/component/pay/base/model/PayReportMessage;

    .line 709
    .line 710
    const-string v3, "\u521b\u5efa\u8ba2\u5355\u5931\u8d25"

    .line 711
    .line 712
    const/16 v8, 0x3d

    .line 713
    .line 714
    const/4 v9, 0x0

    .line 715
    const/4 v2, 0x0

    .line 716
    const/4 v4, 0x0

    .line 717
    const/4 v5, 0x0

    .line 718
    const/4 v6, 0x0

    .line 719
    const/4 v7, 0x0

    .line 720
    invoke-direct/range {v1 .. v9}, Lcom/changdu/component/pay/base/model/PayReportMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 721
    .line 722
    .line 723
    move-object v0, v1

    .line 724
    :goto_8
    iget-object v1, v12, Lcom/changdu/component/pay/base/CDPay$pay$1;->$payCallback:Lcom/changdu/component/pay/base/IPayCallback;

    .line 725
    .line 726
    if-eqz v1, :cond_1a

    .line 727
    .line 728
    const/16 v2, 0x3ec

    .line 729
    .line 730
    invoke-interface {v1, v2, v0}, Lcom/changdu/component/pay/base/IPayCallback;->failed(ILcom/changdu/component/pay/base/model/PayReportMessage;)V

    .line 731
    .line 732
    .line 733
    :cond_1a
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    .line 734
    .line 735
    return-object v0

    .line 736
    :catch_5
    iget-object v0, v12, Lcom/changdu/component/pay/base/CDPay$pay$1;->$payCallback:Lcom/changdu/component/pay/base/IPayCallback;

    .line 737
    .line 738
    if-eqz v0, :cond_1b

    .line 739
    .line 740
    new-instance v1, Lcom/changdu/component/pay/base/model/PayReportMessage;

    .line 741
    .line 742
    const/16 v8, 0x3d

    .line 743
    .line 744
    const/4 v9, 0x0

    .line 745
    const/4 v2, 0x0

    .line 746
    const-string v3, "\u672a\u77e5\u9519\u8bef"

    .line 747
    .line 748
    const/4 v4, 0x0

    .line 749
    const/4 v5, 0x0

    .line 750
    const/4 v6, 0x0

    .line 751
    const/4 v7, 0x0

    .line 752
    invoke-direct/range {v1 .. v9}, Lcom/changdu/component/pay/base/model/PayReportMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 753
    .line 754
    .line 755
    const/16 v2, 0x3e8

    .line 756
    .line 757
    invoke-interface {v0, v2, v1}, Lcom/changdu/component/pay/base/IPayCallback;->failed(ILcom/changdu/component/pay/base/model/PayReportMessage;)V

    .line 758
    .line 759
    .line 760
    :cond_1b
    :goto_9
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 761
    .line 762
    return-object v0
.end method
