.class public final Lcom/facebook/ads/redexgen/X/aM;
.super Landroid/widget/LinearLayout;
.source ""


# static fields
.field public static final A06:I


# instance fields
.field public A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:I

.field public final A04:Lcom/facebook/ads/redexgen/X/dL;

.field public final A05:[Lcom/facebook/ads/redexgen/X/aN;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 2489
    const/high16 v1, 0x40800000    # 4.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/aM;->A06:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;IIII)V
    .locals 3

    .line 76025
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 76026
    sget v0, Lcom/facebook/ads/redexgen/X/aM;->A06:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/aM;->A00:I

    .line 76027
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aM;->A04:Lcom/facebook/ads/redexgen/X/dL;

    .line 76028
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/aM;->setOrientation(I)V

    .line 76029
    iput p2, p0, Lcom/facebook/ads/redexgen/X/aM;->A03:I

    .line 76030
    iput p4, p0, Lcom/facebook/ads/redexgen/X/aM;->A01:I

    .line 76031
    iput p5, p0, Lcom/facebook/ads/redexgen/X/aM;->A02:I

    .line 76032
    new-array v0, p3, [Lcom/facebook/ads/redexgen/X/aN;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aM;->A05:[Lcom/facebook/ads/redexgen/X/aN;

    .line 76033
    const/4 v2, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v2, p3, :cond_0

    .line 76034
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aM;->A05:[Lcom/facebook/ads/redexgen/X/aN;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aM;->A00()Lcom/facebook/ads/redexgen/X/aN;

    move-result-object v0

    aput-object v0, v1, v2

    .line 76035
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aM;->A05:[Lcom/facebook/ads/redexgen/X/aN;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/aM;->addView(Landroid/view/View;)V

    .line 76036
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76037
    .end local v0    # "i":I
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aM;->A01()V

    .line 76038
    return-void
.end method

.method private A00()Lcom/facebook/ads/redexgen/X/aN;
    .locals 4

    .line 76039
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/aM;->A04:Lcom/facebook/ads/redexgen/X/dL;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/aM;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/aM;->A02:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/aN;

    invoke-direct {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aN;-><init>(Lcom/facebook/ads/redexgen/X/dL;II)V

    .line 76040
    .local v0, "starRatingView":Lcom/facebook/ads/redexgen/X/aN;
    iget v2, p0, Lcom/facebook/ads/redexgen/X/aM;->A03:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/aM;->A03:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 76041
    .local v1, "starRatingViewParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0x10

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 76042
    invoke-virtual {v3, v1}, Lcom/facebook/ads/redexgen/X/aN;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76043
    return-object v3
.end method

.method private A01()V
    .locals 3

    .line 76044
    const/4 v2, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aM;->A05:[Lcom/facebook/ads/redexgen/X/aN;

    array-length v0, v0

    if-ge v2, v0, :cond_1

    .line 76045
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aM;->A05:[Lcom/facebook/ads/redexgen/X/aN;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aN;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 76046
    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_1
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 76047
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76048
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/aM;->A00:I

    goto :goto_1

    .line 76049
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/aM;->requestLayout()V

    .line 76050
    return-void
.end method

.method private A02(F)V
    .locals 3

    .line 76051
    const/4 v2, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aM;->A05:[Lcom/facebook/ads/redexgen/X/aN;

    array-length v0, v0

    if-ge v2, v0, :cond_1

    .line 76052
    int-to-float v0, v2

    sub-float v1, p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 76053
    .local v1, "fillRatio":F
    const/4 v0, 0x0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_0

    .line 76054
    const/4 v1, 0x0

    .line 76055
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aM;->A05:[Lcom/facebook/ads/redexgen/X/aN;

    aget-object v0, v0, v2

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/aN;->setFillRatio(F)V

    .line 76056
    .end local v1    # "fillRatio":F
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76057
    .end local v0    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public setItemSpacing(I)V
    .locals 0

    .line 76058
    iput p1, p0, Lcom/facebook/ads/redexgen/X/aM;->A00:I

    .line 76059
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aM;->A01()V

    .line 76060
    return-void
.end method

.method public setRating(F)V
    .locals 0

    .line 76061
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/aM;->A02(F)V

    .line 76062
    return-void
.end method
