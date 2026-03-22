.class public final Lcom/facebook/ads/redexgen/X/e4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Co;->A07(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Co;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Co;)V
    .locals 0

    .line 79832
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/e4;->A00:Lcom/facebook/ads/redexgen/X/Co;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 79833
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/e4;->A00:Lcom/facebook/ads/redexgen/X/Co;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Co;->A06(Lcom/facebook/ads/redexgen/X/Co;Z)V

    .line 79834
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/e4;->A00:Lcom/facebook/ads/redexgen/X/Co;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Co;->A01(Lcom/facebook/ads/redexgen/X/Co;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79835
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/e4;->A00:Lcom/facebook/ads/redexgen/X/Co;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Co;->A01(Lcom/facebook/ads/redexgen/X/Co;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 79836
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/e4;->A00:Lcom/facebook/ads/redexgen/X/Co;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Co;->A02(Lcom/facebook/ads/redexgen/X/Co;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 79837
    :cond_0
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 79838
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/e4;->A00:Lcom/facebook/ads/redexgen/X/Co;

    sget-object v0, Lcom/facebook/ads/redexgen/X/e1;->A04:Lcom/facebook/ads/redexgen/X/e1;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Co;->A04(Lcom/facebook/ads/redexgen/X/Co;Lcom/facebook/ads/redexgen/X/e1;)Lcom/facebook/ads/redexgen/X/e1;

    .line 79839
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/e4;->A00:Lcom/facebook/ads/redexgen/X/Co;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Co;->A03(Lcom/facebook/ads/redexgen/X/Co;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0F(Landroid/view/View;)V

    .line 79840
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/e4;->A00:Lcom/facebook/ads/redexgen/X/Co;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Co;->A01(Lcom/facebook/ads/redexgen/X/Co;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79841
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/e4;->A00:Lcom/facebook/ads/redexgen/X/Co;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Co;->A01(Lcom/facebook/ads/redexgen/X/Co;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 79842
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/e4;->A00:Lcom/facebook/ads/redexgen/X/Co;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Co;->A02(Lcom/facebook/ads/redexgen/X/Co;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 79843
    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 79844
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 79845
    return-void
.end method
