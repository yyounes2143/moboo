.class public final Lcom/facebook/ads/redexgen/X/iM;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/S7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/7B;->A0F(Z)V
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

    .line 86073
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/iM;->A00:Lcom/facebook/ads/redexgen/X/7B;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private A00(Z)V
    .locals 3

    .line 86074
    if-eqz p1, :cond_0

    .line 86075
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iM;->A00:Lcom/facebook/ads/redexgen/X/7B;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7B;->A06(Lcom/facebook/ads/redexgen/X/7B;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 86076
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iM;->A00:Lcom/facebook/ads/redexgen/X/7B;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7B;->A00(Lcom/facebook/ads/redexgen/X/7B;)Lcom/facebook/ads/redexgen/X/Mh;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iM;->A00:Lcom/facebook/ads/redexgen/X/7B;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Mh;->AF4(Lcom/facebook/ads/redexgen/X/iA;)V

    .line 86077
    :goto_0
    return-void

    .line 86078
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iM;->A00:Lcom/facebook/ads/redexgen/X/7B;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7B;->A00(Lcom/facebook/ads/redexgen/X/7B;)Lcom/facebook/ads/redexgen/X/Mh;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/iM;->A00:Lcom/facebook/ads/redexgen/X/7B;

    sget-object v0, Lcom/facebook/ads/AdError;->CACHE_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Mh;->AF7(Lcom/facebook/ads/redexgen/X/iA;Lcom/facebook/ads/AdError;)V

    goto :goto_0
.end method


# virtual methods
.method public final ACh()V
    .locals 1

    .line 86079
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/iM;->A00(Z)V

    .line 86080
    return-void
.end method

.method public final ACq()V
    .locals 1

    .line 86081
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/iM;->A00(Z)V

    .line 86082
    return-void
.end method
