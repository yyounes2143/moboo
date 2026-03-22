.class public final Lcom/changdu/component/pay/google/x;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/android/billingclient/api/BillingClientStateListener;
.implements Lcom/android/billingclient/api/PurchasesUpdatedListener;


# static fields
.field public static final f:Lcom/changdu/component/pay/google/d;

.field public static volatile g:Lcom/changdu/component/pay/google/x;


# instance fields
.field public final a:Lcom/android/billingclient/api/BillingClient;

.field public b:Ljava/lang/String;

.field public c:Lcom/changdu/component/pay/google/a;

.field public final d:Lj$/util/concurrent/ConcurrentHashMap;

.field public e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/changdu/component/pay/google/d;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/changdu/component/pay/google/d;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/changdu/component/pay/google/x;->f:Lcom/changdu/component/pay/google/d;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/changdu/component/pay/google/x;->b:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    invoke-direct {v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Lcom/changdu/component/pay/google/x;->d:Lj$/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/changdu/component/pay/google/x;->e:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/android/billingclient/api/BillingClient;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1, p0}, Lcom/android/billingclient/api/BillingClient$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/BillingClient$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/BillingClient;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/changdu/component/pay/google/x;->a:Lcom/android/billingclient/api/BillingClient;

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/changdu/component/pay/google/x;->b()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public static final synthetic a(Lcom/changdu/component/pay/google/x;)Lcom/android/billingclient/api/BillingClient;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/changdu/component/pay/google/x;->a:Lcom/android/billingclient/api/BillingClient;

    return-object p0
.end method

