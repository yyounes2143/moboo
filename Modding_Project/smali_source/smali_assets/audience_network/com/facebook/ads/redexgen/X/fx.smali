.class public final Lcom/facebook/ads/redexgen/X/fx;
.super Lcom/facebook/ads/redexgen/X/R8;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/AdOptionsViewApi;


# static fields
.field public static A06:[B

.field public static A07:[Ljava/lang/String;

.field public static final A08:I

.field public static final A09:I


# instance fields
.field public A00:Z

.field public A01:Z

.field public A02:Z

.field public final A03:Landroid/widget/ImageView;

.field public final A04:Landroid/widget/ImageView;

.field public final A05:Lcom/facebook/ads/AdOptionsView;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2764
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "HVqi6jlpWuJt2YtXNdvGk3FhV0BHl3EV"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "MmKJ6DDV7RS65o7dKLAsYGebg3Me5CTe"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "1YJN2Qnc4ttaIZRVWQztvMy6euLicnbf"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "AdY32lBMWhACAu5OzQBb3WT"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "7pW2kqTunwh3p"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "By284lxDKeQhXfwWoADF7ASQT9nDXNCZ"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "3GcamP2dghLgpW6nys2YEXVC3i8y"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/fx;->A07:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/fx;->A02()V

    sget v1, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    const/high16 v0, 0x41b80000    # 23.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/fx;->A08:I

    .line 2765
    sget v1, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/fx;->A09:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAdLayout;Lcom/facebook/ads/AdOptionsView$Orientation;ILcom/facebook/ads/AdOptionsView;)V
    .locals 5

    .line 81714
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/R8;-><init>()V

    .line 81715
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/fx;->A02:Z

    .line 81716
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/fx;->A01:Z

    .line 81717
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/fx;->A00:Z

    .line 81718
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/fx;->A05:Lcom/facebook/ads/AdOptionsView;

    .line 81719
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 81720
    .local v1, "rootLayout":Landroid/widget/LinearLayout;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fx;->A05:Lcom/facebook/ads/AdOptionsView;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/AdOptionsView;->addView(Landroid/view/View;)V

    .line 81721
    sget-object v0, Lcom/facebook/ads/AdOptionsView$Orientation;->HORIZONTAL:Lcom/facebook/ads/AdOptionsView$Orientation;

    if-ne p4, v0, :cond_0

    .line 81722
    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 81723
    sget-object v0, Lcom/facebook/ads/redexgen/X/XX;->A0Q:Lcom/facebook/ads/redexgen/X/XX;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/fx;->A00(Lcom/facebook/ads/redexgen/X/XX;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/fx;->A04:Landroid/widget/ImageView;

    .line 81724
    sget-object v0, Lcom/facebook/ads/redexgen/X/XX;->A06:Lcom/facebook/ads/redexgen/X/XX;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/fx;->A00(Lcom/facebook/ads/redexgen/X/XX;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/fx;->A03:Landroid/widget/ImageView;

    .line 81725
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/fx;->A03:Landroid/widget/ImageView;

    const/4 v2, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/fx;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 81726
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fx;->A04:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 81727
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fx;->A03:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 81728
    invoke-virtual {p0, p5}, Lcom/facebook/ads/redexgen/X/fx;->setIconSizeDp(I)V

    .line 81729
    const v0, -0x9f9890

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/fx;->setIconColor(I)V

    .line 81730
    invoke-virtual {p2}, Lcom/facebook/ads/NativeAdBase;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A0L(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/Qc;

    move-result-object v2

    .line 81731
    .local v0, "internalNativeAd":Lcom/facebook/ads/redexgen/X/Qc;
    invoke-virtual {v2, p3}, Lcom/facebook/ads/redexgen/X/Qc;->A1V(Lcom/facebook/ads/NativeAdLayout;)V

    .line 81732
    invoke-virtual {v2, p0}, Lcom/facebook/ads/redexgen/X/Qc;->A1X(Lcom/facebook/ads/redexgen/X/fx;)V

    .line 81733
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Qc;->A0z()Lcom/facebook/ads/redexgen/X/iN;

    move-result-object v1

    .line 81734
    .local v2, "adapter":Lcom/facebook/ads/redexgen/X/iN;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/iN;->A0R()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/iN;->A0P()Z

    move-result v0

    if-nez v0, :cond_1

    .line 81735
    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 81736
    return-void

    .line 81737
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 81738
    :cond_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/Qx;

    invoke-direct {v0, p0, v2, p1, v3}, Lcom/facebook/ads/redexgen/X/Qx;-><init>(Lcom/facebook/ads/redexgen/X/fx;Lcom/facebook/ads/redexgen/X/Qc;Landroid/content/Context;Landroid/widget/LinearLayout;)V

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81739
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fx;->A05:Lcom/facebook/ads/AdOptionsView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Wq;->A0C:Lcom/facebook/ads/redexgen/X/Wq;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Wq;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Wq;)V

    .line 81740
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAdLayout;Lcom/facebook/ads/AdOptionsView;)V
    .locals 7

    .line 81741
    sget-object v4, Lcom/facebook/ads/AdOptionsView$Orientation;->HORIZONTAL:Lcom/facebook/ads/AdOptionsView$Orientation;

    const/16 v5, 0x17

    move-object v0, p0

    move-object v6, p4

    move-object v3, p3

    move-object v2, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/fx;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAdLayout;Lcom/facebook/ads/AdOptionsView$Orientation;ILcom/facebook/ads/AdOptionsView;)V

    .line 81742
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/XX;)Landroid/widget/ImageView;
    .locals 5

    .line 81743
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fx;->A05:Lcom/facebook/ads/AdOptionsView;

    invoke-virtual {v0}, Lcom/facebook/ads/AdOptionsView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 81744
    .local v0, "iconView":Landroid/widget/ImageView;
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 81745
    sget v3, Lcom/facebook/ads/redexgen/X/fx;->A09:I

    sget v2, Lcom/facebook/ads/redexgen/X/fx;->A09:I

    sget v1, Lcom/facebook/ads/redexgen/X/fx;->A09:I

    sget v0, Lcom/facebook/ads/redexgen/X/fx;->A09:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 81746
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/XY;->A01(Lcom/facebook/ads/redexgen/X/XX;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 81747
    return-object v4
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/fx;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x36

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 4

    const/16 v0, 0x9

    new-array v3, v0, [B

    sget-object v2, Lcom/facebook/ads/redexgen/X/fx;->A07:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/fx;->A07:[Ljava/lang/String;

    const-string v1, "u5VvbSB0F1Ye86S0UUtiEMk"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "xkynJM0f4daSI4M9ryujsiLCexBq"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    fill-array-data v3, :array_0

    sput-object v3, Lcom/facebook/ads/redexgen/X/fx;->A06:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :array_0
    .array-data 1
        0x51t
        0x66t
        0x73t
        0x6ct
        0x71t
        0x77t
        0x23t
        0x42t
        0x67t
    .end array-data
.end method


# virtual methods
.method public final A03(Lcom/facebook/ads/redexgen/X/XX;)V
    .locals 2

    .line 81748
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fx;->A04:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/XY;->A01(Lcom/facebook/ads/redexgen/X/XX;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 81749
    return-void
.end method

.method public final A04()Z
    .locals 1

    .line 81750
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/fx;->A00:Z

    return v0
.end method

.method public final A05()Z
    .locals 1

    .line 81751
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/fx;->A01:Z

    return v0
.end method

.method public final A06()Z
    .locals 1

    .line 81752
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/fx;->A02:Z

    return v0
.end method

.method public final getAdComponentViewApi()Lcom/facebook/ads/internal/api/AdComponentViewApi;
    .locals 0

    .line 81753
    return-object p0
.end method

.method public final setIconColor(I)V
    .locals 1

    .line 81754
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fx;->A04:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 81755
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fx;->A03:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 81756
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/fx;->A00:Z

    .line 81757
    return-void
.end method

.method public final setIconSizeDp(I)V
    .locals 3

    .line 81758
    sget v2, Lcom/facebook/ads/redexgen/X/fx;->A08:I

    sget v1, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    int-to-float v0, p1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 81759
    .local v0, "iconSize":I
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 81760
    .local v1, "iconParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fx;->A04:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81761
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fx;->A03:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81762
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/fx;->A01:Z

    .line 81763
    return-void
.end method

.method public final setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 81764
    const/4 v0, -0x2

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 81765
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 81766
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/R8;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81767
    return-void
.end method

.method public final setSingleIcon(Z)V
    .locals 2

    .line 81768
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/fx;->A04:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0L(Landroid/view/View;I)V

    .line 81769
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/fx;->A02:Z

    .line 81770
    return-void

    .line 81771
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
