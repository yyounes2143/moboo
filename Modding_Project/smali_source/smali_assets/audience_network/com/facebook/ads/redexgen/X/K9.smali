.class public final Lcom/facebook/ads/redexgen/X/K9;
.super Lcom/facebook/ads/redexgen/X/Vt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/aB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/aB;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/aB;)V
    .locals 0

    .line 47734
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/K9;->A00:Lcom/facebook/ads/redexgen/X/aB;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vt;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 4

    .line 47735
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/K9;->A00:Lcom/facebook/ads/redexgen/X/aB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aB;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47736
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/K9;->A00:Lcom/facebook/ads/redexgen/X/aB;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/K9;->A00:Lcom/facebook/ads/redexgen/X/aB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aB;->A06(Lcom/facebook/ads/redexgen/X/aB;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v2, p0, v0, v1}, Lcom/facebook/ads/redexgen/X/aB;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 47737
    return-void

    .line 47738
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/K9;->A00:Lcom/facebook/ads/redexgen/X/aB;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/aB;->setPressed(Z)V

    .line 47739
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/K9;->A00:Lcom/facebook/ads/redexgen/X/aB;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/K9;->A00:Lcom/facebook/ads/redexgen/X/aB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aB;->A07(Lcom/facebook/ads/redexgen/X/aB;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v0, 0xfa

    invoke-virtual {v3, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/aB;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 47740
    return-void
.end method
