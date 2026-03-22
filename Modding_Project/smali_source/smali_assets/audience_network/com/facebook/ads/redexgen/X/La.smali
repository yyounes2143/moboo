.class public final Lcom/facebook/ads/redexgen/X/La;
.super Lcom/facebook/ads/redexgen/X/aK;
.source ""


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public A00:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1310
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Er9uQMazYAvywc84qssi8CcPD5K"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "bpAOsy1ZAool4ZO"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "456cLSbicHverE2"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "OQn0GSeoKkB55mmrW6XfcsGu8yTW4vwY"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "5C5KK7QE3ZVmFSCl85soxjy8aya"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "FZZqXqYfqR5sLOGe"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "aaYiwVUQ6XuTYr3PnCNNWh"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "fICxnQOCOsz8JBbFc5EZnQUEppLIkjem"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/La;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;)V
    .locals 0

    .line 50622
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/aK;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    .line 50623
    return-void
.end method


# virtual methods
.method public final onMeasure(II)V
    .locals 4

    .line 50624
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 50625
    .local v0, "heightSpecSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 50626
    .local v1, "widthSpecSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    .line 50627
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 50628
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 50629
    .local v2, "min":I
    invoke-virtual {p0, v0, v0}, Lcom/facebook/ads/redexgen/X/La;->setMeasuredDimension(II)V

    .line 50630
    .end local v2    # "min":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/La;->A00:Landroid/widget/ImageView$ScaleType;

    if-eqz v0, :cond_6

    .line 50631
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/La;->A00:Landroid/widget/ImageView$ScaleType;

    sget-object v1, Lcom/facebook/ads/redexgen/X/La;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xf

    if-eq v1, v0, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 50632
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 50633
    if-lez v3, :cond_1

    .line 50634
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 50635
    :cond_1
    invoke-virtual {p0, v2, v2}, Lcom/facebook/ads/redexgen/X/La;->setMeasuredDimension(II)V

    goto :goto_0

    .line 50636
    :cond_2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 50637
    if-lez v2, :cond_3

    .line 50638
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 50639
    :cond_3
    invoke-virtual {p0, v3, v3}, Lcom/facebook/ads/redexgen/X/La;->setMeasuredDimension(II)V

    goto :goto_0

    .line 50640
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/aK;->onMeasure(II)V

    goto :goto_0

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/La;->A01:[Ljava/lang/String;

    const-string v1, "1TQeY3NJoCywMKTf"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-super {p0, v3}, Lcom/facebook/ads/redexgen/X/aK;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 50641
    :cond_6
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 0

    .line 50642
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/La;->A00:Landroid/widget/ImageView$ScaleType;

    .line 50643
    return-void
.end method
