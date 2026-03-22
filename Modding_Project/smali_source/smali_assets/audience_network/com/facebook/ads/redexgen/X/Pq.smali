.class public final Lcom/facebook/ads/redexgen/X/Pq;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/6j;->A01(Lcom/facebook/ads/redexgen/X/Qg;)V
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
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/6j;Lcom/facebook/ads/redexgen/X/Qg;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0

    .line 58670
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Pq;->A02:Lcom/facebook/ads/redexgen/X/6j;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Pq;->A03:Lcom/facebook/ads/redexgen/X/Qg;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Pq;->A01:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Pq;->A00:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 58671
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pq;->A01:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 58672
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pq;->A00:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 58673
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pq;->A02:Lcom/facebook/ads/redexgen/X/6j;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pq;->A03:Lcom/facebook/ads/redexgen/X/Qg;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/g0;->A0V(Lcom/facebook/ads/redexgen/X/Qg;)V

    .line 58674
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pq;->A02:Lcom/facebook/ads/redexgen/X/6j;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/6j;->A06:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pq;->A03:Lcom/facebook/ads/redexgen/X/Qg;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 58675
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pq;->A02:Lcom/facebook/ads/redexgen/X/6j;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6j;->A0b()V

    .line 58676
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 58677
    return-void
.end method
