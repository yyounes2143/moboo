.class public final Lcom/facebook/ads/redexgen/X/OH;
.super Landroid/graphics/drawable/Drawable;
.source ""


# static fields
.field public static A0B:[Ljava/lang/String;


# instance fields
.field public A00:F

.field public A01:F

.field public A02:Landroid/content/res/ColorStateList;

.field public A03:Landroid/content/res/ColorStateList;

.field public A04:Landroid/graphics/PorterDuff$Mode;

.field public A05:Landroid/graphics/PorterDuffColorFilter;

.field public A06:Z

.field public A07:Z

.field public final A08:Landroid/graphics/Paint;

.field public final A09:Landroid/graphics/Rect;

.field public final A0A:Landroid/graphics/RectF;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1448
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "7TbfIjq4nUNlo9PBRbBh8Nqjz9WD1j4o"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "QwIEzzAwkj5R91wAwEWLlMMFKcIcEzMH"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "YGxjb6ZA6RtUmEF8MJ0615ZpcT73YF5q"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "S0hvC3rZuvsYRwp1KEtz"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "1QChJDVwb8IocnSKwo65wA6CZgco7TbD"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "ZdRWauYqGR9BuXwVkjl982N5"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "gVkOfeUFBBjn0ZGk6MgiFADp"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "9Iu12MOa7l614b1gjodkd988Is"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/OH;->A0B:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/ColorStateList;F)V
    .locals 2

    .line 55313
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 55314
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/OH;->A06:Z

    .line 55315
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/OH;->A07:Z

    .line 55316
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/OH;->A04:Landroid/graphics/PorterDuff$Mode;

    .line 55317
    iput p2, p0, Lcom/facebook/ads/redexgen/X/OH;->A01:F

    .line 55318
    const/4 v1, 0x5

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/OH;->A08:Landroid/graphics/Paint;

    .line 55319
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/OH;->A01(Landroid/content/res/ColorStateList;)V

    .line 55320
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/OH;->A0A:Landroid/graphics/RectF;

    .line 55321
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/OH;->A09:Landroid/graphics/Rect;

    .line 55322
    return-void
.end method