.method public static final a(Lcom/changdu/component/pay/google/x;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingConfig;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingConfig;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    iput-object p1, p0, Lcom/changdu/component/pay/google/x;->e:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic b(Lcom/changdu/component/pay/google/x;)Lj$/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/changdu/component/pay/google/x;->d:Lj$/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static final synthetic c(Lcom/changdu/component/pay/google/x;)Lcom/changdu/component/pay/google/OnPurchaseListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/changdu/component/pay/google/x;->c:Lcom/changdu/component/pay/google/a;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/billingclient/api/Purchase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 13

    instance-of v0, p2, Lcom/changdu/component/pay/google/e;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/changdu/component/pay/google/e;

    iget v1, v0, Lcom/changdu/component/pay/google/e;->h:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/changdu/component/pay/google/e;->h:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/changdu/component/pay/google/e;

    invoke-direct {v0, p0, p2}, Lcom/changdu/component/pay/google/e;-><init>(Lcom/changdu/component/pay/google/x;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/changdu/component/pay/google/e;->f:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 38
    iget v2, v0, Lcom/changdu/component/pay/google/e;->h:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-ne v2, v4, :cond_2

    iget p1, v0, Lcom/changdu/component/pay/google/e;->d:I

    iget-object v2, v0, Lcom/changdu/component/pay/google/e;->c:Lcom/android/billingclient/api/AcknowledgePurchaseParams;

    iget-object v6, v0, Lcom/changdu/component/pay/google/e;->b:Lcom/android/billingclient/api/Purchase;

    iget-object v7, v0, Lcom/changdu/component/pay/google/e;->a:Lcom/changdu/component/pay/google/x;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_1
    move-object p2, v2

    goto/16 :goto_4

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iget p1, v0, Lcom/changdu/component/pay/google/e;->d:I

    iget-object v2, v0, Lcom/changdu/component/pay/google/e;->c:Lcom/android/billingclient/api/AcknowledgePurchaseParams;

    iget-object v6, v0, Lcom/changdu/component/pay/google/e;->b:Lcom/android/billingclient/api/Purchase;

    iget-object v7, v0, Lcom/changdu/component/pay/google/e;->a:Lcom/changdu/component/pay/google/x;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 39
    invoke-static {}, Lcom/android/billingclient/api/AcknowledgePurchaseParams;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/AcknowledgePurchaseParams;

    move-result-object p2

    move-object v6, p0

    move v2, v5

    :goto_1
    const/4 v7, 0x4

    if-ge v2, v7, :cond_9

    .line 40
    iget-object v7, v6, Lcom/changdu/component/pay/google/x;->a:Lcom/android/billingclient/api/BillingClient;

    iput-object v6, v0, Lcom/changdu/component/pay/google/e;->a:Lcom/changdu/component/pay/google/x;

    iput-object p1, v0, Lcom/changdu/component/pay/google/e;->b:Lcom/android/billingclient/api/Purchase;

    iput-object p2, v0, Lcom/changdu/component/pay/google/e;->c:Lcom/android/billingclient/api/AcknowledgePurchaseParams;

    iput v2, v0, Lcom/changdu/component/pay/google/e;->d:I

    iput v5, v0, Lcom/changdu/component/pay/google/e;->h:I

    invoke-static {v7, p2, v0}, Lcom/android/billingclient/api/BillingClientKotlinKt;->Wwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingClient;Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_5

    goto :goto_3

    :cond_5
    move-object v12, v6

    move-object v6, p1

    move p1, v2

    move-object v2, p2

    move-object p2, v7

    move-object v7, v12

    .line 41
    :goto_2
    check-cast p2, Lcom/android/billingclient/api/BillingResult;

    .line 42
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    invoke-static {v6}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    move-result p2

    const/4 v8, -0x1

    if-eq p2, v8, :cond_7

    if-eqz p2, :cond_6

    const/4 v8, 0x6

    if-eq p2, v8, :cond_7

    const/4 p1, 0x7

    if-eq p2, p1, :cond_6

    .line 44
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 45
    :cond_6
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_7
    int-to-double v8, p1

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 46
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-long v8, v8

    const-wide/16 v10, 0x1f4

    mul-long/2addr v8, v10

    .line 47
    iput-object v7, v0, Lcom/changdu/component/pay/google/e;->a:Lcom/changdu/component/pay/google/x;

    iput-object v6, v0, Lcom/changdu/component/pay/google/e;->b:Lcom/android/billingclient/api/Purchase;

    iput-object v2, v0, Lcom/changdu/component/pay/google/e;->c:Lcom/android/billingclient/api/AcknowledgePurchaseParams;

    iput p1, v0, Lcom/changdu/component/pay/google/e;->d:I

    iput-wide v8, v0, Lcom/changdu/component/pay/google/e;->e:J

    iput v4, v0, Lcom/changdu/component/pay/google/e;->h:I

    invoke-static {v8, v9, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_1

    :goto_3
    return-object v1

    :goto_4
    const/4 v2, 0x3

    if-ge p1, v2, :cond_8

    .line 48
    invoke-static {v6}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :cond_8
    add-int/lit8 v2, p1, 0x1

    move-object p1, v6

    move-object v6, v7

    goto :goto_1

    .line 49
    :cond_9
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/billingclient/api/PurchasesResult;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 13

    const/4 v0, 0x1

    instance-of v1, p2, Lcom/changdu/component/pay/google/j;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Lcom/changdu/component/pay/google/j;

    iget v2, v1, Lcom/changdu/component/pay/google/j;->i:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/changdu/component/pay/google/j;->i:I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/changdu/component/pay/google/j;

    invoke-direct {v1, p0, p2}, Lcom/changdu/component/pay/google/j;-><init>(Lcom/changdu/component/pay/google/x;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v1, Lcom/changdu/component/pay/google/j;->g:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 15
    iget v3, v1, Lcom/changdu/component/pay/google/j;->i:I

    const/4 v4, 0x2

    if-eqz v3, :cond_4

    if-eq v3, v0, :cond_3

    if-ne v3, v4, :cond_2

    iget p1, v1, Lcom/changdu/component/pay/google/j;->e:I

    iget-object v3, v1, Lcom/changdu/component/pay/google/j;->d:Lcom/android/billingclient/api/ConsumeParams;

    iget-object v5, v1, Lcom/changdu/component/pay/google/j;->c:Lcom/android/billingclient/api/Purchase;

    iget-object v6, v1, Lcom/changdu/component/pay/google/j;->b:Ljava/util/Iterator;

    iget-object v7, v1, Lcom/changdu/component/pay/google/j;->a:Lcom/changdu/component/pay/google/x;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    move-object p2, v3

    goto/16 :goto_5

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iget p1, v1, Lcom/changdu/component/pay/google/j;->e:I

    iget-object v3, v1, Lcom/changdu/component/pay/google/j;->d:Lcom/android/billingclient/api/ConsumeParams;

    iget-object v5, v1, Lcom/changdu/component/pay/google/j;->c:Lcom/android/billingclient/api/Purchase;

    iget-object v6, v1, Lcom/changdu/component/pay/google/j;->b:Ljava/util/Iterator;

    iget-object v7, v1, Lcom/changdu/component/pay/google/j;->a:Lcom/changdu/component/pay/google/x;

    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 16
    invoke-virtual {p1}, Lcom/android/billingclient/api/PurchasesResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/BillingResult;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    move-result p2

    .line 17
    invoke-virtual {p1}, Lcom/android/billingclient/api/PurchasesResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/BillingResult;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/billingclient/api/BillingResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    if-eqz p2, :cond_5

    goto/16 :goto_9

    .line 18
    :cond_5
    invoke-virtual {p1}, Lcom/android/billingclient/api/PurchasesResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_c

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_6

    goto/16 :goto_9

    .line 19
    :cond_6
    invoke-virtual {p1}, Lcom/android/billingclient/api/PurchasesResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Lcom/android/billingclient/api/PurchasesResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 21
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v7, p0

    move-object v6, p1

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/billingclient/api/Purchase;

    .line 22
    :try_start_2
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 23
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    move-result p2

    if-ne p2, v0, :cond_b

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 25
    invoke-static {}, Lcom/android/billingclient/api/ConsumeParams;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/android/billingclient/api/ConsumeParams$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object p2

    .line 26
    invoke-virtual {p2}, Lcom/android/billingclient/api/ConsumeParams$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/ConsumeParams;

    move-result-object p2

    move v3, v0

    :goto_2
    const/4 v5, 0x4

    if-ge v3, v5, :cond_b

    .line 27
    iget-object v5, v7, Lcom/changdu/component/pay/google/x;->a:Lcom/android/billingclient/api/BillingClient;

    iput-object v7, v1, Lcom/changdu/component/pay/google/j;->a:Lcom/changdu/component/pay/google/x;

    iput-object v6, v1, Lcom/changdu/component/pay/google/j;->b:Ljava/util/Iterator;

    iput-object p1, v1, Lcom/changdu/component/pay/google/j;->c:Lcom/android/billingclient/api/Purchase;

    iput-object p2, v1, Lcom/changdu/component/pay/google/j;->d:Lcom/android/billingclient/api/ConsumeParams;

    iput v3, v1, Lcom/changdu/component/pay/google/j;->e:I

    iput v0, v1, Lcom/changdu/component/pay/google/j;->i:I

    invoke-static {v5, p2, v1}, Lcom/android/billingclient/api/BillingClientKotlinKt;->Wwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingClient;Lcom/android/billingclient/api/ConsumeParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_7

    goto :goto_4

    :cond_7
    move-object v12, v5

    move-object v5, p1

    move p1, v3

    move-object v3, p2

    move-object p2, v12

    .line 28
    :goto_3
    check-cast p2, Lcom/android/billingclient/api/ConsumeResult;

    .line 29
    invoke-virtual {p2}, Lcom/android/billingclient/api/ConsumeResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/BillingResult;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/billingclient/api/BillingResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    invoke-virtual {p2}, Lcom/android/billingclient/api/ConsumeResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/BillingResult;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/billingclient/api/BillingResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    invoke-static {v5}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    invoke-virtual {p2}, Lcom/android/billingclient/api/ConsumeResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/BillingResult;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    move-result p2

    const/4 v8, -0x1

    if-eq p2, v8, :cond_9

    if-eqz p2, :cond_8

    const/4 v8, 0x6

    if-eq p2, v8, :cond_9

    const/4 p1, 0x7

    if-eq p2, p1, :cond_8

    goto :goto_7

    .line 31
    :cond_8
    invoke-static {v5}, Lcom/changdu/component/pay/google/I;->a(Lcom/android/billingclient/api/Purchase;)V

    goto :goto_7

    :cond_9
    int-to-double v8, p1

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 32
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-long v8, v8

    const-wide/16 v10, 0x1f4

    mul-long/2addr v8, v10

    .line 33
    iput-object v7, v1, Lcom/changdu/component/pay/google/j;->a:Lcom/changdu/component/pay/google/x;

    iput-object v6, v1, Lcom/changdu/component/pay/google/j;->b:Ljava/util/Iterator;

    iput-object v5, v1, Lcom/changdu/component/pay/google/j;->c:Lcom/android/billingclient/api/Purchase;

    iput-object v3, v1, Lcom/changdu/component/pay/google/j;->d:Lcom/android/billingclient/api/ConsumeParams;

    iput p1, v1, Lcom/changdu/component/pay/google/j;->e:I

    iput-wide v8, v1, Lcom/changdu/component/pay/google/j;->f:J

    iput v4, v1, Lcom/changdu/component/pay/google/j;->i:I

    invoke-static {v8, v9, v1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v2, :cond_1

    :goto_4
    return-object v2

    :goto_5
    const/4 v3, 0x3

    if-ge p1, v3, :cond_a

    .line 34
    invoke-static {v5}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_6

    :catchall_0
    move-exception p1

    goto :goto_8

    :cond_a
    :goto_6
    add-int/lit8 v3, p1, 0x1

    move-object p1, v5

    goto :goto_2

    .line 35
    :cond_b
    :goto_7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 36
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :goto_8
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 37
    :cond_c
    :goto_9
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(Ljava/util/ArrayList;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lcom/changdu/component/pay/google/r;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/changdu/component/pay/google/r;

    iget v1, v0, Lcom/changdu/component/pay/google/r;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/changdu/component/pay/google/r;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/changdu/component/pay/google/r;

    invoke-direct {v0, p0, p2}, Lcom/changdu/component/pay/google/r;-><init>(Lcom/changdu/component/pay/google/x;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/changdu/component/pay/google/r;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 50
    iget v2, v0, Lcom/changdu/component/pay/google/r;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/changdu/component/pay/google/r;->a:Ljava/util/ArrayList;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 51
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_4

    .line 52
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 53
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    new-instance v4, Lcom/changdu/component/pay/google/s;

    const/4 v5, 0x0

    invoke-direct {v4, p1, p0, p2, v5}, Lcom/changdu/component/pay/google/s;-><init>(Ljava/util/ArrayList;Lcom/changdu/component/pay/google/x;Ljava/util/ArrayList;Lkotlin/coroutines/Continuation;)V

    iput-object p2, v0, Lcom/changdu/component/pay/google/r;->a:Ljava/util/ArrayList;

    iput v3, v0, Lcom/changdu/component/pay/google/r;->d:I

    invoke-static {v2, v4, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    return-object p2
.end method

.method public final a()V
    .locals 14

    .line 3
    sget-object v0, Lcom/changdu/component/pay/google/I;->a:Lkotlin/Lazy;

    .line 4
    sget-object v0, Lcom/changdu/component/pay/base/PayUtil;->INSTANCE:Lcom/changdu/component/pay/base/PayUtil;

    invoke-virtual {v0}, Lcom/changdu/component/pay/base/PayUtil;->getIoLoaderScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v4, Lcom/changdu/component/pay/google/E;

    const/4 v7, 0x0

    invoke-direct {v4, v7}, Lcom/changdu/component/pay/google/E;-><init>(Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 5
    iget-object v1, p0, Lcom/changdu/component/pay/google/x;->a:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingClient;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/changdu/component/pay/base/PayUtil;->getIoLoaderScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v8

    new-instance v11, Lcom/changdu/component/pay/google/f;

    invoke-direct {v11, p0, v7}, Lcom/changdu/component/pay/google/f;-><init>(Lcom/changdu/component/pay/google/x;Lkotlin/coroutines/Continuation;)V

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 7
    invoke-virtual {v0}, Lcom/changdu/component/pay/base/PayUtil;->getIoLoaderScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v4, Lcom/changdu/component/pay/google/g;

    invoke-direct {v4, p0, v7}, Lcom/changdu/component/pay/google/g;-><init>(Lcom/changdu/component/pay/google/x;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/changdu/component/pay/google/x;->b()V

    return-void
.end method

.method public final a(Lcom/changdu/component/pay/google/a;Ljava/lang/String;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/changdu/component/pay/google/x;->c:Lcom/changdu/component/pay/google/a;

    .line 10
    iput-object p2, p0, Lcom/changdu/component/pay/google/x;->b:Ljava/lang/String;

    .line 11
    iget-object p2, p0, Lcom/changdu/component/pay/google/x;->a:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingClient;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/changdu/component/pay/google/x;->a()V

    .line 13
    invoke-virtual {p1}, Lcom/changdu/component/pay/google/a;->onReady()V

    return-void

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/changdu/component/pay/google/x;->b()V

    return-void
.end method

.method public final b(Lcom/android/billingclient/api/Purchase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 13

    instance-of v0, p2, Lcom/changdu/component/pay/google/h;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/changdu/component/pay/google/h;

    iget v1, v0, Lcom/changdu/component/pay/google/h;->h:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/changdu/component/pay/google/h;->h:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/changdu/component/pay/google/h;

    invoke-direct {v0, p0, p2}, Lcom/changdu/component/pay/google/h;-><init>(Lcom/changdu/component/pay/google/x;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/changdu/component/pay/google/h;->f:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 28
    iget v2, v0, Lcom/changdu/component/pay/google/h;->h:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-ne v2, v4, :cond_2

    iget p1, v0, Lcom/changdu/component/pay/google/h;->d:I

    iget-object v2, v0, Lcom/changdu/component/pay/google/h;->c:Lcom/android/billingclient/api/ConsumeParams;

    iget-object v6, v0, Lcom/changdu/component/pay/google/h;->b:Lcom/android/billingclient/api/Purchase;

    iget-object v7, v0, Lcom/changdu/component/pay/google/h;->a:Lcom/changdu/component/pay/google/x;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_1
    move-object p2, v2

    goto/16 :goto_4

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iget p1, v0, Lcom/changdu/component/pay/google/h;->d:I

    iget-object v2, v0, Lcom/changdu/component/pay/google/h;->c:Lcom/android/billingclient/api/ConsumeParams;

    iget-object v6, v0, Lcom/changdu/component/pay/google/h;->b:Lcom/android/billingclient/api/Purchase;

    iget-object v7, v0, Lcom/changdu/component/pay/google/h;->a:Lcom/changdu/component/pay/google/x;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 29
    invoke-static {}, Lcom/android/billingclient/api/ConsumeParams;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/billingclient/api/ConsumeParams$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/billingclient/api/ConsumeParams$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/ConsumeParams;

    move-result-object p2

    move-object v6, p0

    move v2, v5

    :goto_1
    const/4 v7, 0x4

    if-ge v2, v7, :cond_9

    .line 30
    iget-object v7, v6, Lcom/changdu/component/pay/google/x;->a:Lcom/android/billingclient/api/BillingClient;

    iput-object v6, v0, Lcom/changdu/component/pay/google/h;->a:Lcom/changdu/component/pay/google/x;

    iput-object p1, v0, Lcom/changdu/component/pay/google/h;->b:Lcom/android/billingclient/api/Purchase;

    iput-object p2, v0, Lcom/changdu/component/pay/google/h;->c:Lcom/android/billingclient/api/ConsumeParams;

    iput v2, v0, Lcom/changdu/component/pay/google/h;->d:I

    iput v5, v0, Lcom/changdu/component/pay/google/h;->h:I

    invoke-static {v7, p2, v0}, Lcom/android/billingclient/api/BillingClientKotlinKt;->Wwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingClient;Lcom/android/billingclient/api/ConsumeParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_5

    goto :goto_3

    :cond_5
    move-object v12, v6

    move-object v6, p1

    move p1, v2

    move-object v2, p2

    move-object p2, v7

    move-object v7, v12

    .line 31
    :goto_2
    check-cast p2, Lcom/android/billingclient/api/ConsumeResult;

    .line 32
    invoke-virtual {p2}, Lcom/android/billingclient/api/ConsumeResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/BillingResult;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/billingclient/api/BillingResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    invoke-virtual {p2}, Lcom/android/billingclient/api/ConsumeResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/BillingResult;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/billingclient/api/BillingResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    invoke-static {v6}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    invoke-virtual {p2}, Lcom/android/billingclient/api/ConsumeResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/BillingResult;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    move-result p2

    const/4 v8, -0x1

    if-eq p2, v8, :cond_7

    if-eqz p2, :cond_6

    const/4 v8, 0x6

    if-eq p2, v8, :cond_7

    const/4 p1, 0x7

    if-eq p2, p1, :cond_6

    .line 34
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 35
    :cond_6
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_7
    int-to-double v8, p1

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 36
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-long v8, v8

    const-wide/16 v10, 0x1f4

    mul-long/2addr v8, v10

    .line 37
    iput-object v7, v0, Lcom/changdu/component/pay/google/h;->a:Lcom/changdu/component/pay/google/x;

    iput-object v6, v0, Lcom/changdu/component/pay/google/h;->b:Lcom/android/billingclient/api/Purchase;

    iput-object v2, v0, Lcom/changdu/component/pay/google/h;->c:Lcom/android/billingclient/api/ConsumeParams;

    iput p1, v0, Lcom/changdu/component/pay/google/h;->d:I

    iput-wide v8, v0, Lcom/changdu/component/pay/google/h;->e:J

    iput v4, v0, Lcom/changdu/component/pay/google/h;->h:I

    invoke-static {v8, v9, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_1

    :goto_3
    return-object v1

    :goto_4
    const/4 v2, 0x3

    if-ge p1, v2, :cond_8

    .line 38
    invoke-static {v6}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :cond_8
    add-int/lit8 v2, p1, 0x1

    move-object p1, v6

    move-object v6, v7

    goto :goto_1

    .line 39
    :cond_9
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/billingclient/api/PurchasesResult;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 13

    const/4 v0, 0x1

    instance-of v1, p2, Lcom/changdu/component/pay/google/n;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Lcom/changdu/component/pay/google/n;

    iget v2, v1, Lcom/changdu/component/pay/google/n;->i:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/changdu/component/pay/google/n;->i:I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/changdu/component/pay/google/n;

    invoke-direct {v1, p0, p2}, Lcom/changdu/component/pay/google/n;-><init>(Lcom/changdu/component/pay/google/x;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v1, Lcom/changdu/component/pay/google/n;->g:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 5
    iget v3, v1, Lcom/changdu/component/pay/google/n;->i:I

    const/4 v4, 0x2

    if-eqz v3, :cond_4

    if-eq v3, v0, :cond_3

    if-ne v3, v4, :cond_2

    iget p1, v1, Lcom/changdu/component/pay/google/n;->e:I

    iget-object v3, v1, Lcom/changdu/component/pay/google/n;->d:Lcom/android/billingclient/api/AcknowledgePurchaseParams;

    iget-object v5, v1, Lcom/changdu/component/pay/google/n;->c:Lcom/android/billingclient/api/Purchase;

    iget-object v6, v1, Lcom/changdu/component/pay/google/n;->b:Ljava/util/Iterator;

    iget-object v7, v1, Lcom/changdu/component/pay/google/n;->a:Lcom/changdu/component/pay/google/x;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    move-object p2, v3

    goto/16 :goto_5

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iget p1, v1, Lcom/changdu/component/pay/google/n;->e:I

    iget-object v3, v1, Lcom/changdu/component/pay/google/n;->d:Lcom/android/billingclient/api/AcknowledgePurchaseParams;

    iget-object v5, v1, Lcom/changdu/component/pay/google/n;->c:Lcom/android/billingclient/api/Purchase;

    iget-object v6, v1, Lcom/changdu/component/pay/google/n;->b:Ljava/util/Iterator;

    iget-object v7, v1, Lcom/changdu/component/pay/google/n;->a:Lcom/changdu/component/pay/google/x;

    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p1}, Lcom/android/billingclient/api/PurchasesResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/BillingResult;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    move-result p2

    .line 7
    invoke-virtual {p1}, Lcom/android/billingclient/api/PurchasesResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/BillingResult;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/billingclient/api/BillingResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    if-eqz p2, :cond_5

    goto/16 :goto_9

    .line 8
    :cond_5
    invoke-virtual {p1}, Lcom/android/billingclient/api/PurchasesResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_c

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_6

    goto/16 :goto_9

    .line 9
    :cond_6
    invoke-virtual {p1}, Lcom/android/billingclient/api/PurchasesResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Lcom/android/billingclient/api/PurchasesResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 11
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v7, p0

    move-object v6, p1

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/billingclient/api/Purchase;

    .line 12
    :try_start_2
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 13
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    move-result p2

    if-ne p2, v0, :cond_b

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Z

    move-result p2

    if-nez p2, :cond_b

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 15
    invoke-static {}, Lcom/android/billingclient/api/AcknowledgePurchaseParams;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object p2

    .line 16
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/AcknowledgePurchaseParams;

    move-result-object p2

    move v3, v0

    :goto_2
    const/4 v5, 0x4

    if-ge v3, v5, :cond_b

    .line 17
    iget-object v5, v7, Lcom/changdu/component/pay/google/x;->a:Lcom/android/billingclient/api/BillingClient;

    iput-object v7, v1, Lcom/changdu/component/pay/google/n;->a:Lcom/changdu/component/pay/google/x;

    iput-object v6, v1, Lcom/changdu/component/pay/google/n;->b:Ljava/util/Iterator;

    iput-object p1, v1, Lcom/changdu/component/pay/google/n;->c:Lcom/android/billingclient/api/Purchase;

    iput-object p2, v1, Lcom/changdu/component/pay/google/n;->d:Lcom/android/billingclient/api/AcknowledgePurchaseParams;

    iput v3, v1, Lcom/changdu/component/pay/google/n;->e:I

    iput v0, v1, Lcom/changdu/component/pay/google/n;->i:I

    invoke-static {v5, p2, v1}, Lcom/android/billingclient/api/BillingClientKotlinKt;->Wwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingClient;Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_7

    goto :goto_4

    :cond_7
    move-object v12, v5

    move-object v5, p1

    move p1, v3

    move-object v3, p2

    move-object p2, v12

    .line 18
    :goto_3
    check-cast p2, Lcom/android/billingclient/api/BillingResult;

    .line 19
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    invoke-static {v5}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    move-result p2

    const/4 v8, -0x1

    if-eq p2, v8, :cond_9

    if-eqz p2, :cond_8

    const/4 v8, 0x6

    if-eq p2, v8, :cond_9

    const/4 p1, 0x7

    if-eq p2, p1, :cond_8

    goto :goto_7

    .line 21
    :cond_8
    invoke-static {v5}, Lcom/changdu/component/pay/google/I;->a(Lcom/android/billingclient/api/Purchase;)V

    goto :goto_7

    :cond_9
    int-to-double v8, p1

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 22
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-long v8, v8

    const-wide/16 v10, 0x1f4

    mul-long/2addr v8, v10

    .line 23
    iput-object v7, v1, Lcom/changdu/component/pay/google/n;->a:Lcom/changdu/component/pay/google/x;

    iput-object v6, v1, Lcom/changdu/component/pay/google/n;->b:Ljava/util/Iterator;

    iput-object v5, v1, Lcom/changdu/component/pay/google/n;->c:Lcom/android/billingclient/api/Purchase;

    iput-object v3, v1, Lcom/changdu/component/pay/google/n;->d:Lcom/android/billingclient/api/AcknowledgePurchaseParams;

    iput p1, v1, Lcom/changdu/component/pay/google/n;->e:I

    iput-wide v8, v1, Lcom/changdu/component/pay/google/n;->f:J

    iput v4, v1, Lcom/changdu/component/pay/google/n;->i:I

    invoke-static {v8, v9, v1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v2, :cond_1

    :goto_4
    return-object v2

    :goto_5
    const/4 v3, 0x3

    if-ge p1, v3, :cond_a

    .line 24
    invoke-static {v5}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_6

    :catchall_0
    move-exception p1

    goto :goto_8

    :cond_a
    :goto_6
    add-int/lit8 v3, p1, 0x1

    move-object p1, v5

    goto :goto_2

    .line 25
    :cond_b
    :goto_7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 26
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :goto_8
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 27
    :cond_c
    :goto_9
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final b(Ljava/util/ArrayList;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lcom/changdu/component/pay/google/v;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/changdu/component/pay/google/v;

    iget v1, v0, Lcom/changdu/component/pay/google/v;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/changdu/component/pay/google/v;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/changdu/component/pay/google/v;

    invoke-direct {v0, p0, p2}, Lcom/changdu/component/pay/google/v;-><init>(Lcom/changdu/component/pay/google/x;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/changdu/component/pay/google/v;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 40
    iget v2, v0, Lcom/changdu/component/pay/google/v;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/changdu/component/pay/google/v;->a:Ljava/util/ArrayList;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 41
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_4

    .line 42
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 43
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    new-instance v4, Lcom/changdu/component/pay/google/w;

    const/4 v5, 0x0

    invoke-direct {v4, p1, p0, p2, v5}, Lcom/changdu/component/pay/google/w;-><init>(Ljava/util/ArrayList;Lcom/changdu/component/pay/google/x;Ljava/util/ArrayList;Lkotlin/coroutines/Continuation;)V

    iput-object p2, v0, Lcom/changdu/component/pay/google/v;->a:Ljava/util/ArrayList;

    iput v3, v0, Lcom/changdu/component/pay/google/v;->d:I

    invoke-static {v2, v4, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    return-object p2
.end method

.method public final b()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/changdu/component/pay/google/x;->a:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/changdu/component/pay/google/x;->a:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/changdu/component/pay/google/x;->a:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0, p0}, Lcom/android/billingclient/api/BillingClient;->Wwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingClientStateListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onBillingServiceDisconnected()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/changdu/component/pay/google/x;->c:Lcom/changdu/component/pay/google/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x6

    .line 7
    const/4 v3, -0x1

    .line 8
    invoke-static {v0, v3, v1, v2}, Lcom/changdu/component/pay/google/b;->a(Lcom/changdu/component/pay/google/OnPurchaseListener;ILjava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/changdu/component/pay/google/x;->a()V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/changdu/component/pay/google/x;->c:Lcom/changdu/component/pay/google/a;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/changdu/component/pay/google/a;->onReady()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/changdu/component/pay/google/x;->c:Lcom/changdu/component/pay/google/a;

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    const/4 v2, 0x6

    .line 27
    invoke-static {p1, v0, v1, v2}, Lcom/changdu/component/pay/google/b;->a(Lcom/changdu/component/pay/google/OnPurchaseListener;ILjava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/changdu/component/pay/google/x;->a:Lcom/android/billingclient/api/BillingClient;

    .line 31
    .line 32
    invoke-static {}, Lcom/android/billingclient/api/GetBillingConfigParams;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/GetBillingConfigParams$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/android/billingclient/api/GetBillingConfigParams$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/android/billingclient/api/GetBillingConfigParams;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    new-instance v1, LWwwwwwwwwwwwwwww/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 41
    .line 42
    invoke-direct {v1, p0}, LWwwwwwwwwwwwwwww/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lcom/changdu/component/pay/google/x;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0, v1}, Lcom/android/billingclient/api/BillingClient;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/GetBillingConfigParams;Lcom/android/billingclient/api/BillingConfigResponseListener;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v1, 0x4

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    const/4 p2, 0x1

    .line 14
    if-eq v0, p2, :cond_0

    .line 15
    .line 16
    iget-object p2, p0, Lcom/changdu/component/pay/google/x;->c:Lcom/changdu/component/pay/google/a;

    .line 17
    .line 18
    if-eqz p2, :cond_1

    .line 19
    .line 20
    invoke-static {p2, v0, p1, v1}, Lcom/changdu/component/pay/google/b;->a(Lcom/changdu/component/pay/google/OnPurchaseListener;ILjava/lang/String;I)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget-object p1, p0, Lcom/changdu/component/pay/google/x;->c:Lcom/changdu/component/pay/google/a;

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    const/4 v0, 0x6

    .line 29
    invoke-static {p1, p2, v2, v0}, Lcom/changdu/component/pay/google/b;->a(Lcom/changdu/component/pay/google/OnPurchaseListener;ILjava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void

    .line 33
    :cond_2
    if-eqz p2, :cond_4

    .line 34
    .line 35
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_3

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    sget-object p1, Lcom/changdu/component/pay/base/PayUtil;->INSTANCE:Lcom/changdu/component/pay/base/PayUtil;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/changdu/component/pay/base/PayUtil;->getIoLoaderScope()Lkotlinx/coroutines/CoroutineScope;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    new-instance v6, Lcom/changdu/component/pay/google/m;

    .line 49
    .line 50
    invoke-direct {v6, p2, p0, v2}, Lcom/changdu/component/pay/google/m;-><init>(Ljava/util/List;Lcom/changdu/component/pay/google/x;Lkotlin/coroutines/Continuation;)V

    .line 51
    .line 52
    .line 53
    const/4 v7, 0x3

    .line 54
    const/4 v8, 0x0

    .line 55
    const/4 v4, 0x0

    .line 56
    const/4 v5, 0x0

    .line 57
    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_4
    :goto_0
    iget-object p2, p0, Lcom/changdu/component/pay/google/x;->c:Lcom/changdu/component/pay/google/a;

    .line 62
    .line 63
    if-eqz p2, :cond_5

    .line 64
    .line 65
    invoke-static {p2, v0, p1, v1}, Lcom/changdu/component/pay/google/b;->a(Lcom/changdu/component/pay/google/OnPurchaseListener;ILjava/lang/String;I)V

    .line 66
    .line 67
    .line 68
    :cond_5
    :goto_1
    sget-object p1, Lcom/changdu/component/pay/base/PayUtil;->INSTANCE:Lcom/changdu/component/pay/base/PayUtil;

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/changdu/component/pay/base/PayUtil;->getIoLoaderScope()Lkotlinx/coroutines/CoroutineScope;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    new-instance v6, Lcom/changdu/component/pay/google/i;

    .line 75
    .line 76
    invoke-direct {v6, p0, v2}, Lcom/changdu/component/pay/google/i;-><init>(Lcom/changdu/component/pay/google/x;Lkotlin/coroutines/Continuation;)V

    .line 77
    .line 78
    .line 79
    const/4 v7, 0x3

    .line 80
    const/4 v8, 0x0

    .line 81
    const/4 v4, 0x0

    .line 82
    const/4 v5, 0x0

    .line 83
    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 84
    .line 85
    .line 86
    return-void
.end method
