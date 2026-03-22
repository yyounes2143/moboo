.class public final Lcom/appsflyer/internal/AFd1vSDK;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/appsflyer/internal/AFd1uSDK;


# annotations
.annotation build Landroidx/annotation/WorkerThread;
.end annotation


# instance fields
.field private final getMonetizationNetwork:Lcom/appsflyer/internal/AFc1cSDK;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFc1cSDK;)V
    .locals 0
    .param p1    # Lcom/appsflyer/internal/AFc1cSDK;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/appsflyer/internal/AFd1vSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1cSDK;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getMonetizationNetwork([BLjava/util/Map;I)V
    .locals 1
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 1
    new-instance p3, Lcom/appsflyer/internal/AFd1tSDK;

    .line 2
    .line 3
    const/16 v0, 0x7d0

    .line 4
    .line 5
    invoke-direct {p3, p1, p2, v0}, Lcom/appsflyer/internal/AFd1tSDK;-><init>([BLjava/util/Map;I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p3}, Lcom/appsflyer/internal/AFc1dSDK;->AFAdRevenueData()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/appsflyer/internal/AFd1vSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1cSDK;

    .line 15
    .line 16
    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1cSDK;->getCurrencyIso4217Code()Z

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
