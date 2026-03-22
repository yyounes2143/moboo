.class public final Lcom/facebook/ads/redexgen/X/FI;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/bZ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/FH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/FH;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/FH;)V
    .locals 0

    .line 36000
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/FI;->A00:Lcom/facebook/ads/redexgen/X/FH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AFm(Landroid/view/View;)V
    .locals 2

    .line 36001
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FI;->A00:Lcom/facebook/ads/redexgen/X/FH;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/FH;->A09:Z

    if-eqz v0, :cond_0

    .line 36002
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FI;->A00:Lcom/facebook/ads/redexgen/X/FH;

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/FH;->A07:Z

    .line 36003
    :cond_0
    return-void
.end method

.method public final AFo(Landroid/view/View;)V
    .locals 2

    .line 36004
    check-cast p1, Lcom/facebook/ads/redexgen/X/Ir;

    .line 36005
    .local v0, "cardLayout":Lcom/facebook/ads/redexgen/X/Ir;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Ir;->A1R()V

    .line 36006
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FI;->A00:Lcom/facebook/ads/redexgen/X/FH;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/FH;->A09:Z

    if-eqz v0, :cond_0

    .line 36007
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FI;->A00:Lcom/facebook/ads/redexgen/X/FH;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/FH;->A07:Z

    .line 36008
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FI;->A00:Lcom/facebook/ads/redexgen/X/FH;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/FH;->A04:Lcom/facebook/ads/redexgen/X/eX;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eX;->A0Z()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, -0x5f000010

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Ir;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 36009
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FI;->A00:Lcom/facebook/ads/redexgen/X/FH;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/FH;->A04:Lcom/facebook/ads/redexgen/X/eX;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eX;->A0U()V

    .line 36010
    :cond_1
    return-void
.end method
