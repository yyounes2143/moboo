.class public final Lcom/facebook/ads/redexgen/X/iH;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/NP;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/7B;->A0E(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7B;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7B;)V
    .locals 0

    .line 86040
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/iH;->A00:Lcom/facebook/ads/redexgen/X/7B;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AEZ(Lcom/facebook/ads/AdError;)V
    .locals 2

    .line 86041
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iH;->A00:Lcom/facebook/ads/redexgen/X/7B;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7B;->A00(Lcom/facebook/ads/redexgen/X/7B;)Lcom/facebook/ads/redexgen/X/Mh;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iH;->A00:Lcom/facebook/ads/redexgen/X/7B;

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/Mh;->AF7(Lcom/facebook/ads/redexgen/X/iA;Lcom/facebook/ads/AdError;)V

    .line 86042
    return-void
.end method

.method public final AEa()V
    .locals 2

    .line 86043
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iH;->A00:Lcom/facebook/ads/redexgen/X/7B;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7B;->A06(Lcom/facebook/ads/redexgen/X/7B;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 86044
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iH;->A00:Lcom/facebook/ads/redexgen/X/7B;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7B;->A00(Lcom/facebook/ads/redexgen/X/7B;)Lcom/facebook/ads/redexgen/X/Mh;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iH;->A00:Lcom/facebook/ads/redexgen/X/7B;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Mh;->AF4(Lcom/facebook/ads/redexgen/X/iA;)V

    .line 86045
    return-void
.end method
