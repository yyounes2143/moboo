.class public final Lcom/facebook/ads/redexgen/X/e8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/CY;->A06(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:I

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/CY;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/CY;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 79882
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/e8;->A02:Lcom/facebook/ads/redexgen/X/CY;

    iput p2, p0, Lcom/facebook/ads/redexgen/X/e8;->A01:I

    iput p3, p0, Lcom/facebook/ads/redexgen/X/e8;->A00:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 4

    .line 79883
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/e8;->A02:Lcom/facebook/ads/redexgen/X/CY;

    iget v2, p0, Lcom/facebook/ads/redexgen/X/e8;->A00:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/e8;->A01:I

    const/4 v0, 0x0

    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/CY;->A08(Lcom/facebook/ads/redexgen/X/CY;IIZ)V

    .line 79884
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/e8;->A02:Lcom/facebook/ads/redexgen/X/CY;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/CY;->A01(Lcom/facebook/ads/redexgen/X/CY;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79885
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/e8;->A02:Lcom/facebook/ads/redexgen/X/CY;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/CY;->A01(Lcom/facebook/ads/redexgen/X/CY;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 79886
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/e8;->A02:Lcom/facebook/ads/redexgen/X/CY;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/CY;->A02(Lcom/facebook/ads/redexgen/X/CY;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 79887
    :cond_0
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 79888
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/e8;->A02:Lcom/facebook/ads/redexgen/X/CY;

    .line 79889
    iget v1, p0, Lcom/facebook/ads/redexgen/X/e8;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/e8;->A02:Lcom/facebook/ads/redexgen/X/CY;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/CY;->A00(Lcom/facebook/ads/redexgen/X/CY;)I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 79890
    sget-object v0, Lcom/facebook/ads/redexgen/X/e1;->A02:Lcom/facebook/ads/redexgen/X/e1;

    .line 79891
    :goto_0
    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/CY;->A03(Lcom/facebook/ads/redexgen/X/CY;Lcom/facebook/ads/redexgen/X/e1;)Lcom/facebook/ads/redexgen/X/e1;

    .line 79892
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/e8;->A02:Lcom/facebook/ads/redexgen/X/CY;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/CY;->A01(Lcom/facebook/ads/redexgen/X/CY;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79893
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/e8;->A02:Lcom/facebook/ads/redexgen/X/CY;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/CY;->A01(Lcom/facebook/ads/redexgen/X/CY;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 79894
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/e8;->A02:Lcom/facebook/ads/redexgen/X/CY;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/CY;->A02(Lcom/facebook/ads/redexgen/X/CY;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 79895
    :cond_0
    return-void

    .line 79896
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/e1;->A04:Lcom/facebook/ads/redexgen/X/e1;

    goto :goto_0
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 79897
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 79898
    return-void
.end method
