.class public final Lcom/facebook/ads/redexgen/X/a1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/a2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/a2;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2475
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "k5y4HcmP3WilCE2VZpLOaWttH3xAOLy7"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "eSgi8sc1orY1QZ7cQ8"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "F5TnCrJPDClPJtEwFB2oNUJ5nCiidBg4"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "xnMEtwlIMFZfWKB3cS73n7KTRrxCMhoB"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "b1arQw"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "C6TpqlDsaihj5jN4aw6xm6FVirU9LDzB"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ZuNDUcp"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "YICO88MFw7L51"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/a1;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/a2;)V
    .locals 0

    .line 75532
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/a1;->A00:Lcom/facebook/ads/redexgen/X/a2;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 75533
    new-instance v3, Landroid/animation/LayoutTransition;

    invoke-direct {v3}, Landroid/animation/LayoutTransition;-><init>()V

    .line 75534
    .local v0, "transition":Landroid/animation/LayoutTransition;
    const-wide/16 v0, 0xfa

    invoke-virtual {v3, v0, v1}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 75535
    const/4 v2, 0x3

    const-wide/16 v0, 0x0

    invoke-virtual {v3, v2, v0, v1}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 75536
    new-instance v0, Lcom/facebook/ads/redexgen/X/a0;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/a0;-><init>(Lcom/facebook/ads/redexgen/X/a1;)V

    invoke-virtual {v3, v0}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 75537
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a1;->A00:Lcom/facebook/ads/redexgen/X/a2;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/a2;->A00:Lcom/facebook/ads/redexgen/X/5q;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/KL;->A0M:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 75538
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a1;->A00:Lcom/facebook/ads/redexgen/X/a2;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/a2;->A00:Lcom/facebook/ads/redexgen/X/5q;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Zv;->A09:Lcom/facebook/ads/redexgen/X/aK;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/aK;->setVisibility(I)V

    .line 75539
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a1;->A00:Lcom/facebook/ads/redexgen/X/a2;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/a2;->A00:Lcom/facebook/ads/redexgen/X/5q;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/KL;->A0Q:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75540
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a1;->A00:Lcom/facebook/ads/redexgen/X/a2;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/a2;->A00:Lcom/facebook/ads/redexgen/X/5q;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/KL;->A0P:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75541
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a1;->A00:Lcom/facebook/ads/redexgen/X/a2;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/a2;->A00:Lcom/facebook/ads/redexgen/X/5q;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/KL;->A0Y:Z

    if-eqz v0, :cond_0

    .line 75542
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a1;->A00:Lcom/facebook/ads/redexgen/X/a2;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/a2;->A00:Lcom/facebook/ads/redexgen/X/5q;

    sget-object v2, Lcom/facebook/ads/redexgen/X/a1;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/a1;->A01:[Ljava/lang/String;

    const-string v1, "HvpcnuIP3azyMlwgm6bi6Lo5XdKDqYiT"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "sNLw3uGPuxJcolBE07vEciKR5UF7mh9p"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/KL;->A0n()V

    .line 75543
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
