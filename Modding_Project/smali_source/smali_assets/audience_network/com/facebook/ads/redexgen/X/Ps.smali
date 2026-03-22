.class public final Lcom/facebook/ads/redexgen/X/Ps;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/6j;->A0e(Lcom/facebook/ads/redexgen/X/Qg;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:I

.field public final synthetic A02:Landroid/view/View;

.field public final synthetic A03:Landroid/view/ViewPropertyAnimator;

.field public final synthetic A04:Lcom/facebook/ads/redexgen/X/6j;

.field public final synthetic A05:Lcom/facebook/ads/redexgen/X/Qg;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/6j;Lcom/facebook/ads/redexgen/X/Qg;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V
    .locals 0

    .line 58687
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ps;->A04:Lcom/facebook/ads/redexgen/X/6j;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Ps;->A05:Lcom/facebook/ads/redexgen/X/Qg;

    iput p3, p0, Lcom/facebook/ads/redexgen/X/Ps;->A00:I

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Ps;->A02:Landroid/view/View;

    iput p5, p0, Lcom/facebook/ads/redexgen/X/Ps;->A01:I

    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/Ps;->A03:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 58688
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ps;->A00:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 58689
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ps;->A02:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 58690
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ps;->A01:I

    if-eqz v0, :cond_1

    .line 58691
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ps;->A02:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 58692
    :cond_1
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 58693
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ps;->A03:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 58694
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ps;->A04:Lcom/facebook/ads/redexgen/X/6j;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ps;->A05:Lcom/facebook/ads/redexgen/X/Qg;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/g0;->A0U(Lcom/facebook/ads/redexgen/X/Qg;)V

    .line 58695
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ps;->A04:Lcom/facebook/ads/redexgen/X/6j;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/6j;->A04:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ps;->A05:Lcom/facebook/ads/redexgen/X/Qg;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 58696
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ps;->A04:Lcom/facebook/ads/redexgen/X/6j;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6j;->A0b()V

    .line 58697
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 58698
    return-void
.end method
