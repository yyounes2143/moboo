.class public abstract Lcom/facebook/ads/redexgen/X/g0;
.super Lcom/facebook/ads/redexgen/X/QK;
.source ""


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public A00:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2767
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ofgeN"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "GcYePxlnDkyLzFZQt8gXTfFAd"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "bIohWxIGlUqKJ41hMBKnFxYrg"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ROugplE3NXuve66PKoPS6E1ZAyp"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "eD20R2wAf"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "s8oLKbIochRuLWrY7HR296xJjla"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "faP6eJ6K6STeOEuOEXCJ6OuUaXzDbpLW"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "oXM2gF3tn"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/g0;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 81836
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/QK;-><init>()V

    .line 81837
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/g0;->A00:Z

    return-void
.end method


# virtual methods
.method public final A0N(Lcom/facebook/ads/redexgen/X/Qg;)Z
    .locals 1

    .line 81838
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/g0;->A00:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Qg;->A0f()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0O(Lcom/facebook/ads/redexgen/X/Qg;Lcom/facebook/ads/redexgen/X/QJ;Lcom/facebook/ads/redexgen/X/QJ;)Z
    .locals 7

    .line 81839
    move-object v2, p1

    if-eqz p2, :cond_1

    iget v1, p2, Lcom/facebook/ads/redexgen/X/QJ;->A01:I

    iget v0, p3, Lcom/facebook/ads/redexgen/X/QJ;->A01:I

    if-ne v1, v0, :cond_0

    iget v1, p2, Lcom/facebook/ads/redexgen/X/QJ;->A03:I

    iget v0, p3, Lcom/facebook/ads/redexgen/X/QJ;->A03:I

    if-eq v1, v0, :cond_1

    .line 81840
    :cond_0
    iget v3, p2, Lcom/facebook/ads/redexgen/X/QJ;->A01:I

    iget v4, p2, Lcom/facebook/ads/redexgen/X/QJ;->A03:I

    iget v5, p3, Lcom/facebook/ads/redexgen/X/QJ;->A01:I

    iget v6, p3, Lcom/facebook/ads/redexgen/X/QJ;->A03:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/g0;->A0Z(Lcom/facebook/ads/redexgen/X/Qg;IIII)Z

    move-result v0

    return v0

    .line 81841
    :cond_1
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/g0;->A0X(Lcom/facebook/ads/redexgen/X/Qg;)Z

    move-result v0

    return v0
.end method

