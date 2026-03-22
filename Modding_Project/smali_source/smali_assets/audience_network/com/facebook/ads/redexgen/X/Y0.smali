.class public final Lcom/facebook/ads/redexgen/X/Y0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/NI;->A0a(Lcom/facebook/ads/redexgen/X/R0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/R0;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/NI;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/NI;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/NI;Lcom/facebook/ads/redexgen/X/NI;Lcom/facebook/ads/redexgen/X/R0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 73019
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Y0;->A01:Lcom/facebook/ads/redexgen/X/NI;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Y0;->A02:Lcom/facebook/ads/redexgen/X/NI;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Y0;->A00:Lcom/facebook/ads/redexgen/X/R0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    .line 73020
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Y0;->A01:Lcom/facebook/ads/redexgen/X/NI;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/NI;->A0T(Lcom/facebook/ads/redexgen/X/NI;Z)Z

    .line 73021
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y0;->A02:Lcom/facebook/ads/redexgen/X/NI;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0F(Landroid/view/View;)V

    .line 73022
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 73023
    .local v0, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/facebook/ads/redexgen/X/NL;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/NL;-><init>(Lcom/facebook/ads/redexgen/X/Y0;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 73024
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .line 73025
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 73026
    return-void
.end method
