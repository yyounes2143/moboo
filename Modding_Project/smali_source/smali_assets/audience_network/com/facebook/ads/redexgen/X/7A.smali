.class public final Lcom/facebook/ads/redexgen/X/7A;
.super Lcom/facebook/ads/redexgen/X/i6;
.source ""


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/dL;

.field public final A01:Lcom/facebook/ads/redexgen/X/Ur;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/0L;Ljava/util/List;Lcom/facebook/ads/redexgen/X/Ur;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/dL;",
            "Lcom/facebook/ads/redexgen/X/0L;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Qc;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/Ur;",
            ")V"
        }
    .end annotation

    .line 20965
    .local p4, "items":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/mirror/InternalNativeAd;>;"
    invoke-direct {p0, p2, p3, p1}, Lcom/facebook/ads/redexgen/X/i6;-><init>(Lcom/facebook/ads/redexgen/X/0L;Ljava/util/List;Lcom/facebook/ads/redexgen/X/dL;)V

    .line 20966
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7A;->A00:Lcom/facebook/ads/redexgen/X/dL;

    .line 20967
    if-eqz p4, :cond_0

    :goto_0
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/7A;->A01:Lcom/facebook/ads/redexgen/X/Ur;

    .line 20968
    return-void

    .line 20969
    :cond_0
    new-instance p4, Lcom/facebook/ads/redexgen/X/Ur;

    invoke-direct {p4}, Lcom/facebook/ads/redexgen/X/Ur;-><init>()V

    goto :goto_0
.end method

.method private final A00(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/OB;
    .locals 3

    .line 20970
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/7A;->A00:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7A;->A01:Lcom/facebook/ads/redexgen/X/Ur;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Xt;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Xt;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/Ur;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/OB;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/OB;-><init>(Lcom/facebook/ads/internal/api/AdNativeComponentView;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic A0F(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/Qg;
    .locals 1

    .line 20971
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/7A;->A00(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/OB;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A0K(Lcom/facebook/ads/redexgen/X/Qg;I)V
    .locals 0

    .line 20972
    check-cast p1, Lcom/facebook/ads/redexgen/X/OB;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/7A;->A0Q(Lcom/facebook/ads/redexgen/X/OB;I)V

    return-void
.end method

.method public final A0Q(Lcom/facebook/ads/redexgen/X/OB;I)V
    .locals 3

    .line 20973
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/i6;->A0Q(Lcom/facebook/ads/redexgen/X/OB;I)V

    .line 20974
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/OB;->A0p()Lcom/facebook/ads/internal/api/AdNativeComponentView;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Xt;

    .line 20975
    .local v0, "cardView":Lcom/facebook/ads/redexgen/X/Xt;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Xt;->getImageCardView()Landroid/widget/ImageView;

    move-result-object v0

    .line 20976
    .local v1, "imageView":Landroid/widget/ImageView;
    invoke-virtual {p0, v0, p2}, Lcom/facebook/ads/redexgen/X/i6;->A0O(Landroid/widget/ImageView;I)V

    .line 20977
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/i6;->A01:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Qc;

    .line 20978
    .local v2, "mCarouselPosition":Lcom/facebook/ads/redexgen/X/Qc;
    if-eqz v0, :cond_0

    .line 20979
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/i6;->A01:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Qc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qc;->getAdHeadline()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Xt;->setTitle(Ljava/lang/String;)V

    .line 20980
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/i6;->A01:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Qc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qc;->getAdLinkDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Xt;->setSubtitle(Ljava/lang/String;)V

    .line 20981
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/i6;->A01:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Qc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qc;->getAdCallToAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Xt;->setButtonText(Ljava/lang/String;)V

    .line 20982
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/i6;->A01:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Qc;

    .line 20983
    .local p0, "childAd":Lcom/facebook/ads/redexgen/X/Qc;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20984
    .local p1, "clickableViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20985
    invoke-virtual {v1, v2, v2, v0}, Lcom/facebook/ads/redexgen/X/Qc;->A1P(Landroid/view/View;Lcom/facebook/ads/internal/api/AdNativeComponentView;Ljava/util/List;)V

    .line 20986
    return-void
.end method
