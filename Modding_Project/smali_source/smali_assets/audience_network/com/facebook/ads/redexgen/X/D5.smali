.class public final Lcom/facebook/ads/redexgen/X/D5;
.super Lcom/facebook/ads/redexgen/X/Vt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/dp;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/dp;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dp;)V
    .locals 0

    .line 33704
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/D5;->A00:Lcom/facebook/ads/redexgen/X/dp;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vt;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 1

    .line 33705
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D5;->A00:Lcom/facebook/ads/redexgen/X/dp;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/dp;->A00:Lcom/facebook/ads/redexgen/X/2y;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/2y;->A00:Lcom/facebook/ads/redexgen/X/D4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/D4;->A0E(Lcom/facebook/ads/redexgen/X/D4;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D5;->A00:Lcom/facebook/ads/redexgen/X/dp;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/dp;->A00:Lcom/facebook/ads/redexgen/X/2y;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/2y;->A00:Lcom/facebook/ads/redexgen/X/D4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/D4;->A0C(Lcom/facebook/ads/redexgen/X/D4;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33706
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D5;->A00:Lcom/facebook/ads/redexgen/X/dp;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/dp;->A00:Lcom/facebook/ads/redexgen/X/2y;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/2y;->A00:Lcom/facebook/ads/redexgen/X/D4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/D4;->A09(Lcom/facebook/ads/redexgen/X/D4;)V

    .line 33707
    :cond_0
    return-void
.end method
