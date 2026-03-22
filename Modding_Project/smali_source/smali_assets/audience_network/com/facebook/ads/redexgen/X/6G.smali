.class public final Lcom/facebook/ads/redexgen/X/6G;
.super Lcom/facebook/ads/redexgen/X/gH;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/6F;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CenterSmoothScroller"
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/6F;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 386
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "5vbH5h"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "J"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "C4GDfN5QjjsYSTm6MxZFmUsCMcA9wBBJ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "6VFwzkwOMMM2Di2Z85K5QmwqwgWhrd8W"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "uhhUuQP5WsjWPtKrx"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "v18Pv4VwePGedZr395LFzqQB6yfdWBSj"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "eHjrumjSh1wPfIUStRl2rH8Zl9vSSm7d"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "psLA63BrOeuZ89bQmrhMweOfIVNK7DGd"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/6G;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/6F;Lcom/facebook/ads/redexgen/X/dL;)V
    .locals 0

    .line 17462
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6G;->A00:Lcom/facebook/ads/redexgen/X/6F;

    .line 17463
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/gH;-><init>(Landroid/content/Context;)V

    .line 17464
    return-void
.end method


# virtual methods
.method public final A0J(Landroid/util/DisplayMetrics;)F
    .locals 2

    .line 17465
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6G;->A00:Lcom/facebook/ads/redexgen/X/6F;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6F;->A00(Lcom/facebook/ads/redexgen/X/6F;)F

    move-result v1

    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    div-float/2addr v1, v0

    return v1
.end method

.method public final A0K()I
    .locals 1

    .line 17466
    const/4 v0, -0x1

    return v0
.end method

.method public final A0O(Landroid/view/View;I)I
    .locals 8

    .line 17467
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Qb;->A08()Lcom/facebook/ads/redexgen/X/QO;

    move-result-object v2

    .line 17468
    .local v0, "layoutManager":Lcom/facebook/ads/redexgen/X/QO;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/QO;->A22()Z

    move-result v0

    if-nez v0, :cond_0

    .line 17469
    const/4 v0, 0x0

    return v0

    .line 17470
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/QP;

    .line 17471
    .local v1, "params":Lcom/facebook/ads/redexgen/X/QP;
    invoke-virtual {v2, p1}, Lcom/facebook/ads/redexgen/X/QO;->A0m(Landroid/view/View;)I

    move-result v3

    iget v0, v1, Lcom/facebook/ads/redexgen/X/QP;->leftMargin:I

    sub-int/2addr v3, v0

    .line 17472
    .local v2, "left":I
    invoke-virtual {v2, p1}, Lcom/facebook/ads/redexgen/X/QO;->A0p(Landroid/view/View;)I

    move-result v4

    iget v0, v1, Lcom/facebook/ads/redexgen/X/QP;->rightMargin:I

    add-int/2addr v4, v0

    .line 17473
    .local v3, "right":I
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/QO;->A0g()I

    move-result v5

    .line 17474
    .local p2, "start":I
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/QO;->A0j()I

    move-result v6

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/QO;->A0h()I

    move-result v0

    sub-int/2addr v6, v0

    .line 17475
    .local p3, "end":I
    move-object v2, p0

    move v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/gH;->A0N(IIIII)I

    move-result v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6G;->A00:Lcom/facebook/ads/redexgen/X/6F;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6F;->A01(Lcom/facebook/ads/redexgen/X/6F;)I

    move-result v0

    add-int/2addr v3, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/6G;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x6

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/6G;->A01:[Ljava/lang/String;

    const-string v1, "LE8phwfR0RxAHMOOl0X9IEx3wOgwcDNd"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "Bj9ROfqsKQjGAcpCTsOWpU0U4DTJlpud"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return v3
.end method

.method public final A0P(I)Landroid/graphics/PointF;
    .locals 1

    .line 17476
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6G;->A00:Lcom/facebook/ads/redexgen/X/6F;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/gI;->A4y(I)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method
