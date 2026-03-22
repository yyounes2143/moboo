.class public final Lcom/facebook/ads/redexgen/X/CU;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/e2;


# instance fields
.field public A00:Landroid/animation/ValueAnimator;

.field public A01:Lcom/facebook/ads/redexgen/X/e1;

.field public final A02:I

.field public final A03:I

.field public final A04:I

.field public final A05:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;III)V
    .locals 1

    .line 32859
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32860
    sget-object v0, Lcom/facebook/ads/redexgen/X/e1;->A04:Lcom/facebook/ads/redexgen/X/e1;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CU;->A01:Lcom/facebook/ads/redexgen/X/e1;

    .line 32861
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/CU;->A05:Landroid/view/View;

    .line 32862
    iput p2, p0, Lcom/facebook/ads/redexgen/X/CU;->A02:I

    .line 32863
    iput p3, p0, Lcom/facebook/ads/redexgen/X/CU;->A04:I

    .line 32864
    iput p4, p0, Lcom/facebook/ads/redexgen/X/CU;->A03:I

    .line 32865
    return-void
.end method

.method private A00(Landroid/view/View;II)Landroid/animation/ValueAnimator;
    .locals 3

    .line 32866
    filled-new-array {p2, p3}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 32867
    .local v0, "slideAnimator":Landroid/animation/ValueAnimator;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/CU;->A02:I

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 32868
    new-instance v0, Lcom/facebook/ads/redexgen/X/eB;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/eB;-><init>(Lcom/facebook/ads/redexgen/X/CU;Landroid/view/View;)V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 32869
    return-object v2
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/CU;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 32870
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/CU;->A00:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/CU;)Landroid/view/View;
    .locals 0

    .line 32871
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/CU;->A05:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/CU;Lcom/facebook/ads/redexgen/X/e1;)Lcom/facebook/ads/redexgen/X/e1;
    .locals 0

    .line 32872
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/CU;->A01:Lcom/facebook/ads/redexgen/X/e1;

    return-object p1
.end method

.method private A04()V
    .locals 1

    .line 32873
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CU;->A00:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 32874
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CU;->A00:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 32875
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CU;->A00:Landroid/animation/ValueAnimator;

    .line 32876
    :cond_0
    return-void
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/CU;)V
    .locals 0

    .line 32877
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/CU;->A04()V

    return-void
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/CU;Z)V
    .locals 0

    .line 32878
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/CU;->A08(Z)V

    return-void
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/CU;Z)V
    .locals 0

    .line 32879
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/CU;->A09(Z)V

    return-void
.end method

.method private A08(Z)V
    .locals 3

    .line 32880
    if-eqz p1, :cond_0

    .line 32881
    sget-object v0, Lcom/facebook/ads/redexgen/X/e1;->A05:Lcom/facebook/ads/redexgen/X/e1;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CU;->A01:Lcom/facebook/ads/redexgen/X/e1;

    .line 32882
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/CU;->A05:Landroid/view/View;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/CU;->A03:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/CU;->A04:I

    invoke-direct {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/CU;->A00(Landroid/view/View;II)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CU;->A00:Landroid/animation/ValueAnimator;

    .line 32883
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/CU;->A00:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/facebook/ads/redexgen/X/eA;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/eA;-><init>(Lcom/facebook/ads/redexgen/X/CU;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 32884
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CU;->A00:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 32885
    :goto_0
    return-void

    .line 32886
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/CU;->A05:Landroid/view/View;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/CU;->A04:I

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 32887
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CU;->A05:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0F(Landroid/view/View;)V

    .line 32888
    sget-object v0, Lcom/facebook/ads/redexgen/X/e1;->A04:Lcom/facebook/ads/redexgen/X/e1;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CU;->A01:Lcom/facebook/ads/redexgen/X/e1;

    goto :goto_0
.end method

.method private A09(Z)V
    .locals 3

    .line 32889
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CU;->A05:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0J(Landroid/view/View;)V

    .line 32890
    if-eqz p1, :cond_0

    .line 32891
    sget-object v0, Lcom/facebook/ads/redexgen/X/e1;->A03:Lcom/facebook/ads/redexgen/X/e1;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CU;->A01:Lcom/facebook/ads/redexgen/X/e1;

    .line 32892
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/CU;->A05:Landroid/view/View;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/CU;->A04:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/CU;->A03:I

    invoke-direct {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/CU;->A00(Landroid/view/View;II)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CU;->A00:Landroid/animation/ValueAnimator;

    .line 32893
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/CU;->A00:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/facebook/ads/redexgen/X/e9;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/e9;-><init>(Lcom/facebook/ads/redexgen/X/CU;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 32894
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CU;->A00:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 32895
    :goto_0
    return-void

    .line 32896
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/CU;->A05:Landroid/view/View;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/CU;->A03:I

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 32897
    sget-object v0, Lcom/facebook/ads/redexgen/X/e1;->A02:Lcom/facebook/ads/redexgen/X/e1;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CU;->A01:Lcom/facebook/ads/redexgen/X/e1;

    goto :goto_0
.end method


# virtual methods
.method public final A42(ZZ)V
    .locals 0

    .line 32898
    if-eqz p2, :cond_0

    .line 32899
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/CU;->A08(Z)V

    .line 32900
    :goto_0
    return-void

    .line 32901
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/CU;->A09(Z)V

    goto :goto_0
.end method

.method public final A93()Lcom/facebook/ads/redexgen/X/e1;
    .locals 1

    .line 32902
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CU;->A01:Lcom/facebook/ads/redexgen/X/e1;

    return-object v0
.end method

.method public final cancel()V
    .locals 1

    .line 32903
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CU;->A00:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 32904
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CU;->A00:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 32905
    :cond_0
    return-void
.end method
