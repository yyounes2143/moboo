.class public final Lcom/facebook/ads/redexgen/X/CZ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/e2;


# instance fields
.field public A00:Landroid/view/ViewPropertyAnimator;

.field public A01:Lcom/facebook/ads/redexgen/X/e1;

.field public final A02:I

.field public final A03:Landroid/view/View;

.field public final A04:Z


# direct methods
.method public constructor <init>(Landroid/view/View;IZ)V
    .locals 1

    .line 33017
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33018
    sget-object v0, Lcom/facebook/ads/redexgen/X/e1;->A04:Lcom/facebook/ads/redexgen/X/e1;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CZ;->A01:Lcom/facebook/ads/redexgen/X/e1;

    .line 33019
    iput p2, p0, Lcom/facebook/ads/redexgen/X/CZ;->A02:I

    .line 33020
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/CZ;->A03:Landroid/view/View;

    .line 33021
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/CZ;->A04:Z

    .line 33022
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/CZ;)Landroid/view/View;
    .locals 0

    .line 33023
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/CZ;->A03:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/CZ;)Landroid/view/ViewPropertyAnimator;
    .locals 0

    .line 33024
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/CZ;->A00:Landroid/view/ViewPropertyAnimator;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/CZ;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;
    .locals 0

    .line 33025
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/CZ;->A00:Landroid/view/ViewPropertyAnimator;

    return-object p1
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/CZ;Lcom/facebook/ads/redexgen/X/e1;)Lcom/facebook/ads/redexgen/X/e1;
    .locals 0

    .line 33026
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/CZ;->A01:Lcom/facebook/ads/redexgen/X/e1;

    return-object p1
.end method

.method private A04(Z)V
    .locals 3

    .line 33027
    sget-object v0, Lcom/facebook/ads/redexgen/X/e1;->A03:Lcom/facebook/ads/redexgen/X/e1;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CZ;->A01:Lcom/facebook/ads/redexgen/X/e1;

    .line 33028
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/CZ;->A04:Z

    if-eqz v0, :cond_0

    .line 33029
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CZ;->A03:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0J(Landroid/view/View;)V

    .line 33030
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    .line 33031
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CZ;->A03:Landroid/view/View;

    .line 33032
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 33033
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/CZ;->A02:I

    int-to-long v0, v0

    .line 33034
    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/e6;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/e6;-><init>(Lcom/facebook/ads/redexgen/X/CZ;)V

    .line 33035
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CZ;->A00:Landroid/view/ViewPropertyAnimator;

    .line 33036
    :goto_0
    return-void

    .line 33037
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CZ;->A03:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 33038
    sget-object v0, Lcom/facebook/ads/redexgen/X/e1;->A02:Lcom/facebook/ads/redexgen/X/e1;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CZ;->A01:Lcom/facebook/ads/redexgen/X/e1;

    goto :goto_0
.end method

.method private A05(Z)V
    .locals 3

    .line 33039
    sget-object v0, Lcom/facebook/ads/redexgen/X/e1;->A05:Lcom/facebook/ads/redexgen/X/e1;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CZ;->A01:Lcom/facebook/ads/redexgen/X/e1;

    .line 33040
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 33041
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CZ;->A03:Landroid/view/View;

    .line 33042
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 33043
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/CZ;->A02:I

    int-to-long v0, v0

    .line 33044
    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/e7;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/e7;-><init>(Lcom/facebook/ads/redexgen/X/CZ;)V

    .line 33045
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CZ;->A00:Landroid/view/ViewPropertyAnimator;

    .line 33046
    :goto_0
    return-void

    .line 33047
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CZ;->A03:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 33048
    sget-object v0, Lcom/facebook/ads/redexgen/X/e1;->A04:Lcom/facebook/ads/redexgen/X/e1;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CZ;->A01:Lcom/facebook/ads/redexgen/X/e1;

    goto :goto_0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/CZ;)Z
    .locals 0

    .line 33049
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/CZ;->A04:Z

    return p0
.end method


# virtual methods
.method public final A42(ZZ)V
    .locals 0

    .line 33050
    if-eqz p2, :cond_0

    .line 33051
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/CZ;->A05(Z)V

    .line 33052
    :goto_0
    return-void

    .line 33053
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/CZ;->A04(Z)V

    goto :goto_0
.end method

.method public final A93()Lcom/facebook/ads/redexgen/X/e1;
    .locals 1

    .line 33054
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CZ;->A01:Lcom/facebook/ads/redexgen/X/e1;

    return-object v0
.end method

.method public final cancel()V
    .locals 1

    .line 33055
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CZ;->A03:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 33056
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CZ;->A00:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 33057
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CZ;->A00:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 33058
    :cond_0
    return-void
.end method
