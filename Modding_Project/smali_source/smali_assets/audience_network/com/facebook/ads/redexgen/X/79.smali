.class public final Lcom/facebook/ads/redexgen/X/79;
.super Lcom/facebook/ads/redexgen/X/i6;
.source ""


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/dL;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/0L;Ljava/util/List;Lcom/facebook/ads/redexgen/X/dL;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/0L;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Qc;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/dL;",
            ")V"
        }
    .end annotation

    .line 20950
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/mirror/InternalNativeAd;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/i6;-><init>(Lcom/facebook/ads/redexgen/X/0L;Ljava/util/List;Lcom/facebook/ads/redexgen/X/dL;)V

    .line 20951
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/79;->A00:Lcom/facebook/ads/redexgen/X/dL;

    .line 20952
    return-void
.end method

.method private final A00(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/OB;
    .locals 2

    .line 20953
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/79;->A00:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Xz;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/Xz;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/OB;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/OB;-><init>(Lcom/facebook/ads/internal/api/AdNativeComponentView;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic A0F(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/Qg;
    .locals 1

    .line 20954
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/79;->A00(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/OB;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A0K(Lcom/facebook/ads/redexgen/X/Qg;I)V
    .locals 0

    .line 20955
    check-cast p1, Lcom/facebook/ads/redexgen/X/OB;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/79;->A0Q(Lcom/facebook/ads/redexgen/X/OB;I)V

    return-void
.end method

.method public final A0Q(Lcom/facebook/ads/redexgen/X/OB;I)V
    .locals 4

    .line 20956
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/i6;->A0Q(Lcom/facebook/ads/redexgen/X/OB;I)V

    .line 20957
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/OB;->A0p()Lcom/facebook/ads/internal/api/AdNativeComponentView;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/Xz;

    .line 20958
    .local v0, "cardView":Lcom/facebook/ads/redexgen/X/Xz;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Xz;->getImageCardView()Landroid/widget/ImageView;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/YM;

    .line 20959
    .local v1, "imageView":Lcom/facebook/ads/redexgen/X/YM;
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/YM;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 20960
    invoke-virtual {p0, v1, p2}, Lcom/facebook/ads/redexgen/X/i6;->A0O(Landroid/widget/ImageView;I)V

    .line 20961
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/i6;->A01:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Qc;

    .line 20962
    .local v2, "childAd":Lcom/facebook/ads/redexgen/X/Qc;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Qc;->A12()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/79;->A00:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/dL;->A0L(Lcom/facebook/ads/redexgen/X/dL;)V

    .line 20963
    invoke-virtual {v2, v3, v3}, Lcom/facebook/ads/redexgen/X/Qc;->A1O(Landroid/view/View;Lcom/facebook/ads/internal/api/AdNativeComponentView;)V

    .line 20964
    return-void
.end method
