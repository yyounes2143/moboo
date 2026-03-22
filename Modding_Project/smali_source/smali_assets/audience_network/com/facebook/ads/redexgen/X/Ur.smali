.class public final Lcom/facebook/ads/redexgen/X/Ur;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/NativeAdViewAttributesApi;


# static fields
.field public static final A07:I

.field public static final A08:I


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:Landroid/graphics/Typeface;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1982
    sget v1, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Ur;->A08:I

    .line 1983
    sget v1, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Ur;->A07:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 67948
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67949
    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ur;->A06:Landroid/graphics/Typeface;

    .line 67950
    const/4 v1, -0x1

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Ur;->A00:I

    .line 67951
    const v0, -0xe2ded7

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ur;->A04:I

    .line 67952
    const v0, -0x9e9890

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ur;->A05:I

    .line 67953
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Ur;->A01:I

    .line 67954
    const v0, -0xbd8719

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ur;->A03:I

    .line 67955
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ur;->A03:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ur;->A02:I

    .line 67956
    return-void
.end method


# virtual methods
.method public final A00()I
    .locals 1

    .line 67957
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ur;->A00:I

    return v0
.end method

.method public final A01()I
    .locals 1

    .line 67958
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ur;->A01:I

    return v0
.end method

.method public final A02()I
    .locals 1

    .line 67959
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ur;->A02:I

    return v0
.end method

.method public final A03()I
    .locals 1

    .line 67960
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ur;->A03:I

    return v0
.end method

.method public final A04(F)I
    .locals 3

    .line 67961
    iget v2, p0, Lcom/facebook/ads/redexgen/X/Ur;->A01:I

    const/high16 v0, -0x1000000

    and-int/2addr v2, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ur;->A01:I

    not-int v1, v0

    const v0, 0xffffff

    and-int/2addr v1, v0

    or-int/2addr v2, v1

    .line 67962
    .local v0, "textColor":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ur;->A01:I

    invoke-static {v2, v0, p1}, Lcom/facebook/ads/redexgen/X/OP;->A05(IIF)I

    move-result v0

    return v0
.end method

.method public final A05(Landroid/widget/TextView;)V
    .locals 8

    .line 67963
    const/high16 v0, 0x41600000    # 14.0f

    const/4 v6, 0x2

    invoke-virtual {p1, v6, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 67964
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ur;->A06:Landroid/graphics/Typeface;

    const/4 v5, 0x1

    invoke-virtual {p1, v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 67965
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 67966
    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 67967
    .local v0, "buttonBackgroundUnpressed":Landroid/graphics/drawable/GradientDrawable;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ur;->A01:I

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 67968
    sget v0, Lcom/facebook/ads/redexgen/X/Ur;->A08:I

    int-to-float v0, v0

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 67969
    sget v1, Lcom/facebook/ads/redexgen/X/Ur;->A07:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ur;->A02:I

    invoke-virtual {v7, v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 67970
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 67971
    .local v3, "buttonBackgroundPressed":Landroid/graphics/drawable/GradientDrawable;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ur;->A03:I

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 67972
    sget v0, Lcom/facebook/ads/redexgen/X/Ur;->A08:I

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 67973
    sget v1, Lcom/facebook/ads/redexgen/X/Ur;->A07:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ur;->A02:I

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 67974
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 67975
    .local v4, "bgSld":Landroid/graphics/drawable/StateListDrawable;
    const v4, 0x10100a7

    filled-new-array {v4}, [I

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 67976
    const/4 v3, 0x0

    new-array v0, v3, [I

    invoke-virtual {v1, v0, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 67977
    invoke-static {p1, v1}, Lcom/facebook/ads/redexgen/X/XP;->A0Q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 67978
    new-array v1, v3, [I

    new-array v2, v6, [[I

    filled-new-array {v4}, [I

    move-result-object v0

    aput-object v0, v2, v3

    aput-object v1, v2, v5

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ur;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ur;->A03:I

    filled-new-array {v1, v0}, [I

    move-result-object v1

    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 67979
    .local v1, "textColors":Landroid/content/res/ColorStateList;
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 67980
    return-void
.end method

.method public final A06(Landroid/widget/TextView;)V
    .locals 1

    .line 67981
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ur;->A05:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67982
    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 67983
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ur;->A06:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 67984
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 67985
    return-void
.end method

.method public final A07(Landroid/widget/TextView;)V
    .locals 2

    .line 67986
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ur;->A04:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67987
    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 67988
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ur;->A06:Landroid/graphics/Typeface;

    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 67989
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 67990
    return-void
.end method

.method public final A08(Landroid/widget/TextView;)V
    .locals 2

    .line 67991
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ur;->A04:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67992
    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 67993
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ur;->A06:Landroid/graphics/Typeface;

    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 67994
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 67995
    return-void
.end method

.method public final A09(Lcom/facebook/ads/AdOptionsView;I)V
    .locals 1

    .line 67996
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ur;->A04:I

    invoke-virtual {p1, v0}, Lcom/facebook/ads/AdOptionsView;->setIconColor(I)V

    .line 67997
    invoke-virtual {p1, p2}, Lcom/facebook/ads/AdOptionsView;->setIconSizeDp(I)V

    .line 67998
    return-void
.end method

.method public final setBackgroundColor(I)V
    .locals 0

    .line 67999
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Ur;->A00:I

    .line 68000
    return-void
.end method

.method public final setCTABackgroundColor(I)V
    .locals 0

    .line 68001
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Ur;->A01:I

    .line 68002
    return-void
.end method

.method public final setCTABorderColor(I)V
    .locals 0

    .line 68003
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Ur;->A02:I

    .line 68004
    return-void
.end method

.method public final setCTATextColor(I)V
    .locals 0

    .line 68005
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Ur;->A03:I

    .line 68006
    return-void
.end method

.method public final setPrimaryTextColor(I)V
    .locals 0

    .line 68007
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Ur;->A04:I

    .line 68008
    return-void
.end method

.method public final setSecondaryTextColor(I)V
    .locals 0

    .line 68009
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Ur;->A05:I

    .line 68010
    return-void
.end method

.method public final setTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .line 68011
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ur;->A06:Landroid/graphics/Typeface;

    .line 68012
    return-void
.end method
