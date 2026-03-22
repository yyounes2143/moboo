.class public final Lcom/facebook/ads/redexgen/X/iI;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Re;


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

    .line 86046
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/iI;->A00:Lcom/facebook/ads/redexgen/X/7B;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ACM()V
    .locals 2

    .line 86047
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iI;->A00:Lcom/facebook/ads/redexgen/X/7B;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7B;->A06(Lcom/facebook/ads/redexgen/X/7B;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 86048
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iI;->A00:Lcom/facebook/ads/redexgen/X/7B;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7B;->A00(Lcom/facebook/ads/redexgen/X/7B;)Lcom/facebook/ads/redexgen/X/Mh;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iI;->A00:Lcom/facebook/ads/redexgen/X/7B;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Mh;->AF4(Lcom/facebook/ads/redexgen/X/iA;)V

    .line 86049
    return-void
.end method

.method public final ACN()V
    .locals 3

    .line 86050
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iI;->A00:Lcom/facebook/ads/redexgen/X/7B;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7B;->A00(Lcom/facebook/ads/redexgen/X/7B;)Lcom/facebook/ads/redexgen/X/Mh;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/iI;->A00:Lcom/facebook/ads/redexgen/X/7B;

    sget-object v0, Lcom/facebook/ads/AdError;->CACHE_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Mh;->AF7(Lcom/facebook/ads/redexgen/X/iA;Lcom/facebook/ads/AdError;)V

    .line 86051
    return-void
.end method
