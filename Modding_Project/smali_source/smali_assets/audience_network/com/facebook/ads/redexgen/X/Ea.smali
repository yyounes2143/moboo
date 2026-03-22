.class public final Lcom/facebook/ads/redexgen/X/Ea;
.super Lcom/facebook/ads/redexgen/X/aL;
.source ""


# instance fields
.field public final A00:Landroid/widget/ImageView;

.field public final A01:Lcom/facebook/ads/redexgen/X/dL;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;)V
    .locals 4

    .line 34975
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/aL;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    .line 34976
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ea;->A01:Lcom/facebook/ads/redexgen/X/dL;

    .line 34977
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ea;->A00:Landroid/widget/ImageView;

    .line 34978
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ea;->A00:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 34979
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ea;->A00:Landroid/widget/ImageView;

    const/4 v2, -0x2

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/Ea;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 34980
    return-void
.end method


# virtual methods
.method public final A00(Ljava/lang/String;)V
    .locals 3

    .line 34981
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ea;->A00:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ea;->A01:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v0, Lcom/facebook/ads/redexgen/X/KZ;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/KZ;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/dL;)V

    .line 34982
    .local v0, "downloadImageTask":Lcom/facebook/ads/redexgen/X/KZ;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KZ;->A04()Lcom/facebook/ads/redexgen/X/KZ;

    .line 34983
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/KZ;->A07(Ljava/lang/String;)V

    .line 34984
    return-void
.end method
