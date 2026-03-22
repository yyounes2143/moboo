.class public abstract Lcom/facebook/ads/redexgen/X/aB;
.super Landroid/widget/Button;
.source ""


# static fields
.field public static A0B:[B

.field public static A0C:[Ljava/lang/String;

.field public static final A0D:I

.field public static final A0E:I


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:Lcom/facebook/ads/redexgen/X/My;

.field public A04:Z

.field public A05:Z

.field public A06:Z

.field public final A07:F

.field public final A08:I

.field public final A09:Ljava/lang/Runnable;

.field public final A0A:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2481
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "AuzWZ8osEfq4z249PYqxDxnd"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "GmaNjpajnwuNMOpMTnafkSdm"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "IXSwi1vel7aGkSvKIjHlp"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "5xYCukR2VNv2y0"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "9gt7y21mjsR"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "XkvVk"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "YCgMHGcNxR5BY"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "3lMWF0VDfBsAiU48Gpk3b"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/aB;->A0C:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/aB;->A0C()V

    const/high16 v1, 0x41800000    # 16.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/aB;->A0D:I

    .line 2482
    const/high16 v1, 0x40800000    # 4.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/aB;->A0E:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/My;)V
    .locals 2

    .line 75777
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 75778
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/aB;->A04:Z

    .line 75779
    iput v1, p0, Lcom/facebook/ads/redexgen/X/aB;->A02:I

    .line 75780
    iput v1, p0, Lcom/facebook/ads/redexgen/X/aB;->A00:I

    .line 75781
    sget v0, Lcom/facebook/ads/redexgen/X/aB;->A0E:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/aB;->A01:I

    .line 75782
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/aB;->A05:Z

    .line 75783
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/aB;->A06:Z

    .line 75784
    new-instance v0, Lcom/facebook/ads/redexgen/X/K9;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/K9;-><init>(Lcom/facebook/ads/redexgen/X/aB;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aB;->A09:Ljava/lang/Runnable;

    .line 75785
    new-instance v0, Lcom/facebook/ads/redexgen/X/K1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/K1;-><init>(Lcom/facebook/ads/redexgen/X/aB;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aB;->A0A:Ljava/lang/Runnable;

    .line 75786
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/aB;->A03:Lcom/facebook/ads/redexgen/X/My;

    .line 75787
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/U7;->A05(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/aB;->A08:I

    .line 75788
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/U7;->A00(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/aB;->A07:F

    .line 75789
    const/16 v0, 0x10

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0W(Landroid/widget/TextView;ZI)V

    .line 75790
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/aB;->setGravity(I)V

    .line 75791
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aB;->A0A()V

    .line 75792
    return-void
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/aB;)I
    .locals 0

    .line 75793
    iget p0, p0, Lcom/facebook/ads/redexgen/X/aB;->A08:I

    return p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/aB;)Ljava/lang/Runnable;
    .locals 0

    .line 75794
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/aB;->A0A:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/aB;)Ljava/lang/Runnable;
    .locals 0

    .line 75795
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/aB;->A09:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static A09(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/aB;->A0B:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x56

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A0A()V
    .locals 2

    .line 75796
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aB;->A03:Lcom/facebook/ads/redexgen/X/My;

    if-eqz v0, :cond_0

    .line 75797
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aB;->A03:Lcom/facebook/ads/redexgen/X/My;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/aB;->A06:Z

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/My;->A09(Z)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/aB;->A00:I

    .line 75798
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aB;->A03:Lcom/facebook/ads/redexgen/X/My;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/aB;->A06:Z

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/My;->A0A(Z)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/aB;->A02:I

    .line 75799
    :cond_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/aB;->A00:I

    .line 75800
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/aB;->A05:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/aB;->A01:I

    .line 75801
    :goto_0
    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0M(Landroid/view/View;II)V

    .line 75802
    iget v0, p0, Lcom/facebook/ads/redexgen/X/aB;->A02:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/aB;->setTextColor(I)V

    .line 75803
    return-void

    .line 75804
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0B()V
    .locals 3

    .line 75805
    iget v0, p0, Lcom/facebook/ads/redexgen/X/aB;->A08:I

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/aB;->A04:Z

    if-eqz v0, :cond_1

    .line 75806
    :cond_0
    return-void

    .line 75807
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/aB;->A04:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/aB;->A0C:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 75808
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/aB;->A0C:[Ljava/lang/String;

    const-string v1, "QVGWsKZ9hUXhPHMuZeCIqAcU"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "lfolaSZCl8ASaScD6QDCGzAz"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/aB;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A2b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 75809
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/aB;->A09:Ljava/lang/Runnable;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/aB;->A08:I

    int-to-long v0, v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/aB;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 75810
    :cond_3
    return-void
.end method

.method public static A0C()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/aB;->A0B:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x7dt
        -0x23t
        -0xct
        -0x54t
    .end array-data
.end method


# virtual methods
.method public final A0D()V
    .locals 6

    .line 75811
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/aB;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 75812
    .local v0, "text":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75813
    return-void

    .line 75814
    :cond_0
    const/4 v2, 0x1

    const/4 v1, 0x3

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aB;->A09(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 75815
    .local v1, "words":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v2, "i":I
    :goto_0
    array-length v0, v3

    if-ge v5, v0, :cond_1

    .line 75816
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, v3, v5

    .line 75817
    const/4 v0, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v0, v3, v5

    .line 75818
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    .line 75819
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 75820
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aB;->A09(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/aA;->A01(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 75821
    return-void
.end method

.method public getColorInfo()Lcom/facebook/ads/redexgen/X/My;
    .locals 1

    .line 75822
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aB;->A03:Lcom/facebook/ads/redexgen/X/My;

    return-object v0
.end method

.method public final onAttachedToWindow()V
    .locals 0

    .line 75823
    invoke-super {p0}, Landroid/widget/Button;->onAttachedToWindow()V

    .line 75824
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aB;->A0B()V

    .line 75825
    return-void
.end method

.method public setCornerRadiusPx(I)V
    .locals 0

    .line 75826
    iput p1, p0, Lcom/facebook/ads/redexgen/X/aB;->A01:I

    .line 75827
    return-void
.end method

.method public setRoundedCornersEnabled(Z)V
    .locals 0

    .line 75828
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/aB;->A05:Z

    .line 75829
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aB;->A0A()V

    .line 75830
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 75831
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 75832
    return-void
.end method

.method public setUpButtonColors(Lcom/facebook/ads/redexgen/X/My;)V
    .locals 0

    .line 75833
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aB;->A03:Lcom/facebook/ads/redexgen/X/My;

    .line 75834
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aB;->A0A()V

    .line 75835
    return-void
.end method

.method public setViewShowsOverMedia(Z)V
    .locals 0

    .line 75836
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/aB;->A06:Z

    .line 75837
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aB;->A0A()V

    .line 75838
    return-void
.end method
