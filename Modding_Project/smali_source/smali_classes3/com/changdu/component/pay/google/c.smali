.class public final Lcom/changdu/component/pay/google/c;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Proguard"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:I

.field public final synthetic c:Ljava/util/ArrayList;

.field public final synthetic d:Ljava/util/ArrayList;

.field public final synthetic e:Lcom/changdu/component/pay/base/service/OnPurchaseMonetizationListener;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/changdu/component/pay/base/service/OnPurchaseMonetizationListener;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/component/pay/google/c;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/changdu/component/pay/google/c;->d:Ljava/util/ArrayList;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/changdu/component/pay/google/c;->e:Lcom/changdu/component/pay/base/service/OnPurchaseMonetizationListener;

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
    new-instance p1, Lcom/changdu/component/pay/google/c;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/changdu/component/pay/google/c;->c:Ljava/util/ArrayList;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/changdu/component/pay/google/c;->d:Ljava/util/ArrayList;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/changdu/component/pay/google/c;->e:Lcom/changdu/component/pay/base/service/OnPurchaseMonetizationListener;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/changdu/component/pay/google/c;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/changdu/component/pay/base/service/OnPurchaseMonetizationListener;Lkotlin/coroutines/Continuation;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/changdu/component/pay/google/c;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/changdu/component/pay/google/c;

    .line 10
    .line 11
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/changdu/component/pay/google/c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/changdu/component/pay/google/c;->b:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    if-eq v1, v3, :cond_1

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/changdu/component/pay/google/c;->a:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 26
    .line 27
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1

    .line 31
    :cond_1
    iget-object v1, p0, Lcom/changdu/component/pay/google/c;->a:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v1, Lcom/changdu/component/pay/google/x;

    .line 34
    .line 35
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    sget-object p1, Lcom/changdu/component/pay/google/x;->f:Lcom/changdu/component/pay/google/d;

    .line 43
    .line 44
    sget-object v1, Lcom/changdu/component/core/CDComponent;->context:Landroid/content/Context;

    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {p1, v1}, Lcom/changdu/component/pay/google/d;->a(Landroid/content/Context;)Lcom/changdu/component/pay/google/x;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iget-object p1, p0, Lcom/changdu/component/pay/google/c;->c:Ljava/util/ArrayList;

    .line 55
    .line 56
    iput-object v1, p0, Lcom/changdu/component/pay/google/c;->a:Ljava/lang/Object;

    .line 57
    .line 58
    iput v3, p0, Lcom/changdu/component/pay/google/c;->b:I

    .line 59
    .line 60
    invoke-virtual {v1, p1, p0}, Lcom/changdu/component/pay/google/x;->a(Ljava/util/ArrayList;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    if-ne p1, v0, :cond_3

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    :goto_0
    check-cast p1, Ljava/util/ArrayList;

    .line 68
    .line 69
    iget-object v3, p0, Lcom/changdu/component/pay/google/c;->d:Ljava/util/ArrayList;

    .line 70
    .line 71
    iput-object p1, p0, Lcom/changdu/component/pay/google/c;->a:Ljava/lang/Object;

    .line 72
    .line 73
    iput v2, p0, Lcom/changdu/component/pay/google/c;->b:I

    .line 74
    .line 75
    invoke-virtual {v1, v3, p0}, Lcom/changdu/component/pay/google/x;->b(Ljava/util/ArrayList;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    if-ne v1, v0, :cond_4

    .line 80
    .line 81
    :goto_1
    return-object v0

    .line 82
    :cond_4
    move-object v0, p1

    .line 83
    move-object p1, v1

    .line 84
    :goto_2
    check-cast p1, Ljava/util/ArrayList;

    .line 85
    .line 86
    iget-object v1, p0, Lcom/changdu/component/pay/google/c;->e:Lcom/changdu/component/pay/base/service/OnPurchaseMonetizationListener;

    .line 87
    .line 88
    invoke-interface {v1, v0, p1}, Lcom/changdu/component/pay/base/service/OnPurchaseMonetizationListener;->onPurchaseItemMonetizationResult(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 89
    .line 90
    .line 91
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 92
    .line 93
    return-object p1
.end method
