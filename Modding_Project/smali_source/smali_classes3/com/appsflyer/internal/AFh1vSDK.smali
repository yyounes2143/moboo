.class public final enum Lcom/appsflyer/internal/AFh1vSDK;
.super Ljava/lang/Enum;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsflyer/internal/AFh1vSDK;",
        ">;"
    }
.end annotation


# static fields
.field private static enum AFAdRevenueData:Lcom/appsflyer/internal/AFh1vSDK;

.field private static enum getCurrencyIso4217Code:Lcom/appsflyer/internal/AFh1vSDK;

.field private static enum getMonetizationNetwork:Lcom/appsflyer/internal/AFh1vSDK;

.field private static final synthetic getRevenue:[Lcom/appsflyer/internal/AFh1vSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/appsflyer/internal/AFh1vSDK;

    .line 2
    .line 3
    const-string v1, "application"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/appsflyer/internal/AFh1vSDK;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/appsflyer/internal/AFh1vSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFh1vSDK;

    .line 10
    .line 11
    new-instance v0, Lcom/appsflyer/internal/AFh1vSDK;

    .line 12
    .line 13
    const-string v1, "activity"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v0, v1, v3}, Lcom/appsflyer/internal/AFh1vSDK;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/appsflyer/internal/AFh1vSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFh1vSDK;

    .line 20
    .line 21
    new-instance v0, Lcom/appsflyer/internal/AFh1vSDK;

    .line 22
    .line 23
    const-string v1, "other"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v0, v1, v4}, Lcom/appsflyer/internal/AFh1vSDK;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/appsflyer/internal/AFh1vSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFh1vSDK;

    .line 30
    .line 31
    const/4 v1, 0x3

    .line 32
    new-array v1, v1, [Lcom/appsflyer/internal/AFh1vSDK;

    .line 33
    .line 34
    sget-object v5, Lcom/appsflyer/internal/AFh1vSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFh1vSDK;

    .line 35
    .line 36
    aput-object v5, v1, v2

    .line 37
    .line 38
    sget-object v2, Lcom/appsflyer/internal/AFh1vSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFh1vSDK;

    .line 39
    .line 40
    aput-object v2, v1, v3

    .line 41
    .line 42
    aput-object v0, v1, v4

    .line 43
    .line 44
    sput-object v1, Lcom/appsflyer/internal/AFh1vSDK;->getRevenue:[Lcom/appsflyer/internal/AFh1vSDK;

    .line 45
    .line 46
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getMediationNetwork(Landroid/content/Context;)Lcom/appsflyer/internal/AFh1vSDK;
    .locals 1

    .line 1
    instance-of v0, p0, Landroid/app/Activity;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lcom/appsflyer/internal/AFh1vSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFh1vSDK;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    instance-of p0, p0, Landroid/app/Application;

    .line 9
    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    sget-object p0, Lcom/appsflyer/internal/AFh1vSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFh1vSDK;

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_1
    sget-object p0, Lcom/appsflyer/internal/AFh1vSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFh1vSDK;

    .line 16
    .line 17
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/AFh1vSDK;
    .locals 1

    .line 1
    const-class v0, Lcom/appsflyer/internal/AFh1vSDK;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/appsflyer/internal/AFh1vSDK;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/appsflyer/internal/AFh1vSDK;
    .locals 1

    .line 1
    sget-object v0, Lcom/appsflyer/internal/AFh1vSDK;->getRevenue:[Lcom/appsflyer/internal/AFh1vSDK;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/appsflyer/internal/AFh1vSDK;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/appsflyer/internal/AFh1vSDK;

    .line 8
    .line 9
    return-object v0
.end method
