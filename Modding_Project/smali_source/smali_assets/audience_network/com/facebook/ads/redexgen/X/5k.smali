.class public final Lcom/facebook/ads/redexgen/X/5k;
.super Lcom/facebook/ads/redexgen/X/DR;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/5h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/5h;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5h;)V
    .locals 0

    .line 16465
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5k;->A00:Lcom/facebook/ads/redexgen/X/5h;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DR;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/3Y;)V
    .locals 2

    .line 16466
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5k;->A00:Lcom/facebook/ads/redexgen/X/5h;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5h;->A05(Lcom/facebook/ads/redexgen/X/5h;)V

    .line 16467
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5k;->A00:Lcom/facebook/ads/redexgen/X/5h;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/5h;->A07:Lcom/facebook/ads/redexgen/X/FH;

    .line 16468
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FH;->A0O()Lcom/facebook/ads/redexgen/X/bZ;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5k;->A00:Lcom/facebook/ads/redexgen/X/5h;

    .line 16469
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/bZ;->AFm(Landroid/view/View;)V

    .line 16470
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/Td;)V
    .locals 0

    .line 16471
    check-cast p1, Lcom/facebook/ads/redexgen/X/3Y;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/5k;->A00(Lcom/facebook/ads/redexgen/X/3Y;)V

    return-void
.end method
