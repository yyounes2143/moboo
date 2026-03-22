.class public final Lcom/changdu/component/pay/google/u;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Proguard"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lcom/changdu/component/pay/google/x;


# direct methods
.method public constructor <init>(Lcom/changdu/component/pay/google/x;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/component/pay/google/u;->b:Lcom/changdu/component/pay/google/x;

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
    new-instance p1, Lcom/changdu/component/pay/google/u;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/changdu/component/pay/google/u;->b:Lcom/changdu/component/pay/google/x;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/changdu/component/pay/google/u;-><init>(Lcom/changdu/component/pay/google/x;Lkotlin/coroutines/Continuation;)V

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
    new-instance p1, Lcom/changdu/component/pay/google/u;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/changdu/component/pay/google/u;->b:Lcom/changdu/component/pay/google/x;

    .line 8
    .line 9
    invoke-direct {p1, v0, p2}, Lcom/changdu/component/pay/google/u;-><init>(Lcom/changdu/component/pay/google/x;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Lcom/changdu/component/pay/google/u;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/changdu/component/pay/google/u;->a:I

    .line 6
    .line 7
    const/4 v2, 0x4

    .line 8
    const/4 v3, 0x3

    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x1

    .line 11
    if-eqz v1, :cond_4

    .line 12
    .line 13
    if-eq v1, v5, :cond_3

    .line 14
    .line 15
    if-eq v1, v4, :cond_2

    .line 16
    .line 17
    if-eq v1, v3, :cond_1

    .line 18
    .line 19
    if-ne v1, v2, :cond_0

    .line 20
    .line 21
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    goto :goto_4

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 28
    .line 29
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p1

    .line 33
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/changdu/component/pay/google/u;->b:Lcom/changdu/component/pay/google/x;

    .line 49
    .line 50
    iget-object p1, p1, Lcom/changdu/component/pay/google/x;->a:Lcom/android/billingclient/api/BillingClient;

    .line 51
    .line 52
    invoke-static {}, Lcom/android/billingclient/api/QueryPurchasesParams;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const-string v6, "inapp"

    .line 57
    .line 58
    invoke-virtual {v1, v6}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v1}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/QueryPurchasesParams;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    iput v5, p0, Lcom/changdu/component/pay/google/u;->a:I

    .line 67
    .line 68
    invoke-static {p1, v1, p0}, Lcom/android/billingclient/api/BillingClientKotlinKt;->Wwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingClient;Lcom/android/billingclient/api/QueryPurchasesParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    if-ne p1, v0, :cond_5

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_5
    :goto_0
    check-cast p1, Lcom/android/billingclient/api/PurchasesResult;

    .line 76
    .line 77
    iget-object v1, p0, Lcom/changdu/component/pay/google/u;->b:Lcom/changdu/component/pay/google/x;

    .line 78
    .line 79
    iput v4, p0, Lcom/changdu/component/pay/google/u;->a:I

    .line 80
    .line 81
    invoke-virtual {v1, p1, p0}, Lcom/changdu/component/pay/google/x;->a(Lcom/android/billingclient/api/PurchasesResult;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    if-ne p1, v0, :cond_6

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/changdu/component/pay/google/u;->b:Lcom/changdu/component/pay/google/x;

    .line 89
    .line 90
    iget-object p1, p1, Lcom/changdu/component/pay/google/x;->a:Lcom/android/billingclient/api/BillingClient;

    .line 91
    .line 92
    invoke-static {}, Lcom/android/billingclient/api/QueryPurchasesParams;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    const-string v4, "subs"

    .line 97
    .line 98
    invoke-virtual {v1, v4}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v1}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/QueryPurchasesParams;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    iput v3, p0, Lcom/changdu/component/pay/google/u;->a:I

    .line 107
    .line 108
    invoke-static {p1, v1, p0}, Lcom/android/billingclient/api/BillingClientKotlinKt;->Wwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingClient;Lcom/android/billingclient/api/QueryPurchasesParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    if-ne p1, v0, :cond_7

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_7
    :goto_2
    check-cast p1, Lcom/android/billingclient/api/PurchasesResult;

    .line 116
    .line 117
    iget-object v1, p0, Lcom/changdu/component/pay/google/u;->b:Lcom/changdu/component/pay/google/x;

    .line 118
    .line 119
    iput v2, p0, Lcom/changdu/component/pay/google/u;->a:I

    .line 120
    .line 121
    invoke-virtual {v1, p1, p0}, Lcom/changdu/component/pay/google/x;->b(Lcom/android/billingclient/api/PurchasesResult;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    if-ne p1, v0, :cond_8

    .line 126
    .line 127
    :goto_3
    return-object v0

    .line 128
    :cond_8
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 129
    .line 130
    return-object p1
.end method
