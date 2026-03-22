.class public final Lcom/appsflyer/internal/AFb1bSDK;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/appsflyer/internal/AFb1aSDK;


# instance fields
.field private final AFAdRevenueData:Ljava/util/concurrent/ScheduledExecutorService;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final getCurrencyIso4217Code:Lcom/appsflyer/internal/AFa1mSDK;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private getMonetizationNetwork:Lcom/appsflyer/internal/AFb1iSDK;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final getRevenue:Lcom/appsflyer/internal/AFi1oSDK;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/appsflyer/internal/AFa1mSDK;Lcom/appsflyer/internal/AFi1oSDK;)V
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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/appsflyer/internal/AFb1bSDK;->AFAdRevenueData:Ljava/util/concurrent/ScheduledExecutorService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/appsflyer/internal/AFb1bSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFa1mSDK;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/appsflyer/internal/AFb1bSDK;->getRevenue:Lcom/appsflyer/internal/AFi1oSDK;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final AFAdRevenueData(Landroid/content/Context;Lcom/appsflyer/internal/AFb1aSDK$AFa1tSDK;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/appsflyer/internal/AFb1aSDK$AFa1tSDK;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1bSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFb1iSDK;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/app/Application;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/appsflyer/internal/AFb1bSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFb1iSDK;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/appsflyer/internal/AFb1bSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFb1iSDK;

    .line 18
    .line 19
    new-instance v0, Lcom/appsflyer/internal/AFb1iSDK;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/appsflyer/internal/AFb1bSDK;->AFAdRevenueData:Ljava/util/concurrent/ScheduledExecutorService;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/appsflyer/internal/AFb1bSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFa1mSDK;

    .line 24
    .line 25
    iget-object v3, p0, Lcom/appsflyer/internal/AFb1bSDK;->getRevenue:Lcom/appsflyer/internal/AFi1oSDK;

    .line 26
    .line 27
    invoke-direct {v0, v1, v2, v3, p2}, Lcom/appsflyer/internal/AFb1iSDK;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/appsflyer/internal/AFa1mSDK;Lcom/appsflyer/internal/AFi1oSDK;Lcom/appsflyer/internal/AFb1aSDK$AFa1tSDK;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/appsflyer/internal/AFb1bSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFb1iSDK;

    .line 31
    .line 32
    instance-of p2, p1, Landroid/app/Activity;

    .line 33
    .line 34
    if-eqz p2, :cond_1

    .line 35
    .line 36
    move-object p2, p1

    .line 37
    check-cast p2, Landroid/app/Activity;

    .line 38
    .line 39
    invoke-virtual {v0, p2}, Lcom/appsflyer/internal/AFb1iSDK;->onActivityResumed(Landroid/app/Activity;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-static {p1}, Lcom/appsflyer/internal/AFj1kSDK;->O_(Landroid/content/Context;)Landroid/app/Application;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    iget-object p2, p0, Lcom/appsflyer/internal/AFb1bSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFb1iSDK;

    .line 49
    .line 50
    invoke-virtual {p1, p2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    return-void
.end method

.method public final getMediationNetwork()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1bSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFb1iSDK;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public final getMonetizationNetwork()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1bSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFb1iSDK;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/appsflyer/internal/AFb1iSDK;->getRevenue:Lcom/appsflyer/internal/AFb1aSDK$AFa1tSDK;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/appsflyer/internal/AFb1aSDK$AFa1tSDK;->getMediationNetwork()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
