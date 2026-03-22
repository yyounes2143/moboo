.class public final Lcom/appsflyer/internal/AFe1vSDK$AFa1ySDK;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/AFe1vSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AFa1ySDK"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R \u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00048\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0008\u0010\tR\u0016\u0010\u000c\u001a\u00020\u00058\u0006@\u0006X\u0087\u000c\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\u000bR\u0016\u0010\r\u001a\u00020\u00058\u0006@\u0006X\u0087\u000c\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000bR\u001e\u0010\u0008\u001a\u0004\u0018\u00010\u000e8\u0006@\u0007X\u0087\u000e\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0008\u0010\u0011"
    }
    d2 = {
        "Lcom/appsflyer/internal/AFe1vSDK$AFa1ySDK;",
        "",
        "<init>",
        "()V",
        "",
        "",
        "component4",
        "Ljava/util/List;",
        "getMonetizationNetwork",
        "()Ljava/util/List;",
        "AFAdRevenueData",
        "Ljava/lang/String;",
        "getMediationNetwork",
        "getCurrencyIso4217Code",
        "Lcom/appsflyer/internal/AFe1ySDK;",
        "component1",
        "Lcom/appsflyer/internal/AFe1ySDK;",
        "(Lcom/appsflyer/internal/AFe1ySDK;)V"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/appsflyer/internal/AFe1vSDK$AFa1ySDK;-><init>()V

    return-void
.end method

.method public static getMonetizationNetwork()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "getMonetizationNetwork"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/appsflyer/internal/AFe1vSDK;->getMonetizationNetwork()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getMonetizationNetwork(Lcom/appsflyer/internal/AFe1ySDK;)V
    .locals 0
    .param p0    # Lcom/appsflyer/internal/AFe1ySDK;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmName;
        name = "getMonetizationNetwork"
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/appsflyer/internal/AFe1vSDK;->getMediationNetwork(Lcom/appsflyer/internal/AFe1ySDK;)V

    return-void
.end method
