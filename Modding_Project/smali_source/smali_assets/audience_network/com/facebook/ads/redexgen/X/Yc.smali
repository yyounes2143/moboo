.class public final Lcom/facebook/ads/redexgen/X/Yc;
.super Landroid/widget/RelativeLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Yb;
    }
.end annotation


# static fields
.field public static final A06:I

.field public static final A07:I

.field public static final A08:I

.field public static final A09:I

.field public static final A0A:I

.field public static final A0B:I

.field public static final A0C:I

.field public static final A0D:I

.field public static final A0E:I

.field public static final A0F:I


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:Lcom/facebook/ads/redexgen/X/O2;

.field public final A03:Lcom/facebook/ads/redexgen/X/dL;

.field public final A04:Lcom/facebook/ads/redexgen/X/Yf;

.field public final A05:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2406
    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    const/high16 v2, 0x41800000    # 16.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Yc;->A09:I

    .line 2407
    const/high16 v1, 0x41000000    # 8.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Yc;->A0A:I

    .line 2408
    const/high16 v1, 0x42300000    # 44.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Yc;->A0D:I

    .line 2409
    const/high16 v1, 0x41200000    # 10.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Yc;->A08:I

    .line 2410
    sget v1, Lcom/facebook/ads/redexgen/X/Yc;->A09:I

    sget v0, Lcom/facebook/ads/redexgen/X/Yc;->A08:I

    sub-int/2addr v1, v0

    sput v1, Lcom/facebook/ads/redexgen/X/Yc;->A07:I

    .line 2411
    const/high16 v1, 0x42960000    # 75.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Yc;->A0E:I

    .line 2412
    const/high16 v1, 0x41c80000    # 25.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Yc;->A0B:I

    .line 2413
    const/high16 v1, 0x42340000    # 45.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Yc;->A0F:I

    .line 2414
    const/high16 v1, 0x41700000    # 15.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Yc;->A0C:I

    .line 2415
    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Yc;->A06:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Yb;)V
    .locals 10

    .line 73686
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Yb;->A01(Lcom/facebook/ads/redexgen/X/Yb;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 73687
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Yb;->A01(Lcom/facebook/ads/redexgen/X/Yb;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Yc;->A03:Lcom/facebook/ads/redexgen/X/dL;

    .line 73688
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yc;->A03:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A02()Lcom/facebook/ads/redexgen/X/cu;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/O3;->A00(Lcom/facebook/ads/redexgen/X/cu;)Lcom/facebook/ads/redexgen/X/O2;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Yc;->A02:Lcom/facebook/ads/redexgen/X/O2;

    .line 73689
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Yb;->A03(Lcom/facebook/ads/redexgen/X/Yb;)Lcom/facebook/ads/redexgen/X/Yf;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Yc;->A04:Lcom/facebook/ads/redexgen/X/Yf;

    .line 73690
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Yb;->A09(Lcom/facebook/ads/redexgen/X/Yb;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/facebook/ads/redexgen/X/Yc;->A0E:I

    :goto_0
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Yc;->A01:I

    .line 73691
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Yb;->A09(Lcom/facebook/ads/redexgen/X/Yb;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/facebook/ads/redexgen/X/Yc;->A0B:I

    :goto_1
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Yc;->A00:I

    .line 73692
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Yb;->A0A(Lcom/facebook/ads/redexgen/X/Yb;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Yc;->A05:Z

    .line 73693
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Yc;->setFocusable(Z)V

    .line 73694
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Yc;->A01(Lcom/facebook/ads/redexgen/X/Yb;)Landroid/view/View;

    move-result-object v9

    .line 73695
    .local v0, "headerView":Landroid/view/View;
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Yc;->A00(Lcom/facebook/ads/redexgen/X/Yb;)Landroid/view/View;

    move-result-object v8

    .line 73696
    .local v1, "contentView":Landroid/view/View;
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Yc;->getFooterView()Landroid/view/View;

    move-result-object v7

    .line 73697
    .local v2, "footerView":Landroid/view/View;
    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/XP;->A0I(Landroid/view/View;)V

    .line 73698
    invoke-static {v8}, Lcom/facebook/ads/redexgen/X/XP;->A0I(Landroid/view/View;)V

    .line 73699
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/XP;->A0I(Landroid/view/View;)V

    .line 73700
    const/4 v3, -0x1

    const/4 v2, -0x2

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 73701
    .local v3, "headerParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xa

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 73702
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 73703
    .local v6, "contentParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 73704
    const/4 v1, 0x3

    invoke-virtual {v9}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v5, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 73705
    const/4 v1, 0x2

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v5, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 73706
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 73707
    .local v4, "footerParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xc

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 73708
    sget v3, Lcom/facebook/ads/redexgen/X/Yc;->A09:I

    sget v2, Lcom/facebook/ads/redexgen/X/Yc;->A09:I

    sget v0, Lcom/facebook/ads/redexgen/X/Yc;->A09:I

    const/4 v1, 0x0

    invoke-virtual {v4, v3, v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 73709
    invoke-virtual {p0, v9, v6}, Lcom/facebook/ads/redexgen/X/Yc;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73710
    invoke-virtual {p0, v8, v5}, Lcom/facebook/ads/redexgen/X/Yc;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73711
    invoke-virtual {p0, v7, v4}, Lcom/facebook/ads/redexgen/X/Yc;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73712
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Yb;->A0B(Lcom/facebook/ads/redexgen/X/Yb;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_2
    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    .line 73713
    return-void

    .line 73714
    :cond_0
    const/16 v1, 0x8

    goto :goto_2

    .line 73715
    :cond_1
    sget v0, Lcom/facebook/ads/redexgen/X/Yc;->A0C:I

    goto :goto_1

    .line 73716
    :cond_2
    sget v0, Lcom/facebook/ads/redexgen/X/Yc;->A0F:I

    goto :goto_0
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Yb;Lcom/facebook/ads/redexgen/X/YZ;)V
    .locals 0

    .line 73717
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Yc;-><init>(Lcom/facebook/ads/redexgen/X/Yb;)V

    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/Yb;)Landroid/view/View;
    .locals 14

    .line 73718
    move-object v8, p0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Yc;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v13, Landroid/widget/ImageView;

    invoke-direct {v13, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 73719
    .local v1, "iconView":Landroid/widget/ImageView;
    iget v3, v8, Lcom/facebook/ads/redexgen/X/Yc;->A00:I

    iget v2, v8, Lcom/facebook/ads/redexgen/X/Yc;->A00:I

    iget v1, v8, Lcom/facebook/ads/redexgen/X/Yc;->A00:I

    iget v0, v8, Lcom/facebook/ads/redexgen/X/Yc;->A00:I

    invoke-virtual {v13, v3, v2, v1, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 73720
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Yb;->A02(Lcom/facebook/ads/redexgen/X/Yb;)Lcom/facebook/ads/redexgen/X/XX;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XY;->A01(Lcom/facebook/ads/redexgen/X/XX;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 73721
    const/4 v3, -0x1

    invoke-virtual {v13, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 73722
    iget v1, v8, Lcom/facebook/ads/redexgen/X/Yc;->A01:I

    iget v0, v8, Lcom/facebook/ads/redexgen/X/Yc;->A01:I

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v12, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 73723
    .local v3, "iconParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 73724
    .local v4, "iconDrawable":Landroid/graphics/drawable/GradientDrawable;
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 73725
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Yb;->A00(Lcom/facebook/ads/redexgen/X/Yb;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 73726
    invoke-static {v13, v1}, Lcom/facebook/ads/redexgen/X/XP;->A0Q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 73727
    const/16 v10, 0x11

    iput v10, v12, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 73728
    sget v4, Lcom/facebook/ads/redexgen/X/Yc;->A09:I

    sget v1, Lcom/facebook/ads/redexgen/X/Yc;->A09:I

    sget v0, Lcom/facebook/ads/redexgen/X/Yc;->A09:I

    const/4 v2, 0x0

    invoke-virtual {v12, v4, v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 73729
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Yc;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v11, Landroid/widget/TextView;

    invoke-direct {v11, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 73730
    .local v7, "titleView":Landroid/widget/TextView;
    const/16 v0, 0x14

    invoke-static {v11, v6, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0W(Landroid/widget/TextView;ZI)V

    .line 73731
    const v0, -0xe3e1df

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73732
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Yb;->A04(Lcom/facebook/ads/redexgen/X/Yb;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73733
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 73734
    const/4 v1, -0x2

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 73735
    .local v8, "titleParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v5, Lcom/facebook/ads/redexgen/X/Yc;->A09:I

    sget v4, Lcom/facebook/ads/redexgen/X/Yc;->A09:I

    sget v0, Lcom/facebook/ads/redexgen/X/Yc;->A09:I

    invoke-virtual {v9, v5, v2, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 73736
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Yc;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 73737
    .local v11, "subtitleView":Landroid/widget/TextView;
    const/16 v0, 0x10

    invoke-static {v7, v2, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0W(Landroid/widget/TextView;ZI)V

    .line 73738
    const v0, -0x9f9890

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73739
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Yb;->A05(Lcom/facebook/ads/redexgen/X/Yb;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73740
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 73741
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 73742
    .local v2, "subtitleParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v3, Lcom/facebook/ads/redexgen/X/Yc;->A09:I

    sget v1, Lcom/facebook/ads/redexgen/X/Yc;->A09:I

    sget v0, Lcom/facebook/ads/redexgen/X/Yc;->A09:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 73743
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Yc;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 73744
    .local v12, "contentView":Landroid/widget/LinearLayout;
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 73745
    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 73746
    invoke-virtual {v5, v13, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73747
    invoke-virtual {v5, v11, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73748
    invoke-virtual {v5, v7, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73749
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Yb;->A08(Lcom/facebook/ads/redexgen/X/Yb;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73750
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Yc;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 73751
    .local v13, "chipContainer":Landroid/widget/LinearLayout;
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 73752
    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 73753
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Yb;->A06(Lcom/facebook/ads/redexgen/X/Yb;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73754
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/Yc;->A03:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v7, Lcom/facebook/ads/redexgen/X/aK;

    invoke-direct {v7, v0}, Lcom/facebook/ads/redexgen/X/aK;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    .line 73755
    .local v6, "logoView":Lcom/facebook/ads/redexgen/X/aK;
    sget v1, Lcom/facebook/ads/redexgen/X/Yc;->A0F:I

    sget v0, Lcom/facebook/ads/redexgen/X/Yc;->A0F:I

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 73756
    .local v9, "iconLayoutParms":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Yc;->A0A:I

    invoke-virtual {v3, v2, v2, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 73757
    invoke-virtual {v7, v6}, Lcom/facebook/ads/redexgen/X/aK;->setFullCircleCorners(Z)V

    .line 73758
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/Yc;->A03:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v2, Lcom/facebook/ads/redexgen/X/KZ;

    invoke-direct {v2, v7, v0}, Lcom/facebook/ads/redexgen/X/KZ;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/dL;)V

    sget v1, Lcom/facebook/ads/redexgen/X/Yc;->A0F:I

    sget v0, Lcom/facebook/ads/redexgen/X/Yc;->A0F:I

    .line 73759
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A05(II)Lcom/facebook/ads/redexgen/X/KZ;

    move-result-object v1

    .line 73760
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Yb;->A06(Lcom/facebook/ads/redexgen/X/Yb;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A07(Ljava/lang/String;)V

    .line 73761
    invoke-virtual {v4, v7, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73762
    .end local v6    # "logoView":Lcom/facebook/ads/redexgen/X/aK;
    .end local v9    # "iconLayoutParms":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/Yc;->A03:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v2, Lcom/facebook/ads/redexgen/X/Yh;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/Yh;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    .line 73763
    .local v6, "selectedOptionView":Lcom/facebook/ads/redexgen/X/Yh;
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Yb;->A07(Lcom/facebook/ads/redexgen/X/Yb;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/XX;->A0K:Lcom/facebook/ads/redexgen/X/XX;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Yh;->setData(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/XX;)V

    .line 73764
    invoke-virtual {v2, v6}, Lcom/facebook/ads/redexgen/X/Yh;->setSelected(Z)V

    .line 73765
    const/4 v1, -0x2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 73766
    .local v5, "selectedOptionParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v4, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73767
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 73768
    .end local v5    # "selectedOptionParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v6    # "selectedOptionView":Lcom/facebook/ads/redexgen/X/Yh;
    .end local v13    # "chipContainer":Landroid/widget/LinearLayout;
    :cond_1
    return-object v5
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/Yb;)Landroid/view/View;
    .locals 7

    .line 73769
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Yc;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 73770
    .local v0, "headerView":Landroid/widget/LinearLayout;
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 73771
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Yb;->A0C(Lcom/facebook/ads/redexgen/X/Yb;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73772
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Yc;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 73773
    .local v1, "closeButton":Landroid/widget/ImageView;
    sget v3, Lcom/facebook/ads/redexgen/X/Yc;->A08:I

    sget v2, Lcom/facebook/ads/redexgen/X/Yc;->A08:I

    sget v1, Lcom/facebook/ads/redexgen/X/Yc;->A08:I

    sget v0, Lcom/facebook/ads/redexgen/X/Yc;->A08:I

    invoke-virtual {v5, v3, v2, v1, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 73774
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 73775
    sget-object v0, Lcom/facebook/ads/redexgen/X/XX;->A0O:Lcom/facebook/ads/redexgen/X/XX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XY;->A01(Lcom/facebook/ads/redexgen/X/XX;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 73776
    new-instance v0, Lcom/facebook/ads/redexgen/X/YZ;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/YZ;-><init>(Lcom/facebook/ads/redexgen/X/Yc;)V

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73777
    sget v1, Lcom/facebook/ads/redexgen/X/Yc;->A0D:I

    sget v0, Lcom/facebook/ads/redexgen/X/Yc;->A0D:I

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 73778
    .local v2, "closeButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v3, Lcom/facebook/ads/redexgen/X/Yc;->A07:I

    sget v2, Lcom/facebook/ads/redexgen/X/Yc;->A07:I

    sget v1, Lcom/facebook/ads/redexgen/X/Yc;->A07:I

    sget v0, Lcom/facebook/ads/redexgen/X/Yc;->A07:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 73779
    invoke-virtual {v6, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73780
    .end local v1    # "closeButton":Landroid/widget/ImageView;
    .end local v2    # "closeButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-object v6
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Yc;)Lcom/facebook/ads/redexgen/X/Yf;
    .locals 0

    .line 73781
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Yc;->A04:Lcom/facebook/ads/redexgen/X/Yf;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Yc;)Z
    .locals 0

    .line 73782
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Yc;->A05:Z

    return p0
.end method

.method private getFooterView()Landroid/view/View;
    .locals 9

    .line 73783
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Yc;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 73784
    .local v0, "settingsIcon":Landroid/widget/ImageView;
    sget-object v0, Lcom/facebook/ads/redexgen/X/XX;->A0u:Lcom/facebook/ads/redexgen/X/XX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XY;->A01(Lcom/facebook/ads/redexgen/X/XX;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 73785
    const v2, -0xca871b

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 73786
    sget v1, Lcom/facebook/ads/redexgen/X/Yc;->A06:I

    sget v0, Lcom/facebook/ads/redexgen/X/Yc;->A06:I

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 73787
    .local v2, "settingsIconParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v8, 0x11

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 73788
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Yc;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 73789
    .local v4, "managePrefsText":Landroid/widget/TextView;
    const/16 v0, 0x10

    const/4 v4, 0x0

    invoke-static {v5, v4, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0W(Landroid/widget/TextView;ZI)V

    .line 73790
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73791
    sget v3, Lcom/facebook/ads/redexgen/X/Yc;->A0A:I

    sget v2, Lcom/facebook/ads/redexgen/X/Yc;->A0A:I

    sget v1, Lcom/facebook/ads/redexgen/X/Yc;->A0A:I

    sget v0, Lcom/facebook/ads/redexgen/X/Yc;->A0A:I

    invoke-virtual {v5, v3, v2, v1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 73792
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yc;->A02:Lcom/facebook/ads/redexgen/X/O2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O2;->A0J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73793
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 73794
    .local v1, "textViewParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 73795
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Yc;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 73796
    .local v5, "bottomContainer":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 73797
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 73798
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ya;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ya;-><init>(Lcom/facebook/ads/redexgen/X/Yc;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73799
    invoke-virtual {v1, v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73800
    invoke-virtual {v1, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73801
    return-object v1
.end method
