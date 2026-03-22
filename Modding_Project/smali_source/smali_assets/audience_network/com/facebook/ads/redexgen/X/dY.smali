.class public final Lcom/facebook/ads/redexgen/X/dY;
.super Landroid/widget/RelativeLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/dX;
    }
.end annotation


# static fields
.field public static A04:[Ljava/lang/String;

.field public static final A05:I


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/2p;

.field public A02:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/dX;",
            ">;"
        }
    .end annotation
.end field

.field public final A03:Lcom/facebook/ads/redexgen/X/eS;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2645
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Ym3c0mHmt8I3OfABPCOx9UJ2Q16UuduY"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "K4DkQJV"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "KARr27mhou56jkSxhuic5Eo8"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "doL6IsbVcBXoE3lEPdAb4lspmNlkYQBg"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ZiamaIcezCYLNnFM0CzM2w39hefukKsr"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "QAAEQWAERntefxGdirzkY0W9ygCVb18Z"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ecvamyNjiJSZyZ2FY2suHBqgS12IICXX"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "BDk4Rb0w5P1ojifCZQT7pVNvZTakDsaU"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/dY;->A04:[Ljava/lang/String;

    const/high16 v1, 0x40800000    # 4.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/dY;->A05:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/eS;)V
    .locals 3

    .line 79378
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 79379
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/dY;->A00:I

    .line 79380
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/dY;->A03:Lcom/facebook/ads/redexgen/X/eS;

    .line 79381
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dY;->A03:Lcom/facebook/ads/redexgen/X/eS;

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0H(Landroid/view/View;)V

    .line 79382
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dY;->A03:Lcom/facebook/ads/redexgen/X/eS;

    .line 79383
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/eS;->getView()Landroid/view/View;

    move-result-object v2

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 79384
    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/dY;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79385
    return-void
.end method

