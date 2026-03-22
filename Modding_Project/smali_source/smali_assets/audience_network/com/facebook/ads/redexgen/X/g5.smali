.class public final Lcom/facebook/ads/redexgen/X/g5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Qj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/QO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/QO;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/QO;)V
    .locals 0

    .line 81934
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/g5;->A00:Lcom/facebook/ads/redexgen/X/QO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A79(I)Landroid/view/View;
    .locals 1

    .line 81935
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/g5;->A00:Lcom/facebook/ads/redexgen/X/QO;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/QO;->A0v(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final A7B(Landroid/view/View;)I
    .locals 3

    .line 81936
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/QP;

    .line 81937
    .local v0, "params":Lcom/facebook/ads/redexgen/X/QP;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/g5;->A00:Lcom/facebook/ads/redexgen/X/QO;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/QO;->A0l(Landroid/view/View;)I

    move-result v1

    iget v0, v2, Lcom/facebook/ads/redexgen/X/QP;->bottomMargin:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A7C(Landroid/view/View;)I
    .locals 3

    .line 81938
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/QP;

    .line 81939
    .local v0, "params":Lcom/facebook/ads/redexgen/X/QP;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/g5;->A00:Lcom/facebook/ads/redexgen/X/QO;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/QO;->A0q(Landroid/view/View;)I

    move-result v1

    iget v0, v2, Lcom/facebook/ads/redexgen/X/QP;->topMargin:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public final A8Y()I
    .locals 2

    .line 81940
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/g5;->A00:Lcom/facebook/ads/redexgen/X/QO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QO;->A0Z()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/g5;->A00:Lcom/facebook/ads/redexgen/X/QO;

    .line 81941
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QO;->A0f()I

    move-result v0

    sub-int/2addr v1, v0

    .line 81942
    return v1
.end method

.method public final A8Z()I
    .locals 1

    .line 81943
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/g5;->A00:Lcom/facebook/ads/redexgen/X/QO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QO;->A0i()I

    move-result v0

    return v0
.end method
