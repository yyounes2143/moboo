.class public final Lcom/facebook/ads/redexgen/X/K1;
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

    .line 47672
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/K1;->A00:Lcom/facebook/ads/redexgen/X/aB;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vt;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 4

    .line 47673
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/K1;->A00:Lcom/facebook/ads/redexgen/X/aB;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/aB;->setPressed(Z)V

    .line 47674
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/K1;->A00:Lcom/facebook/ads/redexgen/X/aB;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/K1;->A00:Lcom/facebook/ads/redexgen/X/aB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aB;->A08(Lcom/facebook/ads/redexgen/X/aB;)Ljava/lang/Runnable;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/K1;->A00:Lcom/facebook/ads/redexgen/X/aB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aB;->A06(Lcom/facebook/ads/redexgen/X/aB;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v3, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/aB;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 47675
    return-void
.end method
