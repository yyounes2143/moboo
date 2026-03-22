.class public final Lcom/facebook/ads/redexgen/X/Fr;
.super Lcom/facebook/ads/redexgen/X/Vt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/cX;->A04(Lcom/facebook/ads/redexgen/X/cW;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/cW;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/cX;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/cX;Lcom/facebook/ads/redexgen/X/cW;)V
    .locals 0

    .line 36505
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Fr;->A01:Lcom/facebook/ads/redexgen/X/cX;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Fr;->A00:Lcom/facebook/ads/redexgen/X/cW;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vt;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 3

    .line 36506
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v1, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 36507
    .local v0, "hideAnimation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v0, 0x12c

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 36508
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v0}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 36509
    new-instance v0, Lcom/facebook/ads/redexgen/X/Fs;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Fs;-><init>(Lcom/facebook/ads/redexgen/X/Fr;)V

    invoke-virtual {v2, v0}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 36510
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fr;->A01:Lcom/facebook/ads/redexgen/X/cX;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/cX;->startAnimation(Landroid/view/animation/Animation;)V

    .line 36511
    return-void
.end method
