.class public final Lcom/facebook/ads/redexgen/X/b7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/JU;->A0U()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/JU;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/JU;)V
    .locals 0

    .line 76760
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/b7;->A00:Lcom/facebook/ads/redexgen/X/JU;

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

    .line 76761
    .local v0, "this":Lcom/facebook/ads/redexgen/X/b7;
    .local p0, "view":Landroid/view/View;
    :try_start_0
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/b7;->A00:Lcom/facebook/ads/redexgen/X/JU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JU;->A0n(Lcom/facebook/ads/redexgen/X/JU;)Z

    move-result v0

    const/4 v5, 0x1

    if-nez v0, :cond_1

    .line 76762
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/b7;->A00:Lcom/facebook/ads/redexgen/X/JU;

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/JU;->A0y(Lcom/facebook/ads/redexgen/X/JU;Z)Z

    .line 76763
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/b7;->A00:Lcom/facebook/ads/redexgen/X/JU;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/b7;->A00:Lcom/facebook/ads/redexgen/X/JU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JU;->A09(Lcom/facebook/ads/redexgen/X/JU;)Lcom/facebook/ads/redexgen/X/MH;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/7P;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7P;->A0M()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/JU;->A0d(Lcom/facebook/ads/redexgen/X/JU;Ljava/lang/String;)V

    .line 76764
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/b7;->A00:Lcom/facebook/ads/redexgen/X/JU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JU;->A0A(Lcom/facebook/ads/redexgen/X/JU;)Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A0n()J

    move-result-wide v6

    const-wide/16 v1, 0x0

    cmp-long v0, v6, v1

    if-ltz v0, :cond_1

    .line 76765
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/b7;->A00:Lcom/facebook/ads/redexgen/X/JU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JU;->A06(Lcom/facebook/ads/redexgen/X/JU;)Landroid/os/Handler;

    move-result-object v3

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/b7;->A00:Lcom/facebook/ads/redexgen/X/JU;

    .line 76766
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JU;->A0I(Lcom/facebook/ads/redexgen/X/JU;)Ljava/lang/Runnable;

    move-result-object v2

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/b7;->A00:Lcom/facebook/ads/redexgen/X/JU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JU;->A0A(Lcom/facebook/ads/redexgen/X/JU;)Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A0n()J

    move-result-wide v0

    .line 76767
    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 76768
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/b7;
    :cond_1
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/b7;->A00:Lcom/facebook/ads/redexgen/X/JU;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/b7;->A00:Lcom/facebook/ads/redexgen/X/JU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JU;->A0n(Lcom/facebook/ads/redexgen/X/JU;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    invoke-static {v1, v5}, Lcom/facebook/ads/redexgen/X/JU;->A0e(Lcom/facebook/ads/redexgen/X/JU;Z)V

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 76769
    :goto_1
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p0    # "view":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/Vl;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
