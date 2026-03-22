.class public final Lcom/appsflyer/internal/AFd1lSDK;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/appsflyer/internal/AFd1oSDK;


# static fields
.field private static $10:I = 0x0

.field private static $11:I = 0x1

.field private static component3:[C = null

.field private static copy:Z = false

.field private static copydefault:I = 0x1

.field private static equals:I

.field private static final getCurrencyIso4217Code:I

.field private static hashCode:I

.field private static toString:Z


# instance fields
.field private AFAdRevenueData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private areAllFieldsValid:Ljava/security/SecureRandom;

.field private component1:Z

.field private final component2:Lcom/appsflyer/internal/AFd1zSDK;

.field private component4:Z

.field private final getMediationNetwork:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private getMonetizationNetwork:I

.field private getRevenue:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/appsflyer/internal/AFd1lSDK;->component3()V

    .line 2
    .line 3
    .line 4
    const v0, 0x17f76

    .line 5
    .line 6
    .line 7
    sput v0, Lcom/appsflyer/internal/AFd1lSDK;->getCurrencyIso4217Code:I

    .line 8
    .line 9
    sget v0, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I

    .line 10
    .line 11
    add-int/lit8 v0, v0, 0x17

    .line 12
    .line 13
    rem-int/lit16 v0, v0, 0x80

    .line 14
    .line 15
    sput v0, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/appsflyer/internal/AFd1zSDK;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/appsflyer/internal/AFd1lSDK;->AFAdRevenueData:Ljava/util/List;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/appsflyer/internal/AFd1lSDK;->getRevenue:Z

    .line 13
    .line 14
    new-instance v1, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/appsflyer/internal/AFd1lSDK;->getMediationNetwork:Ljava/util/Map;

    .line 20
    .line 21
    new-instance v1, Ljava/security/SecureRandom;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/appsflyer/internal/AFd1lSDK;->areAllFieldsValid:Ljava/security/SecureRandom;

    .line 27
    .line 28
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v2, "disableProxy"

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-virtual {v1, v2, v3}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    xor-int/2addr v0, v1

    .line 40
    iput-boolean v0, p0, Lcom/appsflyer/internal/AFd1lSDK;->component1:Z

    .line 41
    .line 42
    iput v3, p0, Lcom/appsflyer/internal/AFd1lSDK;->getMonetizationNetwork:I

    .line 43
    .line 44
    iput-boolean v3, p0, Lcom/appsflyer/internal/AFd1lSDK;->component4:Z

    .line 45
    .line 46
    iput-object p1, p0, Lcom/appsflyer/internal/AFd1lSDK;->component2:Lcom/appsflyer/internal/AFd1zSDK;

    .line 47
    .line 48
    return-void
.end method

.method public static synthetic AFAdRevenueData([Ljava/lang/Object;III)Ljava/lang/Object;
    .locals 4

    mul-int/lit16 v0, p1, 0x1f7

    mul-int/lit16 v1, p2, 0x1f7

    add-int/2addr v0, v1

    or-int v1, p1, p2

    mul-int/lit16 v2, v1, -0x1f6

    add-int/2addr v0, v2

    not-int p1, p1

    not-int v2, p2

    or-int/2addr v2, p1

    not-int v2, v2

    not-int v3, p3

    or-int/2addr p1, v3

    not-int v3, p1

    or-int/2addr v2, v3

    or-int/2addr p3, v1

    not-int p3, p3

    or-int v1, v2, p3

    mul-int/lit16 v1, v1, -0x1f6

    add-int/2addr v0, v1

    or-int/2addr p1, p2

    not-int p1, p1

    or-int/2addr p1, p3

    mul-int/lit16 p1, p1, 0x1f6

    add-int/2addr v0, p1

    const/4 p1, 0x1

    if-eq v0, p1, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    .line 1
    invoke-static {p0}, Lcom/appsflyer/internal/AFd1lSDK;->getMonetizationNetwork([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/appsflyer/internal/AFd1lSDK;->getRevenue([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0}, Lcom/appsflyer/internal/AFd1lSDK;->getMediationNetwork([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {p0}, Lcom/appsflyer/internal/AFd1lSDK;->getCurrencyIso4217Code([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private AFAdRevenueData(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 20
    sget v0, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1lSDK;->component2:Lcom/appsflyer/internal/AFd1zSDK;

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1zSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFf1eSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/appsflyer/internal/AFd1lSDK;->component2:Lcom/appsflyer/internal/AFd1zSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1zSDK;->force()Lcom/appsflyer/internal/AFc1eSDK;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/appsflyer/internal/AFd1lSDK;->AFAdRevenueData(Ljava/lang/String;Lcom/appsflyer/internal/AFf1eSDK;Lcom/appsflyer/internal/AFc1eSDK;)V

    .line 22
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1lSDK;->copydefault()Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1lSDK;->component2:Lcom/appsflyer/internal/AFd1zSDK;

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1zSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFf1eSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/appsflyer/internal/AFd1lSDK;->component2:Lcom/appsflyer/internal/AFd1zSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1zSDK;->force()Lcom/appsflyer/internal/AFc1eSDK;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/appsflyer/internal/AFd1lSDK;->AFAdRevenueData(Ljava/lang/String;Lcom/appsflyer/internal/AFf1eSDK;Lcom/appsflyer/internal/AFc1eSDK;)V

    .line 24
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1lSDK;->copydefault()Ljava/util/Map;

    const/4 p1, 0x0

    throw p1
.end method

.method private declared-synchronized AFAdRevenueData(Ljava/lang/String;Lcom/appsflyer/internal/AFf1eSDK;Lcom/appsflyer/internal/AFc1eSDK;)V
    .locals 4

    monitor-enter p0

    .line 25
    :try_start_0
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    .line 26
    const-string v1, "remote_debug_static_data"

    .line 27
    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 28
    iget-object v3, p0, Lcom/appsflyer/internal/AFd1lSDK;->getMediationNetwork:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 29
    :try_start_1
    iget-object p1, p0, Lcom/appsflyer/internal/AFd1lSDK;->getMediationNetwork:Ljava/util/Map;

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/appsflyer/internal/AFg1eSDK;->getRevenue(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto/16 :goto_1

    .line 30
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/appsflyer/internal/AFd1lSDK;->component2:Lcom/appsflyer/internal/AFd1zSDK;

    invoke-interface {v2}, Lcom/appsflyer/internal/AFd1zSDK;->AFAdRevenueData()Lcom/appsflyer/internal/AFc1oSDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appsflyer/internal/AFc1oSDK;->areAllFieldsValid()Ljava/lang/String;

    move-result-object v2

    .line 31
    invoke-virtual {p2}, Lcom/appsflyer/internal/AFf1eSDK;->AFAdRevenueData()Ljava/lang/String;

    move-result-object p2

    .line 32
    iget-object p3, p3, Lcom/appsflyer/internal/AFc1eSDK;->getCurrencyIso4217Code:Ljava/lang/String;

    .line 33
    invoke-direct {p0, v2, p2, p3}, Lcom/appsflyer/internal/AFd1lSDK;->getCurrencyIso4217Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "6.17.5."

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p3, Lcom/appsflyer/internal/AFa1ySDK;->getMonetizationNetwork:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/appsflyer/internal/AFd1lSDK;->component2:Lcom/appsflyer/internal/AFd1zSDK;

    .line 35
    invoke-interface {p3}, Lcom/appsflyer/internal/AFd1zSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFf1eSDK;

    move-result-object p3

    invoke-virtual {p3}, Lcom/appsflyer/internal/AFf1eSDK;->getMediationNetwork()Ljava/lang/String;

    move-result-object p3

    const-string v2, "KSAppsFlyerId"

    .line 36
    invoke-virtual {v0, v2}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/appsflyer/internal/AFd1lSDK;->component2:Lcom/appsflyer/internal/AFd1zSDK;

    .line 37
    invoke-interface {v3}, Lcom/appsflyer/internal/AFd1zSDK;->AFAdRevenueData()Lcom/appsflyer/internal/AFc1oSDK;

    move-result-object v3

    .line 38
    iget-object v3, v3, Lcom/appsflyer/internal/AFc1oSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFc1qSDK;

    invoke-static {v3}, Lcom/appsflyer/internal/AFb1kSDK;->getCurrencyIso4217Code(Lcom/appsflyer/internal/AFc1qSDK;)Ljava/lang/String;

    move-result-object v3

    .line 39
    invoke-direct {p0, p2, p3, v2, v3}, Lcom/appsflyer/internal/AFd1lSDK;->getCurrencyIso4217Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    :try_start_3
    iget-object p2, p0, Lcom/appsflyer/internal/AFd1lSDK;->component2:Lcom/appsflyer/internal/AFd1zSDK;

    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1zSDK;->AFAdRevenueData()Lcom/appsflyer/internal/AFc1oSDK;

    move-result-object p2

    .line 41
    invoke-virtual {p2}, Lcom/appsflyer/internal/AFc1oSDK;->n_()Landroid/content/pm/PackageInfo;

    move-result-object p2

    iget p2, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 42
    const-string p3, "channel"

    invoke-virtual {v0, p3}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 43
    const-string v2, "preInstallName"

    invoke-virtual {v0, v2}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3, v2}, Lcom/appsflyer/internal/AFd1lSDK;->getRevenue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 45
    :try_start_4
    sget p1, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    add-int/lit8 p1, p1, 0x1d

    rem-int/lit16 p1, p1, 0x80

    sput p1, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 46
    :catchall_1
    :goto_0
    new-instance p1, Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/appsflyer/internal/AFd1lSDK;->getMediationNetwork:Ljava/util/Map;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :catchall_2
    :goto_1
    iget-object p1, p0, Lcom/appsflyer/internal/AFd1lSDK;->getMediationNetwork:Ljava/util/Map;

    const-string p2, "launch_counter"

    iget-object p3, p0, Lcom/appsflyer/internal/AFd1lSDK;->component2:Lcom/appsflyer/internal/AFd1zSDK;

    invoke-interface {p3}, Lcom/appsflyer/internal/AFd1zSDK;->AFAdRevenueData()Lcom/appsflyer/internal/AFc1oSDK;

    move-result-object p3

    .line 48
    iget-object p3, p3, Lcom/appsflyer/internal/AFc1oSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFc1qSDK;

    const-string v0, "appsFlyerCount"

    const/4 v1, 0x0

    invoke-interface {p3, v0, v1}, Lcom/appsflyer/internal/AFc1qSDK;->getRevenue(Ljava/lang/String;I)I

    move-result p3

    .line 49
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget p1, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    add-int/lit8 p1, p1, 0x29

    rem-int/lit16 p1, p1, 0x80

    sput p1, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method private AFAdRevenueData(Lcom/appsflyer/internal/AFi1xSDK;Lcom/appsflyer/internal/AFi1xSDK;)Z
    .locals 2
    .param p1    # Lcom/appsflyer/internal/AFi1xSDK;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/appsflyer/internal/AFi1xSDK;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x3

    .line 51
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    aput-object p2, v0, p1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    const p2, 0x1339c8f1

    const v1, -0x1339c8ef

    invoke-static {v0, p2, v1, p1}, Lcom/appsflyer/internal/AFd1lSDK;->AFAdRevenueData([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method private AFInAppEventType()V
    .locals 2

    .line 1
    sget v0, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x77

    .line 4
    .line 5
    rem-int/lit16 v0, v0, 0x80

    .line 6
    .line 7
    sput v0, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I

    .line 8
    .line 9
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1lSDK;->component2:Lcom/appsflyer/internal/AFd1zSDK;

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1zSDK;->component4()Lcom/appsflyer/internal/AFc1qSDK;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "participantInProxy"

    .line 16
    .line 17
    invoke-interface {v0, v1}, Lcom/appsflyer/internal/AFc1qSDK;->AFAdRevenueData(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sget v0, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I

    .line 21
    .line 22
    add-int/lit8 v0, v0, 0x59

    .line 23
    .line 24
    rem-int/lit16 v1, v0, 0x80

    .line 25
    .line 26
    sput v1, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    .line 27
    .line 28
    rem-int/lit8 v0, v0, 0x2

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    const/16 v0, 0x1f

    .line 33
    .line 34
    div-int/lit8 v0, v0, 0x0

    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method private AFLogger()Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p0, v0, v1

    .line 6
    .line 7
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const v2, -0x36a20e8d

    .line 12
    .line 13
    .line 14
    const v3, 0x36a20e8e

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v2, v3, v1}, Lcom/appsflyer/internal/AFd1lSDK;->AFAdRevenueData([Ljava/lang/Object;III)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/lang/Boolean;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    return v0
.end method

.method private static a(Ljava/lang/String;[ILjava/lang/String;I[Ljava/lang/Object;)V
    .locals 10

    .line 1
    sget v0, Lcom/appsflyer/internal/AFd1lSDK;->$11:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1d

    .line 4
    .line 5
    rem-int/lit16 v0, v0, 0x80

    .line 6
    .line 7
    sput v0, Lcom/appsflyer/internal/AFd1lSDK;->$10:I

    .line 8
    .line 9
    if-eqz p2, :cond_1

    .line 10
    .line 11
    add-int/lit8 v0, v0, 0x5f

    .line 12
    .line 13
    rem-int/lit16 v1, v0, 0x80

    .line 14
    .line 15
    sput v1, Lcom/appsflyer/internal/AFd1lSDK;->$11:I

    .line 16
    .line 17
    rem-int/lit8 v0, v0, 0x2

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    throw p0

    .line 31
    :cond_1
    :goto_0
    check-cast p2, [C

    .line 32
    .line 33
    if-eqz p0, :cond_2

    .line 34
    .line 35
    const-string v0, "ISO-8859-1"

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    :cond_2
    check-cast p0, [B

    .line 42
    .line 43
    new-instance v0, Lcom/appsflyer/internal/AFk1oSDK;

    .line 44
    .line 45
    invoke-direct {v0}, Lcom/appsflyer/internal/AFk1oSDK;-><init>()V

    .line 46
    .line 47
    .line 48
    sget-object v1, Lcom/appsflyer/internal/AFd1lSDK;->component3:[C

    .line 49
    .line 50
    const-wide v2, 0x19569dd871fb8d0aL

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    const/4 v4, 0x0

    .line 56
    if-eqz v1, :cond_4

    .line 57
    .line 58
    array-length v5, v1

    .line 59
    new-array v6, v5, [C

    .line 60
    .line 61
    move v7, v4

    .line 62
    :goto_1
    if-ge v7, v5, :cond_3

    .line 63
    .line 64
    aget-char v8, v1, v7

    .line 65
    .line 66
    int-to-long v8, v8

    .line 67
    xor-long/2addr v8, v2

    .line 68
    long-to-int v8, v8

    .line 69
    int-to-char v8, v8

    .line 70
    aput-char v8, v6, v7

    .line 71
    .line 72
    add-int/lit8 v7, v7, 0x1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    move-object v1, v6

    .line 76
    :cond_4
    sget v5, Lcom/appsflyer/internal/AFd1lSDK;->hashCode:I

    .line 77
    .line 78
    int-to-long v5, v5

    .line 79
    xor-long/2addr v2, v5

    .line 80
    long-to-int v2, v2

    .line 81
    sget-boolean v3, Lcom/appsflyer/internal/AFd1lSDK;->copy:Z

    .line 82
    .line 83
    if-eqz v3, :cond_6

    .line 84
    .line 85
    array-length p1, p0

    .line 86
    iput p1, v0, Lcom/appsflyer/internal/AFk1oSDK;->getMonetizationNetwork:I

    .line 87
    .line 88
    new-array p1, p1, [C

    .line 89
    .line 90
    iput v4, v0, Lcom/appsflyer/internal/AFk1oSDK;->AFAdRevenueData:I

    .line 91
    .line 92
    :goto_2
    iget p2, v0, Lcom/appsflyer/internal/AFk1oSDK;->AFAdRevenueData:I

    .line 93
    .line 94
    iget v3, v0, Lcom/appsflyer/internal/AFk1oSDK;->getMonetizationNetwork:I

    .line 95
    .line 96
    if-ge p2, v3, :cond_5

    .line 97
    .line 98
    add-int/lit8 v3, v3, -0x1

    .line 99
    .line 100
    sub-int/2addr v3, p2

    .line 101
    aget-byte v3, p0, v3

    .line 102
    .line 103
    add-int/2addr v3, p3

    .line 104
    aget-char v3, v1, v3

    .line 105
    .line 106
    sub-int/2addr v3, v2

    .line 107
    int-to-char v3, v3

    .line 108
    aput-char v3, p1, p2

    .line 109
    .line 110
    add-int/lit8 p2, p2, 0x1

    .line 111
    .line 112
    iput p2, v0, Lcom/appsflyer/internal/AFk1oSDK;->AFAdRevenueData:I

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_5
    new-instance p0, Ljava/lang/String;

    .line 116
    .line 117
    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    .line 118
    .line 119
    .line 120
    aput-object p0, p4, v4

    .line 121
    .line 122
    return-void

    .line 123
    :cond_6
    sget-boolean p0, Lcom/appsflyer/internal/AFd1lSDK;->toString:Z

    .line 124
    .line 125
    if-eqz p0, :cond_9

    .line 126
    .line 127
    array-length p0, p2

    .line 128
    iput p0, v0, Lcom/appsflyer/internal/AFk1oSDK;->getMonetizationNetwork:I

    .line 129
    .line 130
    new-array p0, p0, [C

    .line 131
    .line 132
    iput v4, v0, Lcom/appsflyer/internal/AFk1oSDK;->AFAdRevenueData:I

    .line 133
    .line 134
    :goto_3
    iget p1, v0, Lcom/appsflyer/internal/AFk1oSDK;->AFAdRevenueData:I

    .line 135
    .line 136
    iget v3, v0, Lcom/appsflyer/internal/AFk1oSDK;->getMonetizationNetwork:I

    .line 137
    .line 138
    if-ge p1, v3, :cond_8

    .line 139
    .line 140
    sget v5, Lcom/appsflyer/internal/AFd1lSDK;->$11:I

    .line 141
    .line 142
    add-int/lit8 v5, v5, 0x37

    .line 143
    .line 144
    rem-int/lit16 v6, v5, 0x80

    .line 145
    .line 146
    sput v6, Lcom/appsflyer/internal/AFd1lSDK;->$10:I

    .line 147
    .line 148
    rem-int/lit8 v5, v5, 0x2

    .line 149
    .line 150
    if-eqz v5, :cond_7

    .line 151
    .line 152
    rem-int/lit8 v3, v3, 0x1

    .line 153
    .line 154
    div-int/2addr v3, p1

    .line 155
    aget-char v3, p2, v3

    .line 156
    .line 157
    sub-int/2addr v3, p3

    .line 158
    aget-char v3, v1, v3

    .line 159
    .line 160
    rem-int/2addr v3, v2

    .line 161
    int-to-char v3, v3

    .line 162
    aput-char v3, p0, p1

    .line 163
    .line 164
    :goto_4
    iput p1, v0, Lcom/appsflyer/internal/AFk1oSDK;->AFAdRevenueData:I

    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_7
    add-int/lit8 v3, v3, -0x1

    .line 168
    .line 169
    sub-int/2addr v3, p1

    .line 170
    aget-char v3, p2, v3

    .line 171
    .line 172
    sub-int/2addr v3, p3

    .line 173
    aget-char v3, v1, v3

    .line 174
    .line 175
    sub-int/2addr v3, v2

    .line 176
    int-to-char v3, v3

    .line 177
    aput-char v3, p0, p1

    .line 178
    .line 179
    add-int/lit8 p1, p1, 0x1

    .line 180
    .line 181
    goto :goto_4

    .line 182
    :cond_8
    new-instance p1, Ljava/lang/String;

    .line 183
    .line 184
    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    .line 185
    .line 186
    .line 187
    sget p0, Lcom/appsflyer/internal/AFd1lSDK;->$10:I

    .line 188
    .line 189
    add-int/lit8 p0, p0, 0x33

    .line 190
    .line 191
    rem-int/lit16 p0, p0, 0x80

    .line 192
    .line 193
    sput p0, Lcom/appsflyer/internal/AFd1lSDK;->$11:I

    .line 194
    .line 195
    aput-object p1, p4, v4

    .line 196
    .line 197
    return-void

    .line 198
    :cond_9
    array-length p0, p1

    .line 199
    iput p0, v0, Lcom/appsflyer/internal/AFk1oSDK;->getMonetizationNetwork:I

    .line 200
    .line 201
    new-array p0, p0, [C

    .line 202
    .line 203
    iput v4, v0, Lcom/appsflyer/internal/AFk1oSDK;->AFAdRevenueData:I

    .line 204
    .line 205
    :goto_5
    iget p2, v0, Lcom/appsflyer/internal/AFk1oSDK;->AFAdRevenueData:I

    .line 206
    .line 207
    iget v3, v0, Lcom/appsflyer/internal/AFk1oSDK;->getMonetizationNetwork:I

    .line 208
    .line 209
    if-ge p2, v3, :cond_a

    .line 210
    .line 211
    add-int/lit8 v3, v3, -0x1

    .line 212
    .line 213
    sub-int/2addr v3, p2

    .line 214
    aget v3, p1, v3

    .line 215
    .line 216
    sub-int/2addr v3, p3

    .line 217
    aget-char v3, v1, v3

    .line 218
    .line 219
    sub-int/2addr v3, v2

    .line 220
    int-to-char v3, v3

    .line 221
    aput-char v3, p0, p2

    .line 222
    .line 223
    add-int/lit8 p2, p2, 0x1

    .line 224
    .line 225
    iput p2, v0, Lcom/appsflyer/internal/AFk1oSDK;->AFAdRevenueData:I

    .line 226
    .line 227
    goto :goto_5

    .line 228
    :cond_a
    new-instance p1, Ljava/lang/String;

    .line 229
    .line 230
    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    .line 231
    .line 232
    .line 233
    aput-object p1, p4, v4

    .line 234
    .line 235
    return-void
.end method

.method private declared-synchronized component1()V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget v0, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I

    .line 3
    .line 4
    add-int/lit8 v0, v0, 0x33

    .line 5
    .line 6
    rem-int/lit16 v1, v0, 0x80

    .line 7
    .line 8
    sput v1, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    .line 9
    .line 10
    rem-int/lit8 v0, v0, 0x2

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/appsflyer/internal/AFd1lSDK;->component4:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :cond_0
    const/4 v0, 0x1

    .line 21
    :try_start_1
    iput-boolean v0, p0, Lcom/appsflyer/internal/AFd1lSDK;->component4:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    .line 23
    :try_start_2
    const-string v0, "r_debugging_on"

    .line 24
    .line 25
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 26
    .line 27
    const-string v2, "yyyy-MM-dd HH:mm:ssZ"

    .line 28
    .line 29
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 30
    .line 31
    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 35
    .line 36
    .line 37
    move-result-wide v2

    .line 38
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const/4 v2, 0x0

    .line 47
    new-array v2, v2, [Ljava/lang/String;

    .line 48
    .line 49
    invoke-direct {p0, v0, v1, v2}, Lcom/appsflyer/internal/AFd1lSDK;->getCurrencyIso4217Code(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 50
    .line 51
    .line 52
    :try_start_3
    sget v0, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I

    .line 53
    .line 54
    add-int/lit8 v0, v0, 0x53

    .line 55
    .line 56
    rem-int/lit16 v0, v0, 0x80

    .line 57
    .line 58
    sput v0, Lcom/appsflyer/internal/AFd1lSDK;->equals:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 59
    .line 60
    monitor-exit p0

    .line 61
    return-void

    .line 62
    :catchall_0
    move-exception v0

    .line 63
    goto :goto_0

    .line 64
    :catchall_1
    move-exception v0

    .line 65
    move-object v4, v0

    .line 66
    :try_start_4
    sget-object v1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 67
    .line 68
    sget-object v2, Lcom/appsflyer/internal/AFg1cSDK;->afLogForce:Lcom/appsflyer/internal/AFg1cSDK;

    .line 69
    .line 70
    const-string v3, "Error while starting remote debugger"

    .line 71
    .line 72
    const/4 v6, 0x1

    .line 73
    const/4 v7, 0x1

    .line 74
    const/4 v5, 0x1

    .line 75
    invoke-virtual/range {v1 .. v7}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 76
    .line 77
    .line 78
    monitor-exit p0

    .line 79
    return-void

    .line 80
    :cond_1
    const/4 v0, 0x0

    .line 81
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 82
    :catchall_2
    move-exception v0

    .line 83
    :try_start_6
    throw v0

    .line 84
    :goto_0
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 85
    throw v0
.end method

.method private component2()F
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    sget v0, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x73

    .line 4
    .line 5
    rem-int/lit16 v1, v0, 0x80

    .line 6
    .line 7
    sput v1, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    .line 8
    .line 9
    rem-int/lit8 v0, v0, 0x2

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1lSDK;->areAllFieldsValid:Ljava/security/SecureRandom;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1lSDK;->areAllFieldsValid:Ljava/security/SecureRandom;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    throw v0
.end method

.method public static component3()V
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [C

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/appsflyer/internal/AFd1lSDK;->component3:[C

    .line 8
    .line 9
    const v0, 0x71fb8d8c

    .line 10
    .line 11
    .line 12
    sput v0, Lcom/appsflyer/internal/AFd1lSDK;->hashCode:I

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    sput-boolean v0, Lcom/appsflyer/internal/AFd1lSDK;->toString:Z

    .line 16
    .line 17
    sput-boolean v0, Lcom/appsflyer/internal/AFd1lSDK;->copy:Z

    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :array_0
    .array-data 2
        -0x721es
        -0x720es
        -0x7213s
        -0x7202s
        -0x7220s
    .end array-data
.end method

.method private static component4()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    sget v0, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x53

    .line 4
    .line 5
    rem-int/lit16 v1, v0, 0x80

    .line 6
    .line 7
    sput v1, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I

    .line 8
    .line 9
    rem-int/lit8 v0, v0, 0x2

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v0, "6.17.5"

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    throw v0
.end method

.method private declared-synchronized copy()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object v0, p0, Lcom/appsflyer/internal/AFd1lSDK;->AFAdRevenueData:Ljava/util/List;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/appsflyer/internal/AFd1lSDK;->getMonetizationNetwork:I

    .line 11
    .line 12
    sget v0, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    .line 13
    .line 14
    add-int/lit8 v0, v0, 0x1d

    .line 15
    .line 16
    rem-int/lit16 v0, v0, 0x80

    .line 17
    .line 18
    sput v0, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit p0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    throw v0
.end method

.method private declared-synchronized copydefault()Ljava/util/Map;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget v0, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    .line 3
    .line 4
    add-int/lit8 v0, v0, 0x25

    .line 5
    .line 6
    rem-int/lit16 v0, v0, 0x80

    .line 7
    .line 8
    sput v0, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I

    .line 9
    .line 10
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1lSDK;->getMediationNetwork:Ljava/util/Map;

    .line 11
    .line 12
    const-string v1, "data"

    .line 13
    .line 14
    iget-object v2, p0, Lcom/appsflyer/internal/AFd1lSDK;->AFAdRevenueData:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1lSDK;->copy()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1lSDK;->getMediationNetwork:Ljava/util/Map;

    .line 23
    .line 24
    sget v1, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    .line 25
    .line 26
    add-int/lit8 v1, v1, 0x6f

    .line 27
    .line 28
    rem-int/lit16 v1, v1, 0x80

    .line 29
    .line 30
    sput v1, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    monitor-exit p0

    .line 33
    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    throw v0
.end method

.method private equals()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/appsflyer/internal/AFd1lSDK;->component1:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    sget v0, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I

    .line 7
    .line 8
    add-int/lit8 v2, v0, 0x1f

    .line 9
    .line 10
    rem-int/lit16 v2, v2, 0x80

    .line 11
    .line 12
    sput v2, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    .line 13
    .line 14
    iget-boolean v2, p0, Lcom/appsflyer/internal/AFd1lSDK;->getRevenue:Z

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    add-int/lit8 v0, v0, 0x25

    .line 19
    .line 20
    rem-int/lit16 v2, v0, 0x80

    .line 21
    .line 22
    sput v2, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    .line 23
    .line 24
    rem-int/lit8 v0, v0, 0x2

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    iget-boolean v0, p0, Lcom/appsflyer/internal/AFd1lSDK;->component4:Z

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    throw v1

    .line 34
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 35
    return v0

    .line 36
    :cond_2
    sget v0, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I

    .line 37
    .line 38
    add-int/lit8 v0, v0, 0x27

    .line 39
    .line 40
    rem-int/lit16 v2, v0, 0x80

    .line 41
    .line 42
    sput v2, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    .line 43
    .line 44
    rem-int/lit8 v0, v0, 0x2

    .line 45
    .line 46
    if-nez v0, :cond_3

    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    return v0

    .line 50
    :cond_3
    throw v1
.end method

.method private static synthetic getCurrencyIso4217Code([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    aget-object p0, p0, v0

    check-cast p0, Lcom/appsflyer/internal/AFd1lSDK;

    .line 64
    sget v1, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    add-int/lit8 v1, v1, 0x75

    rem-int/lit16 v1, v1, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I

    iget-object p0, p0, Lcom/appsflyer/internal/AFd1lSDK;->component2:Lcom/appsflyer/internal/AFd1zSDK;

    invoke-interface {p0}, Lcom/appsflyer/internal/AFd1zSDK;->component4()Lcom/appsflyer/internal/AFc1qSDK;

    move-result-object p0

    const-string v1, "participantInProxy"

    invoke-interface {p0, v1, v0}, Lcom/appsflyer/internal/AFc1qSDK;->getMediationNetwork(Ljava/lang/String;Z)Z

    move-result p0

    sget v0, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private declared-synchronized getCurrencyIso4217Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1lSDK;->getMediationNetwork:Ljava/util/Map;

    const-string v1, "\u0085\u0084\u0083\u0082\u0081"

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    add-int/lit8 v2, v2, 0x7e

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1, v4, v4, v2, v3}, Lcom/appsflyer/internal/AFd1lSDK;->a(Ljava/lang/String;[ILjava/lang/String;I[Ljava/lang/Object;)V

    const/4 v1, 0x0

    aget-object v1, v3, v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1lSDK;->getMediationNetwork:Ljava/util/Map;

    const-string v1, "model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1lSDK;->getMediationNetwork:Ljava/util/Map;

    const-string v1, "platform"

    const-string v2, "Android"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1lSDK;->getMediationNetwork:Ljava/util/Map;

    const-string v1, "platform_version"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_1

    .line 8
    :try_start_1
    sget v0, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    rem-int/lit8 v0, v0, 0x2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    .line 9
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1lSDK;->getMediationNetwork:Ljava/util/Map;

    const-string v1, "advertiserId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 11
    :try_start_3
    sget p1, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    add-int/lit8 p1, p1, 0x37

    rem-int/lit16 p1, p1, 0x80

    sput p1, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :try_start_4
    throw v4

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 12
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 13
    iget-object p1, p0, Lcom/appsflyer/internal/AFd1lSDK;->getMediationNetwork:Ljava/util/Map;

    const-string v0, "imei"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_2
    if-eqz p3, :cond_3

    .line 14
    :try_start_5
    sget p1, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I

    add-int/lit8 p1, p1, 0x6f

    rem-int/lit16 p1, p1, 0x80

    sput p1, Lcom/appsflyer/internal/AFd1lSDK;->equals:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 15
    :try_start_6
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_3

    .line 16
    iget-object p1, p0, Lcom/appsflyer/internal/AFd1lSDK;->getMediationNetwork:Ljava/util/Map;

    const-string p2, "android_id"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 17
    :try_start_7
    sget p1, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I

    add-int/lit8 p1, p1, 0x7b

    rem-int/lit16 p1, p1, 0x80

    sput p1, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p1

    .line 18
    :cond_3
    :goto_2
    monitor-exit p0

    return-void

    .line 19
    :catchall_1
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized getCurrencyIso4217Code(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 20
    :try_start_0
    sget v0, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I

    rem-int/lit8 v0, v0, 0x2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 21
    :try_start_1
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1lSDK;->getMediationNetwork:Ljava/util/Map;

    const-string v2, "sdk_version"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p2, :cond_0

    .line 22
    :try_start_2
    sget p1, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I

    add-int/lit8 p1, p1, 0x1d

    rem-int/lit16 p1, p1, 0x80

    sput p1, Lcom/appsflyer/internal/AFd1lSDK;->equals:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 24
    iget-object p1, p0, Lcom/appsflyer/internal/AFd1lSDK;->getMediationNetwork:Ljava/util/Map;

    const-string v0, "devkey"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_0
    if-eqz p3, :cond_2

    .line 25
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-lez p1, :cond_2

    .line 26
    :try_start_4
    sget p1, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I

    add-int/lit8 p1, p1, 0x3d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    rem-int/lit8 p1, p1, 0x2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez p1, :cond_1

    .line 27
    :try_start_5
    iget-object p1, p0, Lcom/appsflyer/internal/AFd1lSDK;->getMediationNetwork:Ljava/util/Map;

    const-string p2, "originalAppsFlyerId"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/appsflyer/internal/AFd1lSDK;->getMediationNetwork:Ljava/util/Map;

    const-string p2, "originalAppsFlyerId"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_2
    :goto_1
    if-eqz p4, :cond_4

    .line 29
    :try_start_6
    sget p1, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    add-int/lit8 p1, p1, 0x4f

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I

    rem-int/lit8 p1, p1, 0x2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz p1, :cond_3

    .line 30
    :try_start_7
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_4

    .line 31
    iget-object p1, p0, Lcom/appsflyer/internal/AFd1lSDK;->getMediationNetwork:Ljava/util/Map;

    const-string p2, "uid"

    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 32
    :cond_3
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 33
    :cond_4
    :goto_2
    monitor-exit p0

    return-void

    .line 34
    :cond_5
    :try_start_8
    iget-object p2, p0, Lcom/appsflyer/internal/AFd1lSDK;->getMediationNetwork:Ljava/util/Map;

    const-string p3, "sdk_version"

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 36
    :catchall_1
    monitor-exit p0

    return-void

    :goto_3
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw p1
.end method

.method private varargs declared-synchronized getCurrencyIso4217Code(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 37
    :try_start_0
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1lSDK;->equals()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/appsflyer/internal/AFd1lSDK;->getMonetizationNetwork:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v1, 0x18000

    if-lt v0, v1, :cond_1

    .line 38
    :goto_0
    monitor-exit p0

    return-void

    .line 39
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 40
    const-string v2, ", "

    invoke-static {v2, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    if-eqz p1, :cond_2

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " _/AppsFlyer_6.17.5 ["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 42
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/AppsFlyer_6.17.5 "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 43
    :goto_1
    iget p2, p0, Lcom/appsflyer/internal/AFd1lSDK;->getMonetizationNetwork:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    const/4 v0, 0x1

    shl-int/2addr p3, v0

    add-int/2addr p2, p3

    sget p3, Lcom/appsflyer/internal/AFd1lSDK;->getCurrencyIso4217Code:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x0

    if-le p2, p3, :cond_3

    .line 44
    :try_start_2
    sget p2, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    add-int/lit8 p2, p2, 0x37

    rem-int/lit16 p2, p2, 0x80

    sput p2, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    :try_start_3
    iget p2, p0, Lcom/appsflyer/internal/AFd1lSDK;->getMonetizationNetwork:I

    sub-int/2addr p3, p2

    div-int/lit8 p3, p3, 0x2

    invoke-virtual {p1, v1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    move v1, v0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    .line 46
    :cond_3
    :goto_2
    iget-object p2, p0, Lcom/appsflyer/internal/AFd1lSDK;->AFAdRevenueData:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    iget p2, p0, Lcom/appsflyer/internal/AFd1lSDK;->getMonetizationNetwork:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    shl-int/2addr p1, v0

    add-int/2addr p2, p1

    iput p2, p0, Lcom/appsflyer/internal/AFd1lSDK;->getMonetizationNetwork:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_5

    .line 48
    :try_start_4
    sget p1, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    add-int/lit8 p1, p1, 0x71

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I

    rem-int/lit8 p1, p1, 0x2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez p1, :cond_4

    .line 49
    :try_start_5
    iget-object p1, p0, Lcom/appsflyer/internal/AFd1lSDK;->AFAdRevenueData:Ljava/util/List;

    const-string p2, "+~+~ The limit has been exceeded, and no more data is available. +~+~"

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    iget p1, p0, Lcom/appsflyer/internal/AFd1lSDK;->getMonetizationNetwork:I

    mul-int/lit16 p1, p1, 0x6608

    iput p1, p0, Lcom/appsflyer/internal/AFd1lSDK;->getMonetizationNetwork:I

    goto :goto_3

    .line 51
    :cond_4
    iget-object p1, p0, Lcom/appsflyer/internal/AFd1lSDK;->AFAdRevenueData:Ljava/util/List;

    const-string p2, "+~+~ The limit has been exceeded, and no more data is available. +~+~"

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    iget p1, p0, Lcom/appsflyer/internal/AFd1lSDK;->getMonetizationNetwork:I

    add-int/lit16 p1, p1, 0x8a

    iput p1, p0, Lcom/appsflyer/internal/AFd1lSDK;->getMonetizationNetwork:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 53
    :cond_5
    :goto_3
    monitor-exit p0

    return-void

    .line 54
    :catchall_1
    monitor-exit p0

    return-void

    .line 55
    :goto_4
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1
.end method

.method private static getCurrencyIso4217Code(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    .line 65
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-int p0, v1

    const v1, -0x4a2c61b9

    const v2, 0x4a2c61bc    # 2824303.0f

    invoke-static {v0, v1, v2, p0}, Lcom/appsflyer/internal/AFd1lSDK;->AFAdRevenueData([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static getCurrencyIso4217Code(Ljava/lang/String;[Ljava/lang/StackTraceElement;)[Ljava/lang/String;
    .locals 3

    .line 56
    sget v0, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I

    add-int/lit8 v0, v0, 0x69

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x56

    .line 57
    div-int/2addr v0, v1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 58
    :goto_0
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 59
    :cond_1
    array-length v0, p1

    const/4 v2, 0x1

    add-int/2addr v0, v2

    new-array v0, v0, [Ljava/lang/String;

    .line 60
    aput-object p0, v0, v1

    .line 61
    :goto_1
    array-length p0, p1

    if-ge v2, p0, :cond_3

    .line 62
    sget p0, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I

    add-int/lit8 p0, p0, 0x3d

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_2

    .line 63
    aget-object p0, p1, v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v2

    add-int/lit8 v2, v2, 0x2b

    goto :goto_1

    :cond_2
    aget-object p0, p1, v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method private static synthetic getMediationNetwork([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    aget-object v0, p0, v0

    check-cast v0, Lcom/appsflyer/internal/AFd1lSDK;

    const/4 v1, 0x1

    aget-object v1, p0, v1

    check-cast v1, Lcom/appsflyer/internal/AFi1xSDK;

    const/4 v2, 0x2

    aget-object p0, p0, v2

    check-cast p0, Lcom/appsflyer/internal/AFi1xSDK;

    .line 9
    sget v3, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    add-int/lit8 v3, v3, 0x57

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I

    rem-int/2addr v3, v2

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 10
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 11
    invoke-direct {v0}, Lcom/appsflyer/internal/AFd1lSDK;->AFLogger()Z

    move-result p0

    goto :goto_0

    .line 12
    :cond_0
    iget p0, v1, Lcom/appsflyer/internal/AFi1xSDK;->getMediationNetwork:F

    .line 13
    invoke-direct {v0, p0}, Lcom/appsflyer/internal/AFd1lSDK;->getMediationNetwork(F)Z

    move-result p0

    .line 14
    invoke-direct {v0, p0}, Lcom/appsflyer/internal/AFd1lSDK;->getMediationNetwork(Z)V

    .line 15
    :goto_0
    sget v0, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    rem-int/2addr v0, v2

    if-nez v0, :cond_1

    .line 16
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 17
    :cond_1
    throw v4

    :cond_2
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    throw v4
.end method

.method private getMediationNetwork(Z)V
    .locals 2

    .line 18
    sget v0, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I

    rem-int/lit8 v0, v0, 0x2

    const-string v1, "participantInProxy"

    if-eqz v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1lSDK;->component2:Lcom/appsflyer/internal/AFd1zSDK;

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1zSDK;->component4()Lcom/appsflyer/internal/AFc1qSDK;

    move-result-object v0

    invoke-interface {v0, v1, p1}, Lcom/appsflyer/internal/AFc1qSDK;->AFAdRevenueData(Ljava/lang/String;Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1lSDK;->component2:Lcom/appsflyer/internal/AFd1zSDK;

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1zSDK;->component4()Lcom/appsflyer/internal/AFc1qSDK;

    move-result-object v0

    invoke-interface {v0, v1, p1}, Lcom/appsflyer/internal/AFc1qSDK;->AFAdRevenueData(Ljava/lang/String;Z)V

    const/4 p1, 0x0

    .line 20
    throw p1
.end method

.method private getMediationNetwork(F)Z
    .locals 3

    .line 21
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    const v1, 0x43f703bc

    const v2, -0x43f703bc

    invoke-static {v0, v1, v2, p1}, Lcom/appsflyer/internal/AFd1lSDK;->AFAdRevenueData([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method private static getMonetizationNetwork(Lcom/appsflyer/internal/AFi1vSDK;)Lcom/appsflyer/internal/AFi1xSDK;
    .locals 2
    .param p0    # Lcom/appsflyer/internal/AFi1vSDK;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 37
    sget v0, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 38
    div-int/lit8 v0, v0, 0x0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 39
    :goto_0
    iget-object p0, p0, Lcom/appsflyer/internal/AFi1vSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFi1zSDK;

    if-eqz p0, :cond_1

    add-int/lit8 v1, v1, 0x21

    .line 40
    rem-int/lit16 v1, v1, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I

    .line 41
    iget-object p0, p0, Lcom/appsflyer/internal/AFi1zSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFi1xSDK;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic getMonetizationNetwork([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x0

    aget-object v1, p0, v0

    check-cast v1, Lcom/appsflyer/internal/AFd1lSDK;

    const/4 v2, 0x1

    aget-object p0, p0, v2

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    float-to-double v2, p0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v2, v4

    if-ltz v4, :cond_1

    .line 33
    sget p0, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I

    add-int/lit8 p0, p0, 0x6d

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    throw p0

    :cond_1
    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_2

    .line 34
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 35
    :cond_2
    invoke-direct {v1}, Lcom/appsflyer/internal/AFd1lSDK;->component2()F

    move-result v1

    cmpg-float p0, v1, p0

    if-gtz p0, :cond_4

    .line 36
    sget p0, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    add-int/lit8 p0, p0, 0x2f

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_3

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_3
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_4
    sget p0, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    add-int/lit8 p0, p0, 0x47

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_5

    const/4 p0, 0x5

    div-int/2addr p0, v0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_5
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private declared-synchronized getMonetizationNetwork(Lcom/appsflyer/internal/AFi1xSDK;Lcom/appsflyer/internal/AFi1xSDK;)Z
    .locals 3
    .param p1    # Lcom/appsflyer/internal/AFi1xSDK;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/appsflyer/internal/AFi1xSDK;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 9
    :try_start_0
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventType()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 11
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFi1xSDK;->AFAdRevenueData()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    .line 12
    monitor-exit p0

    return v0

    .line 13
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/appsflyer/internal/AFd1lSDK;->component2:Lcom/appsflyer/internal/AFd1zSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1zSDK;->AFAdRevenueData()Lcom/appsflyer/internal/AFc1oSDK;

    move-result-object v1

    .line 14
    iget-object v1, v1, Lcom/appsflyer/internal/AFc1oSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFc1qSDK;

    const-string v2, "appsFlyerCount"

    invoke-interface {v1, v2, v0}, Lcom/appsflyer/internal/AFc1qSDK;->getRevenue(Ljava/lang/String;I)I

    move-result v1

    .line 15
    iget v2, p1, Lcom/appsflyer/internal/AFi1xSDK;->getMonetizationNetwork:I

    if-gt v1, v2, :cond_6

    .line 16
    sget v1, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I

    add-int/lit8 v1, v1, 0x71

    rem-int/lit16 v1, v1, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/appsflyer/internal/AFd1lSDK;->AFAdRevenueData(Lcom/appsflyer/internal/AFi1xSDK;Lcom/appsflyer/internal/AFi1xSDK;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 18
    iget-object p2, p1, Lcom/appsflyer/internal/AFi1xSDK;->getCurrencyIso4217Code:Ljava/lang/String;

    .line 19
    invoke-direct {p0, p2}, Lcom/appsflyer/internal/AFd1lSDK;->getMonetizationNetwork(Ljava/lang/String;)Z

    move-result p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p2, :cond_2

    .line 20
    monitor-exit p0

    return v0

    .line 21
    :cond_2
    :try_start_3
    iget-object p1, p1, Lcom/appsflyer/internal/AFi1xSDK;->component4:Ljava/lang/String;

    .line 22
    invoke-static {p1}, Lcom/appsflyer/internal/AFd1lSDK;->getCurrencyIso4217Code(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 23
    sget p1, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I

    add-int/lit8 p1, p1, 0x73

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    rem-int/lit8 p1, p1, 0x2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p1, :cond_3

    monitor-exit p0

    return v0

    :cond_3
    const/4 p1, 0x0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_4
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 24
    :cond_5
    monitor-exit p0

    return v0

    .line 25
    :cond_6
    monitor-exit p0

    return v0

    .line 26
    :goto_0
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1
.end method

.method private getMonetizationNetwork(Ljava/lang/String;)Z
    .locals 2

    .line 27
    sget v0, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 28
    invoke-static {p1}, Lcom/appsflyer/internal/AFk1wSDK;->getCurrencyIso4217Code(Ljava/lang/String;)Z

    move-result v0

    div-int/lit8 v1, v1, 0x0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/appsflyer/internal/AFk1wSDK;->getCurrencyIso4217Code(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 29
    :cond_1
    sget p1, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I

    add-int/lit8 p1, p1, 0x59

    rem-int/lit16 p1, p1, 0x80

    sput p1, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1lSDK;->component2:Lcom/appsflyer/internal/AFd1zSDK;

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1zSDK;->AFAdRevenueData()Lcom/appsflyer/internal/AFc1oSDK;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/appsflyer/internal/AFc1oSDK;->n_()Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 32
    sget v0, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I

    return p1
.end method

.method private static synthetic getRevenue([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    aget-object p0, p0, v0

    check-cast p0, Ljava/lang/String;

    .line 42
    sget v1, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    add-int/lit8 v1, v1, 0x57

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 43
    invoke-static {p0}, Lcom/appsflyer/internal/AFk1wSDK;->getCurrencyIso4217Code(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    sget p0, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    add-int/lit8 p0, p0, 0x7b

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Lcom/appsflyer/internal/AFd1pSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFd1pSDK;-><init>()V

    invoke-static {}, Lcom/appsflyer/internal/AFd1lSDK;->component4()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/appsflyer/internal/AFd1pSDK;->getCurrencyIso4217Code(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 45
    :cond_2
    invoke-static {p0}, Lcom/appsflyer/internal/AFk1wSDK;->getCurrencyIso4217Code(Ljava/lang/String;)Z

    const/4 p0, 0x0

    throw p0
.end method

.method private declared-synchronized getRevenue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 27
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-lez v0, :cond_0

    .line 28
    :try_start_1
    sget v0, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    :try_start_2
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1lSDK;->getMediationNetwork:Ljava/util/Map;

    const-string v1, "app_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 30
    :try_start_3
    sget p1, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I

    add-int/lit8 p1, p1, 0x25

    rem-int/lit16 p1, p1, 0x80

    sput p1, Lcom/appsflyer/internal/AFd1lSDK;->equals:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_0
    :goto_0
    const/4 p1, 0x0

    if-eqz p2, :cond_2

    .line 31
    :try_start_4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-lez v0, :cond_2

    .line 32
    :try_start_5
    sget v0, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I

    rem-int/lit8 v0, v0, 0x2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_1

    .line 33
    :try_start_6
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1lSDK;->getMediationNetwork:Ljava/util/Map;

    const-string v1, "app_version"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object p3, p0, Lcom/appsflyer/internal/AFd1lSDK;->getMediationNetwork:Ljava/util/Map;

    const-string p4, "app_version"

    invoke-interface {p3, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_2
    :goto_1
    if-eqz p3, :cond_4

    .line 35
    :try_start_7
    sget p2, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I

    add-int/lit8 p2, p2, 0x69

    rem-int/lit16 p2, p2, 0x80

    sput p2, Lcom/appsflyer/internal/AFd1lSDK;->equals:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 36
    :try_start_8
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-lez p2, :cond_4

    .line 37
    :try_start_9
    sget p2, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    add-int/lit8 p2, p2, 0x7b

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I

    rem-int/lit8 p2, p2, 0x2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz p2, :cond_3

    .line 38
    :try_start_a
    iget-object p1, p0, Lcom/appsflyer/internal/AFd1lSDK;->getMediationNetwork:Ljava/util/Map;

    const-string p2, "channel"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    iget-object p2, p0, Lcom/appsflyer/internal/AFd1lSDK;->getMediationNetwork:Ljava/util/Map;

    const-string p4, "channel"

    invoke-interface {p2, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    throw p1

    :cond_4
    :goto_2
    if-eqz p4, :cond_5

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_5

    .line 40
    iget-object p1, p0, Lcom/appsflyer/internal/AFd1lSDK;->getMediationNetwork:Ljava/util/Map;

    const-string p2, "preInstall"

    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_3

    .line 41
    :catchall_1
    monitor-exit p0

    return-void

    :cond_5
    :goto_3
    :try_start_b
    sget p1, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    add-int/lit8 p1, p1, 0x39

    rem-int/lit16 p1, p1, 0x80

    sput p1, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    monitor-exit p0

    return-void

    :goto_4
    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    throw p1
.end method


# virtual methods
.method public final AFAdRevenueData(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4

    .line 17
    sget v0, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const-string v2, "server_response"

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 18
    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v3

    aput-object p3, v0, v1

    invoke-direct {p0, v2, p1, v0}, Lcom/appsflyer/internal/AFd1lSDK;->getCurrencyIso4217Code(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2, p3}, [Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v2, p1, p2}, Lcom/appsflyer/internal/AFd1lSDK;->getCurrencyIso4217Code(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 19
    :goto_0
    sget p1, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I

    add-int/lit8 p1, p1, 0x71

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    const/16 p1, 0x48

    div-int/2addr p1, v1

    :cond_1
    return-void
.end method

.method public final AFAdRevenueData()Z
    .locals 2

    .line 2
    sget v0, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    .line 3
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1lSDK;->component2:Lcom/appsflyer/internal/AFd1zSDK;

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1zSDK;->component1()Lcom/appsflyer/internal/AFf1kSDK;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lcom/appsflyer/internal/AFf1kSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFf1hSDK;

    .line 5
    iget-object v0, v0, Lcom/appsflyer/internal/AFf1hSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFi1vSDK;

    .line 6
    invoke-static {v0}, Lcom/appsflyer/internal/AFd1lSDK;->getMonetizationNetwork(Lcom/appsflyer/internal/AFi1vSDK;)Lcom/appsflyer/internal/AFi1xSDK;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/appsflyer/internal/AFd1lSDK;->component2:Lcom/appsflyer/internal/AFd1zSDK;

    invoke-interface {v1}, Lcom/appsflyer/internal/AFd1zSDK;->component1()Lcom/appsflyer/internal/AFf1kSDK;

    move-result-object v1

    .line 8
    iget-object v1, v1, Lcom/appsflyer/internal/AFf1kSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFf1hSDK;

    .line 9
    iget-object v1, v1, Lcom/appsflyer/internal/AFf1hSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFi1vSDK;

    .line 10
    invoke-static {v1}, Lcom/appsflyer/internal/AFd1lSDK;->getMonetizationNetwork(Lcom/appsflyer/internal/AFi1vSDK;)Lcom/appsflyer/internal/AFi1xSDK;

    move-result-object v1

    .line 11
    invoke-direct {p0, v0, v1}, Lcom/appsflyer/internal/AFd1lSDK;->getMonetizationNetwork(Lcom/appsflyer/internal/AFi1xSDK;Lcom/appsflyer/internal/AFi1xSDK;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    sget v1, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I

    add-int/lit8 v1, v1, 0xd

    rem-int/lit16 v1, v1, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    .line 13
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1lSDK;->component1()V

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1lSDK;->getRevenue()V

    .line 15
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1lSDK;->getMediationNetwork()V

    .line 16
    :goto_0
    sget v1, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    add-int/lit8 v1, v1, 0x77

    rem-int/lit16 v1, v1, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I

    return v0
.end method

.method public final areAllFieldsValid()Z
    .locals 2

    .line 1
    sget v0, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x69

    .line 4
    .line 5
    rem-int/lit16 v1, v0, 0x80

    .line 6
    .line 7
    sput v1, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    .line 8
    .line 9
    rem-int/lit8 v0, v0, 0x2

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/appsflyer/internal/AFd1lSDK;->component4:Z

    .line 14
    .line 15
    const/4 v1, 0x7

    .line 16
    div-int/lit8 v1, v1, 0x0

    .line 17
    .line 18
    return v0

    .line 19
    :cond_0
    iget-boolean v0, p0, Lcom/appsflyer/internal/AFd1lSDK;->component4:Z

    .line 20
    .line 21
    return v0
.end method

.method public final getCurrencyIso4217Code()V
    .locals 2

    .line 1
    sget v0, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Lcom/appsflyer/internal/AFd1lSDK;->component1:Z

    add-int/lit8 v0, v0, 0xd

    .line 3
    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    return-void
.end method

.method public final declared-synchronized getMediationNetwork()V
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/appsflyer/internal/AFd1lSDK;->component4:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/appsflyer/internal/AFd1lSDK;->getRevenue:Z

    if-nez v0, :cond_0

    .line 2
    sget v0, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :try_start_1
    iput-boolean v0, p0, Lcom/appsflyer/internal/AFd1lSDK;->component4:Z

    .line 4
    iput-boolean v0, p0, Lcom/appsflyer/internal/AFd1lSDK;->getRevenue:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    const-string v1, "r_debugging_off"

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ssZ"

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lcom/appsflyer/internal/AFd1lSDK;->getCurrencyIso4217Code(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6
    :try_start_3
    sget v0, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFd1lSDK;->equals:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    move-object v4, v0

    .line 7
    :try_start_4
    sget-object v1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v2, Lcom/appsflyer/internal/AFg1cSDK;->afLogForce:Lcom/appsflyer/internal/AFg1cSDK;

    const-string v3, "Error while stopping remote debugger"

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v5, 0x1

    invoke-virtual/range {v1 .. v7}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :goto_0
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method public final declared-synchronized getMonetizationNetwork()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    sget v0, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    .line 2
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1lSDK;->getMediationNetwork:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1lSDK;->AFAdRevenueData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/appsflyer/internal/AFd1lSDK;->getMonetizationNetwork:I

    .line 5
    sget v0, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I

    rem-int/lit8 v0, v0, 0x2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_2
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public final getMonetizationNetwork(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 6
    sget v0, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 7
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v1, p1, p2}, Lcom/appsflyer/internal/AFd1lSDK;->getCurrencyIso4217Code(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v1, p1, p2}, Lcom/appsflyer/internal/AFd1lSDK;->getCurrencyIso4217Code(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 8
    :goto_0
    sget p1, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    add-int/lit8 p1, p1, 0x7d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    return-void

    :cond_1
    throw v1
.end method

.method public final declared-synchronized getRevenue()V
    .locals 3

    monitor-enter p0

    .line 20
    :try_start_0
    sget v0, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 21
    iput-boolean v1, p0, Lcom/appsflyer/internal/AFd1lSDK;->getRevenue:Z

    .line 22
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1lSDK;->getMonetizationNetwork()V

    .line 23
    :goto_0
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1lSDK;->copy()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 24
    :cond_0
    iput-boolean v1, p0, Lcom/appsflyer/internal/AFd1lSDK;->getRevenue:Z

    .line 25
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFd1lSDK;->getMonetizationNetwork()V

    goto :goto_0

    .line 26
    :goto_1
    sget v0, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I

    rem-int/lit8 v0, v0, 0x2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    const/16 v0, 0xf

    :try_start_1
    div-int/2addr v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final getRevenue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 17
    sget v0, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I

    rem-int/lit8 v0, v0, 0x2

    const-string v1, "server_request"

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 18
    new-array v2, v0, [Ljava/lang/String;

    aput-object p2, v2, v0

    invoke-direct {p0, v1, p1, v2}, Lcom/appsflyer/internal/AFd1lSDK;->getCurrencyIso4217Code(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v1, p1, p2}, Lcom/appsflyer/internal/AFd1lSDK;->getCurrencyIso4217Code(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 19
    :goto_0
    sget p1, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I

    add-int/lit8 p1, p1, 0x73

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    throw p1
.end method

.method public final varargs getRevenue(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    rem-int/lit8 v0, v0, 0x2

    const-string v1, "public_api_call"

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, v1, p1, p2}, Lcom/appsflyer/internal/AFd1lSDK;->getCurrencyIso4217Code(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const/16 p1, 0x43

    .line 3
    div-int/lit8 p1, p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, v1, p1, p2}, Lcom/appsflyer/internal/AFd1lSDK;->getCurrencyIso4217Code(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 5
    :goto_0
    sget p1, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I

    add-int/lit8 p1, p1, 0x3

    rem-int/lit16 p1, p1, 0x80

    sput p1, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    return-void
.end method

.method public final getRevenue(Ljava/lang/Throwable;)V
    .locals 3

    .line 6
    sget v0, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x52

    .line 9
    div-int/lit8 v2, v2, 0x0

    if-nez v0, :cond_1

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_1

    .line 12
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-nez v0, :cond_2

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    .line 14
    sget v0, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v0, v0, 0x80

    sput v0, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    .line 15
    :goto_2
    invoke-static {v2, p1}, Lcom/appsflyer/internal/AFd1lSDK;->getCurrencyIso4217Code(Ljava/lang/String;[Ljava/lang/StackTraceElement;)[Ljava/lang/String;

    move-result-object p1

    .line 16
    const-string v0, "exception"

    invoke-direct {p0, v0, v1, p1}, Lcom/appsflyer/internal/AFd1lSDK;->getCurrencyIso4217Code(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final q_(Ljava/lang/String;Landroid/content/pm/PackageManager;)V
    .locals 1

    .line 1
    sget p2, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I

    .line 2
    .line 3
    add-int/lit8 p2, p2, 0x21

    .line 4
    .line 5
    rem-int/lit16 v0, p2, 0x80

    .line 6
    .line 7
    sput v0, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    .line 8
    .line 9
    rem-int/lit8 p2, p2, 0x2

    .line 10
    .line 11
    if-nez p2, :cond_1

    .line 12
    .line 13
    :try_start_0
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFd1lSDK;->AFAdRevenueData(Ljava/lang/String;)Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object p2, p0, Lcom/appsflyer/internal/AFd1lSDK;->component2:Lcom/appsflyer/internal/AFd1zSDK;

    .line 18
    .line 19
    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1zSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFf1eSDK;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p2}, Lcom/appsflyer/internal/AFf1eSDK;->getMediationNetwork()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1lSDK;->component2:Lcom/appsflyer/internal/AFd1zSDK;

    .line 28
    .line 29
    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1zSDK;->getRevenue()Lcom/appsflyer/internal/AFd1nSDK;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0, p1, p2}, Lcom/appsflyer/internal/AFd1nSDK;->getMediationNetwork(Ljava/util/Map;Ljava/lang/String;)Lcom/appsflyer/internal/AFd1kSDK;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-nez p1, :cond_0

    .line 38
    .line 39
    const-string p1, "could not send null proxy data"

    .line 40
    .line 41
    new-instance p2, Ljava/lang/NullPointerException;

    .line 42
    .line 43
    const-string v0, "request was null"

    .line 44
    .line 45
    invoke-direct {p2, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-static {p1, p2}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    iget-object p2, p0, Lcom/appsflyer/internal/AFd1lSDK;->component2:Lcom/appsflyer/internal/AFd1zSDK;

    .line 55
    .line 56
    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1zSDK;->getMonetizationNetwork()Ljava/util/concurrent/ExecutorService;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    new-instance v0, Lcom/appsflyer/internal/Wwwwwwwwwwwwwwwww;

    .line 61
    .line 62
    invoke-direct {v0, p1}, Lcom/appsflyer/internal/Wwwwwwwwwwwwwwwww;-><init>(Lcom/appsflyer/internal/AFd1kSDK;)V

    .line 63
    .line 64
    .line 65
    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    .line 68
    sget p1, Lcom/appsflyer/internal/AFd1lSDK;->copydefault:I

    .line 69
    .line 70
    add-int/lit8 p1, p1, 0x3d

    .line 71
    .line 72
    rem-int/lit16 p1, p1, 0x80

    .line 73
    .line 74
    sput p1, Lcom/appsflyer/internal/AFd1lSDK;->equals:I

    .line 75
    .line 76
    return-void

    .line 77
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFd1lSDK;->AFAdRevenueData(Ljava/lang/String;)Ljava/util/Map;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iget-object p2, p0, Lcom/appsflyer/internal/AFd1lSDK;->component2:Lcom/appsflyer/internal/AFd1zSDK;

    .line 82
    .line 83
    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1zSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFf1eSDK;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-virtual {p2}, Lcom/appsflyer/internal/AFf1eSDK;->getMediationNetwork()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    iget-object v0, p0, Lcom/appsflyer/internal/AFd1lSDK;->component2:Lcom/appsflyer/internal/AFd1zSDK;

    .line 92
    .line 93
    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1zSDK;->getRevenue()Lcom/appsflyer/internal/AFd1nSDK;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v0, p1, p2}, Lcom/appsflyer/internal/AFd1nSDK;->getMediationNetwork(Ljava/util/Map;Ljava/lang/String;)Lcom/appsflyer/internal/AFd1kSDK;

    .line 98
    .line 99
    .line 100
    const/4 p1, 0x0

    .line 101
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    :goto_0
    const-string p2, "could not send proxy data"

    .line 103
    .line 104
    invoke-static {p2, p1}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    .line 106
    .line 107
    return-void
.end method
