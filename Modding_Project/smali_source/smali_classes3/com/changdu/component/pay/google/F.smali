.class public final Lcom/changdu/component/pay/google/F;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Proguard"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/android/billingclient/api/Purchase;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/Purchase;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/component/pay/google/F;->a:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/changdu/component/pay/google/F;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/changdu/component/pay/google/F;->c:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/changdu/component/pay/google/F;->d:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/changdu/component/pay/google/F;->e:Lcom/android/billingclient/api/Purchase;

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

    .line 1
    new-instance v0, Lcom/changdu/component/pay/google/F;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/changdu/component/pay/google/F;->a:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/changdu/component/pay/google/F;->b:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/changdu/component/pay/google/F;->c:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/changdu/component/pay/google/F;->d:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/changdu/component/pay/google/F;->e:Lcom/android/billingclient/api/Purchase;

    .line 12
    .line 13
    move-object v6, p2

    .line 14
    invoke-direct/range {v0 .. v6}, Lcom/changdu/component/pay/google/F;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/Purchase;Lkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
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
    invoke-virtual {p0, p1, p2}, Lcom/changdu/component/pay/google/F;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/changdu/component/pay/google/F;

    .line 10
    .line 11
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/changdu/component/pay/google/F;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    :try_start_0
    invoke-static {}, Lcom/changdu/component/pay/google/I;->a()Lcom/changdu/component/pay/google/localdb/LocalBillingDb;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/changdu/component/pay/google/localdb/LocalBillingDb;->purchaseOrderDao()Lcom/changdu/component/pay/google/localdb/PurchaseOrderDao;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance v0, Lcom/changdu/component/pay/google/localdb/PurchaseOrder;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/changdu/component/pay/google/F;->a:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/changdu/component/pay/google/F;->b:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v3, p0, Lcom/changdu/component/pay/google/F;->c:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v4, p0, Lcom/changdu/component/pay/google/F;->d:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v5, p0, Lcom/changdu/component/pay/google/F;->e:Lcom/android/billingclient/api/Purchase;

    .line 26
    .line 27
    invoke-virtual {v5}, Lcom/android/billingclient/api/Purchase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    iget-object v6, p0, Lcom/changdu/component/pay/google/F;->e:Lcom/android/billingclient/api/Purchase;

    .line 32
    .line 33
    const/4 v7, 0x0

    .line 34
    invoke-direct/range {v0 .. v7}, Lcom/changdu/component/pay/google/localdb/PurchaseOrder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/Purchase;I)V

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, v0}, Lcom/changdu/component/pay/google/localdb/PurchaseOrderDao;->insertPurchaseOrder(Lcom/changdu/component/pay/google/localdb/PurchaseOrder;)V

    .line 38
    .line 39
    .line 40
    const-string p1, "CDPay"

    .line 41
    .line 42
    iget-object v0, p0, Lcom/changdu/component/pay/google/F;->a:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/changdu/component/pay/google/F;->e:Lcom/android/billingclient/api/Purchase;

    .line 45
    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v3, "\u63d2\u5165\u65b0\u8ba2\u5355\u6210\u529f "

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v0, " - "

    .line 60
    .line 61
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    return-object p1

    .line 80
    :catch_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 81
    .line 82
    return-object p1
.end method
