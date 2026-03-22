.class public final Lcom/facebook/ads/redexgen/X/Xk;
.super Landroid/widget/LinearLayout;
.source ""


# static fields
.field public static A04:[B

.field public static final A05:I

.field public static final A06:I

.field public static final A07:I

.field public static final A08:I

.field public static final A09:I


# instance fields
.field public final A00:Landroid/widget/ImageView;

.field public final A01:Landroid/widget/ImageView;

.field public final A02:Lcom/facebook/ads/redexgen/X/O2;

.field public final A03:Lcom/facebook/ads/redexgen/X/dL;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 2362
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Xk;->A03()V

    const/high16 v1, 0x42480000    # 50.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Xk;->A08:I

    .line 2363
    const/high16 v1, 0x41200000    # 10.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Xk;->A05:I

    .line 2364
    const/high16 v1, 0x41a00000    # 20.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Xk;->A06:I

    .line 2365
    const/high16 v1, 0x40800000    # 4.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Xk;->A09:I

    .line 2366
    const/high16 v1, 0x41400000    # 12.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Xk;->A07:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;I)V
    .locals 1

    .line 72757
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 72758
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Xk;->A03:Lcom/facebook/ads/redexgen/X/dL;

    .line 72759
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/SQ;->A02()Lcom/facebook/ads/redexgen/X/cu;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/O3;->A00(Lcom/facebook/ads/redexgen/X/cu;)Lcom/facebook/ads/redexgen/X/O2;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Xk;->A02:Lcom/facebook/ads/redexgen/X/O2;

    .line 72760
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Xk;->setOrientation(I)V

    .line 72761
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Xk;->A00:Landroid/widget/ImageView;

    .line 72762
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Xk;->A01:Landroid/widget/ImageView;

    .line 72763
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/Xk;->A04(I)V

    .line 72764
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Xk;)Lcom/facebook/ads/redexgen/X/O2;
    .locals 0

    .line 72765
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Xk;->A02:Lcom/facebook/ads/redexgen/X/O2;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Xk;)Lcom/facebook/ads/redexgen/X/dL;
    .locals 0

    .line 72766
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Xk;->A03:Lcom/facebook/ads/redexgen/X/dL;

    return-object p0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Xk;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x76

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Xk;->A04:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x67t
        0x42t
    .end array-data
.end method

.method private A04(I)V
    .locals 7

    .line 72767
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Xk;->A00:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/XX;->A06:Lcom/facebook/ads/redexgen/X/XX;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Xk;->A05(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/XX;)V

    .line 72768
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    .line 72769
    sget v6, Lcom/facebook/ads/redexgen/X/Xk;->A05:I

    sget v0, Lcom/facebook/ads/redexgen/X/Xk;->A05:I

    div-int/lit8 v2, v0, 0x3

    sget v1, Lcom/facebook/ads/redexgen/X/Xk;->A05:I

    sget v0, Lcom/facebook/ads/redexgen/X/Xk;->A05:I

    div-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v6, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xk;->setPadding(IIII)V

    .line 72770
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xk;->A03:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 72771
    .local v3, "adTextView":Landroid/widget/TextView;
    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xk;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72772
    const/4 v0, -0x1

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72773
    sget v2, Lcom/facebook/ads/redexgen/X/Xk;->A05:I

    div-int/2addr v2, v3

    sget v1, Lcom/facebook/ads/redexgen/X/Xk;->A05:I

    div-int/2addr v1, v3

    sget v0, Lcom/facebook/ads/redexgen/X/Xk;->A05:I

    div-int/2addr v0, v3

    invoke-virtual {v6, v4, v2, v1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 72774
    const/16 v0, 0xd

    invoke-static {v6, v5, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0W(Landroid/widget/TextView;ZI)V

    .line 72775
    const/4 v1, -0x2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 72776
    .local v0, "textViewParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0x10

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 72777
    invoke-virtual {p0, v6, v0}, Lcom/facebook/ads/redexgen/X/Xk;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72778
    sget v2, Lcom/facebook/ads/redexgen/X/Xk;->A07:I

    sget v0, Lcom/facebook/ads/redexgen/X/Xk;->A07:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 72779
    .local v2, "adChoicesIconParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 72780
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xk;->A00:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Xk;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72781
    .end local v0    # "textViewParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "adChoicesIconParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "adTextView":Landroid/widget/TextView;
    .end local v0
    .end local v2
    .end local v4
    :goto_0
    return-void

    .line 72782
    :cond_0
    sget v3, Lcom/facebook/ads/redexgen/X/Xk;->A05:I

    sget v2, Lcom/facebook/ads/redexgen/X/Xk;->A05:I

    sget v1, Lcom/facebook/ads/redexgen/X/Xk;->A05:I

    sget v0, Lcom/facebook/ads/redexgen/X/Xk;->A05:I

    invoke-virtual {p0, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Xk;->setPadding(IIII)V

    .line 72783
    if-ne p1, v5, :cond_1

    .line 72784
    sget-object v1, Lcom/facebook/ads/redexgen/X/XX;->A09:Lcom/facebook/ads/redexgen/X/XX;

    .line 72785
    .local v0, "infoIconImage":Lcom/facebook/ads/redexgen/X/XX;
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xk;->A01:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Xk;->A05(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/XX;)V

    .line 72786
    sget v2, Lcom/facebook/ads/redexgen/X/Xk;->A06:I

    sget v0, Lcom/facebook/ads/redexgen/X/Xk;->A06:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 72787
    .local v2, "infoButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0x11

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 72788
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xk;->A01:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Xk;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72789
    sget v2, Lcom/facebook/ads/redexgen/X/Xk;->A06:I

    sget v0, Lcom/facebook/ads/redexgen/X/Xk;->A06:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 72790
    .local v4, "adChoicesParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Xk;->A09:I

    invoke-virtual {v1, v0, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 72791
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 72792
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xk;->A00:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Xk;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 72793
    :cond_1
    sget-object v1, Lcom/facebook/ads/redexgen/X/XX;->A0Q:Lcom/facebook/ads/redexgen/X/XX;

    goto :goto_1
.end method

.method public static A05(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/XX;)V
    .locals 1

    .line 72794
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 72795
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/XY;->A01(Lcom/facebook/ads/redexgen/X/XX;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 72796
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 72797
    return-void
.end method


# virtual methods
.method public setAdDetails(Lcom/facebook/ads/redexgen/X/N9;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ua;Lcom/facebook/ads/redexgen/X/Xn;)V
    .locals 6

    .line 72798
    new-instance v0, Lcom/facebook/ads/redexgen/X/Xj;

    move-object v1, p0

    move-object v3, p4

    move-object v2, p3

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Xj;-><init>(Lcom/facebook/ads/redexgen/X/Xk;Lcom/facebook/ads/redexgen/X/Ua;Lcom/facebook/ads/redexgen/X/Xn;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/N9;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Xk;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72799
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 2

    .line 72800
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 72801
    .local v0, "backgroundStyle":Landroid/graphics/drawable/GradientDrawable;
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 72802
    sget v0, Lcom/facebook/ads/redexgen/X/Xk;->A08:I

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 72803
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 72804
    invoke-static {p0, v1}, Lcom/facebook/ads/redexgen/X/XP;->A0Q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 72805
    return-void
.end method

.method public setIconColors(I)V
    .locals 1

    .line 72806
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xk;->A00:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 72807
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xk;->A01:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 72808
    return-void
.end method
