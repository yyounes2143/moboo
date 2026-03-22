.class public final Lcom/facebook/ads/redexgen/X/Ou;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/X5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/X7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WindowLineProcessor"
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/X4;

.field public final A01:Lcom/facebook/ads/redexgen/X/X5;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/X5;II)V
    .locals 1

    .line 56684
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56685
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ou;->A01:Lcom/facebook/ads/redexgen/X/X5;

    .line 56686
    new-instance v0, Lcom/facebook/ads/redexgen/X/X4;

    invoke-direct {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/X4;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ou;->A00:Lcom/facebook/ads/redexgen/X/X4;

    .line 56687
    return-void
.end method


# virtual methods
.method public final AGO(Ljava/lang/String;)V
    .locals 2

    .line 56688
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ou;->A00:Lcom/facebook/ads/redexgen/X/X4;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/X4;->A04(Ljava/lang/String;)V

    .line 56689
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ou;->A00:Lcom/facebook/ads/redexgen/X/X4;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/X4;->A02()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ou;->A00:Lcom/facebook/ads/redexgen/X/X4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/X7;->A09(Lcom/facebook/ads/redexgen/X/X4;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56690
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ou;->A01:Lcom/facebook/ads/redexgen/X/X5;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ou;->A00:Lcom/facebook/ads/redexgen/X/X4;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/X4;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/X5;->AGO(Ljava/lang/String;)V

    .line 56691
    :cond_0
    return-void
.end method

.method public final flush()V
    .locals 2

    .line 56692
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ou;->A00:Lcom/facebook/ads/redexgen/X/X4;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/X4;->A03()V

    .line 56693
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ou;->A00:Lcom/facebook/ads/redexgen/X/X4;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/X4;->A02()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 56694
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ou;->A00:Lcom/facebook/ads/redexgen/X/X4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/X7;->A09(Lcom/facebook/ads/redexgen/X/X4;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56695
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ou;->A01:Lcom/facebook/ads/redexgen/X/X5;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ou;->A00:Lcom/facebook/ads/redexgen/X/X4;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/X4;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/X5;->AGO(Ljava/lang/String;)V

    .line 56696
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ou;->A00:Lcom/facebook/ads/redexgen/X/X4;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/X4;->A03()V

    goto :goto_0

    .line 56697
    :cond_1
    return-void
.end method
