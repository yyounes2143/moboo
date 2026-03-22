.class public final Lcom/facebook/ads/redexgen/X/Fu;
.super Lcom/facebook/ads/redexgen/X/Vt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/4H;->A0f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/4H;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4H;)V
    .locals 0

    .line 36521
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Fu;->A00:Lcom/facebook/ads/redexgen/X/4H;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vt;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 2

    .line 36522
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fu;->A00:Lcom/facebook/ads/redexgen/X/4H;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4H;->A02(Lcom/facebook/ads/redexgen/X/4H;)Lcom/facebook/ads/redexgen/X/ae;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36523
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fu;->A00:Lcom/facebook/ads/redexgen/X/4H;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4H;->A02(Lcom/facebook/ads/redexgen/X/4H;)Lcom/facebook/ads/redexgen/X/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ae;->A1E()V

    .line 36524
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fu;->A00:Lcom/facebook/ads/redexgen/X/4H;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/G2;->A08:Lcom/facebook/ads/redexgen/X/Xm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fu;->A00:Lcom/facebook/ads/redexgen/X/4H;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4H;->A00(Lcom/facebook/ads/redexgen/X/4H;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xm;->setToolbarActionMode(I)V

    .line 36525
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fu;->A00:Lcom/facebook/ads/redexgen/X/4H;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/G2;->A08:Lcom/facebook/ads/redexgen/X/Xm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xm;->A07()V

    .line 36526
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fu;->A00:Lcom/facebook/ads/redexgen/X/4H;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4H;->A04(Lcom/facebook/ads/redexgen/X/4H;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 36527
    return-void
.end method
