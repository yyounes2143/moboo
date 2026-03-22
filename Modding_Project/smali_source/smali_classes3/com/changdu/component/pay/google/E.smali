.class public final Lcom/changdu/component/pay/google/E;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Proguard"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Ljava/util/Iterator;

.field public b:Lcom/changdu/component/pay/google/localdb/PurchaseOrder;

.field public c:I


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1

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

    .line 1
    new-instance p1, Lcom/changdu/component/pay/google/E;

    .line 2
    .line 3
    invoke-direct {p1, p2}, Lcom/changdu/component/pay/google/E;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 4
    .line 5
    .line 6
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
    new-instance p1, Lcom/changdu/component/pay/google/E;

    .line 6
    .line 7
    invoke-direct {p1, p2}, Lcom/changdu/component/pay/google/E;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Lcom/changdu/component/pay/google/E;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/changdu/component/pay/google/E;->c:I

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x1

    .line 10
    if-eqz v1, :cond_4

    .line 11
    .line 12
    if-eq v1, v4, :cond_3

    .line 13
    .line 14
    if-eq v1, v3, :cond_1

    .line 15
    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/changdu/component/pay/google/E;->a:Ljava/util/Iterator;

    .line 19
    .line 20
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 27
    .line 28
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1

    .line 32
    :cond_1
    iget-object v1, p0, Lcom/changdu/component/pay/google/E;->b:Lcom/changdu/component/pay/google/localdb/PurchaseOrder;

    .line 33
    .line 34
    iget-object v4, p0, Lcom/changdu/component/pay/google/E;->a:Ljava/util/Iterator;

    .line 35
    .line 36
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 37
    .line 38
    .line 39
    goto :goto_2

    .line 40
    :catch_0
    :cond_2
    move-object v1, v4

    .line 41
    goto :goto_1

    .line 42
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    sget-object p1, Lcom/changdu/component/pay/google/I;->a:Lkotlin/Lazy;

    .line 50
    .line 51
    iput v4, p0, Lcom/changdu/component/pay/google/E;->c:I

    .line 52
    .line 53
    invoke-static {p0}, Lcom/changdu/component/pay/google/I;->a(Lcom/changdu/component/pay/google/E;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-ne p1, v0, :cond_5

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_5
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 61
    .line 62
    invoke-static {p1}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    if-eqz p1, :cond_8

    .line 66
    .line 67
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_6

    .line 72
    .line 73
    goto :goto_4

    .line 74
    :cond_6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    move-object v1, p1

    .line 79
    :catch_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_8

    .line 84
    .line 85
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    check-cast p1, Lcom/changdu/component/pay/google/localdb/PurchaseOrder;

    .line 90
    .line 91
    :try_start_2
    sget-object v4, Lcom/changdu/component/pay/google/I;->a:Lkotlin/Lazy;

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/changdu/component/pay/google/localdb/PurchaseOrder;->getJumpUrl()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-virtual {p1}, Lcom/changdu/component/pay/google/localdb/PurchaseOrder;->getCdOrderId()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    invoke-virtual {p1}, Lcom/changdu/component/pay/google/localdb/PurchaseOrder;->getPurchaseData()Lcom/android/billingclient/api/Purchase;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    invoke-virtual {v6}, Lcom/android/billingclient/api/Purchase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    invoke-virtual {p1}, Lcom/changdu/component/pay/google/localdb/PurchaseOrder;->getPurchaseData()Lcom/android/billingclient/api/Purchase;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    invoke-virtual {v7}, Lcom/android/billingclient/api/Purchase;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    iput-object v1, p0, Lcom/changdu/component/pay/google/E;->a:Ljava/util/Iterator;

    .line 118
    .line 119
    iput-object p1, p0, Lcom/changdu/component/pay/google/E;->b:Lcom/changdu/component/pay/google/localdb/PurchaseOrder;

    .line 120
    .line 121
    iput v3, p0, Lcom/changdu/component/pay/google/E;->c:I

    .line 122
    .line 123
    invoke-static {v4, v5, v6, v7, p0}, Lcom/changdu/component/pay/google/I;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 127
    if-ne v4, v0, :cond_7

    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_7
    move-object v8, v1

    .line 131
    move-object v1, p1

    .line 132
    move-object p1, v4

    .line 133
    move-object v4, v8

    .line 134
    :goto_2
    :try_start_3
    check-cast p1, Ljava/lang/Boolean;

    .line 135
    .line 136
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    if-eqz p1, :cond_2

    .line 141
    .line 142
    invoke-static {v1}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    sget-object p1, Lcom/changdu/component/pay/google/I;->a:Lkotlin/Lazy;

    .line 146
    .line 147
    invoke-virtual {v1}, Lcom/changdu/component/pay/google/localdb/PurchaseOrder;->getCdOrderId()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    iput-object v4, p0, Lcom/changdu/component/pay/google/E;->a:Ljava/util/Iterator;

    .line 152
    .line 153
    const/4 v1, 0x0

    .line 154
    iput-object v1, p0, Lcom/changdu/component/pay/google/E;->b:Lcom/changdu/component/pay/google/localdb/PurchaseOrder;

    .line 155
    .line 156
    iput v2, p0, Lcom/changdu/component/pay/google/E;->c:I

    .line 157
    .line 158
    invoke-static {p1, p0}, Lcom/changdu/component/pay/google/I;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 162
    if-ne p1, v0, :cond_2

    .line 163
    .line 164
    :goto_3
    return-object v0

    .line 165
    :cond_8
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 166
    .line 167
    return-object p1
.end method
