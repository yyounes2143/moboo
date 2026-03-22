.class public final Lcom/facebook/ads/redexgen/X/ge;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/OF;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/OE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public A00:Landroid/graphics/drawable/Drawable;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/OE;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/OE;)V
    .locals 0

    .line 83430
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ge;->A01:Lcom/facebook/ads/redexgen/X/OE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A76()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 83431
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ge;->A00:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final A77()Lcom/facebook/ads/redexgen/X/OE;
    .locals 1

    .line 83432
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ge;->A01:Lcom/facebook/ads/redexgen/X/OE;

    return-object v0
.end method

.method public final A8i()Z
    .locals 1

    .line 83433
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ge;->A01:Lcom/facebook/ads/redexgen/X/OE;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OE;->getPreventCornerOverlap()Z

    move-result v0

    return v0
.end method

.method public final A9J()Z
    .locals 1

    .line 83434
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ge;->A01:Lcom/facebook/ads/redexgen/X/OE;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OE;->getUseCompatPadding()Z

    move-result v0

    return v0
.end method

.method public final AIa(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 83435
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ge;->A00:Landroid/graphics/drawable/Drawable;

    .line 83436
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ge;->A01:Lcom/facebook/ads/redexgen/X/OE;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/OE;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83437
    return-void
.end method

.method public final AJ1(IIII)V
    .locals 5

    .line 83438
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ge;->A01:Lcom/facebook/ads/redexgen/X/OE;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/OE;->A05:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 83439
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/ge;->A01:Lcom/facebook/ads/redexgen/X/OE;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ge;->A01:Lcom/facebook/ads/redexgen/X/OE;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/OE;->A04:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, p1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ge;->A01:Lcom/facebook/ads/redexgen/X/OE;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/OE;->A04:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ge;->A01:Lcom/facebook/ads/redexgen/X/OE;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/OE;->A04:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, p3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ge;->A01:Lcom/facebook/ads/redexgen/X/OE;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/OE;->A04:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p4

    invoke-static {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OE;->A04(Lcom/facebook/ads/redexgen/X/OE;IIII)V

    .line 83440
    return-void
.end method
