.class public final Lcom/facebook/ads/redexgen/X/e3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Co;->A08(Z)V
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

    .line 79824
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/e3;->A00:Lcom/facebook/ads/redexgen/X/Co;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 79825
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/e3;->A00:Lcom/facebook/ads/redexgen/X/Co;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Co;->A05(Lcom/facebook/ads/redexgen/X/Co;Z)V

    .line 79826
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 79827
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/e3;->A00:Lcom/facebook/ads/redexgen/X/Co;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Co;->A02(Lcom/facebook/ads/redexgen/X/Co;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 79828
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/e3;->A00:Lcom/facebook/ads/redexgen/X/Co;

    sget-object v0, Lcom/facebook/ads/redexgen/X/e1;->A02:Lcom/facebook/ads/redexgen/X/e1;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Co;->A04(Lcom/facebook/ads/redexgen/X/Co;Lcom/facebook/ads/redexgen/X/e1;)Lcom/facebook/ads/redexgen/X/e1;

    .line 79829
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 79830
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 79831
    return-void
.end method
