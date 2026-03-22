.class public final Lcom/facebook/ads/redexgen/X/UW;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/dX;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/TD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/TD;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/TD;)V
    .locals 0

    .line 67684
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/UW;->A00:Lcom/facebook/ads/redexgen/X/TD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AFj()V
    .locals 2

    .line 67685
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UW;->A00:Lcom/facebook/ads/redexgen/X/TD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/TD;->A07(Lcom/facebook/ads/redexgen/X/TD;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 67686
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UW;->A00:Lcom/facebook/ads/redexgen/X/TD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/TD;->A03(Lcom/facebook/ads/redexgen/X/TD;)Lcom/facebook/ads/redexgen/X/Uk;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67687
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UW;->A00:Lcom/facebook/ads/redexgen/X/TD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/TD;->A03(Lcom/facebook/ads/redexgen/X/TD;)Lcom/facebook/ads/redexgen/X/Uk;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UW;->A00:Lcom/facebook/ads/redexgen/X/TD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/TD;->A08(Lcom/facebook/ads/redexgen/X/TD;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Uk;->AEW(Z)V

    .line 67688
    :cond_0
    return-void
.end method
