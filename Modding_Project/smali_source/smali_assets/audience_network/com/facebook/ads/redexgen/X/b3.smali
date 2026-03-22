.class public final Lcom/facebook/ads/redexgen/X/b3;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/JU;->A0i(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/JU;

.field public final synthetic A01:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/JU;Z)V
    .locals 0

    .line 76736
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/b3;->A00:Lcom/facebook/ads/redexgen/X/JU;

    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/b3;->A01:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 76737
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 76738
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b3;->A00:Lcom/facebook/ads/redexgen/X/JU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JU;->A0G(Lcom/facebook/ads/redexgen/X/JU;)Lcom/facebook/ads/redexgen/X/bJ;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bJ;->setTranslationY(F)V

    .line 76739
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b3;->A00:Lcom/facebook/ads/redexgen/X/JU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JU;->A0b(Lcom/facebook/ads/redexgen/X/JU;)V

    .line 76740
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/b3;->A01:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b3;->A00:Lcom/facebook/ads/redexgen/X/JU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JU;->A0E(Lcom/facebook/ads/redexgen/X/JU;)Lcom/facebook/ads/redexgen/X/LJ;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76741
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b3;->A00:Lcom/facebook/ads/redexgen/X/JU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JU;->A0E(Lcom/facebook/ads/redexgen/X/JU;)Lcom/facebook/ads/redexgen/X/LJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LJ;->destroy()V

    .line 76742
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b3;->A00:Lcom/facebook/ads/redexgen/X/JU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JU;->A0H(Lcom/facebook/ads/redexgen/X/JU;)Lcom/facebook/ads/redexgen/X/Cw;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 76743
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b3;->A00:Lcom/facebook/ads/redexgen/X/JU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JU;->A0A(Lcom/facebook/ads/redexgen/X/JU;)Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1a()Z

    move-result v0

    const/16 v2, 0x8

    if-nez v0, :cond_3

    .line 76744
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b3;->A00:Lcom/facebook/ads/redexgen/X/JU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JU;->A0H(Lcom/facebook/ads/redexgen/X/JU;)Lcom/facebook/ads/redexgen/X/Cw;

    move-result-object v1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/b3;->A01:Z

    if-eqz v0, :cond_2

    :goto_0
    invoke-virtual {v1, v2}, Lcom/facebook/ads/redexgen/X/Cw;->setVisibility(I)V

    .line 76745
    :cond_1
    :goto_1
    return-void

    .line 76746
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 76747
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b3;->A00:Lcom/facebook/ads/redexgen/X/JU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JU;->A0H(Lcom/facebook/ads/redexgen/X/JU;)Lcom/facebook/ads/redexgen/X/Cw;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Cw;->setVisibility(I)V

    goto :goto_1
.end method
