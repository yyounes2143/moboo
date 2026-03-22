.class public final Lcom/facebook/ads/redexgen/X/cE;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/4Z;->A0j(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/4Z;

.field public final synthetic A01:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4Z;Z)V
    .locals 0

    .line 77825
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cE;->A00:Lcom/facebook/ads/redexgen/X/4Z;

    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/cE;->A01:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 77826
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 77827
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cE;->A00:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0H(Lcom/facebook/ads/redexgen/X/4Z;)Lcom/facebook/ads/redexgen/X/bJ;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bJ;->setTranslationY(F)V

    .line 77828
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cE;->A00:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0a(Lcom/facebook/ads/redexgen/X/4Z;)V

    .line 77829
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cE;->A01:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cE;->A00:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0G(Lcom/facebook/ads/redexgen/X/4Z;)Lcom/facebook/ads/redexgen/X/LJ;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77830
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cE;->A00:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4Z;->A0G(Lcom/facebook/ads/redexgen/X/4Z;)Lcom/facebook/ads/redexgen/X/LJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LJ;->destroy()V

    .line 77831
    :cond_0
    return-void
.end method
