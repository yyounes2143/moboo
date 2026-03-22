.class public final Lcom/facebook/ads/redexgen/X/bR;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Is;->A0R()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Is;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Is;)V
    .locals 0

    .line 76945
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bR;->A00:Lcom/facebook/ads/redexgen/X/Is;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Vl;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v4, p0

    .line 76946
    .local v0, "this":Lcom/facebook/ads/redexgen/X/bR;
    .local p1, "view":Landroid/view/View;
    :try_start_0
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/bR;->A00:Lcom/facebook/ads/redexgen/X/Is;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Is;->A09(Lcom/facebook/ads/redexgen/X/Is;)Lcom/facebook/ads/redexgen/X/MH;

    move-result-object v0

    if-nez v0, :cond_1

    .line 76947
    return-void

    .line 76948
    :cond_1
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/bR;->A00:Lcom/facebook/ads/redexgen/X/Is;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Is;->A09(Lcom/facebook/ads/redexgen/X/Is;)Lcom/facebook/ads/redexgen/X/MH;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/7P;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7P;->A0M()Landroid/net/Uri;

    move-result-object v2

    .line 76949
    .local v1, "uri":Landroid/net/Uri;
    if-nez v2, :cond_2

    .line 76950
    return-void

    .line 76951
    :cond_2
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/bR;->A00:Lcom/facebook/ads/redexgen/X/Is;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Is;->A0y(Lcom/facebook/ads/redexgen/X/Is;)Z

    move-result v0

    const/4 v5, 0x1

    if-nez v0, :cond_4

    .line 76952
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/bR;->A00:Lcom/facebook/ads/redexgen/X/Is;

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/Is;->A19(Lcom/facebook/ads/redexgen/X/Is;Z)Z

    .line 76953
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/bR;->A00:Lcom/facebook/ads/redexgen/X/Is;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Is;->A0g(Lcom/facebook/ads/redexgen/X/Is;Ljava/lang/String;)V

    .line 76954
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/bR;->A00:Lcom/facebook/ads/redexgen/X/Is;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Is;->A0H(Lcom/facebook/ads/redexgen/X/Is;)Lcom/facebook/ads/redexgen/X/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A0E()Lcom/facebook/ads/redexgen/X/cT;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 76955
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/bR;->A00:Lcom/facebook/ads/redexgen/X/Is;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Is;->A0H(Lcom/facebook/ads/redexgen/X/Is;)Lcom/facebook/ads/redexgen/X/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A0E()Lcom/facebook/ads/redexgen/X/cT;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/cT;->ABr()V

    .line 76956
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/bR;
    :cond_3
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/bR;->A00:Lcom/facebook/ads/redexgen/X/Is;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Is;->A0A(Lcom/facebook/ads/redexgen/X/Is;)Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A0n()J

    move-result-wide v6

    const-wide/16 v1, 0x0

    cmp-long v0, v6, v1

    if-ltz v0, :cond_4

    .line 76957
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/bR;->A00:Lcom/facebook/ads/redexgen/X/Is;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Is;->A05(Lcom/facebook/ads/redexgen/X/Is;)Landroid/os/Handler;

    move-result-object v3

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/bR;->A00:Lcom/facebook/ads/redexgen/X/Is;

    .line 76958
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Is;->A0I(Lcom/facebook/ads/redexgen/X/Is;)Ljava/lang/Runnable;

    move-result-object v2

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/bR;->A00:Lcom/facebook/ads/redexgen/X/Is;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Is;->A0A(Lcom/facebook/ads/redexgen/X/Is;)Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A0n()J

    move-result-wide v0

    .line 76959
    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 76960
    :cond_4
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/bR;->A00:Lcom/facebook/ads/redexgen/X/Is;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/bR;->A00:Lcom/facebook/ads/redexgen/X/Is;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Is;->A0y(Lcom/facebook/ads/redexgen/X/Is;)Z

    move-result v0

    if-nez v0, :cond_5

    :goto_0
    invoke-static {v1, v5}, Lcom/facebook/ads/redexgen/X/Is;->A0h(Lcom/facebook/ads/redexgen/X/Is;Z)V

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    goto :goto_0

    .line 76961
    :goto_1
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "uri":Landroid/net/Uri;
    .end local p1    # "view":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/Vl;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
