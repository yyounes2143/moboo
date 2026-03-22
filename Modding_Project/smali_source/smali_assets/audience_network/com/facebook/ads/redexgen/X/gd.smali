.class public final Lcom/facebook/ads/redexgen/X/gd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/OG;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 83388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/OF;)Lcom/facebook/ads/redexgen/X/OH;
    .locals 1

    .line 83389
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/OF;->A76()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/OH;

    return-object v0
.end method


# virtual methods
.method public final A01(Lcom/facebook/ads/redexgen/X/OF;)V
    .locals 5

    .line 83390
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/OF;->A9J()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83391
    const/4 v0, 0x0

    invoke-interface {p1, v0, v0, v0, v0}, Lcom/facebook/ads/redexgen/X/OF;->AJ1(IIII)V

    .line 83392
    return-void

    .line 83393
    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/gd;->A8K(Lcom/facebook/ads/redexgen/X/OF;)F

    move-result v4

    .line 83394
    .local v0, "elevation":F
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/gd;->A8j(Lcom/facebook/ads/redexgen/X/OF;)F

    move-result v2

    .line 83395
    .local v1, "radius":F
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/OF;->A8i()Z

    move-result v0

    invoke-static {v4, v2, v0}, Lcom/facebook/ads/redexgen/X/OJ;->A00(FFZ)F

    move-result v0

    float-to-double v0, v0

    .line 83396
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v3, v0

    .line 83397
    .local v2, "hPadding":I
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/OF;->A8i()Z

    move-result v0

    invoke-static {v4, v2, v0}, Lcom/facebook/ads/redexgen/X/OJ;->A01(FFZ)F

    move-result v0

    float-to-double v0, v0

    .line 83398
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v0, v1

    .line 83399
    .local v3, "vPadding":I
    invoke-interface {p1, v3, v0, v3, v0}, Lcom/facebook/ads/redexgen/X/OF;->AJ1(IIII)V

    .line 83400
    return-void
.end method

.method public final A6t(Lcom/facebook/ads/redexgen/X/OF;)Landroid/content/res/ColorStateList;
    .locals 1

    .line 83401
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/gd;->A00(Lcom/facebook/ads/redexgen/X/OF;)Lcom/facebook/ads/redexgen/X/OH;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OH;->A05()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public final A7n(Lcom/facebook/ads/redexgen/X/OF;)F
    .locals 1

    .line 83402
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/OF;->A77()Lcom/facebook/ads/redexgen/X/OE;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getElevation()F

    move-result v0

    return v0
.end method

.method public final A8K(Lcom/facebook/ads/redexgen/X/OF;)F
    .locals 1

    .line 83403
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/gd;->A00(Lcom/facebook/ads/redexgen/X/OF;)Lcom/facebook/ads/redexgen/X/OH;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OH;->A03()F

    move-result v0

    return v0
.end method

.method public final A8P(Lcom/facebook/ads/redexgen/X/OF;)F
    .locals 2

    .line 83404
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/gd;->A8j(Lcom/facebook/ads/redexgen/X/OF;)F

    move-result v1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v1, v0

    return v1
.end method

.method public final A8Q(Lcom/facebook/ads/redexgen/X/OF;)F
    .locals 2

    .line 83405
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/gd;->A8j(Lcom/facebook/ads/redexgen/X/OF;)F

    move-result v1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v1, v0

    return v1
.end method

.method public final A8j(Lcom/facebook/ads/redexgen/X/OF;)F
    .locals 1

    .line 83406
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/gd;->A00(Lcom/facebook/ads/redexgen/X/OF;)Lcom/facebook/ads/redexgen/X/OH;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OH;->A04()F

    move-result v0

    return v0
.end method

.method public final AA6()V
    .locals 0

    .line 83407
    return-void
.end method

.method public final AA8(Lcom/facebook/ads/redexgen/X/OF;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V
    .locals 2

    .line 83408
    new-instance v0, Lcom/facebook/ads/redexgen/X/OH;

    invoke-direct {v0, p3, p4}, Lcom/facebook/ads/redexgen/X/OH;-><init>(Landroid/content/res/ColorStateList;F)V

    .line 83409
    .local v0, "background":Lcom/facebook/ads/redexgen/X/OH;
    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/OF;->AIa(Landroid/graphics/drawable/Drawable;)V

    .line 83410
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/OF;->A77()Lcom/facebook/ads/redexgen/X/OE;

    move-result-object v1

    .line 83411
    .local v1, "view":Landroid/view/View;
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 83412
    invoke-virtual {v1, p5}, Landroid/view/View;->setElevation(F)V

    .line 83413
    invoke-virtual {p0, p1, p6}, Lcom/facebook/ads/redexgen/X/gd;->AIn(Lcom/facebook/ads/redexgen/X/OF;F)V

    .line 83414
    return-void
.end method

.method public final ACm(Lcom/facebook/ads/redexgen/X/OF;)V
    .locals 1

    .line 83415
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/gd;->A8K(Lcom/facebook/ads/redexgen/X/OF;)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/gd;->AIn(Lcom/facebook/ads/redexgen/X/OF;F)V

    .line 83416
    return-void
.end method

.method public final AEl(Lcom/facebook/ads/redexgen/X/OF;)V
    .locals 1

    .line 83417
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/gd;->A8K(Lcom/facebook/ads/redexgen/X/OF;)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/gd;->AIn(Lcom/facebook/ads/redexgen/X/OF;F)V

    .line 83418
    return-void
.end method

.method public final AIZ(Lcom/facebook/ads/redexgen/X/OF;Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 83419
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/gd;->A00(Lcom/facebook/ads/redexgen/X/OF;)Lcom/facebook/ads/redexgen/X/OH;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/OH;->A08(Landroid/content/res/ColorStateList;)V

    .line 83420
    return-void
.end method

.method public final AIf(Lcom/facebook/ads/redexgen/X/OF;F)V
    .locals 1

    .line 83421
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/OF;->A77()Lcom/facebook/ads/redexgen/X/OE;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setElevation(F)V

    .line 83422
    return-void
.end method

.method public final AIn(Lcom/facebook/ads/redexgen/X/OF;F)V
    .locals 3

    .line 83423
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/gd;->A00(Lcom/facebook/ads/redexgen/X/OF;)Lcom/facebook/ads/redexgen/X/OH;

    move-result-object v2

    .line 83424
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/OF;->A9J()Z

    move-result v1

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/OF;->A8i()Z

    move-result v0

    .line 83425
    invoke-virtual {v2, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/OH;->A07(FZZ)V

    .line 83426
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/gd;->A01(Lcom/facebook/ads/redexgen/X/OF;)V

    .line 83427
    return-void
.end method

.method public final AIz(Lcom/facebook/ads/redexgen/X/OF;F)V
    .locals 1

    .line 83428
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/gd;->A00(Lcom/facebook/ads/redexgen/X/OF;)Lcom/facebook/ads/redexgen/X/OH;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/OH;->A06(F)V

    .line 83429
    return-void
.end method
