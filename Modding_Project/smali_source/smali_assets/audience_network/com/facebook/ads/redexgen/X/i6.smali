.class public abstract Lcom/facebook/ads/redexgen/X/i6;
.super Lcom/facebook/ads/redexgen/X/QC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Mk;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/QC<",
        "Lcom/facebook/ads/redexgen/X/OB;",
        ">;"
    }
.end annotation


# static fields
.field public static A05:[Ljava/lang/String;

.field public static final A06:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Mk;

.field public final A01:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Qc;",
            ">;"
        }
    .end annotation
.end field

.field public final A02:I

.field public final A03:Lcom/facebook/ads/redexgen/X/dL;

.field public final A04:Lcom/facebook/ads/redexgen/X/eW;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2968
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "BofGdT"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Cb8B81bPHxSAbCDzy4"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "tLXqRIVVg6Ax3ByQPtTHAjuCLXMkMIv2"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Awqy8gsEnlsE3SarczMGKLCzZdtyeG5w"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "c95zYEegXXkMe1M4f4KrlDKZ96YYHdKl"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "dzB1VPy83al1mBxHBTo"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "7fXNgxpNBgLKECdM7L4CyN3WmxsqHAeT"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "HUwJOtf8ZOX36MmDYBkOhN0MiSikj2Pg"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/i6;->A05:[Ljava/lang/String;

    const/high16 v1, 0x40800000    # 4.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/i6;->A06:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/0L;Ljava/util/List;Lcom/facebook/ads/redexgen/X/dL;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/0L;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Qc;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/dL;",
            ")V"
        }
    .end annotation

    .line 85634
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/mirror/InternalNativeAd;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/QC;-><init>()V

    .line 85635
    new-instance v0, Lcom/facebook/ads/redexgen/X/i9;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/i9;-><init>(Lcom/facebook/ads/redexgen/X/i6;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/i6;->A04:Lcom/facebook/ads/redexgen/X/eW;

    .line 85636
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/i6;->A03:Lcom/facebook/ads/redexgen/X/dL;

    .line 85637
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/0L;->getChildSpacing()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/i6;->A02:I

    .line 85638
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/i6;->A01:Ljava/util/List;

    .line 85639
    return-void
.end method

.method private A01(I)Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 6

    .line 85640
    const/4 v1, -0x2

    const/4 v0, -0x1

    new-instance v4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v4, v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 85641
    .local v0, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Lcom/facebook/ads/redexgen/X/i6;->A02:I

    if-nez p1, :cond_0

    mul-int/lit8 v3, v3, 0x2

    .line 85642
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/i6;->A01:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v5, v0, -0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/i6;->A05:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/i6;->A05:[Ljava/lang/String;

    const-string v1, "KlchvvVcsY9zV3e8wqzNtTZQscUuxnqD"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "gQBYn2ao1l5plthpQQ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-lt p1, v5, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/i6;->A02:I

    mul-int/lit8 v1, v0, 0x2

    .line 85643
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {v4, v3, v0, v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 85644
    return-object v4

    .line 85645
    :cond_1
    iget v1, p0, Lcom/facebook/ads/redexgen/X/i6;->A02:I

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/i6;)Lcom/facebook/ads/redexgen/X/Mk;
    .locals 0

    .line 85646
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/i6;->A00:Lcom/facebook/ads/redexgen/X/Mk;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/i6;)Lcom/facebook/ads/redexgen/X/eW;
    .locals 0

    .line 85647
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/i6;->A04:Lcom/facebook/ads/redexgen/X/eW;

    return-object p0
.end method


# virtual methods
.method public final A0B()I
    .locals 1

    .line 85648
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/i6;->A01:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final A0O(Landroid/widget/ImageView;I)V
    .locals 4

    .line 85649
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/i6;->A01:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/Qc;

    .line 85650
    .local v0, "childAd":Lcom/facebook/ads/redexgen/X/Qc;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Qc;->A14()Lcom/facebook/ads/redexgen/X/Up;

    move-result-object v2

    .line 85651
    .local v1, "coverImage":Lcom/facebook/ads/redexgen/X/Up;
    if-eqz v2, :cond_0

    .line 85652
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/i6;->A03:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v0, Lcom/facebook/ads/redexgen/X/KZ;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/KZ;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/dL;)V

    .line 85653
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KZ;->A04()Lcom/facebook/ads/redexgen/X/KZ;

    move-result-object v1

    .line 85654
    .local v2, "downloadImageTask":Lcom/facebook/ads/redexgen/X/KZ;
    new-instance v0, Lcom/facebook/ads/redexgen/X/i8;

    invoke-direct {v0, p0, p2, v3}, Lcom/facebook/ads/redexgen/X/i8;-><init>(Lcom/facebook/ads/redexgen/X/i6;ILcom/facebook/ads/redexgen/X/Qc;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A06(Lcom/facebook/ads/redexgen/X/Zo;)Lcom/facebook/ads/redexgen/X/KZ;

    .line 85655
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Up;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A07(Ljava/lang/String;)V

    .line 85656
    .end local v2    # "downloadImageTask":Lcom/facebook/ads/redexgen/X/KZ;
    :cond_0
    return-void
.end method

.method public final A0P(Lcom/facebook/ads/redexgen/X/Mk;)V
    .locals 0

    .line 85657
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/i6;->A00:Lcom/facebook/ads/redexgen/X/Mk;

    .line 85658
    return-void
.end method

.method public A0Q(Lcom/facebook/ads/redexgen/X/OB;I)V
    .locals 2

    .line 85659
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/OB;->A0p()Lcom/facebook/ads/internal/api/AdNativeComponentView;

    move-result-object v1

    .line 85660
    .local v0, "cardView":Lcom/facebook/ads/internal/api/AdNativeComponentView;
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/i6;->A01(I)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/api/AdNativeComponentView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85661
    return-void
.end method
