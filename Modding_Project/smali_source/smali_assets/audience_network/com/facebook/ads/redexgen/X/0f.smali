.class public final Lcom/facebook/ads/redexgen/X/0f;
.super Lcom/facebook/ads/redexgen/X/5Q;
.source ""


# static fields
.field public static final A00:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 12
    const/high16 v1, 0x41400000    # 12.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/0f;->A00:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ai;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/FH;)V
    .locals 1

    .line 4974
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/facebook/ads/redexgen/X/5Q;-><init>(Lcom/facebook/ads/redexgen/X/ai;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/FH;)V

    .line 4975
    return-void
.end method


# virtual methods
.method public final A01()Z
    .locals 1

    .line 4976
    const/4 v0, 0x0

    return v0
.end method

.method public final A0C()Z
    .locals 1

    .line 4977
    const/4 v0, 0x0

    return v0
.end method

.method public final A1V(Lcom/facebook/ads/redexgen/X/dL;)V
    .locals 8

    .line 4978
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ae;->getTitleDescContainer()Lcom/facebook/ads/redexgen/X/aQ;

    move-result-object v4

    .line 4979
    .local v0, "titleDescContainer":Lcom/facebook/ads/redexgen/X/aQ;
    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Lcom/facebook/ads/redexgen/X/aQ;->setAlignment(I)V

    .line 4980
    const/4 v7, -0x1

    const/4 v5, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 4981
    .local v2, "adTitleAndDescriptionLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5Q;->getMediaContainer()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v1

    const/16 v0, 0x8

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 4982
    invoke-virtual {v4, v2}, Lcom/facebook/ads/redexgen/X/aQ;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4983
    sget v3, Lcom/facebook/ads/redexgen/X/0f;->A00:I

    sget v2, Lcom/facebook/ads/redexgen/X/0f;->A00:I

    sget v1, Lcom/facebook/ads/redexgen/X/0f;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/0f;->A00:I

    invoke-virtual {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aQ;->setPadding(IIII)V

    .line 4984
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ae;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0P(Landroid/view/View;Landroid/content/Context;)V

    .line 4985
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 4986
    .local v3, "ctaLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5Q;->getMediaContainer()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v0

    invoke-virtual {v1, v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 4987
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ir;->getCtaButton()Lcom/facebook/ads/redexgen/X/KE;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/KE;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4988
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5Q;->getMediaContainer()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/0f;->addView(Landroid/view/View;)V

    .line 4989
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/0f;->addView(Landroid/view/View;)V

    .line 4990
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ir;->getCtaButton()Lcom/facebook/ads/redexgen/X/KE;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/0f;->addView(Landroid/view/View;)V

    .line 4991
    return-void
.end method
