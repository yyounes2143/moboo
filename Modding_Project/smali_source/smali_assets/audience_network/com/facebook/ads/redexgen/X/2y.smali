.class public final Lcom/facebook/ads/redexgen/X/2y;
.super Lcom/facebook/ads/redexgen/X/DG;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/D4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/D4;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/D4;)V
    .locals 0

    .line 10447
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2y;->A00:Lcom/facebook/ads/redexgen/X/D4;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DG;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/DH;)V
    .locals 2

    .line 10448
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2y;->A00:Lcom/facebook/ads/redexgen/X/D4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/D4;->A02(Lcom/facebook/ads/redexgen/X/D4;)Lcom/facebook/ads/redexgen/X/E1;

    move-result-object v0

    if-nez v0, :cond_0

    .line 10449
    return-void

    .line 10450
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/DH;->A00()Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 10451
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2y;->A00:Lcom/facebook/ads/redexgen/X/D4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/D4;->A00(Lcom/facebook/ads/redexgen/X/D4;)Landroid/os/Handler;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 10452
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2y;->A00:Lcom/facebook/ads/redexgen/X/D4;

    new-instance v0, Lcom/facebook/ads/redexgen/X/dp;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/dp;-><init>(Lcom/facebook/ads/redexgen/X/2y;)V

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/D4;->A0B(Lcom/facebook/ads/redexgen/X/D4;Landroid/animation/AnimatorListenerAdapter;)V

    .line 10453
    :cond_1
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/Td;)V
    .locals 0

    .line 10454
    check-cast p1, Lcom/facebook/ads/redexgen/X/DH;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/2y;->A00(Lcom/facebook/ads/redexgen/X/DH;)V

    return-void
.end method
