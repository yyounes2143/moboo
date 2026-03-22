.class public final Lcom/facebook/ads/redexgen/X/0e;
.super Lcom/facebook/ads/redexgen/X/5Q;
.source ""


# static fields
.field public static final A00:I

.field public static final A01:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 10
    const/high16 v1, 0x41a00000    # 20.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/0e;->A00:I

    .line 11
    const/high16 v1, 0x41800000    # 16.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/0e;->A01:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ai;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/FH;)V
    .locals 1

    .line 4952
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/facebook/ads/redexgen/X/5Q;-><init>(Lcom/facebook/ads/redexgen/X/ai;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/FH;)V

    .line 4953
    return-void
.end method


# virtual methods
.method public final A02()Z
    .locals 1

    .line 4954
    const/4 v0, 0x0

    return v0
.end method

.method public final A1V(Lcom/facebook/ads/redexgen/X/dL;)V
    .locals 7

    .line 4955
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ae;->getTitleDescContainer()Lcom/facebook/ads/redexgen/X/aQ;

    move-result-object v5

    .line 4956
    .local v0, "titleDescContainer":Lcom/facebook/ads/redexgen/X/aQ;
    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/facebook/ads/redexgen/X/aQ;->setAlignment(I)V

    .line 4957
    const/4 v3, -0x1

    const/4 v2, -0x2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 4958
    .local v2, "adTitleAndDescriptionLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/aQ;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4959
    const/4 v1, 0x0

    sget v0, Lcom/facebook/ads/redexgen/X/0e;->A00:I

    invoke-virtual {v5, v1, v1, v1, v0}, Lcom/facebook/ads/redexgen/X/aQ;->setPadding(IIII)V

    .line 4960
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 4961
    .local v5, "ctaLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ir;->getCtaButton()Lcom/facebook/ads/redexgen/X/KE;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/KE;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4962
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 4963
    .local v6, "adDetails":Landroid/widget/LinearLayout;
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0Q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 4964
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 4965
    .local v3, "adDetailsLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5Q;->getMediaContainer()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v0

    invoke-virtual {v1, v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 4966
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4967
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 4968
    sget v3, Lcom/facebook/ads/redexgen/X/0e;->A01:I

    sget v2, Lcom/facebook/ads/redexgen/X/0e;->A01:I

    sget v1, Lcom/facebook/ads/redexgen/X/0e;->A01:I

    sget v0, Lcom/facebook/ads/redexgen/X/0e;->A01:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 4969
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4970
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ir;->getCtaButton()Lcom/facebook/ads/redexgen/X/KE;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4971
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5Q;->getMediaContainer()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/0e;->addView(Landroid/view/View;)V

    .line 4972
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/0e;->addView(Landroid/view/View;)V

    .line 4973
    return-void
.end method
