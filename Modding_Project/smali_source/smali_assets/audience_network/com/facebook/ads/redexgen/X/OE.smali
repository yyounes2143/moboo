.class public abstract Lcom/facebook/ads/redexgen/X/OE;
.super Landroid/widget/FrameLayout;
.source ""


# static fields
.field public static A07:[Ljava/lang/String;

.field public static final A08:F

.field public static final A09:I

.field public static final A0A:Lcom/facebook/ads/redexgen/X/OG;

.field public static final A0B:[I


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Z

.field public A03:Z

.field public final A04:Landroid/graphics/Rect;

.field public final A05:Landroid/graphics/Rect;

.field public final A06:Lcom/facebook/ads/redexgen/X/OF;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1442
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ShNBvS5"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "b2z1l7evnHkZXpFh4jUAU"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "JfQekQfzdw1mJ2RkSzlEvaL1jVLq96XT"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "0M9zDLqBQAVDpkbZHtwaURqwF1mV2f1S"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "jQ6MUrNiHIuV2Q80zD0eWZ3NfiJ07L6A"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "0up6ixfDqbrZOotDwCZ4gMtZBiUGrTem"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "xF0da7GYt9A5Qra0MND7i27I5BG4MHvn"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "fGPiNZIH9FIGNZUMCtCVq24hO8AJIHug"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/OE;->A07:[Ljava/lang/String;

    const v0, 0x1010031

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/OE;->A0B:[I

    .line 1443
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/facebook/ads/redexgen/X/OE;->A08:F

    .line 1444
    const/high16 v1, 0x3f800000    # 1.0f

    sget v0, Lcom/facebook/ads/redexgen/X/OE;->A08:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/OE;->A09:I

    .line 1445
    new-instance v0, Lcom/facebook/ads/redexgen/X/gd;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/gd;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/OE;->A0A:Lcom/facebook/ads/redexgen/X/OG;

    .line 1446
    sget-object v0, Lcom/facebook/ads/redexgen/X/OE;->A0A:Lcom/facebook/ads/redexgen/X/OG;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/OG;->AA6()V

    .line 1447
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 55231
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/OE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55232
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 55233
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/OE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55234
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .line 55235
    move-object v1, p0

    move-object v4, p1

    invoke-direct {p0, v4, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55236
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/OE;->A04:Landroid/graphics/Rect;

    .line 55237
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/OE;->A05:Landroid/graphics/Rect;

    .line 55238
    new-instance v0, Lcom/facebook/ads/redexgen/X/ge;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/ge;-><init>(Lcom/facebook/ads/redexgen/X/OE;)V

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/OE;->A06:Lcom/facebook/ads/redexgen/X/OF;

    .line 55239
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/OE;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v0, Lcom/facebook/ads/redexgen/X/OE;->A0B:[I

    invoke-virtual {v2, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 55240
    .local v1, "aa":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 55241
    .local v3, "themeColorBackground":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 55242
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 55243
    .local v4, "hsv":[F
    invoke-static {v3, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 55244
    const v0, -0x50506

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 55245
    .local v5, "backgroundColor":Landroid/content/res/ColorStateList;
    const/high16 v6, 0x41200000    # 10.0f

    .line 55246
    .local p4, "radius":F
    const/high16 v7, 0x41200000    # 10.0f

    .line 55247
    .local p5, "elevation":F
    const/high16 v8, 0x42480000    # 50.0f

    .line 55248
    .local v6, "maxElevation":F
    iput-boolean v2, v1, Lcom/facebook/ads/redexgen/X/OE;->A02:Z

    .line 55249
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/OE;->A03:Z

    .line 55250
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/OE;->A04:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 55251
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/OE;->A04:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 55252
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/OE;->A04:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 55253
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/OE;->A04:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 55254
    cmpl-float v0, v7, v8

    if-lez v0, :cond_0

    .line 55255
    move v8, v7

    .line 55256
    .end local v6    # "maxElevation":F
    .local p6, "maxElevation":F
    :cond_0
    iput v2, v1, Lcom/facebook/ads/redexgen/X/OE;->A01:I

    .line 55257
    iput v2, v1, Lcom/facebook/ads/redexgen/X/OE;->A00:I

    .line 55258
    sget-object v2, Lcom/facebook/ads/redexgen/X/OE;->A0A:Lcom/facebook/ads/redexgen/X/OG;

    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/OE;->A06:Lcom/facebook/ads/redexgen/X/OF;

    invoke-interface/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/OG;->AA8(Lcom/facebook/ads/redexgen/X/OF;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V

    .line 55259
    return-void
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/OE;IIII)V
    .locals 0

    .line 55260
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public getCardBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 2

    .line 55261
    sget-object v1, Lcom/facebook/ads/redexgen/X/OE;->A0A:Lcom/facebook/ads/redexgen/X/OG;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OE;->A06:Lcom/facebook/ads/redexgen/X/OF;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/OG;->A6t(Lcom/facebook/ads/redexgen/X/OF;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getCardElevation()F
    .locals 2

    .line 55262
    sget-object v1, Lcom/facebook/ads/redexgen/X/OE;->A0A:Lcom/facebook/ads/redexgen/X/OG;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OE;->A06:Lcom/facebook/ads/redexgen/X/OF;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/OG;->A7n(Lcom/facebook/ads/redexgen/X/OF;)F

    move-result v0

    return v0
.end method

.method public getContentPaddingBottom()I
    .locals 1

    .line 55263
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OE;->A04:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getContentPaddingLeft()I
    .locals 1

    .line 55264
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OE;->A04:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getContentPaddingRight()I
    .locals 1

    .line 55265
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OE;->A04:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getContentPaddingTop()I
    .locals 1

    .line 55266
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OE;->A04:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getMaxCardElevation()F
    .locals 2

    .line 55267
    sget-object v1, Lcom/facebook/ads/redexgen/X/OE;->A0A:Lcom/facebook/ads/redexgen/X/OG;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OE;->A06:Lcom/facebook/ads/redexgen/X/OF;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/OG;->A8K(Lcom/facebook/ads/redexgen/X/OF;)F

    move-result v0

    return v0
.end method

.method public getPreventCornerOverlap()Z
    .locals 1

    .line 55268
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/OE;->A03:Z

    return v0
.end method

.method public getRadius()F
    .locals 2

    .line 55269
    sget-object v1, Lcom/facebook/ads/redexgen/X/OE;->A0A:Lcom/facebook/ads/redexgen/X/OG;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OE;->A06:Lcom/facebook/ads/redexgen/X/OF;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/OG;->A8j(Lcom/facebook/ads/redexgen/X/OF;)F

    move-result v0

    return v0
.end method

.method public getUseCompatPadding()Z
    .locals 1

    .line 55270
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/OE;->A02:Z

    return v0
.end method

.method public final onMeasure(II)V
    .locals 5

    .line 55271
    sget-object v0, Lcom/facebook/ads/redexgen/X/OE;->A0A:Lcom/facebook/ads/redexgen/X/OG;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/gd;

    if-nez v0, :cond_0

    .line 55272
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 55273
    .local v0, "widthMode":I
    sparse-switch v4, :sswitch_data_0

    .line 55274
    .end local v1
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/OE;->A07:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_1

    .line 55275
    .local v1, "heightMode":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/OE;->A07:[Ljava/lang/String;

    const-string v1, "ezVHALe6egolV0dGNwTkgEwTmiIckZEU"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "9kVtZpYuS1B6eNaF5MtLQpOmcikxmxeD"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    sparse-switch v4, :sswitch_data_1

    .line 55276
    .end local v2
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 55277
    .end local v0    # "widthMode":I
    .end local v1    # "heightMode":I
    :goto_2
    return-void

    .line 55278
    :sswitch_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/OE;->A0A:Lcom/facebook/ads/redexgen/X/OG;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OE;->A06:Lcom/facebook/ads/redexgen/X/OF;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/OG;->A8P(Lcom/facebook/ads/redexgen/X/OF;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 55279
    .local v2, "minHeight":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 55280
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 55281
    goto :goto_1

    .line 55282
    :sswitch_1
    sget-object v1, Lcom/facebook/ads/redexgen/X/OE;->A0A:Lcom/facebook/ads/redexgen/X/OG;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OE;->A06:Lcom/facebook/ads/redexgen/X/OF;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/OG;->A8Q(Lcom/facebook/ads/redexgen/X/OF;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 55283
    .local v1, "minWidth":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 55284
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 55285
    goto :goto_0

    .line 55286
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public setCardBackgroundColor(I)V
    .locals 3

    .line 55287
    sget-object v2, Lcom/facebook/ads/redexgen/X/OE;->A0A:Lcom/facebook/ads/redexgen/X/OG;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OE;->A06:Lcom/facebook/ads/redexgen/X/OF;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OG;->AIZ(Lcom/facebook/ads/redexgen/X/OF;Landroid/content/res/ColorStateList;)V

    .line 55288
    return-void
.end method

.method public setCardBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 55289
    sget-object v1, Lcom/facebook/ads/redexgen/X/OE;->A0A:Lcom/facebook/ads/redexgen/X/OG;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OE;->A06:Lcom/facebook/ads/redexgen/X/OF;

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/OG;->AIZ(Lcom/facebook/ads/redexgen/X/OF;Landroid/content/res/ColorStateList;)V

    .line 55290
    return-void
.end method

.method public setCardElevation(F)V
    .locals 2

    .line 55291
    sget-object v1, Lcom/facebook/ads/redexgen/X/OE;->A0A:Lcom/facebook/ads/redexgen/X/OG;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OE;->A06:Lcom/facebook/ads/redexgen/X/OF;

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/OG;->AIf(Lcom/facebook/ads/redexgen/X/OF;F)V

    .line 55292
    return-void
.end method

.method public setMaxCardElevation(F)V
    .locals 2

    .line 55293
    sget-object v1, Lcom/facebook/ads/redexgen/X/OE;->A0A:Lcom/facebook/ads/redexgen/X/OG;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OE;->A06:Lcom/facebook/ads/redexgen/X/OF;

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/OG;->AIn(Lcom/facebook/ads/redexgen/X/OF;F)V

    .line 55294
    return-void
.end method

.method public setMinimumHeight(I)V
    .locals 0

    .line 55295
    iput p1, p0, Lcom/facebook/ads/redexgen/X/OE;->A00:I

    .line 55296
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    .line 55297
    return-void
.end method

.method public setMinimumWidth(I)V
    .locals 0

    .line 55298
    iput p1, p0, Lcom/facebook/ads/redexgen/X/OE;->A01:I

    .line 55299
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 55300
    return-void
.end method

.method public final setPadding(IIII)V
    .locals 0

    .line 55301
    return-void
.end method

.method public final setPaddingRelative(IIII)V
    .locals 0

    .line 55302
    return-void
.end method

.method public setPreventCornerOverlap(Z)V
    .locals 2

    .line 55303
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/OE;->A03:Z

    if-eq p1, v0, :cond_0

    .line 55304
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/OE;->A03:Z

    .line 55305
    sget-object v1, Lcom/facebook/ads/redexgen/X/OE;->A0A:Lcom/facebook/ads/redexgen/X/OG;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OE;->A06:Lcom/facebook/ads/redexgen/X/OF;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/OG;->AEl(Lcom/facebook/ads/redexgen/X/OF;)V

    .line 55306
    :cond_0
    return-void
.end method

.method public setRadius(F)V
    .locals 2

    .line 55307
    sget-object v1, Lcom/facebook/ads/redexgen/X/OE;->A0A:Lcom/facebook/ads/redexgen/X/OG;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OE;->A06:Lcom/facebook/ads/redexgen/X/OF;

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/OG;->AIz(Lcom/facebook/ads/redexgen/X/OF;F)V

    .line 55308
    return-void
.end method

.method public setUseCompatPadding(Z)V
    .locals 2

    .line 55309
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/OE;->A02:Z

    if-eq v0, p1, :cond_0

    .line 55310
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/OE;->A02:Z

    .line 55311
    sget-object v1, Lcom/facebook/ads/redexgen/X/OE;->A0A:Lcom/facebook/ads/redexgen/X/OG;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OE;->A06:Lcom/facebook/ads/redexgen/X/OF;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/OG;->ACm(Lcom/facebook/ads/redexgen/X/OF;)V

    .line 55312
    :cond_0
    return-void
.end method
