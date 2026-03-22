.class public final Lcom/facebook/ads/redexgen/X/ZA;
.super Landroid/widget/ImageView;
.source ""


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 74183
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 74184
    sget-object v0, Lcom/facebook/ads/redexgen/X/XX;->A0N:Lcom/facebook/ads/redexgen/X/XX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XY;->A01(Lcom/facebook/ads/redexgen/X/XX;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 74185
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/ZA;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 74186
    invoke-virtual {p0, p2}, Lcom/facebook/ads/redexgen/X/ZA;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74187
    return-void
.end method
