.class public final Lcom/appsflyer/internal/AFb1aSDK$AFa1zSDK;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/AFb1aSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AFa1zSDK"
.end annotation


# static fields
.field private static AFAdRevenueData:J

.field static final synthetic getCurrencyIso4217Code:Lcom/appsflyer/internal/AFb1aSDK$AFa1zSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/appsflyer/internal/AFb1aSDK$AFa1zSDK;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/appsflyer/internal/AFb1aSDK$AFa1zSDK;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/appsflyer/internal/AFb1aSDK$AFa1zSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFb1aSDK$AFa1zSDK;

    .line 7
    .line 8
    const-wide/16 v0, 0x1f4

    .line 9
    .line 10
    sput-wide v0, Lcom/appsflyer/internal/AFb1aSDK$AFa1zSDK;->AFAdRevenueData:J

    .line 11
    .line 12
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getMediationNetwork()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/appsflyer/internal/AFb1aSDK$AFa1zSDK;->AFAdRevenueData:J

    .line 2
    .line 3
    return-wide v0
.end method
