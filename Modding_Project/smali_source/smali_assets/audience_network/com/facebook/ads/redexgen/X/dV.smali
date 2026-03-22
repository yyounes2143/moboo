.class public final Lcom/facebook/ads/redexgen/X/dV;
.super Landroid/view/ViewOutlineProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/dY;->A01(Landroid/animation/AnimatorSet;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/dY;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dY;)V
    .locals 0

    .line 79370
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/dV;->A00:Lcom/facebook/ads/redexgen/X/dY;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    .line 79371
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 79372
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 79373
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v5, 0x41000000    # 8.0f

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 79374
    return-void
.end method
