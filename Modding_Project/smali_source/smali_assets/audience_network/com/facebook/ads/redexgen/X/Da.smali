.class public abstract Lcom/facebook/ads/redexgen/X/Da;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/dc;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/E1;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;)V
    .locals 0

    .line 33871
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 33872
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 33873
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33874
    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 33875
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Da;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33876
    return-void
.end method


# virtual methods
.method public A07()V
    .locals 0

    .line 33877
    return-void
.end method

.method public A08()V
    .locals 0

    .line 33878
    return-void
.end method

.method public final AAm(Lcom/facebook/ads/redexgen/X/E1;)V
    .locals 0

    .line 33879
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Da;->A00:Lcom/facebook/ads/redexgen/X/E1;

    .line 33880
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Da;->A07()V

    .line 33881
    return-void
.end method

.method public final AJk(Lcom/facebook/ads/redexgen/X/E1;)V
    .locals 1

    .line 33882
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Da;->A08()V

    .line 33883
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Da;->A00:Lcom/facebook/ads/redexgen/X/E1;

    .line 33884
    return-void
.end method

.method public getVideoView()Lcom/facebook/ads/redexgen/X/E1;
    .locals 1

    .line 33885
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Da;->A00:Lcom/facebook/ads/redexgen/X/E1;

    return-object v0
.end method