.method private A00(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 2

    .line 55323
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 55324
    .end local v0
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 55325
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/OH;->getState()[I

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 55326
    .local v0, "color":I
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, v1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object v0
.end method

.method private A01(Landroid/content/res/ColorStateList;)V
    .locals 4

    .line 55327
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/OH;->A02:Landroid/content/res/ColorStateList;

    .line 55328
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/OH;->A08:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/OH;->A02:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/OH;->getState()[I

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OH;->A02:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 55329
    return-void
.end method

.method private A02(Landroid/graphics/Rect;)V
    .locals 6

    .line 55330
    if-nez p1, :cond_0

    .line 55331
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/OH;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 55332
    :cond_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/OH;->A0A:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 55333
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OH;->A09:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 55334
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/OH;->A06:Z

    if-eqz v0, :cond_1

    .line 55335
    iget v2, p0, Lcom/facebook/ads/redexgen/X/OH;->A00:F

    iget v1, p0, Lcom/facebook/ads/redexgen/X/OH;->A01:F

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/OH;->A07:Z

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OJ;->A01(FFZ)F

    move-result v5

    .line 55336
    .local v0, "vInset":F
    iget v2, p0, Lcom/facebook/ads/redexgen/X/OH;->A00:F

    iget v1, p0, Lcom/facebook/ads/redexgen/X/OH;->A01:F

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/OH;->A07:Z

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OJ;->A00(FFZ)F

    move-result v0

    .line 55337
    .local v1, "hInset":F
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/OH;->A09:Landroid/graphics/Rect;

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v3, v0

    float-to-double v0, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v0, v1

    invoke-virtual {v4, v3, v0}, Landroid/graphics/Rect;->inset(II)V

    .line 55338
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OH;->A0A:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OH;->A09:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 55339
    .end local v0    # "vInset":F
    .end local v1    # "hInset":F
    :cond_1
    return-void
.end method


# virtual methods
.method public final A03()F
    .locals 1

    .line 55340
    iget v0, p0, Lcom/facebook/ads/redexgen/X/OH;->A00:F

    return v0
.end method

.method public final A04()F
    .locals 1

    .line 55341
    iget v0, p0, Lcom/facebook/ads/redexgen/X/OH;->A01:F

    return v0
.end method

.method public final A05()Landroid/content/res/ColorStateList;
    .locals 1

    .line 55342
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OH;->A02:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final A06(F)V
    .locals 1

    .line 55343
    iget v0, p0, Lcom/facebook/ads/redexgen/X/OH;->A01:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 55344
    return-void

    .line 55345
    :cond_0
    iput p1, p0, Lcom/facebook/ads/redexgen/X/OH;->A01:F

    .line 55346
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/OH;->A02(Landroid/graphics/Rect;)V

    .line 55347
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/OH;->invalidateSelf()V

    .line 55348
    return-void
.end method

.method public final A07(FZZ)V
    .locals 1

    .line 55349
    iget v0, p0, Lcom/facebook/ads/redexgen/X/OH;->A00:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/OH;->A06:Z

    if-ne v0, p2, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/OH;->A07:Z

    if-ne v0, p3, :cond_0

    .line 55350
    return-void

    .line 55351
    :cond_0
    iput p1, p0, Lcom/facebook/ads/redexgen/X/OH;->A00:F

    .line 55352
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/OH;->A06:Z

    .line 55353
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/OH;->A07:Z

    .line 55354
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/OH;->A02(Landroid/graphics/Rect;)V

    .line 55355
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/OH;->invalidateSelf()V

    .line 55356
    return-void
.end method

.method public final A08(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 55357
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/OH;->A01(Landroid/content/res/ColorStateList;)V

    .line 55358
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/OH;->invalidateSelf()V

    .line 55359
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 55360
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/OH;->A08:Landroid/graphics/Paint;

    .line 55361
    .local v0, "paint":Landroid/graphics/Paint;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OH;->A05:Landroid/graphics/PorterDuffColorFilter;

    if-eqz v0, :cond_1

    invoke-virtual {v4}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 55362
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OH;->A05:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 55363
    const/4 v3, 0x1

    .line 55364
    .local v1, "clearColorFilter":Z
    .restart local v1    # "clearColorFilter":Z
    :goto_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/OH;->A0A:Landroid/graphics/RectF;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/OH;->A01:F

    iget v0, p0, Lcom/facebook/ads/redexgen/X/OH;->A01:F

    invoke-virtual {p1, v2, v1, v0, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 55365
    if-eqz v3, :cond_0

    .line 55366
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 55367
    :cond_0
    return-void

    .line 55368
    .end local v1    # "clearColorFilter":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final getOpacity()I
    .locals 1

    .line 55369
    const/4 v0, -0x3

    return v0
.end method

.method public final getOutline(Landroid/graphics/Outline;)V
    .locals 2

    .line 55370
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OH;->A09:Landroid/graphics/Rect;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/OH;->A01:F

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    .line 55371
    return-void
.end method

.method public final isStateful()Z
    .locals 1

    .line 55372
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OH;->A03:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OH;->A03:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OH;->A02:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OH;->A02:Landroid/content/res/ColorStateList;

    .line 55373
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 55374
    :goto_0
    return v0

    .line 55375
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 55376
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 55377
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/OH;->A02(Landroid/graphics/Rect;)V

    .line 55378
    return-void
.end method

.method public final onStateChange([I)Z
    .locals 5

    .line 55379
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OH;->A02:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OH;->A02:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {v1, p1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    .line 55380
    .local v0, "newColor":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OH;->A08:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    const/4 v4, 0x1

    if-eq v2, v0, :cond_1

    const/4 v1, 0x1

    .line 55381
    .local v1, "colorChanged":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 55382
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OH;->A08:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 55383
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OH;->A03:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OH;->A04:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_3

    .line 55384
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/OH;->A03:Landroid/content/res/ColorStateList;

    sget-object v1, Lcom/facebook/ads/redexgen/X/OH;->A0B:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x7a

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/OH;->A0B:[Ljava/lang/String;

    const-string v1, "QGJeL8K6asHWX9bSRI5oYOa5"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "GrCaC70zqQWkgUOv3d1vdiOs"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OH;->A04:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/OH;->A00(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/OH;->A05:Landroid/graphics/PorterDuffColorFilter;

    .line 55385
    return v4

    .line 55386
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 55387
    :cond_3
    return v1
.end method

.method public final setAlpha(I)V
    .locals 1

    .line 55388
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OH;->A08:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 55389
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 55390
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OH;->A08:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 55391
    return-void
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 55392
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/OH;->A03:Landroid/content/res/ColorStateList;

    .line 55393
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OH;->A03:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OH;->A04:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/OH;->A00(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/OH;->A05:Landroid/graphics/PorterDuffColorFilter;

    .line 55394
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/OH;->invalidateSelf()V

    .line 55395
    return-void
.end method

.method public final setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 55396
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/OH;->A04:Landroid/graphics/PorterDuff$Mode;

    .line 55397
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OH;->A03:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OH;->A04:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/OH;->A00(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/OH;->A05:Landroid/graphics/PorterDuffColorFilter;

    .line 55398
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/OH;->invalidateSelf()V

    .line 55399
    return-void
.end method
