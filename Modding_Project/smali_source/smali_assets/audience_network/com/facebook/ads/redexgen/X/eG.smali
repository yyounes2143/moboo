.class public final Lcom/facebook/ads/redexgen/X/eG;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/eJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/eJ;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/eJ;)V
    .locals 0

    .line 79985
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/eG;->A00:Lcom/facebook/ads/redexgen/X/eJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Vl;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v3, p0

    .line 79986
    .local v0, "this":Lcom/facebook/ads/redexgen/X/eG;
    :try_start_0
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/eG;->A00:Lcom/facebook/ads/redexgen/X/eJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/eJ;->A0F(Lcom/facebook/ads/redexgen/X/eJ;)V

    .line 79987
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/eG;->A00:Lcom/facebook/ads/redexgen/X/eJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/eJ;->A00(Lcom/facebook/ads/redexgen/X/eJ;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 79988
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/eG;->A00:Lcom/facebook/ads/redexgen/X/eJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/eJ;->A00(Lcom/facebook/ads/redexgen/X/eJ;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v0, 0xfa

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 79989
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/eG;
    :catchall_0
    move-exception v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/Vl;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
