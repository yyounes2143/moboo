.class final Lcom/changdu/component/pay/base/CDPay$createOrder$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Proguard"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/changdu/component/pay/base/CDPay;->createOrder(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lcom/changdu/component/pay/base/model/PayCreateOrderResult;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001*\u00020\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "Lcom/changdu/component/pay/base/model/PayCreateOrderResult;",
        "kotlin.jvm.PlatformType",
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
    c = "com.changdu.component.pay.base.CDPay$createOrder$2"
    f = "CDPay.kt"
    i = {}
    l = {
        0x484
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCDPay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CDPay.kt\ncom/changdu/component/pay/base/CDPay$createOrder$2\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,1309:1\n215#2,2:1310\n*S KotlinDebug\n*F\n+ 1 CDPay.kt\ncom/changdu/component/pay/base/CDPay$createOrder$2\n*L\n1056#1:1310,2\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $couponId:Ljava/lang/String;

.field final synthetic $customData:Ljava/lang/String;

.field final synthetic $extraBizParamMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $extraInfo:Ljava/lang/String;

.field final synthetic $itemId:Ljava/lang/String;

.field final synthetic $orderPrice:Ljava/lang/String;

.field final synthetic $payConfigId:I

.field final synthetic $payId:I

.field final synthetic $paySource:Ljava/lang/String;

.field final synthetic $payType:I

.field final synthetic $shopItemId:Ljava/lang/String;

.field label:I


# direct methods
.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/changdu/component/pay/base/CDPay$createOrder$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/changdu/component/pay/base/CDPay$createOrder$2;->$payType:I

    .line 2
    .line 3
    iput p2, p0, Lcom/changdu/component/pay/base/CDPay$createOrder$2;->$payId:I

    .line 4
    .line 5
    iput p3, p0, Lcom/changdu/component/pay/base/CDPay$createOrder$2;->$payConfigId:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/changdu/component/pay/base/CDPay$createOrder$2;->$itemId:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/changdu/component/pay/base/CDPay$createOrder$2;->$shopItemId:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/changdu/component/pay/base/CDPay$createOrder$2;->$orderPrice:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/changdu/component/pay/base/CDPay$createOrder$2;->$couponId:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p8, p0, Lcom/changdu/component/pay/base/CDPay$createOrder$2;->$extraInfo:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p9, p0, Lcom/changdu/component/pay/base/CDPay$createOrder$2;->$paySource:Ljava/lang/String;

    .line 18
    .line 19
    iput-object p10, p0, Lcom/changdu/component/pay/base/CDPay$createOrder$2;->$customData:Ljava/lang/String;

    .line 20
    .line 21
    iput-object p11, p0, Lcom/changdu/component/pay/base/CDPay$createOrder$2;->$extraBizParamMap:Ljava/util/HashMap;

    .line 22
    .line 23
    const/4 p1, 0x2

    .line 24
    invoke-direct {p0, p1, p12}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 13
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
    new-instance v0, Lcom/changdu/component/pay/base/CDPay$createOrder$2;

    .line 2
    .line 3
    iget v1, p0, Lcom/changdu/component/pay/base/CDPay$createOrder$2;->$payType:I

    .line 4
    .line 5
    iget v2, p0, Lcom/changdu/component/pay/base/CDPay$createOrder$2;->$payId:I

    .line 6
    .line 7
    iget v3, p0, Lcom/changdu/component/pay/base/CDPay$createOrder$2;->$payConfigId:I

    .line 8
    .line 9
    iget-object v4, p0, Lcom/changdu/component/pay/base/CDPay$createOrder$2;->$itemId:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/changdu/component/pay/base/CDPay$createOrder$2;->$shopItemId:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/changdu/component/pay/base/CDPay$createOrder$2;->$orderPrice:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v7, p0, Lcom/changdu/component/pay/base/CDPay$createOrder$2;->$couponId:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v8, p0, Lcom/changdu/component/pay/base/CDPay$createOrder$2;->$extraInfo:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v9, p0, Lcom/changdu/component/pay/base/CDPay$createOrder$2;->$paySource:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v10, p0, Lcom/changdu/component/pay/base/CDPay$createOrder$2;->$customData:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v11, p0, Lcom/changdu/component/pay/base/CDPay$createOrder$2;->$extraBizParamMap:Ljava/util/HashMap;

    .line 24
    .line 25
    move-object v12, p2

    .line 26
    invoke-direct/range {v0 .. v12}, Lcom/changdu/component/pay/base/CDPay$createOrder$2;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lkotlin/coroutines/Continuation;)V

    .line 27
    .line 28
    .line 29
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/changdu/component/pay/base/CDPay$createOrder$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/changdu/component/pay/base/model/PayCreateOrderResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/changdu/component/pay/base/CDPay$createOrder$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/changdu/component/pay/base/CDPay$createOrder$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/changdu/component/pay/base/CDPay$createOrder$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "IPAddress"

    const-string v3, "SessionID"

    const-string v4, "1"

    const-string v5, ""

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v6

    .line 1
    iget v0, v1, Lcom/changdu/component/pay/base/CDPay$createOrder$2;->label:I

    const/4 v7, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v7, :cond_0

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p1

    move v12, v7

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_2

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 3
    :try_start_1
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 4
    iget v0, v1, Lcom/changdu/component/pay/base/CDPay$createOrder$2;->$payType:I

    iget v9, v1, Lcom/changdu/component/pay/base/CDPay$createOrder$2;->$payId:I

    iget v10, v1, Lcom/changdu/component/pay/base/CDPay$createOrder$2;->$payConfigId:I

    iget-object v11, v1, Lcom/changdu/component/pay/base/CDPay$createOrder$2;->$itemId:Ljava/lang/String;

    iget-object v12, v1, Lcom/changdu/component/pay/base/CDPay$createOrder$2;->$shopItemId:Ljava/lang/String;

    iget-object v13, v1, Lcom/changdu/component/pay/base/CDPay$createOrder$2;->$orderPrice:Ljava/lang/String;

    iget-object v14, v1, Lcom/changdu/component/pay/base/CDPay$createOrder$2;->$couponId:Ljava/lang/String;

    iget-object v15, v1, Lcom/changdu/component/pay/base/CDPay$createOrder$2;->$extraInfo:Ljava/lang/String;

    iget-object v7, v1, Lcom/changdu/component/pay/base/CDPay$createOrder$2;->$paySource:Ljava/lang/String;

    move/from16 p1, v0

    iget-object v0, v1, Lcom/changdu/component/pay/base/CDPay$createOrder$2;->$customData:Ljava/lang/String;

    move/from16 v17, v9

    iget-object v9, v1, Lcom/changdu/component/pay/base/CDPay$createOrder$2;->$extraBizParamMap:Ljava/util/HashMap;

    move-object/from16 v18, v9

    .line 5
    const-string v9, "PayType"

    move/from16 v19, v10

    invoke-static/range {p1 .. p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    const-string v9, "PayId"

    invoke-static/range {v17 .. v17}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    const-string v9, "PayConfigId"

    invoke-static/range {v19 .. v19}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    const-string v9, "ItemId"

    invoke-virtual {v8, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    const-string v9, "ShopItemId"

    invoke-virtual {v8, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v9, "0"

    if-eqz v13, :cond_2

    .line 10
    :try_start_2
    invoke-static {v13}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    :cond_2
    move-object v13, v9

    .line 11
    :cond_3
    const-string v10, "OrderMoney"

    invoke-virtual {v8, v10, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-string v10, "CouponId"

    invoke-virtual {v8, v10, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-string v10, "ExtInfo"

    invoke-virtual {v8, v10, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-string v10, "PackageId"

    invoke-virtual {v8, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-string v7, "UniqueGuid"

    invoke-static {}, Lcom/changdu/component/core/CDComponent;->getInstance()Lcom/changdu/component/core/CDComponent;

    move-result-object v10

    invoke-virtual {v10}, Lcom/changdu/component/core/CDComponent;->getGuid()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-string v7, "AndroidIdForDeviceGUID"

    invoke-static {}, Lcom/changdu/component/core/CDComponent;->getInstance()Lcom/changdu/component/core/CDComponent;

    move-result-object v10

    invoke-virtual {v10}, Lcom/changdu/component/core/CDComponent;->getAndroidId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string v7, "CustomData"

    invoke-virtual {v8, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v18, :cond_4

    .line 18
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 19
    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 20
    :try_start_3
    sget-object v10, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 21
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v8, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 22
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    sget-object v10, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 23
    :cond_4
    const-string v0, "Core"

    invoke-static {}, Lcom/changdu/component/pay/base/CDPay;->access$getMCoreCode$p()I

    move-result v7

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-virtual {v8, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-string v0, "UserID"

    invoke-static {}, Lcom/changdu/component/core/CDComponent;->getInstance()Lcom/changdu/component/core/CDComponent;

    move-result-object v7

    invoke-virtual {v7}, Lcom/changdu/component/core/CDComponent;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string v0, "UserName"

    invoke-static {}, Lcom/changdu/component/core/CDComponent;->getInstance()Lcom/changdu/component/core/CDComponent;

    move-result-object v7

    invoke-virtual {v7}, Lcom/changdu/component/core/CDComponent;->getUserAccountName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string v0, "MerchandiseID"

    invoke-static {}, Lcom/changdu/component/pay/base/CDPay;->access$getMMerchandiseId$p()J

    move-result-wide v10

    invoke-static {v10, v11}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v8, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string v0, "MerchandiseName"

    sget-object v7, Lcom/changdu/component/pay/base/CDPay;->INSTANCE:Lcom/changdu/component/pay/base/CDPay;

    invoke-virtual {v7}, Lcom/changdu/component/pay/base/CDPay;->getMMerchandiseName$pay_base_release()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string v0, "CooperatorOrderSerial"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string v0, "CardNumber"

    invoke-virtual {v8, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string v0, "CardPassword"

    invoke-virtual {v8, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string v0, "PhoneNumber"

    invoke-virtual {v8, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string v0, "BankCode"

    const/4 v10, 0x0

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v0, "CheckPayPassword"

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v0, "PayPassword"

    invoke-virtual {v8, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v0, "ReturnUrl"

    invoke-virtual {v8, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v0, "NotifyUrl"

    invoke-virtual {v8, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x12539a1

    .line 38
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v0, "Remark"

    invoke-virtual {v8, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/changdu/component/pay/base/PayUtil;->INSTANCE:Lcom/changdu/component/pay/base/PayUtil;

    invoke-virtual {v0, v8}, Lcom/changdu/component/pay/base/PayUtil;->toJsonStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 41
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 42
    const-string v12, "ScreenWidth"

    sget-object v13, Lcom/changdu/component/core/CDComponent;->context:Landroid/content/Context;

    invoke-static {v13}, Lcom/changdu/component/pay/base/internal/a;->b(Landroid/content/Context;)I

    move-result v13

    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v12, "ScreenHeight"

    sget-object v13, Lcom/changdu/component/core/CDComponent;->context:Landroid/content/Context;

    invoke-static {v13}, Lcom/changdu/component/pay/base/internal/a;->a(Landroid/content/Context;)I

    move-result v13

    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v12, "IMEI"

    invoke-virtual {v11, v12, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v5, "LocalLanguage"

    invoke-static {}, Lcom/changdu/component/pay/base/internal/a;->a()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v5, "PhoneModel"

    invoke-static {}, Lcom/changdu/component/pay/base/internal/a;->b()Ljava/lang/String;

    move-result-object v17

    const-string v18, " "

    const-string v19, ""

    const/16 v21, 0x4

    const/16 v22, 0x0

    const/16 v20, 0x0

    invoke-static/range {v17 .. v22}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v5, "SDKVersion"

    invoke-static {}, Lcom/changdu/component/pay/base/internal/a;->d()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v5, "ReleaseVersion"

    invoke-static {}, Lcom/changdu/component/pay/base/internal/a;->c()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v5, "ServerId"

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-virtual {v0, v11}, Lcom/changdu/component/pay/base/PayUtil;->toJsonStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 51
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const v12, 0x1d4c6

    .line 52
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v7}, Lcom/changdu/component/pay/base/CDPay;->getMerchantId()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 54
    invoke-static {}, Lcom/changdu/component/pay/base/CDPay;->access$getMPayAppId$p()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 55
    invoke-static {}, Lcom/changdu/component/pay/base/CDPay;->access$getMPayVersion$p()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/4 v12, 0x4

    .line 56
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v12, 0x1

    .line 57
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    invoke-static {}, Lcom/changdu/component/pay/base/CDPay;->access$getSESSION_ID$p()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x2

    const/4 v13, 0x0

    .line 63
    invoke-static {v0, v8, v13, v12, v13}, Lcom/changdu/component/pay/base/PayUtil;->base64EncodeToString$default(Lcom/changdu/component/pay/base/PayUtil;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-static {v0, v5, v13, v12, v13}, Lcom/changdu/component/pay/base/PayUtil;->base64EncodeToString$default(Lcom/changdu/component/pay/base/PayUtil;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-static {}, Lcom/changdu/component/pay/base/CDPay;->access$getMLocalKey$p()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/changdu/component/pay/base/internal/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 67
    new-instance v14, Ljava/util/LinkedHashMap;

    invoke-direct {v14}, Ljava/util/LinkedHashMap;-><init>()V

    .line 68
    const-string v15, "ActionID"

    const-string v10, "120006"

    invoke-virtual {v14, v15, v10}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v10, "MerchantID"

    invoke-virtual {v7}, Lcom/changdu/component/pay/base/CDPay;->getMerchantId()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v10, v15}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v10, "AppID"

    invoke-static {}, Lcom/changdu/component/pay/base/CDPay;->access$getMPayAppId$p()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v10, v15}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v10, "Ver"

    invoke-static {}, Lcom/changdu/component/pay/base/CDPay;->access$getMPayVersion$p()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v10, v15}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v10, "OsType"

    const-string v15, "4"

    invoke-virtual {v14, v10, v15}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v10, "Format"

    invoke-virtual {v14, v10, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v10, "ReturnFormat"

    invoke-virtual {v14, v10, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v10, "SignType"

    invoke-virtual {v14, v10, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v10, "HasCompress"

    invoke-virtual {v14, v10, v9}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-virtual {v14, v2, v9}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-static {}, Lcom/changdu/component/pay/base/CDPay;->access$getSESSION_ID$p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v3, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v2, "Sign"

    invoke-virtual {v14, v2, v11}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v2, "Content"

    invoke-static {v0, v8, v13, v12, v13}, Lcom/changdu/component/pay/base/PayUtil;->base64EncodeToString$default(Lcom/changdu/component/pay/base/PayUtil;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/changdu/component/pay/base/CDPay;->access$replaceMd5Data(Lcom/changdu/component/pay/base/CDPay;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 81
    invoke-virtual {v14, v2, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v2, "DeviceInfo"

    invoke-static {v0, v5, v13, v12, v13}, Lcom/changdu/component/pay/base/PayUtil;->base64EncodeToString$default(Lcom/changdu/component/pay/base/PayUtil;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/changdu/component/pay/base/CDPay;->access$replaceMd5Data(Lcom/changdu/component/pay/base/CDPay;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-virtual {v14, v2, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v0, "showjson"

    invoke-virtual {v14, v0, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/changdu/component/httpbiz/CDHttpRequest;->INSTANCE:Lcom/changdu/component/httpbiz/CDHttpRequest;

    const-class v2, Lcom/changdu/component/pay/base/internal/PayApiService;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v12, v13}, Lcom/changdu/component/http/HttpRequest;->getApiService$default(Lcom/changdu/component/http/HttpRequest;Ljava/lang/Class;ZILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/changdu/component/pay/base/internal/PayApiService;

    .line 86
    invoke-static {v7}, Lcom/changdu/component/pay/base/CDPay;->access$getPayCommonRequestUrl(Lcom/changdu/component/pay/base/CDPay;)Ljava/lang/String;

    move-result-object v2

    const/4 v12, 0x1

    iput v12, v1, Lcom/changdu/component/pay/base/CDPay$createOrder$2;->label:I

    invoke-interface {v0, v2, v14, v1}, Lcom/changdu/component/pay/base/internal/PayApiService;->createOrder(Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v6, :cond_5

    return-object v6

    .line 87
    :cond_5
    :goto_1
    check-cast v0, Lcom/changdu/component/pay/base/model/PayHttpRespData;

    .line 88
    invoke-virtual {v0}, Lcom/changdu/component/pay/base/model/PayHttpRespData;->getStatusCode()I

    move-result v2

    if-ne v2, v12, :cond_6

    .line 89
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 90
    invoke-virtual {v0}, Lcom/changdu/component/pay/base/model/PayHttpRespData;->getResponseObject()Ljava/lang/String;

    move-result-object v0

    const-class v3, Lcom/changdu/component/pay/base/model/PayCreateOrderResult;

    .line 91
    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/changdu/component/pay/base/model/PayCreateOrderResult;

    return-object v0

    .line 92
    :cond_6
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 93
    const-string v2, "bizErrorCode"

    .line 94
    invoke-virtual {v0}, Lcom/changdu/component/pay/base/model/PayHttpRespData;->getStatusCode()I

    move-result v3

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v3

    .line 95
    invoke-virtual {v8, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    new-instance v11, Lcom/changdu/component/pay/base/model/PayCreateOrderResult;

    .line 97
    new-instance v17, Lcom/changdu/component/pay/base/model/PayReportMessage;

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u63a5\u53e3\u8fd4\u56de\u5931\u8d25\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v9, 0x1b

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, v17

    .line 99
    invoke-direct/range {v2 .. v10}, Lcom/changdu/component/pay/base/model/PayReportMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 100
    invoke-virtual {v0}, Lcom/changdu/component/pay/base/model/PayHttpRespData;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x3f

    const/16 v20, 0x0

    const/4 v10, 0x0

    move-object v9, v11

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 101
    invoke-direct/range {v9 .. v20}, Lcom/changdu/component/pay/base/model/PayCreateOrderResult;-><init>(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Lcom/changdu/component/pay/base/model/PayReportMessage;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-object v9

    .line 102
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 103
    new-instance v2, Lcom/changdu/component/pay/base/model/PayCreateOrderResult;

    .line 104
    new-instance v3, Lcom/changdu/component/pay/base/model/PayReportMessage;

    .line 105
    iget v4, v1, Lcom/changdu/component/pay/base/CDPay$createOrder$2;->$payType:I

    iget v5, v1, Lcom/changdu/component/pay/base/CDPay$createOrder$2;->$payId:I

    iget v6, v1, Lcom/changdu/component/pay/base/CDPay$createOrder$2;->$payConfigId:I

    iget-object v7, v1, Lcom/changdu/component/pay/base/CDPay$createOrder$2;->$itemId:Ljava/lang/String;

    iget-object v8, v1, Lcom/changdu/component/pay/base/CDPay$createOrder$2;->$shopItemId:Ljava/lang/String;

    iget-object v9, v1, Lcom/changdu/component/pay/base/CDPay$createOrder$2;->$orderPrice:Ljava/lang/String;

    iget-object v10, v1, Lcom/changdu/component/pay/base/CDPay$createOrder$2;->$couponId:Ljava/lang/String;

    iget-object v11, v1, Lcom/changdu/component/pay/base/CDPay$createOrder$2;->$extraInfo:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u8bf7\u6c42\u521b\u5efa\u8ba2\u5355\u53d1\u751f\u5f02\u5e38\uff1apayType: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\npayId: "

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\npayConfigId: "

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\nitemId: "

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\nshopItemId: "

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\norderPrice: "

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\ncouponId: "

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\nextraInfo: "

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 106
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    const/16 v10, 0x2b

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 107
    invoke-direct/range {v3 .. v11}, Lcom/changdu/component/pay/base/model/PayReportMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v12, 0xbf

    const/4 v13, 0x0

    move-object v10, v3

    const/4 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 108
    invoke-direct/range {v2 .. v13}, Lcom/changdu/component/pay/base/model/PayCreateOrderResult;-><init>(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Lcom/changdu/component/pay/base/model/PayReportMessage;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2
.end method
