.class public final Lcom/facebook/ads/redexgen/X/3p;
.super Lcom/facebook/ads/redexgen/X/Kt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/cz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/cz;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/cz;)V
    .locals 0

    .line 11314
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3p;->A00:Lcom/facebook/ads/redexgen/X/cz;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kt;-><init>()V

    return-void
.end method


# virtual methods
.method public final ACO()V
    .locals 0

    .line 11315
    return-void
.end method

.method public final ADG(ILjava/lang/String;)V
    .locals 2

    .line 11316
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3p;->A00:Lcom/facebook/ads/redexgen/X/cz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cz;->A07(Lcom/facebook/ads/redexgen/X/cz;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 11317
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3p;->A00:Lcom/facebook/ads/redexgen/X/cz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cz;->A05(Lcom/facebook/ads/redexgen/X/cz;)Lcom/facebook/ads/redexgen/X/cx;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11318
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3p;->A00:Lcom/facebook/ads/redexgen/X/cz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cz;->A05(Lcom/facebook/ads/redexgen/X/cz;)Lcom/facebook/ads/redexgen/X/cx;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/cx;->AE2()V

    .line 11319
    :cond_0
    return-void
.end method

.method public final ADW()V
    .locals 3

    .line 11320
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3p;->A00:Lcom/facebook/ads/redexgen/X/cz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cz;->A07(Lcom/facebook/ads/redexgen/X/cz;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3p;->A00:Lcom/facebook/ads/redexgen/X/cz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cz;->A08(Lcom/facebook/ads/redexgen/X/cz;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11321
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3p;->A00:Lcom/facebook/ads/redexgen/X/cz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cz;->A05(Lcom/facebook/ads/redexgen/X/cz;)Lcom/facebook/ads/redexgen/X/cx;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11322
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3p;->A00:Lcom/facebook/ads/redexgen/X/cz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cz;->A05(Lcom/facebook/ads/redexgen/X/cz;)Lcom/facebook/ads/redexgen/X/cx;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/cx;->ADW()V

    .line 11323
    :cond_0
    return-void
.end method

.method public final AFw()V
    .locals 1

    .line 11324
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3p;->A00:Lcom/facebook/ads/redexgen/X/cz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cz;->A05(Lcom/facebook/ads/redexgen/X/cz;)Lcom/facebook/ads/redexgen/X/cx;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11325
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3p;->A00:Lcom/facebook/ads/redexgen/X/cz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cz;->A05(Lcom/facebook/ads/redexgen/X/cz;)Lcom/facebook/ads/redexgen/X/cx;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/cx;->AFw()V

    .line 11326
    :cond_0
    return-void
.end method
