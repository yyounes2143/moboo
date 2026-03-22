.class public final Lcom/facebook/ads/redexgen/X/Xt;
.super Lcom/facebook/ads/internal/api/AdNativeComponentView;
.source ""


# static fields
.field public static A08:[Ljava/lang/String;

.field public static final A09:I

.field public static final A0A:I

.field public static final A0B:I

.field public static final A0C:I

.field public static final A0D:I

.field public static final A0E:I

.field public static final A0F:I

.field public static final A0G:I

.field public static final A0H:I


# instance fields
.field public final A00:Landroid/widget/LinearLayout;

.field public final A01:Landroid/widget/RelativeLayout;

.field public final A02:Landroid/widget/RelativeLayout;

.field public final A03:Landroid/widget/TextView;

.field public final A04:Landroid/widget/TextView;

.field public final A05:Landroid/widget/TextView;

.field public final A06:Lcom/facebook/ads/redexgen/X/Ur;

.field public final A07:Lcom/facebook/ads/redexgen/X/La;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 2369
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "cqqrkZtRQb88kyLB6Q2uvm01R0QnuoNK"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Nq3CfSfg25oVaXc5kCSSNTYEBmLkWVpQ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Ug05W3SKca0ZbWrt9dtmEm51Q"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "w8D7pTd1AENWsOJ7Gbtv6zmPYShcD12"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Jz7rkQN0I2l0GA78AAlVWxdn72"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "N7yF5pKoWcUwU52GLomX8fL4MB9AuJQz"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "7uQymxnuKPwGh5iPF3bNh6uz1YyZJI6b"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "PV6rNOTmS7sV6l09QwDyTUKdw7Zl10tb"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Xt;->A08:[Ljava/lang/String;

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    float-to-int v0, v0

    mul-int/lit16 v0, v0, 0x1f4

    sput v0, Lcom/facebook/ads/redexgen/X/Xt;->A09:I

    .line 2370
    sget v1, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    const/high16 v0, 0x43fa0000    # 500.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Xt;->A0H:I

    .line 2371
    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Xt;->A0D:I

    .line 2372
    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Xt;->A0B:I

    .line 2373
    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Xt;->A0G:I

    .line 2374
    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Xt;->A0E:I

    .line 2375
    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Xt;->A0C:I

    .line 2376
    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Xt;->A0F:I

    .line 2377
    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    float-to-double v2, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v0

    double-to-int v0, v2

    sput v0, Lcom/facebook/ads/redexgen/X/Xt;->A0A:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/Ur;)V
    .locals 1

    .line 72828
    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/api/AdNativeComponentView;-><init>(Landroid/content/Context;)V

    .line 72829
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Xt;->A06:Lcom/facebook/ads/redexgen/X/Ur;

    .line 72830
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Xt;->A05:Landroid/widget/TextView;

    .line 72831
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Xt;->A04:Landroid/widget/TextView;

    .line 72832
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Xt;->A03:Landroid/widget/TextView;

    .line 72833
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Xt;->A02:Landroid/widget/RelativeLayout;

    .line 72834
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Xt;->A00:Landroid/widget/LinearLayout;

    .line 72835
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Xt;->A01:Landroid/widget/RelativeLayout;

    .line 72836
    new-instance v0, Lcom/facebook/ads/redexgen/X/La;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/La;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Xt;->A07:Lcom/facebook/ads/redexgen/X/La;

    .line 72837
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Xt;->A09()V

    .line 72838
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Xt;->A0D()V

    .line 72839
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Xt;->A05()V

    .line 72840
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Xt;->A0A()V

    .line 72841
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Xt;->A00()V

    .line 72842
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Xt;->A0B()V

    .line 72843
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Xt;->A03()V

    .line 72844
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Xt;->A0A()V

    .line 72845
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Xt;->A08()V

    .line 72846
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Xt;->A0C()V

    .line 72847
    return-void
.end method

.method private A00()V
    .locals 3

    .line 72848
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 72849
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 72850
    const/4 v0, 0x1

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 72851
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Xt;->A00:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xt;->A01:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72852
    return-void
.end method

.method private A01()V
    .locals 6

    .line 72853
    const/4 v3, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 72854
    .local v0, "ctaParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xt;->A04:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 72855
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xt;->A03:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0H(Landroid/view/View;)V

    .line 72856
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Xt;->A02:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xt;->A03:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72857
    const/4 v0, -0x1

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 72858
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Xt;->A02:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72859
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Xt;->A02:Landroid/widget/RelativeLayout;

    sget v3, Lcom/facebook/ads/redexgen/X/Xt;->A0G:I

    sget v2, Lcom/facebook/ads/redexgen/X/Xt;->A0G:I

    sget v1, Lcom/facebook/ads/redexgen/X/Xt;->A0G:I

    sget v0, Lcom/facebook/ads/redexgen/X/Xt;->A0G:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 72860
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xt;->A02:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0H(Landroid/view/View;)V

    .line 72861
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Xt;->A00:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xt;->A02:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72862
    return-void
.end method

.method private A02()V
    .locals 5

    .line 72863
    const/4 v0, -0x2

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 72864
    .local v0, "ctaParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v3, Lcom/facebook/ads/redexgen/X/Xt;->A0B:I

    sget v2, Lcom/facebook/ads/redexgen/X/Xt;->A0D:I

    sget v1, Lcom/facebook/ads/redexgen/X/Xt;->A0B:I

    sget v0, Lcom/facebook/ads/redexgen/X/Xt;->A0D:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 72865
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xt;->A03:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0H(Landroid/view/View;)V

    .line 72866
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Xt;->A00:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xt;->A03:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72867
    return-void
.end method

.method private A03()V
    .locals 3

    .line 72868
    const/4 v1, -0x2

    const/4 v0, -0x1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 72869
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Xt;->A01:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xt;->A07:Lcom/facebook/ads/redexgen/X/La;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72870
    return-void
.end method

.method private A04()V
    .locals 5

    .line 72871
    const/4 v0, -0x2

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 72872
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xt;->A07:Lcom/facebook/ads/redexgen/X/La;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/La;->getId()I

    move-result v1

    const/16 v0, 0x8

    invoke-virtual {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 72873
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xt;->A07:Lcom/facebook/ads/redexgen/X/La;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/La;->getId()I

    move-result v1

    const/4 v0, 0x5

    invoke-virtual {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 72874
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xt;->A07:Lcom/facebook/ads/redexgen/X/La;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/La;->getId()I

    move-result v1

    const/4 v0, 0x7

    invoke-virtual {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 72875
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Xt;->A02:Landroid/widget/RelativeLayout;

    sget v2, Lcom/facebook/ads/redexgen/X/Xt;->A0G:I

    sget v0, Lcom/facebook/ads/redexgen/X/Xt;->A0G:I

    const/4 v1, 0x0

    invoke-virtual {v3, v2, v1, v0, v1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 72876
    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/high16 v0, -0x34000000    # -3.3554432E7f

    filled-new-array {v0, v1}, [I

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 72877
    .local v1, "shape":Landroid/graphics/drawable/GradientDrawable;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xt;->A02:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72878
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xt;->A02:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0H(Landroid/view/View;)V

    .line 72879
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Xt;->A01:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xt;->A02:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72880
    return-void
.end method

.method private A05()V
    .locals 2

    .line 72881
    const/4 v0, -0x2

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 72882
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xt;->A00:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Xt;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72883
    return-void
.end method

.method private A06()V
    .locals 2

    .line 72884
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xt;->A05:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72885
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xt;->A04:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72886
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Xt;->A03:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xt;->A06:Lcom/facebook/ads/redexgen/X/Ur;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ur;->A03()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72887
    return-void
.end method

.method private A07()V
    .locals 3

    .line 72888
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Xt;->A07:Lcom/facebook/ads/redexgen/X/La;

    sget v0, Lcom/facebook/ads/redexgen/X/Xt;->A0H:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/La;->setMaxWidth(I)V

    .line 72889
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Xt;->A05:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Xt;->A06:Lcom/facebook/ads/redexgen/X/Ur;

    const v0, 0x3e4ccccd    # 0.2f

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ur;->A04(F)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72890
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Xt;->A04:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Xt;->A06:Lcom/facebook/ads/redexgen/X/Ur;

    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ur;->A04(F)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72891
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Xt;->A03:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xt;->A06:Lcom/facebook/ads/redexgen/X/Ur;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ur;->A03()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72892
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xt;->A01:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, 0x1

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 72893
    return-void
.end method

.method private A08()V
    .locals 5

    .line 72894
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Xt;->A03:Landroid/widget/TextView;

    sget v3, Lcom/facebook/ads/redexgen/X/Xt;->A0C:I

    sget v2, Lcom/facebook/ads/redexgen/X/Xt;->A0C:I

    sget v1, Lcom/facebook/ads/redexgen/X/Xt;->A0C:I

    sget v0, Lcom/facebook/ads/redexgen/X/Xt;->A0C:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 72895
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Xt;->A03:Landroid/widget/TextView;

    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 72896
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xt;->A03:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0I(Landroid/view/View;)V

    .line 72897
    return-void
.end method

.method private A09()V
    .locals 4

    .line 72898
    const/4 v2, -0x2

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Xt;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72899
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 72900
    .local v0, "shape":Landroid/graphics/drawable/GradientDrawable;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xt;->A06:Lcom/facebook/ads/redexgen/X/Ur;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ur;->A01()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 72901
    sget v0, Lcom/facebook/ads/redexgen/X/Xt;->A0F:I

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 72902
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xt;->A06:Lcom/facebook/ads/redexgen/X/Ur;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ur;->A02()I

    move-result v1

    const/4 v0, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 72903
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/Xt;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72904
    sget v3, Lcom/facebook/ads/redexgen/X/Xt;->A0A:I

    sget v2, Lcom/facebook/ads/redexgen/X/Xt;->A0A:I

    sget v1, Lcom/facebook/ads/redexgen/X/Xt;->A0A:I

    sget v0, Lcom/facebook/ads/redexgen/X/Xt;->A0A:I

    invoke-virtual {p0, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xt;->setPadding(IIII)V

    .line 72905
    return-void
.end method

.method private A0A()V
    .locals 1

    .line 72906
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xt;->A01:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0I(Landroid/view/View;)V

    .line 72907
    return-void
.end method

.method private A0B()V
    .locals 7

    .line 72908
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Xt;->A07:Lcom/facebook/ads/redexgen/X/La;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/La;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 72909
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Xt;->A07:Lcom/facebook/ads/redexgen/X/La;

    sget v0, Lcom/facebook/ads/redexgen/X/Xt;->A0F:I

    int-to-float v2, v0

    sget v0, Lcom/facebook/ads/redexgen/X/Xt;->A0F:I

    int-to-float v6, v0

    sget v0, Lcom/facebook/ads/redexgen/X/Xt;->A0F:I

    int-to-float v4, v0

    sget v0, Lcom/facebook/ads/redexgen/X/Xt;->A0F:I

    int-to-float v1, v0

    const/16 v0, 0x8

    new-array v3, v0, [F

    const/4 v0, 0x0

    aput v2, v3, v0

    const/4 v2, 0x1

    aput v6, v3, v2

    const/4 v0, 0x2

    aput v4, v3, v0

    const/4 v0, 0x3

    aput v1, v3, v0

    const/4 v0, 0x4

    const/4 v1, 0x0

    aput v1, v3, v0

    const/4 v0, 0x5

    aput v1, v3, v0

    const/4 v0, 0x6

    aput v1, v3, v0

    const/4 v0, 0x7

    aput v1, v3, v0

    invoke-virtual {v5, v3}, Lcom/facebook/ads/redexgen/X/aK;->setRadius([F)V

    .line 72910
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xt;->A07:Lcom/facebook/ads/redexgen/X/La;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/La;->setAdjustViewBounds(Z)V

    .line 72911
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Xt;->A07:Lcom/facebook/ads/redexgen/X/La;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Wq;->A0B:Lcom/facebook/ads/redexgen/X/Wq;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Wq;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Wq;)V

    .line 72912
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xt;->A07:Lcom/facebook/ads/redexgen/X/La;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0I(Landroid/view/View;)V

    .line 72913
    return-void
.end method

.method private A0C()V
    .locals 6

    .line 72914
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xt;->A02:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0I(Landroid/view/View;)V

    .line 72915
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Xt;->A05:Landroid/widget/TextView;

    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 72916
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xt;->A05:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0I(Landroid/view/View;)V

    .line 72917
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xt;->A05:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 72918
    const/4 v4, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 72919
    .local v0, "titleParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Xt;->A0E:I

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 72920
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Xt;->A02:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xt;->A05:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72921
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Xt;->A04:Landroid/widget/TextView;

    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 72922
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xt;->A04:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0I(Landroid/view/View;)V

    .line 72923
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xt;->A04:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 72924
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 72925
    .local v1, "subTitleParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xt;->A05:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 72926
    sget v0, Lcom/facebook/ads/redexgen/X/Xt;->A0E:I

    invoke-virtual {v2, v3, v3, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 72927
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Xt;->A02:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xt;->A04:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72928
    return-void
.end method

.method private A0D()V
    .locals 2

    .line 72929
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Xt;->A00:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 72930
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xt;->A00:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0I(Landroid/view/View;)V

    .line 72931
    return-void
.end method


# virtual methods
.method public getAdContentsView()Landroid/view/View;
    .locals 1

    .line 72932
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xt;->A07:Lcom/facebook/ads/redexgen/X/La;

    return-object v0
.end method

.method public getImageCardView()Landroid/widget/ImageView;
    .locals 1

    .line 72933
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xt;->A07:Lcom/facebook/ads/redexgen/X/La;

    return-object v0
.end method

.method public final onMeasure(II)V
    .locals 2

    .line 72934
    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    float-to-int v1, v0

    .line 72935
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Xt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A0F(Landroid/content/Context;)I

    move-result v0

    mul-int/2addr v1, v0

    .line 72936
    .local v0, "heightThreshold":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 72937
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 72938
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Xt;->A01()V

    .line 72939
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Xt;->A07()V

    .line 72940
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/internal/api/AdNativeComponentView;->onMeasure(II)V

    .line 72941
    return-void

    .line 72942
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Xt;->A02()V

    .line 72943
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Xt;->A04()V

    .line 72944
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Xt;->A06()V

    goto :goto_0
.end method

.method public setButtonText(Ljava/lang/String;)V
    .locals 4

    .line 72945
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72946
    .end local v0
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Xt;->A03:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72947
    return-void

    .line 72948
    :cond_1
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 72949
    .local v0, "spanString":Landroid/text/SpannableString;
    const/4 v0, 0x1

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v1

    const/4 v0, 0x0

    invoke-virtual {v3, v2, v0, v1, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 72950
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xt;->A03:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72951
    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 3

    .line 72952
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72953
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Xt;->A04:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72954
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xt;->A04:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/Xt;->A08:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    .line 72955
    sget-object v2, Lcom/facebook/ads/redexgen/X/Xt;->A08:[Ljava/lang/String;

    const-string v1, "tjmDQp9WMGCYDxrOu8tbgj2JMnaMPXF"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2

    .line 72956
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72957
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Xt;->A05:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72958
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xt;->A05:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72959
    return-void
.end method
