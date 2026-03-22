.class public final Lcom/facebook/ads/redexgen/X/Pu;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/6j;->A0c(Lcom/facebook/ads/redexgen/X/Pv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Landroid/view/View;

.field public final synthetic A01:Landroid/view/ViewPropertyAnimator;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/Pv;

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/6j;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/6j;Lcom/facebook/ads/redexgen/X/Pv;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0

    .line 58709
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Pu;->A03:Lcom/facebook/ads/redexgen/X/6j;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Pu;->A02:Lcom/facebook/ads/redexgen/X/Pv;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Pu;->A01:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Pu;->A00:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 58710
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pu;->A01:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 58711
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pu;->A00:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 58712
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pu;->A00:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 58713
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pu;->A00:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 58714
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Pu;->A03:Lcom/facebook/ads/redexgen/X/6j;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pu;->A02:Lcom/facebook/ads/redexgen/X/Pv;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Pv;->A04:Lcom/facebook/ads/redexgen/X/Qg;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/g0;->A0W(Lcom/facebook/ads/redexgen/X/Qg;Z)V

    .line 58715
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pu;->A03:Lcom/facebook/ads/redexgen/X/6j;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/6j;->A02:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pu;->A02:Lcom/facebook/ads/redexgen/X/Pv;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Pv;->A04:Lcom/facebook/ads/redexgen/X/Qg;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 58716
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pu;->A03:Lcom/facebook/ads/redexgen/X/6j;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6j;->A0b()V

    .line 58717
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 58718
    return-void
.end method
