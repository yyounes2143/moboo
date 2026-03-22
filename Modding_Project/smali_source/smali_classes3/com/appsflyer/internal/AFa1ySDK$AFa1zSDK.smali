.class final Lcom/appsflyer/internal/AFa1ySDK$AFa1zSDK;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/appsflyer/internal/AFe1qSDK;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/AFa1ySDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AFa1zSDK"
.end annotation


# instance fields
.field private synthetic AFAdRevenueData:Lcom/appsflyer/internal/AFa1ySDK;


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFa1ySDK;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appsflyer/internal/AFa1ySDK$AFa1zSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFa1ySDK;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/appsflyer/internal/AFa1ySDK$AFa1zSDK;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/appsflyer/internal/AFa1ySDK$AFa1zSDK;->getMediationNetwork()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private synthetic getMediationNetwork()Lkotlin/Unit;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1ySDK$AFa1zSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFa1ySDK;

    .line 2
    .line 3
    new-instance v1, Lcom/appsflyer/internal/AFh1kSDK;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/appsflyer/internal/AFh1kSDK;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/appsflyer/internal/AFa1ySDK;->getMediationNetwork(Lcom/appsflyer/internal/AFh1mSDK;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    return-object v0
.end method

.method private getRevenue()Z
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1ySDK$AFa1zSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFa1ySDK;

    iget-object v0, v0, Lcom/appsflyer/internal/AFa1ySDK;->getRevenue:Lcom/appsflyer/AppsFlyerConversionListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final getCurrencyIso4217Code(Lcom/appsflyer/internal/AFe1mSDK;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFe1mSDK<",
            "*>;)V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public final getRevenue(Lcom/appsflyer/internal/AFe1mSDK;Lcom/appsflyer/internal/AFe1uSDK;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFe1mSDK<",
            "*>;",
            "Lcom/appsflyer/internal/AFe1uSDK;",
            ")V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/appsflyer/internal/AFf1sSDK;

    if-eqz v0, :cond_5

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/appsflyer/internal/AFf1sSDK;

    .line 3
    instance-of v1, p1, Lcom/appsflyer/internal/AFf1rSDK;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/appsflyer/internal/AFa1ySDK$AFa1zSDK;->getRevenue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    move-object v2, p1

    check-cast v2, Lcom/appsflyer/internal/AFf1rSDK;

    .line 5
    iget-object v3, v2, Lcom/appsflyer/internal/AFe1mSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFe1uSDK;

    .line 6
    sget-object v4, Lcom/appsflyer/internal/AFe1uSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFe1uSDK;

    if-eq v3, v4, :cond_0

    .line 7
    iget v3, v2, Lcom/appsflyer/internal/AFe1mSDK;->getMediationNetwork:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 8
    :cond_0
    new-instance v3, Lcom/appsflyer/internal/AFg1kSDK;

    iget-object v4, p0, Lcom/appsflyer/internal/AFa1ySDK$AFa1zSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFa1ySDK;

    invoke-virtual {v4}, Lcom/appsflyer/internal/AFa1ySDK;->getMonetizationNetwork()Lcom/appsflyer/internal/AFd1zSDK;

    move-result-object v4

    invoke-interface {v4}, Lcom/appsflyer/internal/AFd1zSDK;->component4()Lcom/appsflyer/internal/AFc1qSDK;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/appsflyer/internal/AFg1kSDK;-><init>(Lcom/appsflyer/internal/AFf1rSDK;Lcom/appsflyer/internal/AFc1qSDK;)V

    .line 9
    iget-object v2, p0, Lcom/appsflyer/internal/AFa1ySDK$AFa1zSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFa1ySDK;

    invoke-virtual {v2}, Lcom/appsflyer/internal/AFa1ySDK;->getMonetizationNetwork()Lcom/appsflyer/internal/AFd1zSDK;

    move-result-object v2

    invoke-interface {v2}, Lcom/appsflyer/internal/AFd1zSDK;->copydefault()Lcom/appsflyer/internal/AFe1oSDK;

    move-result-object v2

    .line 10
    iget-object v4, v2, Lcom/appsflyer/internal/AFe1oSDK;->getCurrencyIso4217Code:Ljava/util/concurrent/Executor;

    new-instance v5, Lcom/appsflyer/internal/AFe1oSDK$1;

    invoke-direct {v5, v2, v3}, Lcom/appsflyer/internal/AFe1oSDK$1;-><init>(Lcom/appsflyer/internal/AFe1oSDK;Lcom/appsflyer/internal/AFe1mSDK;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 11
    :cond_1
    iget-object v2, p0, Lcom/appsflyer/internal/AFa1ySDK$AFa1zSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFa1ySDK;

    invoke-virtual {v2}, Lcom/appsflyer/internal/AFa1ySDK;->getMonetizationNetwork()Lcom/appsflyer/internal/AFd1zSDK;

    move-result-object v2

    invoke-interface {v2}, Lcom/appsflyer/internal/AFd1zSDK;->afWarnLog()Lcom/appsflyer/internal/AFh1pSDK;

    move-result-object v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 12
    move-object v3, p1

    check-cast v3, Lcom/appsflyer/internal/AFf1rSDK;

    .line 13
    new-instance v4, Lcom/appsflyer/internal/Wwwwwwwwwwwwwwwwwwwwwwwwww;

    invoke-direct {v4, p0}, Lcom/appsflyer/internal/Wwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lcom/appsflyer/internal/AFa1ySDK$AFa1zSDK;)V

    invoke-interface {v2, v3, v4}, Lcom/appsflyer/internal/AFh1pSDK;->getMonetizationNetwork(Lcom/appsflyer/internal/AFf1rSDK;Lkotlin/jvm/functions/Function0;)V

    .line 14
    :cond_2
    sget-object v2, Lcom/appsflyer/internal/AFe1uSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFe1uSDK;

    if-ne p2, v2, :cond_6

    .line 15
    iget-object p2, p0, Lcom/appsflyer/internal/AFa1ySDK$AFa1zSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFa1ySDK;

    iget-object v2, p2, Lcom/appsflyer/internal/AFa1ySDK;->component2:Landroid/app/Application;

    invoke-virtual {p2, v2}, Lcom/appsflyer/internal/AFa1ySDK;->getMonetizationNetwork(Landroid/content/Context;)Lcom/appsflyer/internal/AFc1qSDK;

    move-result-object p2

    const-string v2, "sentSuccessfully"

    const-string v3, "true"

    invoke-interface {p2, v2, v3}, Lcom/appsflyer/internal/AFc1qSDK;->getRevenue(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    instance-of p1, p1, Lcom/appsflyer/internal/AFf1oSDK;

    if-nez p1, :cond_3

    .line 17
    new-instance p1, Lcom/appsflyer/internal/AFg1sSDK;

    iget-object p2, p0, Lcom/appsflyer/internal/AFa1ySDK$AFa1zSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFa1ySDK;

    iget-object p2, p2, Lcom/appsflyer/internal/AFa1ySDK;->component2:Landroid/app/Application;

    invoke-direct {p1, p2}, Lcom/appsflyer/internal/AFg1sSDK;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFg1sSDK;->getRevenue()Lcom/appsflyer/internal/AFf1aSDK;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 19
    iget-boolean p2, p1, Lcom/appsflyer/internal/AFf1aSDK;->getMediationNetwork:Z

    if-eqz p2, :cond_3

    .line 20
    iget-object p1, p1, Lcom/appsflyer/internal/AFf1aSDK;->getRevenue:Ljava/lang/String;

    .line 21
    sget-object p2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v2, Lcom/appsflyer/internal/AFg1cSDK;->afDebugLog:Lcom/appsflyer/internal/AFg1cSDK;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Resending Uninstall token to AF servers: "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lcom/appsflyer/internal/AFh1ySDK;->d(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    .line 22
    invoke-static {}, Lcom/appsflyer/internal/AFa1ySDK;->getRevenue()Lcom/appsflyer/internal/AFa1ySDK;

    move-result-object p2

    invoke-virtual {p2}, Lcom/appsflyer/internal/AFa1ySDK;->getMonetizationNetwork()Lcom/appsflyer/internal/AFd1zSDK;

    move-result-object p2

    .line 23
    new-instance v2, Lcom/appsflyer/internal/AFf1oSDK;

    invoke-direct {v2, p1, p2}, Lcom/appsflyer/internal/AFf1oSDK;-><init>(Ljava/lang/String;Lcom/appsflyer/internal/AFd1zSDK;)V

    .line 24
    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1zSDK;->copydefault()Lcom/appsflyer/internal/AFe1oSDK;

    move-result-object p1

    .line 25
    iget-object p2, p1, Lcom/appsflyer/internal/AFe1oSDK;->getCurrencyIso4217Code:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/appsflyer/internal/AFe1oSDK$1;

    invoke-direct {v3, p1, v2}, Lcom/appsflyer/internal/AFe1oSDK$1;-><init>(Lcom/appsflyer/internal/AFe1oSDK;Lcom/appsflyer/internal/AFe1mSDK;)V

    invoke-interface {p2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 26
    :cond_3
    iget-object p1, v0, Lcom/appsflyer/internal/AFe1fSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFe1wSDK;

    if-eqz p1, :cond_4

    .line 27
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFe1wSDK;->getBody()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/appsflyer/internal/AFa1qSDK;->getMonetizationNetwork(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 28
    iget-object p2, p0, Lcom/appsflyer/internal/AFa1ySDK$AFa1zSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFa1ySDK;

    const-string v0, "send_background"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p2, Lcom/appsflyer/internal/AFa1ySDK;->component1:Z

    :cond_4
    if-eqz v1, :cond_6

    .line 29
    iget-object p1, p0, Lcom/appsflyer/internal/AFa1ySDK$AFa1zSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFa1ySDK;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/appsflyer/internal/AFa1ySDK;->AFAdRevenueData:J

    return-void

    .line 30
    :cond_5
    instance-of p1, p1, Lcom/appsflyer/internal/AFg1kSDK;

    if-eqz p1, :cond_6

    .line 31
    sget-object p1, Lcom/appsflyer/internal/AFe1uSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFe1uSDK;

    if-eq p2, p1, :cond_6

    .line 32
    new-instance p1, Lcom/appsflyer/internal/AFg1pSDK;

    iget-object p2, p0, Lcom/appsflyer/internal/AFa1ySDK$AFa1zSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFa1ySDK;

    invoke-virtual {p2}, Lcom/appsflyer/internal/AFa1ySDK;->getMonetizationNetwork()Lcom/appsflyer/internal/AFd1zSDK;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/appsflyer/internal/AFg1pSDK;-><init>(Lcom/appsflyer/internal/AFd1zSDK;)V

    .line 33
    iget-object p2, p0, Lcom/appsflyer/internal/AFa1ySDK$AFa1zSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFa1ySDK;

    invoke-virtual {p2}, Lcom/appsflyer/internal/AFa1ySDK;->getMonetizationNetwork()Lcom/appsflyer/internal/AFd1zSDK;

    move-result-object p2

    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1zSDK;->copydefault()Lcom/appsflyer/internal/AFe1oSDK;

    move-result-object p2

    .line 34
    iget-object v0, p2, Lcom/appsflyer/internal/AFe1oSDK;->getCurrencyIso4217Code:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/appsflyer/internal/AFe1oSDK$1;

    invoke-direct {v1, p2, p1}, Lcom/appsflyer/internal/AFe1oSDK$1;-><init>(Lcom/appsflyer/internal/AFe1oSDK;Lcom/appsflyer/internal/AFe1mSDK;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_6
    return-void
.end method
