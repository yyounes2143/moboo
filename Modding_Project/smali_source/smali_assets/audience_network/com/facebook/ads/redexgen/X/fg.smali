.class public Lcom/facebook/ads/redexgen/X/fg;
.super Lcom/facebook/ads/redexgen/X/R8;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/NativeAdLayoutApi;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Landroid/view/View;

.field public A03:Lcom/facebook/ads/NativeAdLayout;

.field public A04:Z

.field public A05:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 81121
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/R8;-><init>()V

    .line 81122
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/fg;->A01:I

    .line 81123
    iput v0, p0, Lcom/facebook/ads/redexgen/X/fg;->A00:I

    .line 81124
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/fg;->A05:Z

    .line 81125
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/fg;->A04:Z

    return-void
.end method


# virtual methods
.method public final A02()V
    .locals 2

    .line 81126
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fg;->A03:Lcom/facebook/ads/NativeAdLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0R(Landroid/view/ViewGroup;)V

    .line 81127
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fg;->A03:Lcom/facebook/ads/NativeAdLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fg;->A02:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/NativeAdLayout;->removeView(Landroid/view/View;)V

    .line 81128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/fg;->A02:Landroid/view/View;

    .line 81129
    return-void
.end method

.method public final A03(Lcom/facebook/ads/redexgen/X/Yd;)V
    .locals 2

    .line 81130
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/fg;->A02:Landroid/view/View;

    .line 81131
    const/4 v1, -0x1

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Yd;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81132
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fg;->A03:Lcom/facebook/ads/NativeAdLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0R(Landroid/view/ViewGroup;)V

    .line 81133
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fg;->A03:Lcom/facebook/ads/NativeAdLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fg;->A02:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/NativeAdLayout;->addView(Landroid/view/View;)V

    .line 81134
    return-void
.end method

.method public final A04()Z
    .locals 1

    .line 81135
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/fg;->A04:Z

    return v0
.end method

.method public final A05()Z
    .locals 1

    .line 81136
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/fg;->A05:Z

    return v0
.end method

.method public final getAdComponentViewApi()Lcom/facebook/ads/internal/api/AdComponentViewApi;
    .locals 0

    .line 81137
    return-object p0
.end method

.method public final initialize(Lcom/facebook/ads/NativeAdLayout;)V
    .locals 0

    .line 81138
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/fg;->A03:Lcom/facebook/ads/NativeAdLayout;

    .line 81139
    return-void
.end method

.method public final onMeasure(II)V
    .locals 2

    .line 81140
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/R8;->onMeasure(II)V

    .line 81141
    iget v0, p0, Lcom/facebook/ads/redexgen/X/fg;->A00:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fg;->A03:Lcom/facebook/ads/NativeAdLayout;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdLayout;->getMeasuredWidth()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/fg;->A00:I

    if-le v1, v0, :cond_1

    .line 81142
    iget v1, p0, Lcom/facebook/ads/redexgen/X/fg;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fg;->A03:Lcom/facebook/ads/NativeAdLayout;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdLayout;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/R8;->setMeasuredDimension(II)V

    .line 81143
    :cond_0
    :goto_0
    return-void

    .line 81144
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fg;->A03:Lcom/facebook/ads/NativeAdLayout;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdLayout;->getMeasuredWidth()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/fg;->A01:I

    if-ge v1, v0, :cond_0

    .line 81145
    iget v1, p0, Lcom/facebook/ads/redexgen/X/fg;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fg;->A03:Lcom/facebook/ads/NativeAdLayout;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdLayout;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/R8;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public final setMaxWidth(I)V
    .locals 1

    .line 81146
    iput p1, p0, Lcom/facebook/ads/redexgen/X/fg;->A00:I

    .line 81147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/fg;->A04:Z

    .line 81148
    return-void
.end method

.method public final setMinWidth(I)V
    .locals 1

    .line 81149
    iput p1, p0, Lcom/facebook/ads/redexgen/X/fg;->A01:I

    .line 81150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/fg;->A05:Z

    .line 81151
    return-void
.end method
