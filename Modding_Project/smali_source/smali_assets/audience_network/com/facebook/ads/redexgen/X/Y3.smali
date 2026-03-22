.class public abstract Lcom/facebook/ads/redexgen/X/Y3;
.super Landroid/widget/RelativeLayout;
.source ""


# static fields
.field public static final A03:I

.field public static final A04:I

.field public static final A05:I


# instance fields
.field public A00:Z

.field public final A01:Lcom/facebook/ads/redexgen/X/dL;

.field public final A02:Lcom/facebook/ads/redexgen/X/Y2;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 2381
    const/high16 v1, 0x40800000    # 4.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Y3;->A04:I

    .line 2382
    const/high16 v1, 0x42200000    # 40.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Y3;->A05:I

    .line 2383
    const/high16 v1, 0x41c00000    # 24.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Y3;->A03:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 73052
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 73053
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A00:Z

    .line 73054
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Y3;->A01:Lcom/facebook/ads/redexgen/X/dL;

    .line 73055
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Y3;->A01:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Y2;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Y2;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A02:Lcom/facebook/ads/redexgen/X/Y2;

    .line 73056
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A02:Lcom/facebook/ads/redexgen/X/Y2;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/Y2;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73057
    return-void
.end method


# virtual methods
.method public final A00(ZZ)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 5

    .line 73058
    sget v1, Lcom/facebook/ads/redexgen/X/Y3;->A05:I

    sget v0, Lcom/facebook/ads/redexgen/X/Y3;->A03:I

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 73059
    .local v0, "buttonLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v3, Lcom/facebook/ads/redexgen/X/Y3;->A04:I

    sget v2, Lcom/facebook/ads/redexgen/X/Y3;->A04:I

    sget v1, Lcom/facebook/ads/redexgen/X/Y3;->A04:I

    sget v0, Lcom/facebook/ads/redexgen/X/Y3;->A04:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 73060
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A00:Z

    if-eqz v0, :cond_2

    .line 73061
    if-eqz p1, :cond_1

    const/16 v0, 0xc

    .line 73062
    :goto_0
    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 73063
    if-eqz p2, :cond_0

    const/16 v0, 0xb

    .line 73064
    :goto_1
    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 73065
    .end local v1
    :goto_2
    return-object v4

    .line 73066
    :cond_0
    const/16 v0, 0x9

    goto :goto_1

    .line 73067
    :cond_1
    const/16 v0, 0xa

    goto :goto_0

    .line 73068
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Y3;->getMediaViewId()I

    move-result v1

    .line 73069
    .local v1, "mediaViewId":I
    if-eqz p1, :cond_4

    const/16 v0, 0x8

    .line 73070
    :goto_3
    invoke-virtual {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 73071
    if-eqz p2, :cond_3

    const/4 v0, 0x7

    .line 73072
    :goto_4
    invoke-virtual {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_2

    .line 73073
    :cond_3
    const/4 v0, 0x5

    goto :goto_4

    .line 73074
    :cond_4
    const/4 v0, 0x6

    goto :goto_3
.end method

.method public A0A()V
    .locals 0

    .line 73075
    return-void
.end method

.method public A0B()V
    .locals 0

    .line 73076
    return-void
.end method

.method public A0C()V
    .locals 3

    .line 73077
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A02:Lcom/facebook/ads/redexgen/X/Y2;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0H(Landroid/view/View;)V

    .line 73078
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Y3;->A02:Lcom/facebook/ads/redexgen/X/Y2;

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Y3;->A00(ZZ)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Y2;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73079
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A02:Lcom/facebook/ads/redexgen/X/Y2;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Y3;->addView(Landroid/view/View;)V

    .line 73080
    return-void
.end method

.method public A0D()Z
    .locals 1

    .line 73081
    const/4 v0, 0x1

    return v0
.end method

.method public A0E()Z
    .locals 1

    .line 73082
    const/4 v0, 0x1

    return v0
.end method

.method public abstract getMediaViewId()I
.end method

.method public final onMeasure(II)V
    .locals 2

    .line 73083
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 73084
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Y3;->A0E()Z

    move-result v1

    .line 73085
    .local v0, "newShouldLayoutButtonsRelativeToParent":Z
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A00:Z

    if-eq v1, v0, :cond_0

    .line 73086
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Y3;->A00:Z

    .line 73087
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Y3;->A0C()V

    .line 73088
    :cond_0
    return-void
.end method
