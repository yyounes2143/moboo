.class public Lcom/facebook/ads/redexgen/X/R8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/AdComponentViewApi;


# instance fields
.field public A00:Lcom/facebook/ads/internal/api/AdComponentView;

.field public A01:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

.field public A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

.field public A03:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 62157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00(Lcom/facebook/ads/internal/api/AdComponentViewApi;)V
    .locals 3

    .line 62158
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/R8;->A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    .line 62159
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/R8;->A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    check-cast v2, Lcom/facebook/ads/internal/api/AdComponentViewApi;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/R8;->A00:Lcom/facebook/ads/internal/api/AdComponentView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R8;->A01:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/internal/api/AdComponentViewApi;->onAttachedToView(Lcom/facebook/ads/internal/api/AdComponentView;Lcom/facebook/ads/internal/api/AdComponentViewParentApi;)V

    .line 62160
    return-void
.end method

.method public final A01(Z)V
    .locals 0

    .line 62161
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/R8;->A03:Z

    .line 62162
    return-void
.end method

.method public final addView(Landroid/view/View;)V
    .locals 1

    .line 62163
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/R8;->A03:Z

    if-nez v0, :cond_0

    .line 62164
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R8;->A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->addView(Landroid/view/View;)V

    .line 62165
    :cond_0
    return-void
.end method

.method public final addView(Landroid/view/View;I)V
    .locals 1

    .line 62166
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/R8;->A03:Z

    if-nez v0, :cond_0

    .line 62167
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R8;->A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->addView(Landroid/view/View;I)V

    .line 62168
    :cond_0
    return-void
.end method

.method public final addView(Landroid/view/View;II)V
    .locals 1

    .line 62169
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/R8;->A03:Z

    if-nez v0, :cond_0

    .line 62170
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R8;->A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->addView(Landroid/view/View;II)V

    .line 62171
    :cond_0
    return-void
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 62172
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R8;->A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 62173
    return-void
.end method

.method public final addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 62174
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/R8;->A03:Z

    if-nez v0, :cond_0

    .line 62175
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R8;->A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62176
    :cond_0
    return-void
.end method

.method public bringChildToFront(Landroid/view/View;)V
    .locals 1

    .line 62177
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R8;->A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->bringChildToFront(Landroid/view/View;)V

    .line 62178
    return-void
.end method

.method public onAttachedToView(Lcom/facebook/ads/internal/api/AdComponentView;Lcom/facebook/ads/internal/api/AdComponentViewParentApi;)V
    .locals 0

    .line 62179
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/R8;->A01:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    .line 62180
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/R8;->A00:Lcom/facebook/ads/internal/api/AdComponentView;

    .line 62181
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/R8;->A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    .line 62182
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 62183
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R8;->A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->onAttachedToWindow()V

    .line 62184
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 62185
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R8;->A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->onDetachedFromWindow()V

    .line 62186
    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    .line 62187
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R8;->A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->onMeasure(II)V

    .line 62188
    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    .line 62189
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R8;->A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->onVisibilityChanged(Landroid/view/View;I)V

    .line 62190
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 62191
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R8;->A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->onWindowFocusChanged(Z)V

    .line 62192
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 62193
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R8;->A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62194
    return-void
.end method

.method public final setMeasuredDimension(II)V
    .locals 1

    .line 62195
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R8;->A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->setMeasuredDimension(II)V

    .line 62196
    return-void
.end method
