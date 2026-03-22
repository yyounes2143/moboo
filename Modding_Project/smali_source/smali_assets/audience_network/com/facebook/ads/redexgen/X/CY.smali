.class public final Lcom/facebook/ads/redexgen/X/CY;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/e2;


# static fields
.field public static A06:[B


# instance fields
.field public A00:Landroid/animation/ValueAnimator;

.field public A01:Lcom/facebook/ads/redexgen/X/e1;

.field public final A02:I

.field public final A03:I

.field public final A04:I

.field public final A05:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/CY;->A05()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;III)V
    .locals 1

    .line 32982
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32983
    sget-object v0, Lcom/facebook/ads/redexgen/X/e1;->A04:Lcom/facebook/ads/redexgen/X/e1;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CY;->A01:Lcom/facebook/ads/redexgen/X/e1;

    .line 32984
    iput p2, p0, Lcom/facebook/ads/redexgen/X/CY;->A02:I

    .line 32985
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/CY;->A05:Landroid/view/View;

    .line 32986
    iput p3, p0, Lcom/facebook/ads/redexgen/X/CY;->A04:I

    .line 32987
    iput p4, p0, Lcom/facebook/ads/redexgen/X/CY;->A03:I

    .line 32988
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/CY;)I
    .locals 0

    .line 32989
    iget p0, p0, Lcom/facebook/ads/redexgen/X/CY;->A04:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/CY;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 32990
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/CY;->A00:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/CY;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 32991
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/CY;->A00:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/CY;Lcom/facebook/ads/redexgen/X/e1;)Lcom/facebook/ads/redexgen/X/e1;
    .locals 0

    .line 32992
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/CY;->A01:Lcom/facebook/ads/redexgen/X/e1;

    return-object p1
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/CY;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/CY;->A06:[B

    return-void

    :array_0
    .array-data 1
        0x31t
        0x20t
        0x3dt
        0x31t
        0x6t
        0x2at
        0x29t
        0x2at
        0x37t
    .end array-data
.end method

.method private A06(II)V
    .locals 4

    .line 32993
    iget v0, p0, Lcom/facebook/ads/redexgen/X/CY;->A04:I

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/facebook/ads/redexgen/X/e1;->A03:Lcom/facebook/ads/redexgen/X/e1;

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CY;->A01:Lcom/facebook/ads/redexgen/X/e1;

    .line 32994
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/CY;->A05:Landroid/view/View;

    check-cast v3, Landroid/widget/TextView;

    const/4 v2, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/CY;->A04(III)Ljava/lang/String;

    move-result-object v1

    filled-new-array {p1, p2}, [I

    move-result-object v0

    invoke-static {v3, v1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CY;->A00:Landroid/animation/ValueAnimator;

    .line 32995
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/CY;->A00:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 32996
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/CY;->A00:Landroid/animation/ValueAnimator;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/CY;->A02:I

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 32997
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/CY;->A00:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/facebook/ads/redexgen/X/e8;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/e8;-><init>(Lcom/facebook/ads/redexgen/X/CY;II)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 32998
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CY;->A00:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 32999
    return-void

    .line 33000
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/e1;->A05:Lcom/facebook/ads/redexgen/X/e1;

    goto :goto_0
.end method

.method private A07(IIZ)V
    .locals 1

    .line 33001
    if-eqz p3, :cond_0

    .line 33002
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/CY;->A06(II)V

    .line 33003
    :goto_0
    return-void

    .line 33004
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CY;->A05:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 33005
    iget v0, p0, Lcom/facebook/ads/redexgen/X/CY;->A03:I

    if-ne p2, v0, :cond_1

    sget-object v0, Lcom/facebook/ads/redexgen/X/e1;->A02:Lcom/facebook/ads/redexgen/X/e1;

    :goto_1
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CY;->A01:Lcom/facebook/ads/redexgen/X/e1;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/e1;->A04:Lcom/facebook/ads/redexgen/X/e1;

    goto :goto_1
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/CY;IIZ)V
    .locals 0

    .line 33006
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/CY;->A07(IIZ)V

    return-void
.end method


# virtual methods
.method public final A42(ZZ)V
    .locals 2

    .line 33007
    if-eqz p2, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/CY;->A03:I

    .line 33008
    .local v0, "startColor":I
    :goto_0
    if-eqz p2, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/CY;->A04:I

    .line 33009
    .local v1, "endColor":I
    :goto_1
    invoke-direct {p0, v1, v0, p1}, Lcom/facebook/ads/redexgen/X/CY;->A07(IIZ)V

    .line 33010
    return-void

    .line 33011
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/CY;->A03:I

    goto :goto_1

    .line 33012
    :cond_1
    iget v1, p0, Lcom/facebook/ads/redexgen/X/CY;->A04:I

    goto :goto_0
.end method

.method public final A93()Lcom/facebook/ads/redexgen/X/e1;
    .locals 1

    .line 33013
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CY;->A01:Lcom/facebook/ads/redexgen/X/e1;

    return-object v0
.end method

.method public final cancel()V
    .locals 1

    .line 33014
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CY;->A00:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 33015
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CY;->A00:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 33016
    :cond_0
    return-void
.end method
