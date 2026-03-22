.class public final Lcom/facebook/ads/redexgen/X/6P;
.super Lcom/facebook/ads/redexgen/X/fw;
.source ""


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/R0;)V
    .locals 0

    .line 17822
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/fw;-><init>(Lcom/facebook/ads/redexgen/X/R0;)V

    .line 17823
    return-void
.end method


# virtual methods
.method public final bridge synthetic A3w(Landroid/view/View;ILandroid/widget/RelativeLayout$LayoutParams;)V
    .locals 0

    .line 17824
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/fw;->A3w(Landroid/view/View;ILandroid/widget/RelativeLayout$LayoutParams;)V

    return-void
.end method

.method public final bridge synthetic A3x(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 0

    .line 17825
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/fw;->A3x(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    return-void
.end method

.method public final A4b(Ljava/lang/String;)V
    .locals 3

    .line 17826
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/fw;->A4b(Ljava/lang/String;)V

    .line 17827
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fw;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 17828
    return-void

    .line 17829
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/dh;->A08:Lcom/facebook/ads/redexgen/X/dh;

    .line 17830
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dh;->A03()Ljava/lang/String;

    move-result-object v2

    .line 17831
    .local v0, "rewardedVideoEndActivity":Ljava/lang/String;
    sget-object v0, Lcom/facebook/ads/redexgen/X/dh;->A09:Lcom/facebook/ads/redexgen/X/dh;

    .line 17832
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dh;->A03()Ljava/lang/String;

    move-result-object v1

    .line 17833
    .local v1, "rewardedVideoError":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17834
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fw;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/R0;

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/R0;->finish(I)V

    .line 17835
    return-void

    .line 17836
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 17837
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fw;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/R0;

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/R0;->finish(I)V

    .line 17838
    :cond_2
    return-void
.end method

.method public final bridge synthetic A4c(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Td;)V
    .locals 0

    .line 17839
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/fw;->A4c(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Td;)V

    return-void
.end method

.method public final bridge synthetic AAf(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/N9;)V
    .locals 0

    .line 17840
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/fw;->AAf(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/N9;)V

    return-void
.end method

.method public final bridge synthetic ACf(I)V
    .locals 0

    .line 17841
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/fw;->ACf(I)V

    return-void
.end method
