.class public final Lcom/facebook/ads/redexgen/X/e9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/CU;->A09(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/CU;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/CU;)V
    .locals 0

    .line 79899
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/e9;->A00:Lcom/facebook/ads/redexgen/X/CU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 79900
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/e9;->A00:Lcom/facebook/ads/redexgen/X/CU;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/CU;->A06(Lcom/facebook/ads/redexgen/X/CU;Z)V

    .line 79901
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/e9;->A00:Lcom/facebook/ads/redexgen/X/CU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/CU;->A05(Lcom/facebook/ads/redexgen/X/CU;)V

    .line 79902
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 79903
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/e9;->A00:Lcom/facebook/ads/redexgen/X/CU;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/CU;->A01(Lcom/facebook/ads/redexgen/X/CU;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 79904
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/e9;->A00:Lcom/facebook/ads/redexgen/X/CU;

    sget-object v0, Lcom/facebook/ads/redexgen/X/e1;->A02:Lcom/facebook/ads/redexgen/X/e1;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/CU;->A03(Lcom/facebook/ads/redexgen/X/CU;Lcom/facebook/ads/redexgen/X/e1;)Lcom/facebook/ads/redexgen/X/e1;

    .line 79905
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/e9;->A00:Lcom/facebook/ads/redexgen/X/CU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/CU;->A05(Lcom/facebook/ads/redexgen/X/CU;)V

    .line 79906
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 79907
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 79908
    return-void
.end method
