.class public final Lcom/appsflyer/internal/AFe1bSDK;
.super Lcom/appsflyer/internal/AFe1mSDK;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appsflyer/internal/AFe1mSDK<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile component4:Z = false


# instance fields
.field private final areAllFieldsValid:Lcom/appsflyer/internal/AFc1tSDK;

.field private component1:Ljava/lang/Boolean;

.field private final component2:Lcom/appsflyer/internal/AFd1zSDK;

.field private final component3:Lcom/appsflyer/internal/AFe1oSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lcom/appsflyer/internal/AFd1zSDK;)V
    .locals 3
    .param p1    # Lcom/appsflyer/internal/AFd1zSDK;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/appsflyer/internal/AFe1pSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFe1pSDK;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Lcom/appsflyer/internal/AFe1pSDK;

    .line 5
    .line 6
    const-string v2, "LoadCachedRequests"

    .line 7
    .line 8
    invoke-direct {p0, v0, v1, v2}, Lcom/appsflyer/internal/AFe1mSDK;-><init>(Lcom/appsflyer/internal/AFe1pSDK;[Lcom/appsflyer/internal/AFe1pSDK;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1zSDK;->registerClient()Lcom/appsflyer/internal/AFc1tSDK;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/appsflyer/internal/AFe1bSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFc1tSDK;

    .line 16
    .line 17
    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1zSDK;->copydefault()Lcom/appsflyer/internal/AFe1oSDK;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/appsflyer/internal/AFe1bSDK;->component3:Lcom/appsflyer/internal/AFe1oSDK;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/appsflyer/internal/AFe1bSDK;->component2:Lcom/appsflyer/internal/AFd1zSDK;

    .line 24
    .line 25
    return-void
.end method

.method public static component3()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/appsflyer/internal/AFe1bSDK;->component4:Z

    .line 2
    .line 3
    return v0
.end method

.method private static getRevenue(Lcom/appsflyer/internal/AFc1uSDK;)Ljava/lang/String;
    .locals 7

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 20
    iget-object v2, p0, Lcom/appsflyer/internal/AFc1uSDK;->getMediationNetwork:Ljava/lang/String;

    const/16 v3, 0xa

    .line 21
    invoke-static {v2, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    .line 22
    iget-object p0, p0, Lcom/appsflyer/internal/AFc1uSDK;->getRevenue:Ljava/lang/String;

    .line 23
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "isCachedRequest"

    const-string v6, "true"

    .line 24
    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "timeincache"

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 25
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 27
    const-string v1, "Couldn\'t parse the uri"

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p0
.end method


# virtual methods
.method public final AFAdRevenueData()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x7530

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getMonetizationNetwork()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final getRevenue()Lcom/appsflyer/internal/AFe1uSDK;
    .locals 11
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1bSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFc1tSDK;

    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1tSDK;->getCurrencyIso4217Code()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/AFc1uSDK;

    .line 3
    sget-object v2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v3, Lcom/appsflyer/internal/AFg1cSDK;->component2:Lcom/appsflyer/internal/AFg1cSDK;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "resending request: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    iget-object v5, v0, Lcom/appsflyer/internal/AFc1uSDK;->getRevenue:Ljava/lang/String;

    .line 5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/appsflyer/internal/AFh1ySDK;->i(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    .line 6
    :try_start_0
    invoke-static {v0}, Lcom/appsflyer/internal/AFe1bSDK;->getRevenue(Lcom/appsflyer/internal/AFc1uSDK;)Ljava/lang/String;

    move-result-object v6

    .line 7
    new-instance v5, Lcom/appsflyer/internal/AFh1gSDK;

    .line 8
    invoke-virtual {v0}, Lcom/appsflyer/internal/AFc1uSDK;->getMediationNetwork()[B

    move-result-object v7

    .line 9
    iget-object v8, v0, Lcom/appsflyer/internal/AFc1uSDK;->getMediationNetwork:Ljava/lang/String;

    .line 10
    iget-object v9, v0, Lcom/appsflyer/internal/AFc1uSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFe1pSDK;

    .line 11
    iget-object v10, v0, Lcom/appsflyer/internal/AFc1uSDK;->getMonetizationNetwork:Ljava/util/Map;

    .line 12
    invoke-direct/range {v5 .. v10}, Lcom/appsflyer/internal/AFh1gSDK;-><init>(Ljava/lang/String;[BLjava/lang/String;Lcom/appsflyer/internal/AFe1pSDK;Ljava/util/Map;)V

    .line 13
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1bSDK;->component3:Lcom/appsflyer/internal/AFe1oSDK;

    new-instance v2, Lcom/appsflyer/internal/AFf1uSDK;

    iget-object v3, p0, Lcom/appsflyer/internal/AFe1bSDK;->component2:Lcom/appsflyer/internal/AFd1zSDK;

    invoke-direct {v2, v5, v3}, Lcom/appsflyer/internal/AFf1uSDK;-><init>(Lcom/appsflyer/internal/AFh1gSDK;Lcom/appsflyer/internal/AFd1zSDK;)V

    .line 14
    iget-object v3, v0, Lcom/appsflyer/internal/AFe1oSDK;->getCurrencyIso4217Code:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/appsflyer/internal/AFe1oSDK$1;

    invoke-direct {v4, v0, v2}, Lcom/appsflyer/internal/AFe1oSDK$1;-><init>(Lcom/appsflyer/internal/AFe1oSDK;Lcom/appsflyer/internal/AFe1mSDK;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 15
    sget-object v2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v3, Lcom/appsflyer/internal/AFg1cSDK;->component3:Lcom/appsflyer/internal/AFg1cSDK;

    const-string v4, "Failed to resend cached request"

    invoke-virtual {v2, v3, v4, v0}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 16
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/appsflyer/internal/AFe1bSDK;->component1:Ljava/lang/Boolean;

    const/4 v0, 0x1

    .line 17
    sput-boolean v0, Lcom/appsflyer/internal/AFe1bSDK;->component4:Z

    .line 18
    sget-object v0, Lcom/appsflyer/internal/AFe1uSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFe1uSDK;

    return-object v0
.end method
