.class final Lcom/appsflyer/internal/AFb1iSDK;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private final AFAdRevenueData:Lcom/appsflyer/internal/AFi1oSDK;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final areAllFieldsValid:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private component4:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final getCurrencyIso4217Code:Ljava/util/concurrent/ScheduledExecutorService;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile getMediationNetwork:Z

.field private final getMonetizationNetwork:Lcom/appsflyer/internal/AFa1mSDK;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final getRevenue:Lcom/appsflyer/internal/AFb1aSDK$AFa1tSDK;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/appsflyer/internal/AFa1mSDK;Lcom/appsflyer/internal/AFi1oSDK;Lcom/appsflyer/internal/AFb1aSDK$AFa1tSDK;)V
    .locals 0
    .param p1    # Ljava/util/concurrent/ScheduledExecutorService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/appsflyer/internal/AFa1mSDK;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/appsflyer/internal/AFi1oSDK;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/appsflyer/internal/AFb1aSDK$AFa1tSDK;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/appsflyer/internal/AFb1iSDK;->getCurrencyIso4217Code:Ljava/util/concurrent/ScheduledExecutorService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/appsflyer/internal/AFb1iSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFa1mSDK;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/appsflyer/internal/AFb1iSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFi1oSDK;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/appsflyer/internal/AFb1iSDK;->getRevenue:Lcom/appsflyer/internal/AFb1aSDK$AFa1tSDK;

    .line 11
    .line 12
    new-instance p1, Lcom/appsflyer/internal/Wwwwwwwwwwwwwwwwwwwwwwww;

    .line 13
    .line 14
    invoke-direct {p1, p0}, Lcom/appsflyer/internal/Wwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lcom/appsflyer/internal/AFb1iSDK;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/appsflyer/internal/AFb1iSDK;->areAllFieldsValid:Ljava/lang/Runnable;

    .line 18
    .line 19
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/appsflyer/internal/AFb1iSDK;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/appsflyer/internal/AFb1iSDK;->getMediationNetwork(Lcom/appsflyer/internal/AFb1iSDK;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/appsflyer/internal/AFb1iSDK;Lcom/appsflyer/internal/AFh1qSDK;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/appsflyer/internal/AFb1iSDK;->getMonetizationNetwork(Lcom/appsflyer/internal/AFb1iSDK;Lcom/appsflyer/internal/AFh1qSDK;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final getMediationNetwork(Lcom/appsflyer/internal/AFb1iSDK;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/appsflyer/internal/AFb1iSDK;->getMediationNetwork:Z

    .line 3
    .line 4
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/appsflyer/internal/AFb1iSDK;->getRevenue:Lcom/appsflyer/internal/AFb1aSDK$AFa1tSDK;

    .line 7
    .line 8
    invoke-interface {p0}, Lcom/appsflyer/internal/AFb1aSDK$AFa1tSDK;->getMediationNetwork()V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 20
    .line 21
    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    :goto_0
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    if-eqz p0, :cond_0

    .line 34
    .line 35
    const-string v0, "Background task failed with a throwable: "

    .line 36
    .line 37
    invoke-static {v0, p0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method private static final getMonetizationNetwork(Lcom/appsflyer/internal/AFb1iSDK;Lcom/appsflyer/internal/AFh1qSDK;)V
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/appsflyer/internal/AFb1iSDK;->getRevenue:Lcom/appsflyer/internal/AFb1aSDK$AFa1tSDK;

    .line 4
    .line 5
    invoke-interface {p0, p1}, Lcom/appsflyer/internal/AFb1aSDK$AFa1tSDK;->getRevenue(Lcom/appsflyer/internal/AFh1qSDK;)V

    .line 6
    .line 7
    .line 8
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 9
    .line 10
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 17
    .line 18
    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    :goto_0
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    if-eqz p0, :cond_0

    .line 31
    .line 32
    const-string p1, "Listener thrown an exception: "

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    invoke-static {p1, p0, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p2, p0, Lcom/appsflyer/internal/AFb1iSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFa1mSDK;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v1, "android.intent.action.VIEW"

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v1, 0x0

    .line 27
    :goto_0
    if-eqz v1, :cond_1

    .line 28
    .line 29
    iget-object v1, p2, Lcom/appsflyer/internal/AFa1mSDK;->AFAdRevenueData:Landroid/content/Intent;

    .line 30
    .line 31
    if-eq v0, v1, :cond_1

    .line 32
    .line 33
    iput-object v0, p2, Lcom/appsflyer/internal/AFa1mSDK;->AFAdRevenueData:Landroid/content/Intent;

    .line 34
    .line 35
    :cond_1
    iget-object p2, p0, Lcom/appsflyer/internal/AFb1iSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFi1oSDK;

    .line 36
    .line 37
    invoke-interface {p2, p1}, Lcom/appsflyer/internal/AFi1oSDK;->getMonetizationNetwork(Landroid/app/Activity;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 4
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-boolean p1, p0, Lcom/appsflyer/internal/AFb1iSDK;->getMediationNetwork:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/appsflyer/internal/AFb1iSDK;->getCurrencyIso4217Code:Ljava/util/concurrent/ScheduledExecutorService;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1iSDK;->areAllFieldsValid:Ljava/lang/Runnable;

    .line 8
    .line 9
    sget-object v1, Lcom/appsflyer/internal/AFb1aSDK;->AFa1zSDK:Lcom/appsflyer/internal/AFb1aSDK$AFa1zSDK;

    .line 10
    .line 11
    invoke-static {}, Lcom/appsflyer/internal/AFb1aSDK$AFa1zSDK;->getMediationNetwork()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 16
    .line 17
    invoke-interface {p1, v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/appsflyer/internal/AFb1iSDK;->component4:Ljava/util/concurrent/ScheduledFuture;

    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lcom/appsflyer/internal/AFb1iSDK;->getMediationNetwork:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Lcom/appsflyer/internal/AFb1iSDK;->getMediationNetwork:Z

    .line 7
    .line 8
    new-instance v0, Lcom/appsflyer/internal/AFh1qSDK;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/appsflyer/internal/AFb1iSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFi1oSDK;

    .line 11
    .line 12
    invoke-direct {v0, p1, v1}, Lcom/appsflyer/internal/AFh1qSDK;-><init>(Landroid/app/Activity;Lcom/appsflyer/internal/AFi1oSDK;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/appsflyer/internal/AFb1iSDK;->getCurrencyIso4217Code:Ljava/util/concurrent/ScheduledExecutorService;

    .line 16
    .line 17
    new-instance v1, Lcom/appsflyer/internal/Wwwwwwwwwwwwwwwwwwwwwww;

    .line 18
    .line 19
    invoke-direct {v1, p0, v0}, Lcom/appsflyer/internal/Wwwwwwwwwwwwwwwwwwwwwww;-><init>(Lcom/appsflyer/internal/AFb1iSDK;Lcom/appsflyer/internal/AFh1qSDK;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-object p1, p0, Lcom/appsflyer/internal/AFb1iSDK;->component4:Ljava/util/concurrent/ScheduledFuture;

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    invoke-interface {p1, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method
