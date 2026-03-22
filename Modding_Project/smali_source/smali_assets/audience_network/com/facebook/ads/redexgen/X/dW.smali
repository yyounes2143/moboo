.class public final Lcom/facebook/ads/redexgen/X/dW;
.super Landroid/view/ViewOutlineProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/dY;->setRoundedCornersVideoStyle(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:F

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/dY;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dY;F)V
    .locals 0

    .line 79375
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/dW;->A01:Lcom/facebook/ads/redexgen/X/dY;

    iput p2, p0, Lcom/facebook/ads/redexgen/X/dW;->A00:F

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    .line 79376
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/facebook/ads/redexgen/X/dW;->A00:F

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 79377
    return-void
.end method
