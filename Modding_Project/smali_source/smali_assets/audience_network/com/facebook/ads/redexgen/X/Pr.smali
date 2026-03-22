.class public final Lcom/facebook/ads/redexgen/X/Pr;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/6j;->A0d(Lcom/facebook/ads/redexgen/X/Qg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Landroid/view/View;

.field public final synthetic A01:Landroid/view/ViewPropertyAnimator;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/6j;

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/Qg;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/6j;Lcom/facebook/ads/redexgen/X/Qg;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V
    .locals 0

    .line 58678
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Pr;->A02:Lcom/facebook/ads/redexgen/X/6j;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Pr;->A03:Lcom/facebook/ads/redexgen/X/Qg;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Pr;->A00:Landroid/view/View;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Pr;->A01:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 58679
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pr;->A00:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 58680
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 58681
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pr;->A01:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 58682
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pr;->A02:Lcom/facebook/ads/redexgen/X/6j;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pr;->A03:Lcom/facebook/ads/redexgen/X/Qg;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/g0;->A0T(Lcom/facebook/ads/redexgen/X/Qg;)V

    .line 58683
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pr;->A02:Lcom/facebook/ads/redexgen/X/6j;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/6j;->A00:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pr;->A03:Lcom/facebook/ads/redexgen/X/Qg;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 58684
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pr;->A02:Lcom/facebook/ads/redexgen/X/6j;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6j;->A0b()V

    .line 58685
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 58686
    return-void
.end method
