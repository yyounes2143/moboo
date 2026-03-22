.class public abstract Lcom/facebook/ads/redexgen/X/aR;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final A00:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 2493
    invoke-static {}, Lcom/facebook/ads/redexgen/X/XP;->A00()I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/aR;->A00:I

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/dL;Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 3

    .line 76199
    new-instance v0, Lcom/facebook/ads/redexgen/X/KZ;

    invoke-direct {v0, p1, p0}, Lcom/facebook/ads/redexgen/X/KZ;-><init>(Landroid/view/ViewGroup;Lcom/facebook/ads/redexgen/X/dL;)V

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/KZ;->A07(Ljava/lang/String;)V

    .line 76200
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 76201
    .local v0, "backgroundOverlay":Landroid/view/View;
    sget v0, Lcom/facebook/ads/redexgen/X/aR;->A00:I

    invoke-virtual {v2, v0}, Landroid/view/View;->setId(I)V

    .line 76202
    const/4 v1, -0x1

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76203
    invoke-static {v2, p0}, Lcom/facebook/ads/redexgen/X/XP;->A0P(Landroid/view/View;Landroid/content/Context;)V

    .line 76204
    const/4 v0, 0x0

    invoke-virtual {p1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 76205
    return-void
.end method
