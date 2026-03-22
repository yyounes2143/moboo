.class public final Lcom/facebook/ads/redexgen/X/bE;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/JR;->A0N()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/JR;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/JR;)V
    .locals 0

    .line 76820
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bE;->A00:Lcom/facebook/ads/redexgen/X/JR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Vl;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v4, p0

    .line 76821
    .local v0, "this":Lcom/facebook/ads/redexgen/X/bE;
    .local p1, "v":Landroid/view/View;
    :try_start_0
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/bE;->A00:Lcom/facebook/ads/redexgen/X/JR;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JR;->A02(Lcom/facebook/ads/redexgen/X/JR;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/bE;->A00:Lcom/facebook/ads/redexgen/X/JR;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JR;->A02(Lcom/facebook/ads/redexgen/X/JR;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 76822
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/bE;->A00:Lcom/facebook/ads/redexgen/X/JR;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/JR;->A0j(Lcom/facebook/ads/redexgen/X/JR;I)V

    .line 76823
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/bE;->A00:Lcom/facebook/ads/redexgen/X/JR;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JR;->A00(Lcom/facebook/ads/redexgen/X/JR;)Landroid/os/Handler;

    move-result-object v3

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/bE;->A00:Lcom/facebook/ads/redexgen/X/JR;

    .line 76824
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JR;->A0I(Lcom/facebook/ads/redexgen/X/JR;)Ljava/lang/Runnable;

    move-result-object v2

    .line 76825
    const-wide/16 v0, 0x5dc

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 76826
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/bE;
    :cond_1
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/bE;->A00:Lcom/facebook/ads/redexgen/X/JR;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JR;->A0i(Lcom/facebook/ads/redexgen/X/JR;)V

    .line 76827
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/bE;->A00:Lcom/facebook/ads/redexgen/X/JR;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JR;->A00(Lcom/facebook/ads/redexgen/X/JR;)Landroid/os/Handler;

    move-result-object v1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/bE;->A00:Lcom/facebook/ads/redexgen/X/JR;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JR;->A0I(Lcom/facebook/ads/redexgen/X/JR;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 76828
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/bE;->A00:Lcom/facebook/ads/redexgen/X/JR;

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/JR;->A0j(Lcom/facebook/ads/redexgen/X/JR;I)V

    .line 76829
    :goto_0
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p1    # "v":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/Vl;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
