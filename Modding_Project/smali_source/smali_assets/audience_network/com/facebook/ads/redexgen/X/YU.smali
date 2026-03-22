.class public final Lcom/facebook/ads/redexgen/X/YU;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Vj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/TK;->A00()Lcom/facebook/ads/redexgen/X/YU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 73617
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AHp(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 2

    .line 73618
    instance-of v0, p2, Lcom/facebook/ads/redexgen/X/SM;

    if-eqz v0, :cond_1

    .line 73619
    check-cast p2, Lcom/facebook/ads/redexgen/X/SM;

    invoke-interface {p2}, Lcom/facebook/ads/redexgen/X/SM;->A6e()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    .line 73620
    .local v0, "adContext":Lcom/facebook/ads/redexgen/X/dL;
    if-eqz v0, :cond_0

    .line 73621
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/dL;->A0Q(Ljava/lang/Throwable;)V

    .line 73622
    .end local v0    # "adContext":Lcom/facebook/ads/redexgen/X/dL;
    .end local v1
    :cond_0
    :goto_0
    return-void

    .line 73623
    :cond_1
    instance-of v0, p2, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 73624
    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 73625
    .local v0, "context":Landroid/content/Context;
    instance-of v0, v1, Lcom/facebook/ads/redexgen/X/dL;

    if-eqz v0, :cond_0

    .line 73626
    check-cast v1, Lcom/facebook/ads/redexgen/X/dL;

    .line 73627
    .local v1, "adContext":Lcom/facebook/ads/redexgen/X/dL;
    invoke-virtual {v1, p1}, Lcom/facebook/ads/redexgen/X/dL;->A0Q(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
