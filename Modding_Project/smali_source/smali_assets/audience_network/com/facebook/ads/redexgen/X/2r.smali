.class public abstract synthetic Lcom/facebook/ads/redexgen/X/2r;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static A00(Lcom/facebook/ads/redexgen/X/2s;Lcom/facebook/ads/androidx/media3/common/Timeline;I)V
    .locals 1

    .line 10423
    .local v0, "manifest":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A07()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 10424
    new-instance p0, Lcom/facebook/ads/redexgen/X/oL;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oL;-><init>()V

    .line 10425
    .local p0, "window":Lcom/facebook/ads/redexgen/X/oL;
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/facebook/ads/androidx/media3/common/Timeline;->A0K(ILcom/facebook/ads/redexgen/X/oL;)Lcom/facebook/ads/redexgen/X/oL;

    .line 10426
    .end local p0    # "window":Lcom/facebook/ads/redexgen/X/oL;
    :cond_0
    return-void
.end method
