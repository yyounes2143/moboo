.class public Lcom/applovin/impl/mediation/ads/MaxRewardedAdImpl;
.super Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/mediation/ads/MaxRewardedAdImpl$b;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/applovin/mediation/MaxAdFormat;Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$a;Ljava/lang/String;Lcom/applovin/impl/sdk/k;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;-><init>(Ljava/lang/String;Lcom/applovin/mediation/MaxAdFormat;Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$a;Ljava/lang/String;Lcom/applovin/impl/sdk/k;Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public createAdListenerWrapper()Lcom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b;
    .locals 2

    .line 1
    new-instance v0, Lcom/applovin/impl/mediation/ads/MaxRewardedAdImpl$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/applovin/impl/mediation/ads/MaxRewardedAdImpl$b;-><init>(Lcom/applovin/impl/mediation/ads/MaxRewardedAdImpl;Lcom/applovin/impl/mediation/ads/MaxRewardedAdImpl$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method
