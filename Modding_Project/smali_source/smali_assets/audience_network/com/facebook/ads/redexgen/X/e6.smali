.class public final Lcom/facebook/ads/redexgen/X/e6;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/CZ;->A04(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/CZ;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2683
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "TrZNDxp7XgPrLwMeMcKKV4LE6uuIfYVU"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ULEyXJCc47teQ6YZ0eXPV0V7C"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "At5pbwNHr2LiheLI"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "DEC0Eom9qK7OI0oKL1WQ5oYEbz9lc5Gt"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Go2f3K9Z"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "jmF0Wp1VVfzp13IVqL"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "AKLTgtcpjio1lTTBDL2vrOjYxOjCOJfp"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "yZ5UHZcmQhcxGg9JLD5yPnSTYa225zYb"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/e6;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/CZ;)V
    .locals 0

    .line 79852
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/e6;->A00:Lcom/facebook/ads/redexgen/X/CZ;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 4

    .line 79853
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/e6;->A00:Lcom/facebook/ads/redexgen/X/CZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/CZ;->A06(Lcom/facebook/ads/redexgen/X/CZ;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79854
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/e6;->A00:Lcom/facebook/ads/redexgen/X/CZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/CZ;->A00(Lcom/facebook/ads/redexgen/X/CZ;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0F(Landroid/view/View;)V

    .line 79855
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/e6;->A00:Lcom/facebook/ads/redexgen/X/CZ;

    sget-object v1, Lcom/facebook/ads/redexgen/X/e6;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/e6;->A01:[Ljava/lang/String;

    const-string v1, "6jsFEd17ts6f8PQH6w"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/CZ;->A00(Lcom/facebook/ads/redexgen/X/CZ;)Landroid/view/View;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 79856
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/e6;->A00:Lcom/facebook/ads/redexgen/X/CZ;

    sget-object v0, Lcom/facebook/ads/redexgen/X/e1;->A04:Lcom/facebook/ads/redexgen/X/e1;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/CZ;->A03(Lcom/facebook/ads/redexgen/X/CZ;Lcom/facebook/ads/redexgen/X/e1;)Lcom/facebook/ads/redexgen/X/e1;

    .line 79857
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/e6;->A00:Lcom/facebook/ads/redexgen/X/CZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/CZ;->A01(Lcom/facebook/ads/redexgen/X/CZ;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 79858
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/e6;->A00:Lcom/facebook/ads/redexgen/X/CZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/CZ;->A01(Lcom/facebook/ads/redexgen/X/CZ;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 79859
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/e6;->A00:Lcom/facebook/ads/redexgen/X/CZ;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/CZ;->A02(Lcom/facebook/ads/redexgen/X/CZ;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    .line 79860
    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 79861
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/e6;->A00:Lcom/facebook/ads/redexgen/X/CZ;

    sget-object v0, Lcom/facebook/ads/redexgen/X/e1;->A02:Lcom/facebook/ads/redexgen/X/e1;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/CZ;->A03(Lcom/facebook/ads/redexgen/X/CZ;Lcom/facebook/ads/redexgen/X/e1;)Lcom/facebook/ads/redexgen/X/e1;

    .line 79862
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/e6;->A00:Lcom/facebook/ads/redexgen/X/CZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/CZ;->A01(Lcom/facebook/ads/redexgen/X/CZ;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79863
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/e6;->A00:Lcom/facebook/ads/redexgen/X/CZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/CZ;->A01(Lcom/facebook/ads/redexgen/X/CZ;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 79864
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/e6;->A00:Lcom/facebook/ads/redexgen/X/CZ;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/CZ;->A02(Lcom/facebook/ads/redexgen/X/CZ;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    .line 79865
    :cond_0
    return-void
.end method
