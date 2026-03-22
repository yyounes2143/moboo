.class public final Lcom/facebook/ads/redexgen/X/EQ;
.super Landroid/widget/LinearLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/dM;


# static fields
.field public static final A03:I

.field public static final A04:I

.field public static final A05:I

.field public static final A06:I

.field public static final A07:I


# instance fields
.field public final A00:Lcom/facebook/ads/NativeBannerAd;

.field public final A01:Lcom/facebook/ads/redexgen/X/dL;

.field public final A02:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 673
    sget v1, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    const/high16 v0, 0x42280000    # 42.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/EQ;->A04:I

    .line 674
    sget v1, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    const/high16 v0, 0x42400000    # 48.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/EQ;->A03:I

    .line 675
    sget v1, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    const/high16 v0, 0x42580000    # 54.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/EQ;->A05:I

    .line 676
    sget v1, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/EQ;->A07:I

    .line 677
    sget v1, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/EQ;->A06:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/NativeBannerAd;Lcom/facebook/ads/redexgen/X/Ur;Lcom/facebook/ads/redexgen/X/Us;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/AdOptionsView;)V
    .locals 13

    .line 34876
    move-object v4, p0

    move-object v8, p1

    invoke-direct {p0, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 34877
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/EQ;->A02:Ljava/util/ArrayList;

    .line 34878
    iput-object p2, v4, Lcom/facebook/ads/redexgen/X/EQ;->A00:Lcom/facebook/ads/NativeBannerAd;

    .line 34879
    iput-object v8, v4, Lcom/facebook/ads/redexgen/X/EQ;->A01:Lcom/facebook/ads/redexgen/X/dL;

    .line 34880
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/EQ;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 34881
    .local v10, "commonLayout":Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 34882
    move-object/from16 v10, p4

    invoke-static {v10}, Lcom/facebook/ads/redexgen/X/EQ;->A00(Lcom/facebook/ads/redexgen/X/Us;)I

    move-result v1

    .line 34883
    .local v12, "iconSize":I
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/EQ;->A01:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v7, Lcom/facebook/ads/redexgen/X/aL;

    invoke-direct {v7, v0}, Lcom/facebook/ads/redexgen/X/aL;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    .line 34884
    .local p0, "iconContainer":Lcom/facebook/ads/redexgen/X/aL;
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/aL;->setFullCircleCorners(Z)V

    .line 34885
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 34886
    .local p2, "iconContainerParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0x10

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 34887
    const/4 v1, -0x1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v5, p5

    invoke-virtual {v7, v5, v0}, Lcom/facebook/ads/redexgen/X/aL;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 34888
    invoke-virtual {v3, v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 34889
    new-instance v7, Lcom/facebook/ads/redexgen/X/dJ;

    iget-object v9, v4, Lcom/facebook/ads/redexgen/X/EQ;->A00:Lcom/facebook/ads/NativeBannerAd;

    const/16 v6, 0x10

    move-object/from16 v11, p3

    move-object/from16 v12, p6

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/dJ;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/NativeBannerAd;Lcom/facebook/ads/redexgen/X/Us;Lcom/facebook/ads/redexgen/X/Ur;Lcom/facebook/ads/AdOptionsView;)V

    .line 34890
    .local v3, "contentView":Landroid/view/View;
    sget v0, Lcom/facebook/ads/redexgen/X/EQ;->A06:I

    invoke-virtual {v7, v0, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 34891
    const/4 v0, -0x2

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 34892
    .local v4, "contentViewParams":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 34893
    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 34894
    invoke-virtual {v3, v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 34895
    sget-object v0, Lcom/facebook/ads/redexgen/X/Us;->A0A:Lcom/facebook/ads/redexgen/X/Us;

    if-ne v10, v0, :cond_0

    .line 34896
    sget v7, Lcom/facebook/ads/redexgen/X/EQ;->A07:I

    sget v6, Lcom/facebook/ads/redexgen/X/EQ;->A07:I

    sget v1, Lcom/facebook/ads/redexgen/X/EQ;->A07:I

    sget v0, Lcom/facebook/ads/redexgen/X/EQ;->A07:I

    invoke-virtual {v4, v7, v6, v1, v0}, Lcom/facebook/ads/redexgen/X/EQ;->setPadding(IIII)V

    .line 34897
    invoke-virtual {v4, v2}, Lcom/facebook/ads/redexgen/X/EQ;->setOrientation(I)V

    .line 34898
    const/4 v1, -0x1

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 34899
    .local v5, "commonLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v0, -0x2

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 34900
    .local v6, "ctaButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/EQ;->A07:I

    invoke-virtual {v3, v2, v2, v0, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 34901
    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 34902
    invoke-virtual {v4, v3, v7}, Lcom/facebook/ads/redexgen/X/EQ;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 34903
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/EQ;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 34904
    .local v7, "ctaButton":Landroid/widget/TextView;
    sget v3, Lcom/facebook/ads/redexgen/X/EQ;->A06:I

    sget v2, Lcom/facebook/ads/redexgen/X/EQ;->A07:I

    sget v1, Lcom/facebook/ads/redexgen/X/EQ;->A06:I

    .end local v3    # "contentView":Landroid/view/View;
    .local p3, "contentView":Landroid/view/View;
    sget v0, Lcom/facebook/ads/redexgen/X/EQ;->A07:I

    invoke-virtual {v7, v3, v2, v1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 34905
    invoke-virtual {v11, v7}, Lcom/facebook/ads/redexgen/X/Ur;->A05(Landroid/widget/TextView;)V

    .line 34906
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/EQ;->A00:Lcom/facebook/ads/NativeBannerAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeBannerAd;->getAdCallToAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34907
    invoke-virtual {v4, v7, v6}, Lcom/facebook/ads/redexgen/X/EQ;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 34908
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/EQ;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34909
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/EQ;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34910
    return-void

    .line 34911
    .end local v5    # "commonLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v6    # "ctaButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    sget v7, Lcom/facebook/ads/redexgen/X/EQ;->A06:I

    sget v6, Lcom/facebook/ads/redexgen/X/EQ;->A06:I

    sget v1, Lcom/facebook/ads/redexgen/X/EQ;->A06:I

    sget v0, Lcom/facebook/ads/redexgen/X/EQ;->A06:I

    invoke-virtual {v4, v7, v6, v1, v0}, Lcom/facebook/ads/redexgen/X/EQ;->setPadding(IIII)V

    .line 34912
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/EQ;->setOrientation(I)V

    .line 34913
    const/4 v1, -0x1

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 34914
    .restart local v5    # "commonLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v0, -0x2

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 34915
    .restart local v6    # "ctaButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/EQ;->A06:I

    invoke-virtual {v3, v2, v2, v2, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_0
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/Us;)I
    .locals 2

    .line 34916
    sget-object v1, Lcom/facebook/ads/redexgen/X/dK;->A00:[I

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Us;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 34917
    sget v0, Lcom/facebook/ads/redexgen/X/EQ;->A05:I

    return v0

    .line 34918
    :pswitch_0
    sget v0, Lcom/facebook/ads/redexgen/X/EQ;->A03:I

    return v0

    .line 34919
    :pswitch_1
    sget v0, Lcom/facebook/ads/redexgen/X/EQ;->A04:I

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 0

    .line 34920
    return-object p0
.end method

.method public getViewsForInteraction()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 34921
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EQ;->A02:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final unregisterView()V
    .locals 1

    .line 34922
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EQ;->A00:Lcom/facebook/ads/NativeBannerAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeBannerAd;->unregisterView()V

    .line 34923
    return-void
.end method
