.class public final Lcom/facebook/ads/redexgen/X/D4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/dc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/dr;
    }
.end annotation


# instance fields
.field public A00:Landroid/view/View;

.field public A01:Lcom/facebook/ads/redexgen/X/E1;

.field public A02:Lcom/facebook/ads/redexgen/X/dr;

.field public A03:Z

.field public final A04:Landroid/os/Handler;

.field public final A05:Lcom/facebook/ads/redexgen/X/DX;

.field public final A06:Lcom/facebook/ads/redexgen/X/DR;

.field public final A07:Lcom/facebook/ads/redexgen/X/DP;

.field public final A08:Lcom/facebook/ads/redexgen/X/DG;

.field public final A09:Z

.field public final A0A:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/facebook/ads/redexgen/X/dr;Z)V
    .locals 1

    .line 33648
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/D4;-><init>(Landroid/view/View;Lcom/facebook/ads/redexgen/X/dr;ZZ)V

    .line 33649
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/facebook/ads/redexgen/X/dr;ZZ)V
    .locals 1

    .line 33650
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33651
    new-instance v0, Lcom/facebook/ads/redexgen/X/3B;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/3B;-><init>(Lcom/facebook/ads/redexgen/X/D4;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/D4;->A06:Lcom/facebook/ads/redexgen/X/DR;

    .line 33652
    new-instance v0, Lcom/facebook/ads/redexgen/X/32;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/32;-><init>(Lcom/facebook/ads/redexgen/X/D4;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/D4;->A07:Lcom/facebook/ads/redexgen/X/DP;

    .line 33653
    new-instance v0, Lcom/facebook/ads/redexgen/X/30;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/30;-><init>(Lcom/facebook/ads/redexgen/X/D4;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/D4;->A05:Lcom/facebook/ads/redexgen/X/DX;

    .line 33654
    new-instance v0, Lcom/facebook/ads/redexgen/X/2y;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/2y;-><init>(Lcom/facebook/ads/redexgen/X/D4;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/D4;->A08:Lcom/facebook/ads/redexgen/X/DG;

    .line 33655
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/D4;->A03:Z

    .line 33656
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/D4;->A04:Landroid/os/Handler;

    .line 33657
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/D4;->A09:Z

    .line 33658
    iput-boolean p4, p0, Lcom/facebook/ads/redexgen/X/D4;->A0A:Z

    .line 33659
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/D4;->A08(Landroid/view/View;Lcom/facebook/ads/redexgen/X/dr;)V

    .line 33660
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/D4;)Landroid/os/Handler;
    .locals 0

    .line 33661
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/D4;->A04:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/D4;)Landroid/view/View;
    .locals 0

    .line 33662
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/D4;->A00:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/D4;)Lcom/facebook/ads/redexgen/X/E1;
    .locals 0

    .line 33663
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/D4;->A01:Lcom/facebook/ads/redexgen/X/E1;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/D4;)Lcom/facebook/ads/redexgen/X/dr;
    .locals 0

    .line 33664
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/D4;->A02:Lcom/facebook/ads/redexgen/X/dr;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/D4;Lcom/facebook/ads/redexgen/X/dr;)Lcom/facebook/ads/redexgen/X/dr;
    .locals 0

    .line 33665
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/D4;->A02:Lcom/facebook/ads/redexgen/X/dr;

    return-object p1
.end method

.method private A05()V
    .locals 3

    .line 33666
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D4;->A00:Landroid/view/View;

    .line 33667
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 33668
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 33669
    const-wide/16 v0, 0x1f4

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/dq;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/dq;-><init>(Lcom/facebook/ads/redexgen/X/D4;)V

    .line 33670
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 33671
    return-void
.end method

.method private A06(II)V
    .locals 2

    .line 33672
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/D4;->A04:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 33673
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D4;->A00:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 33674
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/D4;->A00:Landroid/view/View;

    int-to-float v0, p1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 33675
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D4;->A00:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 33676
    return-void
.end method

.method private A07(Landroid/animation/AnimatorListenerAdapter;)V
    .locals 3

    .line 33677
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/D4;->A00:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 33678
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D4;->A00:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v0, 0x1f4

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 33679
    return-void
.end method

.method private final A08(Landroid/view/View;Lcom/facebook/ads/redexgen/X/dr;)V
    .locals 2

    .line 33680
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/D4;->A02:Lcom/facebook/ads/redexgen/X/dr;

    .line 33681
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/D4;->A00:Landroid/view/View;

    .line 33682
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D4;->A00:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 33683
    sget-object v0, Lcom/facebook/ads/redexgen/X/dr;->A03:Lcom/facebook/ads/redexgen/X/dr;

    if-ne p2, v0, :cond_0

    .line 33684
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/D4;->A00:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 33685
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/D4;->A00:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 33686
    :goto_0
    return-void

    .line 33687
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/D4;->A00:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 33688
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/D4;->A00:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/D4;)V
    .locals 0

    .line 33689
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/D4;->A05()V

    return-void
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/D4;II)V
    .locals 0

    .line 33690
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/D4;->A06(II)V

    return-void
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/D4;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 0

    .line 33691
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/D4;->A07(Landroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/D4;)Z
    .locals 0

    .line 33692
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/D4;->A03:Z

    return p0
.end method

.method public static synthetic A0D(Lcom/facebook/ads/redexgen/X/D4;)Z
    .locals 0

    .line 33693
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/D4;->A09:Z

    return p0
.end method

.method public static synthetic A0E(Lcom/facebook/ads/redexgen/X/D4;)Z
    .locals 0

    .line 33694
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/D4;->A0A:Z

    return p0
.end method


# virtual methods
.method public final AAm(Lcom/facebook/ads/redexgen/X/E1;)V
    .locals 4

    .line 33695
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/D4;->A01:Lcom/facebook/ads/redexgen/X/E1;

    .line 33696
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/E1;->getEventBus()Lcom/facebook/ads/redexgen/X/Te;

    move-result-object v3

    const/4 v0, 0x4

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/Tf;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D4;->A06:Lcom/facebook/ads/redexgen/X/DR;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D4;->A07:Lcom/facebook/ads/redexgen/X/DP;

    aput-object v0, v2, v1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D4;->A08:Lcom/facebook/ads/redexgen/X/DG;

    aput-object v0, v2, v1

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D4;->A05:Lcom/facebook/ads/redexgen/X/DX;

    aput-object v0, v2, v1

    .line 33697
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/Te;->A03([Lcom/facebook/ads/redexgen/X/Tf;)V

    .line 33698
    return-void
.end method

.method public final AJk(Lcom/facebook/ads/redexgen/X/E1;)V
    .locals 5

    .line 33699
    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v4, v1}, Lcom/facebook/ads/redexgen/X/D4;->A06(II)V

    .line 33700
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/E1;->getEventBus()Lcom/facebook/ads/redexgen/X/Te;

    move-result-object v3

    const/4 v0, 0x4

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/Tf;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D4;->A05:Lcom/facebook/ads/redexgen/X/DX;

    aput-object v0, v2, v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D4;->A08:Lcom/facebook/ads/redexgen/X/DG;

    aput-object v0, v2, v4

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D4;->A07:Lcom/facebook/ads/redexgen/X/DP;

    aput-object v0, v2, v1

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D4;->A06:Lcom/facebook/ads/redexgen/X/DR;

    aput-object v0, v2, v1

    .line 33701
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/Te;->A04([Lcom/facebook/ads/redexgen/X/Tf;)V

    .line 33702
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/D4;->A01:Lcom/facebook/ads/redexgen/X/E1;

    .line 33703
    return-void
.end method
