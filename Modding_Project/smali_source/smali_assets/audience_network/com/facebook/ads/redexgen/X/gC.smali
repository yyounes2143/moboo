.class public final Lcom/facebook/ads/redexgen/X/gC;
.super Lcom/facebook/ads/redexgen/X/Q8;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Q8;->A00(Lcom/facebook/ads/redexgen/X/QO;)Lcom/facebook/ads/redexgen/X/gC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/QO;)V
    .locals 1

    .line 82051
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Q8;-><init>(Lcom/facebook/ads/redexgen/X/QO;Lcom/facebook/ads/redexgen/X/gC;)V

    return-void
.end method


# virtual methods
.method public final A06()I
    .locals 1

    .line 82052
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q8;->A02:Lcom/facebook/ads/redexgen/X/QO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QO;->A0j()I

    move-result v0

    return v0
.end method

.method public final A07()I
    .locals 2

    .line 82053
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q8;->A02:Lcom/facebook/ads/redexgen/X/QO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QO;->A0j()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q8;->A02:Lcom/facebook/ads/redexgen/X/QO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QO;->A0h()I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public final A08()I
    .locals 1

    .line 82054
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q8;->A02:Lcom/facebook/ads/redexgen/X/QO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QO;->A0h()I

    move-result v0

    return v0
.end method

.method public final A09()I
    .locals 1

    .line 82055
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q8;->A02:Lcom/facebook/ads/redexgen/X/QO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QO;->A0k()I

    move-result v0

    return v0
.end method

.method public final A0A()I
    .locals 1

    .line 82056
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q8;->A02:Lcom/facebook/ads/redexgen/X/QO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QO;->A0g()I

    move-result v0

    return v0
.end method

.method public final A0B()I
    .locals 2

    .line 82057
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q8;->A02:Lcom/facebook/ads/redexgen/X/QO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QO;->A0j()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q8;->A02:Lcom/facebook/ads/redexgen/X/QO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QO;->A0g()I

    move-result v0

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q8;->A02:Lcom/facebook/ads/redexgen/X/QO;

    .line 82058
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QO;->A0h()I

    move-result v0

    sub-int/2addr v1, v0

    .line 82059
    return v1
.end method

.method public final A0C(Landroid/view/View;)I
    .locals 3

    .line 82060
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/QP;

    .line 82061
    .local v0, "params":Lcom/facebook/ads/redexgen/X/QP;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q8;->A02:Lcom/facebook/ads/redexgen/X/QO;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/QO;->A0p(Landroid/view/View;)I

    move-result v1

    iget v0, v2, Lcom/facebook/ads/redexgen/X/QP;->rightMargin:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A0D(Landroid/view/View;)I
    .locals 3

    .line 82062
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/QP;

    .line 82063
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

.method public final A0E(Landroid/view/View;)I
    .locals 3

    .line 82064
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/QP;

    .line 82065
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

.method public final A0F(Landroid/view/View;)I
    .locals 3

    .line 82066
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/QP;

    .line 82067
    .local v0, "params":Lcom/facebook/ads/redexgen/X/QP;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q8;->A02:Lcom/facebook/ads/redexgen/X/QO;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/QO;->A0m(Landroid/view/View;)I

    move-result v1

    iget v0, v2, Lcom/facebook/ads/redexgen/X/QP;->leftMargin:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public final A0G(Landroid/view/View;)I
    .locals 3

    .line 82068
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Q8;->A02:Lcom/facebook/ads/redexgen/X/QO;

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q8;->A01:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/QO;->A1G(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 82069
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q8;->A01:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public final A0H(Landroid/view/View;)I
    .locals 3

    .line 82070
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Q8;->A02:Lcom/facebook/ads/redexgen/X/QO;

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q8;->A01:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/QO;->A1G(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 82071
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q8;->A01:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public final A0J(I)V
    .locals 1

    .line 82072
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q8;->A02:Lcom/facebook/ads/redexgen/X/QO;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/QO;->A11(I)V

    .line 82073
    return-void
.end method
