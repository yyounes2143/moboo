.class public final Lcom/facebook/ads/redexgen/X/6Q;
.super Lcom/facebook/ads/redexgen/X/fg;
.source ""


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/dM;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17842
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/fg;-><init>()V

    return-void
.end method


# virtual methods
.method public final A06(Lcom/facebook/ads/NativeAdLayout;Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/redexgen/X/Ur;)V
    .locals 11

    .line 17843
    move-object v2, p0

    new-instance v8, Lcom/facebook/ads/redexgen/X/aK;

    move-object v4, p2

    invoke-direct {v8, v4}, Lcom/facebook/ads/redexgen/X/aK;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    .line 17844
    .local p1, "adIconView":Lcom/facebook/ads/redexgen/X/aK;
    new-instance v9, Lcom/facebook/ads/MediaView;

    invoke-direct {v9, v4}, Lcom/facebook/ads/MediaView;-><init>(Landroid/content/Context;)V

    .line 17845
    .local p2, "mediaView":Lcom/facebook/ads/MediaView;
    new-instance v10, Lcom/facebook/ads/AdOptionsView;

    invoke-direct {v10, v4, p3, p1}, Lcom/facebook/ads/AdOptionsView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAdLayout;)V

    .line 17846
    .local p3, "adOptionsView":Lcom/facebook/ads/AdOptionsView;
    const/16 v0, 0x1c

    move-object v6, p4

    invoke-virtual {v6, v10, v0}, Lcom/facebook/ads/redexgen/X/Ur;->A09(Lcom/facebook/ads/AdOptionsView;I)V

    .line 17847
    invoke-virtual {p3}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0L(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/Qc;

    move-result-object v0

    .line 17848
    .local p5, "internalNativeAd":Lcom/facebook/ads/redexgen/X/Qc;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A18()Lcom/facebook/ads/redexgen/X/Us;

    move-result-object v7

    .line 17849
    .local p6, "viewType":Lcom/facebook/ads/redexgen/X/Us;
    new-instance v3, Lcom/facebook/ads/redexgen/X/EP;

    move-object v5, p3

    move-object v0, v3

    invoke-direct/range {v3 .. v10}, Lcom/facebook/ads/redexgen/X/EP;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/redexgen/X/Ur;Lcom/facebook/ads/redexgen/X/Us;Lcom/facebook/ads/redexgen/X/aK;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/AdOptionsView;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/6Q;->A00:Lcom/facebook/ads/redexgen/X/dM;

    .line 17850
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Ur;->A00()I

    move-result v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0K(Landroid/view/View;I)V

    .line 17851
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/6Q;->A00:Lcom/facebook/ads/redexgen/X/dM;

    .line 17852
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/dM;->getViewsForInteraction()Ljava/util/ArrayList;

    move-result-object v0

    .line 17853
    invoke-virtual {p3, p1, v9, v8, v0}, Lcom/facebook/ads/NativeAd;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Landroid/widget/ImageView;Ljava/util/List;)V

    .line 17854
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 17855
    .local v2, "contentParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v0, 0x11

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 17856
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/6Q;->A00:Lcom/facebook/ads/redexgen/X/dM;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/dM;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/facebook/ads/NativeAdLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 17857
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 17858
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/R8;->onDetachedFromWindow()V

    .line 17859
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Q;->A00:Lcom/facebook/ads/redexgen/X/dM;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/dM;->unregisterView()V

    .line 17860
    return-void
.end method
