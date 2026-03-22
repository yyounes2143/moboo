.class public final Lcom/changdu/component/pay/google/I;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field public static final a:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/component/pay/google/G;->a:Lcom/changdu/component/pay/google/G;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/changdu/component/pay/google/I;->a:Lkotlin/Lazy;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final a()Lcom/changdu/component/pay/google/localdb/LocalBillingDb;
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/component/pay/google/I;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/changdu/component/pay/google/localdb/LocalBillingDb;

    return-object v0
.end method

.method public static final a(Lcom/changdu/component/pay/google/E;)Ljava/lang/Object;
    .locals 3

    .line 2
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/changdu/component/pay/google/A;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/changdu/component/pay/google/A;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lcom/changdu/component/pay/google/localdb/PurchaseOrder;Lcom/changdu/component/pay/google/C;)Ljava/lang/Object;
    .locals 3

    .line 5
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/changdu/component/pay/google/H;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/changdu/component/pay/google/H;-><init>(Lcom/changdu/component/pay/google/localdb/PurchaseOrder;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Ljava/lang/String;Lcom/changdu/component/pay/google/C;)Ljava/lang/Object;
    .locals 3

    .line 3
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/changdu/component/pay/google/B;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/changdu/component/pay/google/B;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/Purchase;Lcom/changdu/component/pay/google/m;)Ljava/lang/Object;
    .locals 8

    .line 4
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/changdu/component/pay/google/F;

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/changdu/component/pay/google/F;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/Purchase;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;
    .locals 7

    .line 8
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/changdu/component/pay/google/z;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/changdu/component/pay/google/z;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;
    .locals 3

    .line 6
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/changdu/component/pay/google/y;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/changdu/component/pay/google/y;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 9
    const-string v0, ""

    :try_start_0
    sget-object v1, Lcom/changdu/component/core/CDComponent;->context:Landroid/content/Context;

    const-string v2, "googlePurchaseHistory"

    invoke-static {v1, v2}, Lcom/changdu/component/pay/base/internal/ALocalCache;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/changdu/component/pay/base/internal/ALocalCache;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {v1, p0}, Lcom/changdu/component/pay/base/internal/ALocalCache;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    return-object v0

    :cond_1
    return-object p0

    :catch_0
    return-object v0
.end method

.method public static a(Lcom/android/billingclient/api/Purchase;)V
    .locals 7

    .line 7
    sget-object v0, Lcom/changdu/component/pay/base/PayUtil;->INSTANCE:Lcom/changdu/component/pay/base/PayUtil;

    invoke-virtual {v0}, Lcom/changdu/component/pay/base/PayUtil;->getIoLoaderScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v4, Lcom/changdu/component/pay/google/C;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/changdu/component/pay/google/C;-><init>(Lcom/android/billingclient/api/Purchase;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 11
    :try_start_0
    sget-object v0, Lcom/changdu/component/core/CDComponent;->context:Landroid/content/Context;

    const-string v1, "googlePurchaseHistory"

    invoke-static {v0, v1}, Lcom/changdu/component/pay/base/internal/ALocalCache;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/changdu/component/pay/base/internal/ALocalCache;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0, p0, p1}, Lcom/changdu/component/pay/base/internal/ALocalCache;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
