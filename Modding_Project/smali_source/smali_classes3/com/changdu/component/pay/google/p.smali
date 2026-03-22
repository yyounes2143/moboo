.class public final Lcom/changdu/component/pay/google/p;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Proguard"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lcom/changdu/component/pay/google/x;

.field public final synthetic c:Lcom/android/billingclient/api/QueryProductDetailsParams;


# direct methods
.method public constructor <init>(Lcom/changdu/component/pay/google/x;Lcom/android/billingclient/api/QueryProductDetailsParams;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/component/pay/google/p;->b:Lcom/changdu/component/pay/google/x;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/changdu/component/pay/google/p;->c:Lcom/android/billingclient/api/QueryProductDetailsParams;

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
    new-instance p1, Lcom/changdu/component/pay/google/p;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/changdu/component/pay/google/p;->b:Lcom/changdu/component/pay/google/x;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/changdu/component/pay/google/p;->c:Lcom/android/billingclient/api/QueryProductDetailsParams;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/changdu/component/pay/google/p;-><init>(Lcom/changdu/component/pay/google/x;Lcom/android/billingclient/api/QueryProductDetailsParams;Lkotlin/coroutines/Continuation;)V

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
    new-instance p1, Lcom/changdu/component/pay/google/p;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/changdu/component/pay/google/p;->b:Lcom/changdu/component/pay/google/x;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/changdu/component/pay/google/p;->c:Lcom/android/billingclient/api/QueryProductDetailsParams;

    .line 10
    .line 11
    invoke-direct {p1, v0, v1, p2}, Lcom/changdu/component/pay/google/p;-><init>(Lcom/changdu/component/pay/google/x;Lcom/android/billingclient/api/QueryProductDetailsParams;Lkotlin/coroutines/Continuation;)V

    .line 12
    .line 13
    .line 14
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Lcom/changdu/component/pay/google/p;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/changdu/component/pay/google/p;->a:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/changdu/component/pay/google/p;->b:Lcom/changdu/component/pay/google/x;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/changdu/component/pay/google/x;->a:Lcom/android/billingclient/api/BillingClient;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/changdu/component/pay/google/p;->c:Lcom/android/billingclient/api/QueryProductDetailsParams;

    .line 32
    .line 33
    iput v2, p0, Lcom/changdu/component/pay/google/p;->a:I

    .line 34
    .line 35
    invoke-static {p1, v1, p0}, Lcom/android/billingclient/api/BillingClientKotlinKt;->Wwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingClient;Lcom/android/billingclient/api/QueryProductDetailsParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-ne p1, v0, :cond_2

    .line 40
    .line 41
    return-object v0

    .line 42
    :cond_2
    return-object p1
.end method
