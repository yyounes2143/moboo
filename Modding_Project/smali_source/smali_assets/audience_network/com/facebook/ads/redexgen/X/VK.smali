.class public final Lcom/facebook/ads/redexgen/X/VK;
.super Lcom/facebook/ads/redexgen/X/Vt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/VJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/VJ;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/VJ;)V
    .locals 0

    .line 68968
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/VK;->A00:Lcom/facebook/ads/redexgen/X/VJ;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vt;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 2

    .line 68969
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VK;->A00:Lcom/facebook/ads/redexgen/X/VJ;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/VJ;->A0A(Lcom/facebook/ads/redexgen/X/VJ;Z)Z

    .line 68970
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VK;->A00:Lcom/facebook/ads/redexgen/X/VJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VJ;->A04(Lcom/facebook/ads/redexgen/X/VJ;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68971
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VK;->A00:Lcom/facebook/ads/redexgen/X/VJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VJ;->A04(Lcom/facebook/ads/redexgen/X/VJ;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VK;->A00:Lcom/facebook/ads/redexgen/X/VJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VJ;->A02(Lcom/facebook/ads/redexgen/X/VJ;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 68972
    :cond_0
    return-void
.end method
