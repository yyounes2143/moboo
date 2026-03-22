.class public final Lcom/facebook/ads/redexgen/X/aY;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Jx;->A1O()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Jx;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Jx;)V
    .locals 0

    .line 76245
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aY;->A00:Lcom/facebook/ads/redexgen/X/Jx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Vl;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v2, p0

    .line 76246
    .local v0, "this":Lcom/facebook/ads/redexgen/X/aY;
    :try_start_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/aY;->A00:Lcom/facebook/ads/redexgen/X/Jx;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Jx;->A0A(Lcom/facebook/ads/redexgen/X/Jx;Z)Z

    .line 76247
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/aY;->A00:Lcom/facebook/ads/redexgen/X/Jx;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ae;->A06:Lcom/facebook/ads/redexgen/X/ai;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A0E()Lcom/facebook/ads/redexgen/X/cT;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 76248
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/aY;->A00:Lcom/facebook/ads/redexgen/X/Jx;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ae;->A06:Lcom/facebook/ads/redexgen/X/ai;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A0E()Lcom/facebook/ads/redexgen/X/cT;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/cT;->AFE(Z)V

    .line 76249
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/aY;
    :cond_1
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/Vl;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
