.class public final Lcom/facebook/ads/redexgen/X/jZ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/KW;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/jX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PatReader"
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/4I;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/jX;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/jX;)V
    .locals 2

    .line 89523
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/jZ;->A01:Lcom/facebook/ads/redexgen/X/jX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89524
    const/4 v0, 0x4

    new-array v1, v0, [B

    new-instance v0, Lcom/facebook/ads/redexgen/X/4I;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4I;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/jZ;->A00:Lcom/facebook/ads/redexgen/X/4I;

    .line 89525
    return-void
.end method


# virtual methods
.method public final A52(Lcom/facebook/ads/redexgen/X/4J;)V
    .locals 7

    .line 89526
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v0

    .line 89527
    .local v0, "tableId":I
    if-eqz v0, :cond_0

    .line 89528
    return-void

    .line 89529
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v0

    .line 89530
    .local v1, "secondHeaderByte":I
    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_1

    .line 89531
    return-void

    .line 89532
    :cond_1
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 89533
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v6

    const/4 v5, 0x4

    div-int/2addr v6, v5

    .line 89534
    .local v2, "programCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v6, :cond_4

    .line 89535
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jZ;->A00:Lcom/facebook/ads/redexgen/X/4I;

    invoke-virtual {p1, v0, v5}, Lcom/facebook/ads/redexgen/X/4J;->A0h(Lcom/facebook/ads/redexgen/X/4I;I)V

    .line 89536
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/jZ;->A00:Lcom/facebook/ads/redexgen/X/4I;

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v2

    .line 89537
    .local v5, "programNumber":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/jZ;->A00:Lcom/facebook/ads/redexgen/X/4I;

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 89538
    const/16 v1, 0xd

    if-nez v2, :cond_3

    .line 89539
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jZ;->A00:Lcom/facebook/ads/redexgen/X/4I;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 89540
    .end local v5    # "programNumber":I
    .end local v6
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 89541
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jZ;->A00:Lcom/facebook/ads/redexgen/X/4I;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v3

    .line 89542
    .local v6, "pid":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jZ;->A01:Lcom/facebook/ads/redexgen/X/jX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/jX;->A06(Lcom/facebook/ads/redexgen/X/jX;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 89543
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jZ;->A01:Lcom/facebook/ads/redexgen/X/jX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/jX;->A06(Lcom/facebook/ads/redexgen/X/jX;)Landroid/util/SparseArray;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jZ;->A01:Lcom/facebook/ads/redexgen/X/jX;

    new-instance v1, Lcom/facebook/ads/redexgen/X/jY;

    invoke-direct {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/jY;-><init>(Lcom/facebook/ads/redexgen/X/jX;I)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/jd;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/jd;-><init>(Lcom/facebook/ads/redexgen/X/KW;)V

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 89544
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jZ;->A01:Lcom/facebook/ads/redexgen/X/jX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/jX;->A02(Lcom/facebook/ads/redexgen/X/jX;)I

    goto :goto_1

    .line 89545
    .end local v4    # "i":I
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jZ;->A01:Lcom/facebook/ads/redexgen/X/jX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/jX;->A03(Lcom/facebook/ads/redexgen/X/jX;)I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_5

    .line 89546
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jZ;->A01:Lcom/facebook/ads/redexgen/X/jX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/jX;->A06(Lcom/facebook/ads/redexgen/X/jX;)Landroid/util/SparseArray;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 89547
    :cond_5
    return-void
.end method

.method public final AA2(Lcom/facebook/ads/redexgen/X/4R;Lcom/facebook/ads/redexgen/X/GY;Lcom/facebook/ads/redexgen/X/Ke;)V
    .locals 0

    .line 89548
    return-void
.end method