.method private A00(Landroid/animation/AnimatorSet;IZ)V
    .locals 3

    .line 79386
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 79387
    .local v0, "marginAnimator":Landroid/animation/ValueAnimator;
    new-instance v0, Lcom/facebook/ads/redexgen/X/dU;

    invoke-direct {v0, p0, p3, p2}, Lcom/facebook/ads/redexgen/X/dU;-><init>(Lcom/facebook/ads/redexgen/X/dY;ZI)V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 79388
    const/4 v0, 0x1

    new-array v1, v0, [Landroid/animation/Animator;

    const/4 v0, 0x0

    aput-object v2, v1, v0

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 79389
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final A01(Landroid/animation/AnimatorSet;Z)V
    .locals 3

    .line 79390
    if-eqz p2, :cond_1

    .line 79391
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dY;->A03:Lcom/facebook/ads/redexgen/X/eS;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/eS;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setClipToOutline(Z)V

    .line 79392
    new-instance v1, Lcom/facebook/ads/redexgen/X/dV;

    invoke-direct {v1, p0}, Lcom/facebook/ads/redexgen/X/dV;-><init>(Lcom/facebook/ads/redexgen/X/dY;)V

    .line 79393
    .local v0, "roundedOutline":Landroid/view/ViewOutlineProvider;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dY;->A03:Lcom/facebook/ads/redexgen/X/eS;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/eS;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 79394
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dY;->A01:Lcom/facebook/ads/redexgen/X/2p;

    if-eqz v0, :cond_0

    .line 79395
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dY;->A01:Lcom/facebook/ads/redexgen/X/2p;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/2p;->setClipToOutline(Z)V

    .line 79396
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dY;->A01:Lcom/facebook/ads/redexgen/X/2p;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/2p;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 79397
    :cond_0
    sget v0, Lcom/facebook/ads/redexgen/X/dY;->A05:I

    invoke-direct {p0, p1, v0, v2}, Lcom/facebook/ads/redexgen/X/dY;->A00(Landroid/animation/AnimatorSet;IZ)V

    .line 79398
    .end local v0    # "roundedOutline":Landroid/view/ViewOutlineProvider;
    :goto_0
    return-void

    .line 79399
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dY;->A03:Lcom/facebook/ads/redexgen/X/eS;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/eS;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setClipToOutline(Z)V

    .line 79400
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dY;->A03:Lcom/facebook/ads/redexgen/X/eS;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/eS;->getView()Landroid/view/View;

    move-result-object v1

    sget-object v0, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 79401
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dY;->A01:Lcom/facebook/ads/redexgen/X/2p;

    if-eqz v0, :cond_2

    .line 79402
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dY;->A01:Lcom/facebook/ads/redexgen/X/2p;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/2p;->setClipToOutline(Z)V

    .line 79403
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/dY;->A01:Lcom/facebook/ads/redexgen/X/2p;

    sget-object v0, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 79404
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/dY;->A00:I

    invoke-direct {p0, p1, v0, v2}, Lcom/facebook/ads/redexgen/X/dY;->A00(Landroid/animation/AnimatorSet;IZ)V

    goto :goto_0
.end method

.method public final A02(Lcom/facebook/ads/redexgen/X/Da;)V
    .locals 2

    .line 79405
    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/dY;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79406
    check-cast p1, Lcom/facebook/ads/redexgen/X/2p;

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/dY;->A01:Lcom/facebook/ads/redexgen/X/2p;

    .line 79407
    return-void
.end method

.method public final A03(Lcom/facebook/ads/redexgen/X/Da;)V
    .locals 1

    .line 79408
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/XP;->A0H(Landroid/view/View;)V

    .line 79409
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/dY;->A01:Lcom/facebook/ads/redexgen/X/2p;

    .line 79410
    return-void
.end method

.method public final synthetic A04(ZILandroid/animation/ValueAnimator;)V
    .locals 2

    .line 79411
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 79412
    .local v0, "interpolatedTime":F
    if-eqz p1, :cond_0

    .line 79413
    .local v1, "curInterpolatedTime":F
    :goto_0
    int-to-float v0, p2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/dY;->A00:I

    .line 79414
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/dY;->requestLayout()V

    .line 79415
    return-void

    .line 79416
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, v1

    goto :goto_0
.end method

.method public final A05()Z
    .locals 1

    .line 79417
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dY;->A03:Lcom/facebook/ads/redexgen/X/eS;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/eS;->A9j()Z

    move-result v0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 79418
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dY;->A03:Lcom/facebook/ads/redexgen/X/eS;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/eS;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public final onLayout(ZIIII)V
    .locals 6

    .line 79419
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/dY;->A03:Lcom/facebook/ads/redexgen/X/eS;

    check-cast v5, Landroid/view/View;

    iget v4, p0, Lcom/facebook/ads/redexgen/X/dY;->A00:I

    iget v3, p0, Lcom/facebook/ads/redexgen/X/dY;->A00:I

    .line 79420
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/dY;->getWidth()I

    move-result v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/dY;->A00:I

    sub-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/dY;->getHeight()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/dY;->A00:I

    sub-int/2addr v1, v0

    invoke-virtual {v5, v4, v3, v2, v1}, Landroid/view/View;->layout(IIII)V

    .line 79421
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dY;->A01:Lcom/facebook/ads/redexgen/X/2p;

    if-eqz v0, :cond_0

    .line 79422
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/dY;->A01:Lcom/facebook/ads/redexgen/X/2p;

    iget v4, p0, Lcom/facebook/ads/redexgen/X/dY;->A00:I

    iget v3, p0, Lcom/facebook/ads/redexgen/X/dY;->A00:I

    .line 79423
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/dY;->getWidth()I

    move-result v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/dY;->A00:I

    sub-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/dY;->getHeight()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/dY;->A00:I

    sub-int/2addr v1, v0

    .line 79424
    invoke-virtual {v5, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/2p;->layout(IIII)V

    .line 79425
    :cond_0
    return-void
.end method

.method public final onMeasure(II)V
    .locals 11

    .line 79426
    const/4 v10, 0x0

    .line 79427
    .local v0, "isinflated":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dY;->A03:Lcom/facebook/ads/redexgen/X/eS;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/eS;->getVideoWidth()I

    move-result v8

    iget v0, p0, Lcom/facebook/ads/redexgen/X/dY;->A00:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v8, v0

    .line 79428
    .local v1, "mVideoWidth":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dY;->A03:Lcom/facebook/ads/redexgen/X/eS;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/eS;->getVideoHeight()I

    move-result v5

    iget v0, p0, Lcom/facebook/ads/redexgen/X/dY;->A00:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v5, v0

    .line 79429
    .local v2, "mVideoHeight":I
    invoke-static {v8, p1}, Lcom/facebook/ads/redexgen/X/dY;->getDefaultSize(II)I

    move-result v3

    .line 79430
    .local v3, "width":I
    invoke-static {v5, p2}, Lcom/facebook/ads/redexgen/X/dY;->getDefaultSize(II)I

    move-result v4

    .line 79431
    .local v4, "height":I
    if-lez v8, :cond_0

    if-lez v5, :cond_0

    .line 79432
    const/4 v10, 0x1

    .line 79433
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 79434
    .local v5, "widthSpecMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 79435
    .local v6, "widthSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 79436
    .local v7, "heightSpecMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 79437
    .local v8, "heightSpecSize":I
    const/high16 v1, 0x40000000    # 2.0f

    if-ne v9, v1, :cond_2

    if-ne v6, v1, :cond_2

    .line 79438
    move v3, v7

    .line 79439
    move v4, v2

    .line 79440
    mul-int v1, v8, v4

    mul-int v0, v3, v5

    if-ge v1, v0, :cond_1

    .line 79441
    mul-int v3, v4, v8

    sget-object v2, Lcom/facebook/ads/redexgen/X/dY;->A04:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_8

    sget-object v2, Lcom/facebook/ads/redexgen/X/dY;->A04:[Ljava/lang/String;

    const-string v1, "U4zbj2Wm0uAraatZAyMG0dkAaN2sbGyV"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "NaQeXa1xIolrwrGsNa3PifVvRhjqFXGF"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    div-int/2addr v3, v5

    .line 79442
    .end local v5    # "widthSpecMode":I
    .end local v6    # "widthSpecSize":I
    .end local v7    # "heightSpecMode":I
    .end local v8    # "heightSpecSize":I
    :cond_0
    :goto_0
    invoke-virtual {p0, v3, v4}, Lcom/facebook/ads/redexgen/X/dY;->setMeasuredDimension(II)V

    .line 79443
    if-eqz v10, :cond_7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dY;->A02:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/dY;->A02:Ljava/lang/ref/WeakReference;

    sget-object v1, Lcom/facebook/ads/redexgen/X/dY;->A04:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x69

    if-eq v1, v0, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 79444
    :cond_1
    mul-int v1, v8, v4

    mul-int v0, v3, v5

    if-le v1, v0, :cond_0

    .line 79445
    mul-int v4, v3, v5

    div-int/2addr v4, v8

    goto :goto_0

    .line 79446
    :cond_2
    const/high16 v0, -0x80000000

    if-ne v9, v1, :cond_3

    .line 79447
    move v3, v7

    .line 79448
    mul-int v4, v3, v5

    div-int/2addr v4, v8

    .line 79449
    if-ne v6, v0, :cond_0

    if-le v4, v2, :cond_0

    .line 79450
    move v4, v2

    goto :goto_0

    .line 79451
    :cond_3
    if-ne v6, v1, :cond_4

    .line 79452
    move v4, v2

    .line 79453
    mul-int v3, v4, v8

    div-int/2addr v3, v5

    .line 79454
    if-ne v9, v0, :cond_0

    if-le v3, v7, :cond_0

    .line 79455
    move v3, v7

    goto :goto_0

    .line 79456
    :cond_4
    move v3, v8

    .line 79457
    move v4, v5

    .line 79458
    if-ne v6, v0, :cond_5

    if-le v4, v2, :cond_5

    .line 79459
    move v4, v2

    .line 79460
    mul-int v3, v4, v8

    div-int/2addr v3, v5

    .line 79461
    :cond_5
    if-ne v9, v0, :cond_0

    if-le v3, v7, :cond_0

    .line 79462
    move v3, v7

    .line 79463
    mul-int v4, v3, v5

    div-int/2addr v4, v8

    goto :goto_0

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/dY;->A04:[Ljava/lang/String;

    const-string v1, "u6I59svdNPk3v5MrivI4HijRJO25VXOb"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 79464
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dY;->A02:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/dX;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/dX;->AFj()V

    .line 79465
    :cond_7
    return-void

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public setRoundedCornersVideoStyle(F)V
    .locals 2

    .line 79466
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dY;->A03:Lcom/facebook/ads/redexgen/X/eS;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/eS;->getView()Landroid/view/View;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 79467
    new-instance v1, Lcom/facebook/ads/redexgen/X/dW;

    invoke-direct {v1, p0, p1}, Lcom/facebook/ads/redexgen/X/dW;-><init>(Lcom/facebook/ads/redexgen/X/dY;F)V

    .line 79468
    .local v0, "roundedOutline":Landroid/view/ViewOutlineProvider;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dY;->A03:Lcom/facebook/ads/redexgen/X/eS;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/eS;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 79469
    .end local v0    # "roundedOutline":Landroid/view/ViewOutlineProvider;
    return-void
.end method

.method public setViewImplInflationListener(Lcom/facebook/ads/redexgen/X/dX;)V
    .locals 1

    .line 79470
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/dY;->A02:Ljava/lang/ref/WeakReference;

    .line 79471
    return-void
.end method
