.class public final Lcom/facebook/ads/redexgen/X/MZ;
.super Lcom/facebook/ads/redexgen/X/Y3;
.source ""


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Zl;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Landroid/view/View$OnClickListener;)V
    .locals 3

    .line 52361
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Y3;-><init>(Lcom/facebook/ads/redexgen/X/dL;Landroid/view/View$OnClickListener;)V

    .line 52362
    new-instance v0, Lcom/facebook/ads/redexgen/X/Zl;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/Zl;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MZ;->A00:Lcom/facebook/ads/redexgen/X/Zl;

    .line 52363
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/MZ;->A00:Lcom/facebook/ads/redexgen/X/Zl;

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/MZ;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52364
    return-void
.end method


# virtual methods
.method public final A0F(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/MZ;
    .locals 3

    .line 52365
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MZ;->A00:Lcom/facebook/ads/redexgen/X/Zl;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A01:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v2, Lcom/facebook/ads/redexgen/X/KZ;

    invoke-direct {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;-><init>(Lcom/facebook/ads/redexgen/X/Zl;Lcom/facebook/ads/redexgen/X/dL;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MZ;->A00:Lcom/facebook/ads/redexgen/X/Zl;

    .line 52366
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zl;->getHeight()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MZ;->A00:Lcom/facebook/ads/redexgen/X/Zl;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zl;->getWidth()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A05(II)Lcom/facebook/ads/redexgen/X/KZ;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Mm;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Mm;-><init>(Lcom/facebook/ads/redexgen/X/MZ;)V

    .line 52367
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A06(Lcom/facebook/ads/redexgen/X/Zo;)Lcom/facebook/ads/redexgen/X/KZ;

    move-result-object v0

    .line 52368
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/KZ;->A07(Ljava/lang/String;)V

    .line 52369
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Y3;->A0C()V

    .line 52370
    return-object p0
.end method

.method public getMediaViewId()I
    .locals 1

    .line 52371
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MZ;->A00:Lcom/facebook/ads/redexgen/X/Zl;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zl;->getId()I

    move-result v0

    return v0
.end method