.method public final A0P(Lcom/facebook/ads/redexgen/X/Qg;Lcom/facebook/ads/redexgen/X/QJ;Lcom/facebook/ads/redexgen/X/QJ;)Z
    .locals 9

    .line 81842
    iget v5, p2, Lcom/facebook/ads/redexgen/X/QJ;->A01:I

    .line 81843
    .local v6, "oldLeft":I
    iget v6, p2, Lcom/facebook/ads/redexgen/X/QJ;->A03:I

    .line 81844
    .local v7, "oldTop":I
    move-object v4, p1

    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/Qg;->A0H:Landroid/view/View;

    .line 81845
    .local v8, "disappearingItemView":Landroid/view/View;
    if-nez p3, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v7

    :goto_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/g0;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    iget v7, p3, Lcom/facebook/ads/redexgen/X/QJ;->A01:I

    goto :goto_0

    .line 81846
    .local p0, "newLeft":I
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/g0;->A01:[Ljava/lang/String;

    const-string v1, "jyZdeafgD"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "NUmje91r8"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-nez p3, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    .line 81847
    .local p1, "newTop":I
    :goto_1
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Qg;->A0g()Z

    move-result v0

    if-nez v0, :cond_4

    if-ne v5, v7, :cond_2

    if-eq v6, v8, :cond_4

    .line 81848
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, v7

    .line 81849
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, v8

    .line 81850
    invoke-virtual {v3, v7, v8, v1, v0}, Landroid/view/View;->layout(IIII)V

    .line 81851
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/g0;->A0Z(Lcom/facebook/ads/redexgen/X/Qg;IIII)Z

    move-result v0

    return v0

    .line 81852
    :cond_3
    iget v8, p3, Lcom/facebook/ads/redexgen/X/QJ;->A03:I

    goto :goto_1

    .line 81853
    :cond_4
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/g0;->A0Y(Lcom/facebook/ads/redexgen/X/Qg;)Z

    move-result v0

    return v0
.end method

.method public final A0Q(Lcom/facebook/ads/redexgen/X/Qg;Lcom/facebook/ads/redexgen/X/QJ;Lcom/facebook/ads/redexgen/X/QJ;)Z
    .locals 7

    .line 81854
    iget v1, p2, Lcom/facebook/ads/redexgen/X/QJ;->A01:I

    iget v0, p3, Lcom/facebook/ads/redexgen/X/QJ;->A01:I

    move-object v2, p1

    if-ne v1, v0, :cond_0

    iget v1, p2, Lcom/facebook/ads/redexgen/X/QJ;->A03:I

    iget v0, p3, Lcom/facebook/ads/redexgen/X/QJ;->A03:I

    if-eq v1, v0, :cond_1

    .line 81855
    :cond_0
    iget v3, p2, Lcom/facebook/ads/redexgen/X/QJ;->A01:I

    iget v4, p2, Lcom/facebook/ads/redexgen/X/QJ;->A03:I

    iget v5, p3, Lcom/facebook/ads/redexgen/X/QJ;->A01:I

    iget v6, p3, Lcom/facebook/ads/redexgen/X/QJ;->A03:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/g0;->A0Z(Lcom/facebook/ads/redexgen/X/Qg;IIII)Z

    move-result v0

    return v0

    .line 81856
    :cond_1
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/g0;->A0U(Lcom/facebook/ads/redexgen/X/Qg;)V

    .line 81857
    const/4 v0, 0x0

    return v0
.end method

.method public final A0R(Lcom/facebook/ads/redexgen/X/Qg;Lcom/facebook/ads/redexgen/X/Qg;Lcom/facebook/ads/redexgen/X/QJ;Lcom/facebook/ads/redexgen/X/QJ;)Z
    .locals 7

    .line 81858
    iget v3, p3, Lcom/facebook/ads/redexgen/X/QJ;->A01:I

    .line 81859
    .local p0, "fromLeft":I
    iget v4, p3, Lcom/facebook/ads/redexgen/X/QJ;->A03:I

    .line 81860
    .local p1, "fromTop":I
    move-object v2, p2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Qg;->A0l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81861
    iget v5, p3, Lcom/facebook/ads/redexgen/X/QJ;->A01:I

    .line 81862
    .local v0, "toLeft":I
    iget v6, p3, Lcom/facebook/ads/redexgen/X/QJ;->A03:I

    .line 81863
    .local v1, "toTop":I
    .end local v0    # "toLeft":I
    .local p2, "toLeft":I
    .local p3, "toTop":I
    :goto_0
    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/g0;->A0a(Lcom/facebook/ads/redexgen/X/Qg;Lcom/facebook/ads/redexgen/X/Qg;IIII)Z

    move-result v0

    return v0

    .line 81864
    .end local v0
    .end local v1    # "toTop":I
    :cond_0
    iget v5, p4, Lcom/facebook/ads/redexgen/X/QJ;->A01:I

    .line 81865
    .restart local v0    # "toLeft":I
    iget v6, p4, Lcom/facebook/ads/redexgen/X/QJ;->A03:I

    goto :goto_0
.end method

.method public final A0T(Lcom/facebook/ads/redexgen/X/Qg;)V
    .locals 0

    .line 81866
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/QK;->A0K(Lcom/facebook/ads/redexgen/X/Qg;)V

    .line 81867
    return-void
.end method

.method public final A0U(Lcom/facebook/ads/redexgen/X/Qg;)V
    .locals 0

    .line 81868
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/QK;->A0K(Lcom/facebook/ads/redexgen/X/Qg;)V

    .line 81869
    return-void
.end method

.method public final A0V(Lcom/facebook/ads/redexgen/X/Qg;)V
    .locals 0

    .line 81870
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/QK;->A0K(Lcom/facebook/ads/redexgen/X/Qg;)V

    .line 81871
    return-void
.end method

.method public final A0W(Lcom/facebook/ads/redexgen/X/Qg;Z)V
    .locals 0

    .line 81872
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/QK;->A0K(Lcom/facebook/ads/redexgen/X/Qg;)V

    .line 81873
    return-void
.end method

.method public abstract A0X(Lcom/facebook/ads/redexgen/X/Qg;)Z
.end method

.method public abstract A0Y(Lcom/facebook/ads/redexgen/X/Qg;)Z
.end method

.method public abstract A0Z(Lcom/facebook/ads/redexgen/X/Qg;IIII)Z
.end method

.method public abstract A0a(Lcom/facebook/ads/redexgen/X/Qg;Lcom/facebook/ads/redexgen/X/Qg;IIII)Z
.end method
