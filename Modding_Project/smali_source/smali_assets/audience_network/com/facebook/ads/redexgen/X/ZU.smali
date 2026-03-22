.class public final Lcom/facebook/ads/redexgen/X/ZU;
.super Landroid/widget/LinearLayout;
.source ""


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;

.field public static final A06:I

.field public static final A07:I


# instance fields
.field public A00:Landroid/graphics/Bitmap;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public A01:Landroid/widget/TextView;

.field public A02:Landroid/widget/TextView;

.field public final A03:Lcom/facebook/ads/redexgen/X/dL;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2455
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Jr0WeKM"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "aLyr78qnX3"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "WDzI2yCoQnaG5WlFPMLzJUV1"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "NMdl8UzP9SICP"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "nTr6FgA"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "dLt28u1n76"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "a9DRmwxXZv9mu"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "zh83YRMbL55XtKeOm"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/ZU;->A05:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/ZU;->A02()V

    const/high16 v1, 0x40000000    # 2.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A03:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/ZU;->A07:I

    .line 2456
    const/high16 v1, 0x41400000    # 12.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/ZU;->A06:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;)V
    .locals 0

    .line 74635
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 74636
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ZU;->A03:Lcom/facebook/ads/redexgen/X/dL;

    .line 74637
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ZU;->A01()V

    .line 74638
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/ZU;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length v0, v3

    if-ge p0, v0, :cond_1

    aget-byte p1, v3, p0

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZU;->A05:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/ZU;->A05:[Ljava/lang/String;

    const-string v1, "ZRUGDW6hHHeRJ"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "Carw9iBjdVQlg"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    xor-int/2addr p1, p2

    xor-int/lit8 v0, p1, 0xb

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A01()V
    .locals 8

    .line 74639
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ZU;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 74640
    .local v0, "density":F
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/ZU;->setOrientation(I)V

    .line 74641
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ZU;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A02:Landroid/widget/TextView;

    .line 74642
    const/4 v0, -0x1

    const/4 v7, -0x2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 74643
    .local v2, "titleTextViewParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZU;->A02:Landroid/widget/TextView;

    const v0, -0xf7f7f7

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74644
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZU;->A02:Landroid/widget/TextView;

    const/high16 v0, 0x41700000    # 15.0f

    const/4 v6, 0x2

    invoke-virtual {v1, v6, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 74645
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZU;->A02:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 74646
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A02:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 74647
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A02:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74648
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A02:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 74649
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZU;->A02:Landroid/widget/TextView;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 74650
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A02:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/ZU;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74651
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ZU;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A01:Landroid/widget/TextView;

    .line 74652
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 74653
    .local v3, "subtitleTextViewParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZU;->A01:Landroid/widget/TextView;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 74654
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZU;->A01:Landroid/widget/TextView;

    const v0, -0x8c8c8d

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74655
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZU;->A01:Landroid/widget/TextView;

    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {v1, v6, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 74656
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZU;->A01:Landroid/widget/TextView;

    sget v0, Lcom/facebook/ads/redexgen/X/ZU;->A07:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 74657
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZU;->A01:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 74658
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A01:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 74659
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A01:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74660
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A01:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 74661
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A01:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/ZU;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74662
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A03:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A2o(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74663
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A02:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74664
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A01:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74665
    :cond_0
    return-void
.end method

.method public static A02()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/ZU;->A04:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x1et
        0x2t
        0x2t
        0x6t
        0x5t
    .end array-data
.end method

.method private getPadlockBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .line 74666
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A00:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 74667
    sget-object v0, Lcom/facebook/ads/redexgen/X/XX;->A0J:Lcom/facebook/ads/redexgen/X/XX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XY;->A01(Lcom/facebook/ads/redexgen/X/XX;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A00:Landroid/graphics/Bitmap;

    .line 74668
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/ZU;->A00:Landroid/graphics/Bitmap;

    sget v2, Lcom/facebook/ads/redexgen/X/ZU;->A06:I

    sget v1, Lcom/facebook/ads/redexgen/X/ZU;->A06:I

    const/4 v0, 0x1

    invoke-static {v3, v2, v1, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A00:Landroid/graphics/Bitmap;

    .line 74669
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A00:Landroid/graphics/Bitmap;

    return-object v0
.end method


# virtual methods
.method public setSubtitle(Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 74670
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 74671
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A01:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74672
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/ZU;->A01:Landroid/widget/TextView;

    sget-object v1, Lcom/facebook/ads/redexgen/X/ZU;->A05:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x14

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZU;->A05:[Ljava/lang/String;

    const-string v1, "pcOg4Bl"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "wYgGrPO"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74673
    .end local v0
    :goto_0
    return-void

    .line 74674
    :cond_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/WQ;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 74675
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZU;->A01:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74676
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/ZU;->A01:Landroid/widget/TextView;

    .line 74677
    const/4 v2, 0x0

    const/4 v1, 0x5

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZU;->A00(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74678
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ZU;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ZU;->getPadlockBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 74679
    :goto_1
    invoke-virtual {v3, v0, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 74680
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZU;->A01:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 74681
    :cond_1
    move-object v0, v5

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2

    .line 74682
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74683
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZU;->A02:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74684
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZU;->A02:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74685
    :goto_0
    return-void

    .line 74686
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZU;->A02:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74687
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZU;->A02:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
