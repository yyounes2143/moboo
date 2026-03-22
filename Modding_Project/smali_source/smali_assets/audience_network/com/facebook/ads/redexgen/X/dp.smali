.class public final Lcom/facebook/ads/redexgen/X/dp;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/2y;->A00(Lcom/facebook/ads/redexgen/X/DH;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/2y;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/2y;)V
    .locals 0

    .line 79696
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/dp;->A00:Lcom/facebook/ads/redexgen/X/2y;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 79697
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dp;->A00:Lcom/facebook/ads/redexgen/X/2y;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/2y;->A00:Lcom/facebook/ads/redexgen/X/D4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/D4;->A00(Lcom/facebook/ads/redexgen/X/D4;)Landroid/os/Handler;

    move-result-object v3

    new-instance v2, Lcom/facebook/ads/redexgen/X/D5;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/D5;-><init>(Lcom/facebook/ads/redexgen/X/dp;)V

    const-wide/16 v0, 0x7d0

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 79698
    return-void
.end method
