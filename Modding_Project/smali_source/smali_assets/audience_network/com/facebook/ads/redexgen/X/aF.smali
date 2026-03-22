.class public final Lcom/facebook/ads/redexgen/X/aF;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/aI;->A04()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/aI;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/aI;)V
    .locals 0

    .line 75864
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aF;->A00:Lcom/facebook/ads/redexgen/X/aI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Vl;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v3, p0

    .line 75865
    .local v0, "this":Lcom/facebook/ads/redexgen/X/aF;
    .local p1, "v":Landroid/view/View;
    :try_start_0
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/aF;->A00:Lcom/facebook/ads/redexgen/X/aI;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aI;->A01(Lcom/facebook/ads/redexgen/X/aI;)Lcom/facebook/ads/redexgen/X/aH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/aH;->AE7()V

    .line 75866
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/aF;->A00:Lcom/facebook/ads/redexgen/X/aI;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aI;->A00(Lcom/facebook/ads/redexgen/X/aI;)Lcom/facebook/ads/redexgen/X/Xm;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 75867
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/aF;->A00:Lcom/facebook/ads/redexgen/X/aI;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aI;->A00(Lcom/facebook/ads/redexgen/X/aI;)Lcom/facebook/ads/redexgen/X/Xm;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0J(Landroid/view/View;)V

    .line 75868
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/aF;
    :cond_1
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/aF;->A00:Lcom/facebook/ads/redexgen/X/aI;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aI;->A03(Lcom/facebook/ads/redexgen/X/aI;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 75869
    .local v2, "view":Landroid/view/View;
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/XP;->A0L(Landroid/view/View;I)V

    goto :goto_0

    .line 75870
    :cond_2
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/aF;->A00:Lcom/facebook/ads/redexgen/X/aI;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0H(Landroid/view/View;)V

    .line 75871
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/aF;->A00:Lcom/facebook/ads/redexgen/X/aI;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aI;->A02(Lcom/facebook/ads/redexgen/X/aI;)Lcom/facebook/ads/redexgen/X/E1;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 75872
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/aF;->A00:Lcom/facebook/ads/redexgen/X/aI;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aI;->A02(Lcom/facebook/ads/redexgen/X/aI;)Lcom/facebook/ads/redexgen/X/E1;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/XP;->A0L(Landroid/view/View;I)V

    .line 75873
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/aF;->A00:Lcom/facebook/ads/redexgen/X/aI;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aI;->A02(Lcom/facebook/ads/redexgen/X/aI;)Lcom/facebook/ads/redexgen/X/E1;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/db;->A02:Lcom/facebook/ads/redexgen/X/db;

    const/16 v0, 0xe

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/E1;->A0h(Lcom/facebook/ads/redexgen/X/db;I)V

    .line 75874
    :cond_3
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p1    # "v":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/Vl;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
