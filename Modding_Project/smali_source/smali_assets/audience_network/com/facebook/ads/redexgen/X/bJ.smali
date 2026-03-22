.class public final Lcom/facebook/ads/redexgen/X/bJ;
.super Landroid/widget/FrameLayout;
.source ""


# static fields
.field public static final A03:I

.field public static final A04:I

.field public static final A05:I

.field public static final A06:I

.field public static final A07:I


# instance fields
.field public final A00:I

.field public final A01:Landroid/widget/RelativeLayout;

.field public final A02:Lcom/facebook/ads/redexgen/X/KE;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 2518
    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    const/high16 v1, 0x42100000    # 36.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/bJ;->A05:I

    .line 2519
    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/bJ;->A06:I

    .line 2520
    sget v1, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    const/high16 v0, 0x41b80000    # 23.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/bJ;->A03:I

    .line 2521
    sget v1, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/bJ;->A04:I

    .line 2522
    const/high16 v1, 0x40800000    # 4.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/bJ;->A07:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/KE;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/eX;Lcom/facebook/ads/redexgen/X/XH;Lcom/facebook/ads/redexgen/X/My;Lcom/facebook/ads/redexgen/X/a4;)V
    .locals 15

    .line 76852
    move-object v3, p0

    move-object/from16 v7, p1

    invoke-direct {p0, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 76853
    const/4 v5, 0x1

    move-object/from16 v0, p8

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/My;->A09(Z)I

    move-result v0

    iput v0, v3, Lcom/facebook/ads/redexgen/X/bJ;->A00:I

    .line 76854
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v7}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/bJ;->A01:Landroid/widget/RelativeLayout;

    .line 76855
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 76856
    .local p0, "containerParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/bJ;->A01:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0, v1}, Lcom/facebook/ads/redexgen/X/bJ;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76857
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/bJ;->A01:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 76858
    invoke-virtual/range {p3 .. p3}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0J()Lcom/facebook/ads/redexgen/X/Mz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mz;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v7, v0}, Lcom/facebook/ads/redexgen/X/bJ;->A01(Lcom/facebook/ads/redexgen/X/dL;Ljava/lang/String;)V

    .line 76859
    move-object/from16 v0, p2

    if-eqz v0, :cond_0

    .line 76860
    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/bJ;->A02:Lcom/facebook/ads/redexgen/X/KE;

    .line 76861
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/bJ;->A03()V

    .line 76862
    iget-object v4, v3, Lcom/facebook/ads/redexgen/X/bJ;->A02:Lcom/facebook/ads/redexgen/X/KE;

    .line 76863
    invoke-virtual/range {p3 .. p3}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0J()Lcom/facebook/ads/redexgen/X/Mz;

    move-result-object v2

    .line 76864
    invoke-virtual/range {p3 .. p3}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 76865
    move-object/from16 v6, p9

    invoke-virtual {v4, v2, v1, v0, v6}, Lcom/facebook/ads/redexgen/X/KE;->setCta(Lcom/facebook/ads/redexgen/X/Mz;Ljava/lang/String;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/a4;)V

    .line 76866
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/bJ;->A02:Lcom/facebook/ads/redexgen/X/KE;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/KE;->setIsInAppBrowser(Z)V

    .line 76867
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 76868
    .local v1, "ctaButtonParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/bJ;->A02:Lcom/facebook/ads/redexgen/X/KE;

    invoke-virtual {v3, v0, v1}, Lcom/facebook/ads/redexgen/X/bJ;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76869
    return-void

    .line 76870
    :cond_0
    new-instance v6, Lcom/facebook/ads/redexgen/X/KE;

    .line 76871
    invoke-virtual/range {p3 .. p3}, Lcom/facebook/ads/redexgen/X/Mo;->A0r()Ljava/lang/String;

    move-result-object v8

    .line 76872
    invoke-virtual/range {p3 .. p3}, Lcom/facebook/ads/redexgen/X/hy;->A21()Lcom/facebook/ads/redexgen/X/N3;

    move-result-object v14

    const/4 v9, 0x0

    move-object v0, v6

    move-object/from16 v13, p7

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v12, p6

    invoke-direct/range {v6 .. v14}, Lcom/facebook/ads/redexgen/X/KE;-><init>(Lcom/facebook/ads/redexgen/X/dL;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/My;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/eX;Lcom/facebook/ads/redexgen/X/XH;Lcom/facebook/ads/redexgen/X/N3;)V

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/bJ;->A02:Lcom/facebook/ads/redexgen/X/KE;

    goto :goto_0
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/dL;Landroid/view/View;)V
    .locals 6

    .line 76873
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 76874
    .local v0, "arrowButton":Landroid/widget/ImageView;
    sget-object v0, Lcom/facebook/ads/redexgen/X/XX;->A0e:Lcom/facebook/ads/redexgen/X/XX;

    .line 76875
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XY;->A01(Lcom/facebook/ads/redexgen/X/XX;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 76876
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 76877
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setRotation(F)V

    .line 76878
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 76879
    iget v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A00:I

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 76880
    sget v1, Lcom/facebook/ads/redexgen/X/bJ;->A03:I

    sget v0, Lcom/facebook/ads/redexgen/X/bJ;->A03:I

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 76881
    .local v1, "arrowParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v3, Lcom/facebook/ads/redexgen/X/bJ;->A04:I

    sget v2, Lcom/facebook/ads/redexgen/X/bJ;->A04:I

    sget v1, Lcom/facebook/ads/redexgen/X/bJ;->A04:I

    sget v0, Lcom/facebook/ads/redexgen/X/bJ;->A04:I

    invoke-virtual {v5, v3, v2, v1, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 76882
    const/4 v1, 0x2

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v4, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 76883
    const/16 v0, 0xe

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 76884
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A01:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76885
    return-void
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/dL;Ljava/lang/String;)V
    .locals 4

    .line 76886
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 76887
    .local v0, "innerCta":Landroid/widget/TextView;
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/XP;->A0I(Landroid/view/View;)V

    .line 76888
    sget v2, Lcom/facebook/ads/redexgen/X/bJ;->A06:I

    const/4 v1, 0x0

    sget v0, Lcom/facebook/ads/redexgen/X/bJ;->A06:I

    invoke-virtual {v3, v2, v1, v0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 76889
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76890
    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 76891
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 76892
    iget v1, p0, Lcom/facebook/ads/redexgen/X/bJ;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/bJ;->A07:I

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0M(Landroid/view/View;II)V

    .line 76893
    const/high16 v0, -0x1000000

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76894
    const/4 v2, -0x2

    sget v0, Lcom/facebook/ads/redexgen/X/bJ;->A05:I

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 76895
    .local v1, "ctaParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 76896
    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 76897
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A01:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76898
    invoke-direct {p0, p1, v3}, Lcom/facebook/ads/redexgen/X/bJ;->A00(Lcom/facebook/ads/redexgen/X/dL;Landroid/view/View;)V

    .line 76899
    return-void
.end method


# virtual methods
.method public final A02(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/ME;
    .locals 1

    .line 76900
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A02:Lcom/facebook/ads/redexgen/X/KE;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/KE;->A0E(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/ME;

    move-result-object v0

    return-object v0
.end method

.method public final A03()V
    .locals 2

    .line 76901
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A02:Lcom/facebook/ads/redexgen/X/KE;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/KE;->setBackgroundColor(I)V

    .line 76902
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A02:Lcom/facebook/ads/redexgen/X/KE;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/KE;->setTextColor(I)V

    .line 76903
    return-void
.end method

.method public final performClick()Z
    .locals 1

    .line 76904
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A02:Lcom/facebook/ads/redexgen/X/KE;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KE;->performClick()Z

    move-result v0

    return v0
.end method

.method public setAutoClickTime(Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/Xm;)V
    .locals 1

    .line 76905
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A02:Lcom/facebook/ads/redexgen/X/KE;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/KE;->A0F(Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/Xm;)Z

    .line 76906
    return-void
.end method

.method public setCta(Lcom/facebook/ads/redexgen/X/Mz;Ljava/lang/String;Ljava/util/HashMap;Lcom/facebook/ads/redexgen/X/a4;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Mz;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/a4;",
            ")V"
        }
    .end annotation

    .line 76907
    .local p3, "extras":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bJ;->A02:Lcom/facebook/ads/redexgen/X/KE;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/KE;->setCta(Lcom/facebook/ads/redexgen/X/Mz;Ljava/lang/String;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/a4;)V

    .line 76908
    return-void
.end method
