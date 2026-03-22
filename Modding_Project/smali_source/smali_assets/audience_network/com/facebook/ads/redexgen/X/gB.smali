.class public final Lcom/facebook/ads/redexgen/X/gB;
.super Lcom/facebook/ads/redexgen/X/Q8;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Q8;->A01(Lcom/facebook/ads/redexgen/X/QO;)Lcom/facebook/ads/redexgen/X/gB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/QO;)V
    .locals 1

    .line 82028
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Q8;-><init>(Lcom/facebook/ads/redexgen/X/QO;Lcom/facebook/ads/redexgen/X/gC;)V

    return-void
.end method


# virtual methods
.method public final A06()I
    .locals 1

    .line 82029
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q8;->A02:Lcom/facebook/ads/redexgen/X/QO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QO;->A0Z()I

    move-result v0

    return v0
.end method

.method public final A07()I
    .locals 2

    .line 82030
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q8;->A02:Lcom/facebook/ads/redexgen/X/QO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QO;->A0Z()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q8;->A02:Lcom/facebook/ads/redexgen/X/QO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QO;->A0f()I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public final A08()I
    .locals 1

    .line 82031
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q8;->A02:Lcom/facebook/ads/redexgen/X/QO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QO;->A0f()I

    move-result v0

    return v0
.end method

.method public final A09()I
    .locals 1

    .line 82032
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q8;->A02:Lcom/facebook/ads/redexgen/X/QO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QO;->A0a()I

    move-result v0

    return v0
.end method

.method public final A0A()I
    .locals 1

    .line 82033
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q8;->A02:Lcom/facebook/ads/redexgen/X/QO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QO;->A0i()I

    move-result v0

    return v0
.end method

.method public final A0B()I
    .locals 2

    .line 82034
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q8;->A02:Lcom/facebook/ads/redexgen/X/QO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QO;->A0Z()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q8;->A02:Lcom/facebook/ads/redexgen/X/QO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QO;->A0i()I

    move-result v0

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q8;->A02:Lcom/facebook/ads/redexgen/X/QO;

    .line 82035
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QO;->A0f()I

    move-result v0

    sub-int/2addr v1, v0

    .line 82036
    return v1
.end method

.method public final A0C(Landroid/view/View;)I
    .locals 3

    .line 82037
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/QP;

    .line 82038
    .local v0, "params":Lcom/facebook/ads/redexgen/X/QP;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q8;->A02:Lcom/facebook/ads/redexgen/X/QO;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/QO;->A0l(Landroid/view/View;)I

    move-result v1

    iget v0, v2, Lcom/facebook/ads/redexgen/X/QP;->bottomMargin:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A0D(Landroid/view/View;)I
    .locals 3

    .line 82039
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/QP;

    .line 82040
    .local v0, "params":Lcom/facebook/ads/redexgen/X/QP;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q8;->A02:Lcom/facebook/ads/redexgen/X/QO;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/QO;->A0n(Landroid/view/View;)I

    move-result v1

    iget v0, v2, Lcom/facebook/ads/redexgen/X/QP;->topMargin:I

    add-int/2addr v1, v0

    iget v0, v2, Lcom/facebook/ads/redexgen/X/QP;->bottomMargin:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A0E(Landroid/view/View;)I
    .locals 3

    .line 82041
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/QP;

    .line 82042
    .local v0, "params":Lcom/facebook/ads/redexgen/X/QP;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q8;->A02:Lcom/facebook/ads/redexgen/X/QO;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/QO;->A0o(Landroid/view/View;)I

    move-result v1

    iget v0, v2, Lcom/facebook/ads/redexgen/X/QP;->leftMargin:I

    add-int/2addr v1, v0

    iget v0, v2, Lcom/facebook/ads/redexgen/X/QP;->rightMargin:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A0F(Landroid/view/View;)I
    .locals 3

    .line 82043
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/QP;

    .line 82044
    .local v0, "params":Lcom/facebook/ads/redexgen/X/QP;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q8;->A02:Lcom/facebook/ads/redexgen/X/QO;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/QO;->A0q(Landroid/view/View;)I

    move-result v1

    iget v0, v2, Lcom/facebook/ads/redexgen/X/QP;->topMargin:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public final A0G(Landroid/view/View;)I
    .locals 3

    .line 82045
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Q8;->A02:Lcom/facebook/ads/redexgen/X/QO;

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q8;->A01:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/QO;->A1G(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 82046
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q8;->A01:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public final A0H(Landroid/view/View;)I
    .locals 3

    .line 82047
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Q8;->A02:Lcom/facebook/ads/redexgen/X/QO;

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q8;->A01:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/QO;->A1G(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 82048
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q8;->A01:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public final A0J(I)V
    .locals 1

    .line 82049
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q8;->A02:Lcom/facebook/ads/redexgen/X/QO;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/QO;->A12(I)V

    .line 82050
    return-void
.end method
