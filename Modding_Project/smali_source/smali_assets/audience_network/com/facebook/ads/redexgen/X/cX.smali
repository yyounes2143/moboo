.class public final Lcom/facebook/ads/redexgen/X/cX;
.super Landroid/widget/LinearLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/cV;,
        Lcom/facebook/ads/redexgen/X/cW;
    }
.end annotation


# static fields
.field public static A07:[Ljava/lang/String;

.field public static final A08:I

.field public static final A09:I

.field public static final A0A:I

.field public static final A0B:I

.field public static final A0C:I


# instance fields
.field public A00:Landroid/widget/LinearLayout;

.field public A01:Ljava/lang/String;

.field public A02:Z

.field public final A03:I

.field public final A04:Lcom/facebook/ads/redexgen/X/dL;

.field public final A05:Lcom/facebook/ads/redexgen/X/aK;

.field public final A06:Lcom/facebook/ads/redexgen/X/aQ;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2578
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "mO6OCzz183u1Bigulq5KeRnnu3UhUErY"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "M8wuVwCqg47swjluxOTBwYkXCALJOS1f"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "isO3a6yeUrEqJHaKmCFaV"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "J8y0fQZRtVpgz1Itec1cmA3ue79eN13N"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "z6IigVxY2j2waSprQRCf4749VcxJv5uz"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "GG3OTiE6t7MwpY"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "UBA0QA1YjTXejDlGkh9vREu7YbW4o1hK"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "iNB15eFG13fee2"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/cX;->A07:[Ljava/lang/String;

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    const/high16 v2, 0x41800000    # 16.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/cX;->A0A:I

    .line 2579
    const/high16 v1, 0x42000000    # 32.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/cX;->A0B:I

    .line 2580
    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/cX;->A0C:I

    .line 2581
    sget v1, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/cX;->A09:I

    .line 2582
    const/high16 v1, 0x42900000    # 72.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/cX;->A08:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/cV;)V
    .locals 6

    .line 77998
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/cV;->A04(Lcom/facebook/ads/redexgen/X/cV;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 77999
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cX;->A02:Z

    .line 78000
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cX;->A01:Ljava/lang/String;

    .line 78001
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/cV;->A04(Lcom/facebook/ads/redexgen/X/cV;)Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cX;->A04:Lcom/facebook/ads/redexgen/X/dL;

    .line 78002
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cX;->A04:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v0, Lcom/facebook/ads/redexgen/X/aK;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/aK;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cX;->A05:Lcom/facebook/ads/redexgen/X/aK;

    .line 78003
    new-instance v0, Lcom/facebook/ads/redexgen/X/aQ;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cX;->A04:Lcom/facebook/ads/redexgen/X/dL;

    .line 78004
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/cV;->A02(Lcom/facebook/ads/redexgen/X/cV;)Lcom/facebook/ads/redexgen/X/My;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/aQ;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/My;ZZZ)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cX;->A06:Lcom/facebook/ads/redexgen/X/aQ;

    .line 78005
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/cV;->A00(Lcom/facebook/ads/redexgen/X/cV;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/cX;->A03:I

    .line 78006
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/cV;->A08(Lcom/facebook/ads/redexgen/X/cV;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cX;->A02:Z

    .line 78007
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/cV;->A05(Lcom/facebook/ads/redexgen/X/cV;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cX;->A01:Ljava/lang/String;

    .line 78008
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/cX;->A03(Lcom/facebook/ads/redexgen/X/cV;)V

    .line 78009
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/cV;Lcom/facebook/ads/redexgen/X/Fr;)V
    .locals 0

    .line 78010
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/cX;-><init>(Lcom/facebook/ads/redexgen/X/cV;)V

    return-void
.end method

.method private A00()V
    .locals 2

    .line 78011
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cX;->A05:Lcom/facebook/ads/redexgen/X/aK;

    const/16 v0, 0x96

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/cX;->A01(Landroid/view/View;I)V

    .line 78012
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cX;->A06:Lcom/facebook/ads/redexgen/X/aQ;

    const/16 v0, 0xaa

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/cX;->A01(Landroid/view/View;I)V

    .line 78013
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cX;->A00:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 78014
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cX;->A00:Landroid/widget/LinearLayout;

    const/16 v0, 0xbe

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/cX;->A01(Landroid/view/View;I)V

    .line 78015
    :cond_0
    return-void
.end method

.method private A01(Landroid/view/View;I)V
    .locals 3

    .line 78016
    int-to-float v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 78017
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 78018
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 78019
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    neg-int v0, p2

    int-to-float v0, v0

    .line 78020
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 78021
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 78022
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 78023
    const-wide/16 v0, 0x12c

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v1, 0x40000000    # 2.0f

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 78024
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 78025
    return-void
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/cV;)V
    .locals 9

    .line 78026
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/cV;->A06(Lcom/facebook/ads/redexgen/X/cV;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 78027
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/cX;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/cX;->A00:Landroid/widget/LinearLayout;

    .line 78028
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cX;->A00:Landroid/widget/LinearLayout;

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 78029
    sget v0, Lcom/facebook/ads/redexgen/X/cX;->A0C:I

    div-int/lit8 v4, v0, 0x2

    .line 78030
    .local v0, "marginTop":I
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cX;->A02:Z

    if-eqz v0, :cond_0

    .line 78031
    const/4 v4, 0x0

    .line 78032
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/cX;->A00:Landroid/widget/LinearLayout;

    sget v2, Lcom/facebook/ads/redexgen/X/cX;->A0C:I

    sget v1, Lcom/facebook/ads/redexgen/X/cX;->A0C:I

    sget v0, Lcom/facebook/ads/redexgen/X/cX;->A0C:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v3, v2, v4, v1, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 78033
    const/4 v1, -0x2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 78034
    .local v1, "informativeContainerParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v6, 0x0

    invoke-virtual {v3, v6, v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 78035
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/cX;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 78036
    .local v4, "informativeTextView":Landroid/widget/TextView;
    const/4 v5, -0x1

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78037
    const/16 v0, 0x10

    invoke-static {v7, v6, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0W(Landroid/widget/TextView;ZI)V

    .line 78038
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/cV;->A06(Lcom/facebook/ads/redexgen/X/cV;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78039
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 78040
    .local v2, "informativeTextViewParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/cX;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 78041
    .local v6, "informativeIconView":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cX;->A04:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v0, Lcom/facebook/ads/redexgen/X/KZ;

    invoke-direct {v0, v8, v1}, Lcom/facebook/ads/redexgen/X/KZ;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/dL;)V

    .line 78042
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KZ;->A04()Lcom/facebook/ads/redexgen/X/KZ;

    move-result-object v1

    .line 78043
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/cV;->A07(Lcom/facebook/ads/redexgen/X/cV;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A07(Ljava/lang/String;)V

    .line 78044
    sget v2, Lcom/facebook/ads/redexgen/X/cX;->A0A:I

    sget v0, Lcom/facebook/ads/redexgen/X/cX;->A0A:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 78045
    .local v7, "informativeIconViewParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/cX;->A0C:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v6, v6, v0, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 78046
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cX;->A02:Z

    if-eqz v0, :cond_1

    .line 78047
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/cX;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/XX;->A0k:Lcom/facebook/ads/redexgen/X/XX;

    new-instance v4, Lcom/facebook/ads/redexgen/X/aE;

    invoke-direct {v4, v1, v6, v5, v0}, Lcom/facebook/ads/redexgen/X/aE;-><init>(Landroid/content/Context;IILcom/facebook/ads/redexgen/X/XX;)V

    .line 78048
    .local v3, "iconView":Lcom/facebook/ads/redexgen/X/aE;
    sget v2, Lcom/facebook/ads/redexgen/X/cX;->A0B:I

    sget v1, Lcom/facebook/ads/redexgen/X/cX;->A0B:I

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 78049
    .local v5, "iconViewParam":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/aE;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78050
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cX;->A00:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 78051
    .end local v3    # "iconView":Lcom/facebook/ads/redexgen/X/aE;
    .end local v5    # "iconViewParam":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3
    :goto_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/cX;->A00:Landroid/widget/LinearLayout;

    sget-object v2, Lcom/facebook/ads/redexgen/X/cX;->A07:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 78052
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cX;->A00:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78053
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cX;->A00:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78054
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 78055
    .local v3, "bgDrawable":Landroid/graphics/drawable/GradientDrawable;
    const/high16 v0, 0x42c80000    # 100.0f

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 78056
    const v0, 0x1bffffff

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 78057
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cX;->A00:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/XP;->A0Q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/cX;->A07:[Ljava/lang/String;

    const-string v1, "6JdK2pyeEPUWkfGuYxPy07w26kgdYt9J"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "5VEwQONd4c8VI19uC0Ib5tVL9YvIxUH6"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {p0, v4, v3}, Lcom/facebook/ads/redexgen/X/cX;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78058
    .end local v0    # "marginTop":I
    .end local v1    # "informativeContainerParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "informativeTextViewParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "informativeTextView":Landroid/widget/TextView;
    .end local v6    # "informativeIconView":Landroid/widget/ImageView;
    .end local v7    # "informativeIconViewParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    return-void
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/cV;)V
    .locals 11

    .line 78059
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cX;->A05:Lcom/facebook/ads/redexgen/X/aK;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/XP;->A0K(Landroid/view/View;I)V

    .line 78060
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cX;->A05:Lcom/facebook/ads/redexgen/X/aK;

    const/16 v0, 0x32

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/aK;->setRadius(I)V

    .line 78061
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cX;->A02:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 78062
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cX;->A05:Lcom/facebook/ads/redexgen/X/aK;

    sget v0, Lcom/facebook/ads/redexgen/X/cX;->A09:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/aK;->setRadius(I)V

    .line 78063
    :goto_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/cX;->A05:Lcom/facebook/ads/redexgen/X/aK;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cX;->A04:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v0, Lcom/facebook/ads/redexgen/X/KZ;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/KZ;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/dL;)V

    .line 78064
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KZ;->A04()Lcom/facebook/ads/redexgen/X/KZ;

    move-result-object v1

    .line 78065
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/cV;->A03(Lcom/facebook/ads/redexgen/X/cV;)Lcom/facebook/ads/redexgen/X/N9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N9;->A01()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A07(Ljava/lang/String;)V

    .line 78066
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/cX;->A06:Lcom/facebook/ads/redexgen/X/aQ;

    .line 78067
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/cV;->A01(Lcom/facebook/ads/redexgen/X/cV;)Lcom/facebook/ads/redexgen/X/Mw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mw;->A0F()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/cV;->A03(Lcom/facebook/ads/redexgen/X/cV;)Lcom/facebook/ads/redexgen/X/N9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N9;->A03()Ljava/lang/String;

    move-result-object v7

    .line 78068
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/aQ;->A04(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 78069
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cX;->A02:Z

    if-nez v0, :cond_0

    .line 78070
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cX;->A06:Lcom/facebook/ads/redexgen/X/aQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aQ;->getDescriptionTextView()Landroid/widget/TextView;

    move-result-object v1

    const v0, 0x3f4ccccd    # 0.8f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 78071
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cX;->A06:Lcom/facebook/ads/redexgen/X/aQ;

    const/16 v6, 0x11

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/aQ;->setAlignment(I)V

    .line 78072
    const/4 v0, -0x2

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 78073
    .local v0, "titleAndDescriptionParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v1, Lcom/facebook/ads/redexgen/X/cX;->A0C:I

    sget v0, Lcom/facebook/ads/redexgen/X/cX;->A0C:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v5, v4, v1, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 78074
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/cX;->A05:Lcom/facebook/ads/redexgen/X/aK;

    sget v2, Lcom/facebook/ads/redexgen/X/cX;->A08:I

    sget v1, Lcom/facebook/ads/redexgen/X/cX;->A08:I

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v4, v0}, Lcom/facebook/ads/redexgen/X/cX;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78075
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cX;->A06:Lcom/facebook/ads/redexgen/X/aQ;

    invoke-virtual {p0, v0, v5}, Lcom/facebook/ads/redexgen/X/cX;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78076
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/cX;->A02(Lcom/facebook/ads/redexgen/X/cV;)V

    .line 78077
    const v0, -0xdcd8d1

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0K(Landroid/view/View;I)V

    .line 78078
    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/cX;->setGravity(I)V

    .line 78079
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/cX;->setOrientation(I)V

    .line 78080
    return-void

    .line 78081
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cX;->A06:Lcom/facebook/ads/redexgen/X/aQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aQ;->getDescriptionTextView()Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cX;->A01:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 78082
    :cond_1
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/cV;->A01(Lcom/facebook/ads/redexgen/X/cV;)Lcom/facebook/ads/redexgen/X/Mw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mw;->A00()Lcom/facebook/ads/redexgen/X/Mu;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Mu;->A05:Lcom/facebook/ads/redexgen/X/Mu;

    if-ne v1, v0, :cond_2

    .line 78083
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cX;->A05:Lcom/facebook/ads/redexgen/X/aK;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/aK;->setFullCircleCorners(Z)V

    goto/16 :goto_0

    .line 78084
    :cond_2
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/cX;->A05:Lcom/facebook/ads/redexgen/X/aK;

    sget v5, Lcom/facebook/ads/redexgen/X/cX;->A09:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/cX;->A07:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/cX;->A07:[Ljava/lang/String;

    const-string v1, "avcxrBXnTsgV2I5Ie1k2l"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v6, v5}, Lcom/facebook/ads/redexgen/X/aK;->setRadius(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public final A04(Lcom/facebook/ads/redexgen/X/cW;)V
    .locals 3

    .line 78085
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/cX;->A00()V

    .line 78086
    new-instance v2, Lcom/facebook/ads/redexgen/X/Fr;

    invoke-direct {v2, p0, p1}, Lcom/facebook/ads/redexgen/X/Fr;-><init>(Lcom/facebook/ads/redexgen/X/cX;Lcom/facebook/ads/redexgen/X/cW;)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/cX;->A03:I

    int-to-long v0, v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/cX;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 78087
    return-void
.end method
