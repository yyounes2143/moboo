.class public final Lcom/facebook/ads/redexgen/X/RM;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/NativeAdViewApi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 62627
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/NativeAdView$Type;Lcom/facebook/ads/NativeAdViewAttributes;)Landroid/view/View;
    .locals 4

    .line 62628
    if-nez p3, :cond_0

    .line 62629
    new-instance p3, Lcom/facebook/ads/NativeAdViewAttributes;

    invoke-direct {p3}, Lcom/facebook/ads/NativeAdViewAttributes;-><init>()V

    .line 62630
    :cond_0
    invoke-virtual {p3}, Lcom/facebook/ads/NativeAdViewAttributes;->getInternalAttributes()Lcom/facebook/ads/internal/api/NativeAdViewAttributesApi;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Ur;

    .line 62631
    .local v0, "internalAttributes":Lcom/facebook/ads/redexgen/X/Ur;
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0L(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/Qc;

    move-result-object v1

    .line 62632
    .local v1, "internalNativeAd":Lcom/facebook/ads/redexgen/X/Qc;
    invoke-virtual {p2}, Lcom/facebook/ads/NativeAdView$Type;->getEnumCode()I

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Us;->A00(I)Lcom/facebook/ads/redexgen/X/Us;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Qc;->A1a(Lcom/facebook/ads/redexgen/X/Us;)V

    .line 62633
    invoke-virtual {v1, v2}, Lcom/facebook/ads/redexgen/X/Qc;->A1Z(Lcom/facebook/ads/redexgen/X/Ur;)V

    .line 62634
    new-instance v0, Lcom/facebook/ads/redexgen/X/6Q;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/6Q;-><init>()V

    .line 62635
    .local v2, "mediumRectTemplateLayoutApi":Lcom/facebook/ads/redexgen/X/6Q;
    new-instance v3, Lcom/facebook/ads/NativeAdLayout;

    invoke-direct {v3, p0, v0}, Lcom/facebook/ads/NativeAdLayout;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/api/NativeAdLayoutApi;)V

    .line 62636
    .local v3, "mediumRectTemplateLayout":Lcom/facebook/ads/NativeAdLayout;
    invoke-virtual {v0, v3, p0, p1, v2}, Lcom/facebook/ads/redexgen/X/6Q;->A06(Lcom/facebook/ads/NativeAdLayout;Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/redexgen/X/Ur;)V

    .line 62637
    sget v1, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    .line 62638
    invoke-virtual {p2}, Lcom/facebook/ads/NativeAdView$Type;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v1, v0

    float-to-int v2, v1

    const/4 v1, -0x1

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 62639
    invoke-virtual {v3, v0}, Lcom/facebook/ads/NativeAdLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62640
    return-object v3
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/NativeAdViewAttributes;)Landroid/view/View;
    .locals 3

    .line 62641
    if-nez p2, :cond_0

    .line 62642
    new-instance p2, Lcom/facebook/ads/NativeAdViewAttributes;

    invoke-direct {p2}, Lcom/facebook/ads/NativeAdViewAttributes;-><init>()V

    .line 62643
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0L(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/Qc;

    move-result-object v1

    .line 62644
    .local v0, "internalNativeAd":Lcom/facebook/ads/redexgen/X/Qc;
    invoke-virtual {p2}, Lcom/facebook/ads/NativeAdViewAttributes;->getInternalAttributes()Lcom/facebook/ads/internal/api/NativeAdViewAttributesApi;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Ur;

    .line 62645
    .local v1, "internalAttributes":Lcom/facebook/ads/redexgen/X/Ur;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Us;->A0B:Lcom/facebook/ads/redexgen/X/Us;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Qc;->A1a(Lcom/facebook/ads/redexgen/X/Us;)V

    .line 62646
    invoke-virtual {v1, v2}, Lcom/facebook/ads/redexgen/X/Qc;->A1Z(Lcom/facebook/ads/redexgen/X/Ur;)V

    .line 62647
    new-instance v1, Lcom/facebook/ads/redexgen/X/6Q;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/6Q;-><init>()V

    .line 62648
    .local v2, "mediumRectTemplateLayoutApi":Lcom/facebook/ads/redexgen/X/6Q;
    new-instance v0, Lcom/facebook/ads/NativeAdLayout;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/NativeAdLayout;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/api/NativeAdLayoutApi;)V

    .line 62649
    .local p0, "mediumRectTemplateLayout":Lcom/facebook/ads/NativeAdLayout;
    invoke-virtual {v1, v0, p0, p1, v2}, Lcom/facebook/ads/redexgen/X/6Q;->A06(Lcom/facebook/ads/NativeAdLayout;Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/redexgen/X/Ur;)V

    .line 62650
    return-object v0
.end method


# virtual methods
.method public final render(Landroid/content/Context;Lcom/facebook/ads/NativeAd;)Landroid/view/View;
    .locals 1

    .line 62651
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/RM;->render(Landroid/content/Context;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/NativeAdViewAttributes;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final render(Landroid/content/Context;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/NativeAdView$Type;)Landroid/view/View;
    .locals 1

    .line 62652
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/RM;->render(Landroid/content/Context;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/NativeAdView$Type;Lcom/facebook/ads/NativeAdViewAttributes;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final render(Landroid/content/Context;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/NativeAdView$Type;Lcom/facebook/ads/NativeAdViewAttributes;)Landroid/view/View;
    .locals 2

    .line 62653
    :try_start_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/RB;->A03(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-static {v0, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/RM;->A00(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/NativeAdView$Type;Lcom/facebook/ads/NativeAdViewAttributes;)Landroid/view/View;

    move-result-object v0

    return-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62654
    :catchall_0
    move-exception v1

    .line 62655
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/RB;->A03(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    .line 62656
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/YB;->A00(Lcom/facebook/ads/redexgen/X/dL;Ljava/lang/Throwable;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final render(Landroid/content/Context;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/NativeAdViewAttributes;)Landroid/view/View;
    .locals 2

    .line 62657
    .local v0, "contextWrapper":Lcom/facebook/ads/redexgen/X/dL;
    :try_start_0
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/dL;

    if-eqz v0, :cond_0

    .line 62658
    move-object v0, p1

    check-cast v0, Lcom/facebook/ads/redexgen/X/dL;

    .line 62659
    :goto_0
    invoke-static {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/RM;->A01(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/NativeAdViewAttributes;)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 62660
    :cond_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/RB;->A03(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    goto :goto_0

    .line 62661
    :goto_1
    return-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62662
    .end local v0    # "contextWrapper":Lcom/facebook/ads/redexgen/X/dL;
    :catchall_0
    move-exception v1

    .line 62663
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/RB;->A03(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    .line 62664
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/YB;->A00(Lcom/facebook/ads/redexgen/X/dL;Ljava/lang/Throwable;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
