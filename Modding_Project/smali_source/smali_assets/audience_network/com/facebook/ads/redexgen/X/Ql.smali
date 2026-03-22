.class public final Lcom/facebook/ads/redexgen/X/Ql;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Qj;,
        Lcom/facebook/ads/redexgen/X/Qi;,
        Lcom/facebook/ads/internal/androidx/support/v7/widget/ViewBoundsCheck$ViewBounds;
    }
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Qi;

.field public final A01:Lcom/facebook/ads/redexgen/X/Qj;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Qj;)V
    .locals 1

    .line 61337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61338
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ql;->A01:Lcom/facebook/ads/redexgen/X/Qj;

    .line 61339
    new-instance v0, Lcom/facebook/ads/redexgen/X/Qi;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Qi;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ql;->A00:Lcom/facebook/ads/redexgen/X/Qi;

    .line 61340
    return-void
.end method


# virtual methods
.method public final A00(IIII)Landroid/view/View;
    .locals 8

    .line 61341
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ql;->A01:Lcom/facebook/ads/redexgen/X/Qj;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Qj;->A8Z()I

    move-result v3

    .line 61342
    .local v0, "start":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ql;->A01:Lcom/facebook/ads/redexgen/X/Qj;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Qj;->A8Y()I

    move-result v2

    .line 61343
    .local v1, "end":I
    if-le p2, p1, :cond_2

    const/4 v7, 0x1

    .line 61344
    .local v2, "next":I
    :goto_0
    const/4 v6, 0x0

    .line 61345
    .local v3, "acceptableMatch":Landroid/view/View;
    .local v4, "i":I
    :goto_1
    if-eq p1, p2, :cond_3

    .line 61346
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ql;->A01:Lcom/facebook/ads/redexgen/X/Qj;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Qj;->A79(I)Landroid/view/View;

    move-result-object v1

    .line 61347
    .local v5, "child":Landroid/view/View;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ql;->A01:Lcom/facebook/ads/redexgen/X/Qj;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Qj;->A7C(Landroid/view/View;)I

    move-result v5

    .line 61348
    .local v6, "childStart":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ql;->A01:Lcom/facebook/ads/redexgen/X/Qj;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Qj;->A7B(Landroid/view/View;)I

    move-result v4

    .line 61349
    .local v7, "childEnd":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ql;->A00:Lcom/facebook/ads/redexgen/X/Qi;

    invoke-virtual {v0, v3, v2, v5, v4}, Lcom/facebook/ads/redexgen/X/Qi;->A03(IIII)V

    .line 61350
    if-eqz p3, :cond_0

    .line 61351
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ql;->A00:Lcom/facebook/ads/redexgen/X/Qi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qi;->A01()V

    .line 61352
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ql;->A00:Lcom/facebook/ads/redexgen/X/Qi;

    invoke-virtual {v0, p3}, Lcom/facebook/ads/redexgen/X/Qi;->A02(I)V

    .line 61353
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ql;->A00:Lcom/facebook/ads/redexgen/X/Qi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qi;->A04()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61354
    return-object v1

    .line 61355
    :cond_0
    if-eqz p4, :cond_1

    .line 61356
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ql;->A00:Lcom/facebook/ads/redexgen/X/Qi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qi;->A01()V

    .line 61357
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ql;->A00:Lcom/facebook/ads/redexgen/X/Qi;

    invoke-virtual {v0, p4}, Lcom/facebook/ads/redexgen/X/Qi;->A02(I)V

    .line 61358
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ql;->A00:Lcom/facebook/ads/redexgen/X/Qi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qi;->A04()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61359
    move-object v6, v1

    .line 61360
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childStart":I
    .end local v7    # "childEnd":I
    :cond_1
    add-int/2addr p1, v7

    goto :goto_1

    .line 61361
    :cond_2
    const/4 v7, -0x1

    goto :goto_0

    .line 61362
    .end local v4    # "i":I
    :cond_3
    return-object v6
.end method
