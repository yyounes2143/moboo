.class public final Lcom/facebook/ads/redexgen/X/RD;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/InitApi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 62294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final initialize(Landroid/content/Context;Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;Lcom/facebook/ads/AudienceNetworkAds$InitListener;I)V
    .locals 1

    .line 62295
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/RB;->A09(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/cu;

    move-result-object v0

    .line 62296
    invoke-static {v0, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/TK;->A0H(Lcom/facebook/ads/redexgen/X/cu;Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;Lcom/facebook/ads/AudienceNetworkAds$InitListener;I)V

    .line 62297
    return-void
.end method

.method public final isInitialized()Z
    .locals 1

    .line 62298
    invoke-static {}, Lcom/facebook/ads/redexgen/X/TK;->A0I()Z

    move-result v0

    return v0
.end method

.method public final onAdLoadInvoked(Landroid/content/Context;)V
    .locals 1

    .line 62299
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/RB;->A09(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/cu;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/TK;->A08(Lcom/facebook/ads/redexgen/X/cu;)V

    .line 62300
    return-void
.end method

.method public final onContentProviderCreated(Landroid/content/Context;)V
    .locals 1

    .line 62301
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/RB;->A09(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/cu;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/TK;->A09(Lcom/facebook/ads/redexgen/X/cu;)V

    .line 62302
    return-void
.end method
