.class public final Lcom/changdu/component/pay/google/k;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Proguard"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/changdu/component/pay/base/model/LocalPurchaseItem;

.field public final synthetic b:Lcom/android/billingclient/api/Purchase;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/changdu/component/pay/base/model/LocalPurchaseItem;Lcom/android/billingclient/api/Purchase;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/component/pay/google/k;->a:Lcom/changdu/component/pay/base/model/LocalPurchaseItem;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/changdu/component/pay/google/k;->b:Lcom/android/billingclient/api/Purchase;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/changdu/component/pay/google/k;->c:Ljava/lang/String;

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
    new-instance p1, Lcom/changdu/component/pay/google/k;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/changdu/component/pay/google/k;->a:Lcom/changdu/component/pay/base/model/LocalPurchaseItem;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/changdu/component/pay/google/k;->b:Lcom/android/billingclient/api/Purchase;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/changdu/component/pay/google/k;->c:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/changdu/component/pay/google/k;-><init>(Lcom/changdu/component/pay/base/model/LocalPurchaseItem;Lcom/android/billingclient/api/Purchase;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/changdu/component/pay/google/k;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/changdu/component/pay/google/k;

    .line 10
    .line 11
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/changdu/component/pay/google/k;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    sget-object v0, Lcom/changdu/component/pay/base/CDPay;->INSTANCE:Lcom/changdu/component/pay/base/CDPay;

    .line 8
    .line 9
    iget-object p1, p0, Lcom/changdu/component/pay/google/k;->a:Lcom/changdu/component/pay/base/model/LocalPurchaseItem;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/changdu/component/pay/base/model/LocalPurchaseItem;->getCdOrderId()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object p1, p0, Lcom/changdu/component/pay/google/k;->a:Lcom/changdu/component/pay/base/model/LocalPurchaseItem;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/changdu/component/pay/base/model/LocalPurchaseItem;->getSkuType()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v2, "subs"

    .line 22
    .line 23
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    iget-object p1, p0, Lcom/changdu/component/pay/google/k;->a:Lcom/changdu/component/pay/base/model/LocalPurchaseItem;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/changdu/component/pay/base/model/LocalPurchaseItem;->getOrderPrice()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    iget-object p1, p0, Lcom/changdu/component/pay/google/k;->a:Lcom/changdu/component/pay/base/model/LocalPurchaseItem;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/changdu/component/pay/base/model/LocalPurchaseItem;->getItemId()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    iget-object p1, p0, Lcom/changdu/component/pay/google/k;->b:Lcom/android/billingclient/api/Purchase;

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    iget-object p1, p0, Lcom/changdu/component/pay/google/k;->b:Lcom/android/billingclient/api/Purchase;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    iget-object p1, p0, Lcom/changdu/component/pay/google/k;->b:Lcom/android/billingclient/api/Purchase;

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    iget-object p1, p0, Lcom/changdu/component/pay/google/k;->b:Lcom/android/billingclient/api/Purchase;

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 60
    .line 61
    .line 62
    move-result-wide v8

    .line 63
    iget-object v10, p0, Lcom/changdu/component/pay/google/k;->c:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual/range {v0 .. v10}, Lcom/changdu/component/pay/base/CDPay;->notifyGooglePlayPurchaseSuccess(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 66
    .line 67
    .line 68
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 69
    .line 70
    return-object p1
.end method
