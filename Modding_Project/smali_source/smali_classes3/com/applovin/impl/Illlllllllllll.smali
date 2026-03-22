.class public final synthetic Lcom/applovin/impl/Illlllllllllll;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/applovin/impl/sdk/AppLovinError;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdLoadListener;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdLoadListener;Lcom/applovin/impl/sdk/AppLovinError;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/applovin/impl/Illlllllllllll;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdLoadListener;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/applovin/impl/Illlllllllllll;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/applovin/impl/sdk/AppLovinError;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/Illlllllllllll;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdLoadListener;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/applovin/impl/Illlllllllllll;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/applovin/impl/sdk/AppLovinError;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/applovin/impl/l2;->Wwwwwwwwwwwwwwwwww(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdLoadListener;Lcom/applovin/impl/sdk/AppLovinError;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
