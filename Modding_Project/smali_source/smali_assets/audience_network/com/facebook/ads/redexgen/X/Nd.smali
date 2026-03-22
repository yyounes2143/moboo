.class public final Lcom/facebook/ads/redexgen/X/Nd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/InterstitialAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/h4;->A0F(Lcom/facebook/ads/redexgen/X/MP;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/hy;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/h4;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/h4;Lcom/facebook/ads/redexgen/X/hy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 54214
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Nd;->A01:Lcom/facebook/ads/redexgen/X/h4;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Nd;->A00:Lcom/facebook/ads/redexgen/X/hy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 0

    .line 54215
    return-void
.end method

.method public final onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 2

    .line 54216
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nd;->A01:Lcom/facebook/ads/redexgen/X/h4;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gz;->A03(Lcom/facebook/ads/redexgen/X/gz;)Lcom/facebook/ads/InterstitialAdExtendedListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nd;->A01:Lcom/facebook/ads/redexgen/X/h4;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gz;->A08(Lcom/facebook/ads/redexgen/X/gz;)Lcom/facebook/ads/redexgen/X/gv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gv;->A01()Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onAdLoaded(Lcom/facebook/ads/Ad;)V

    .line 54217
    return-void
.end method

.method public final onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 2

    .line 54218
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nd;->A01:Lcom/facebook/ads/redexgen/X/h4;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/gz;->A02(Lcom/facebook/ads/redexgen/X/gz;Lcom/facebook/ads/InterstitialAd;)Lcom/facebook/ads/InterstitialAd;

    .line 54219
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Nd;->A00:Lcom/facebook/ads/redexgen/X/hy;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/hy;->A2A(Z)V

    .line 54220
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nd;->A01:Lcom/facebook/ads/redexgen/X/h4;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gz;->A03(Lcom/facebook/ads/redexgen/X/gz;)Lcom/facebook/ads/InterstitialAdExtendedListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nd;->A01:Lcom/facebook/ads/redexgen/X/h4;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gz;->A08(Lcom/facebook/ads/redexgen/X/gz;)Lcom/facebook/ads/redexgen/X/gv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gv;->A01()Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onAdLoaded(Lcom/facebook/ads/Ad;)V

    .line 54221
    return-void
.end method

.method public final onInterstitialDismissed(Lcom/facebook/ads/Ad;)V
    .locals 2

    .line 54222
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nd;->A01:Lcom/facebook/ads/redexgen/X/h4;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/gz;->A0C(Lcom/facebook/ads/redexgen/X/gz;Z)Z

    .line 54223
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nd;->A01:Lcom/facebook/ads/redexgen/X/h4;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gz;->A06(Lcom/facebook/ads/redexgen/X/gz;)Lcom/facebook/ads/redexgen/X/6y;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54224
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nd;->A01:Lcom/facebook/ads/redexgen/X/h4;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gz;->A06(Lcom/facebook/ads/redexgen/X/gz;)Lcom/facebook/ads/redexgen/X/6y;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/h6;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/h6;-><init>(Lcom/facebook/ads/redexgen/X/Nd;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/hQ;->A0S(Lcom/facebook/ads/redexgen/X/MQ;)V

    .line 54225
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nd;->A01:Lcom/facebook/ads/redexgen/X/h4;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gz;->A06(Lcom/facebook/ads/redexgen/X/gz;)Lcom/facebook/ads/redexgen/X/6y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hQ;->A0N()V

    .line 54226
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nd;->A01:Lcom/facebook/ads/redexgen/X/h4;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gz;->A06(Lcom/facebook/ads/redexgen/X/gz;)Lcom/facebook/ads/redexgen/X/6y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hQ;->A0K()V

    .line 54227
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nd;->A01:Lcom/facebook/ads/redexgen/X/h4;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/gz;->A07(Lcom/facebook/ads/redexgen/X/gz;Lcom/facebook/ads/redexgen/X/6y;)Lcom/facebook/ads/redexgen/X/6y;

    .line 54228
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nd;->A01:Lcom/facebook/ads/redexgen/X/h4;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gz;->A03(Lcom/facebook/ads/redexgen/X/gz;)Lcom/facebook/ads/InterstitialAdExtendedListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nd;->A01:Lcom/facebook/ads/redexgen/X/h4;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/h4;->A00:Lcom/facebook/ads/redexgen/X/gz;

    .line 54229
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/gz;->A08(Lcom/facebook/ads/redexgen/X/gz;)Lcom/facebook/ads/redexgen/X/gv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gv;->A01()Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    .line 54230
    invoke-interface {v1, v0}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onInterstitialDismissed(Lcom/facebook/ads/Ad;)V

    .line 54231
    return-void
.end method

.method public final onInterstitialDisplayed(Lcom/facebook/ads/Ad;)V
    .locals 0

    .line 54232
    return-void
.end method

.method public final onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 0

    .line 54233
    return-void
.end method
