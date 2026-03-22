.class public final Lcom/facebook/ads/redexgen/X/Db;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/dZ;


# instance fields
.field public final A00:Landroid/view/View;

.field public final A01:Lcom/facebook/ads/redexgen/X/dL;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Landroid/view/View;)V
    .locals 0

    .line 33886
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33887
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Db;->A01:Lcom/facebook/ads/redexgen/X/dL;

    .line 33888
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Db;->A00:Landroid/view/View;

    .line 33889
    return-void
.end method


# virtual methods
.method public final A9N()D
    .locals 3

    .line 33890
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Db;->A00:Landroid/view/View;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Db;->A01:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/eX;->A0E(Landroid/view/View;ILcom/facebook/ads/redexgen/X/dL;)Lcom/facebook/ads/redexgen/X/eY;

    move-result-object v0

    .line 33891
    .local v0, "result":Lcom/facebook/ads/redexgen/X/eY;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eY;->A00()F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method
