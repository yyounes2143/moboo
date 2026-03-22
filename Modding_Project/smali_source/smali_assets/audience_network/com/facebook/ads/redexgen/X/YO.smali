.class public final Lcom/facebook/ads/redexgen/X/YO;
.super Landroid/widget/LinearLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/view/ToolbarActionView$ToolbarActionMode;
    }
.end annotation


# static fields
.field public static final A08:I

.field public static final A09:I

.field public static final A0A:I


# instance fields
.field public A00:I

.field public A01:Z

.field public A02:Z

.field public final A03:Landroid/widget/ImageView;

.field public final A04:Landroid/widget/LinearLayout;

.field public final A05:Landroid/widget/TextView;

.field public final A06:Lcom/facebook/ads/redexgen/X/dL;

.field public final A07:Lcom/facebook/ads/redexgen/X/a7;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 2398
    const/high16 v1, 0x41700000    # 15.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/YO;->A08:I

    .line 2399
    const/high16 v1, 0x41200000    # 10.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/YO;->A09:I

    .line 2400
    const/high16 v1, 0x42300000    # 44.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/YO;->A0A:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;IZ)V
    .locals 6

    .line 73434
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 73435
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/YO;->A01:Z

    .line 73436
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/YO;->A06:Lcom/facebook/ads/redexgen/X/dL;

    .line 73437
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/YO;->A02:Z

    .line 73438
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YO;->A03:Landroid/widget/ImageView;

    .line 73439
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/YO;->A03:Landroid/widget/ImageView;

    sget v3, Lcom/facebook/ads/redexgen/X/YO;->A09:I

    sget v2, Lcom/facebook/ads/redexgen/X/YO;->A09:I

    sget v1, Lcom/facebook/ads/redexgen/X/YO;->A09:I

    sget v0, Lcom/facebook/ads/redexgen/X/YO;->A09:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 73440
    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/YO;->A02:Z

    new-instance v0, Lcom/facebook/ads/redexgen/X/a7;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/a7;-><init>(Lcom/facebook/ads/redexgen/X/dL;Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YO;->A07:Lcom/facebook/ads/redexgen/X/a7;

    .line 73441
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YO;->A07:Lcom/facebook/ads/redexgen/X/a7;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/a7;->setProgress(F)V

    .line 73442
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/YO;->A07:Lcom/facebook/ads/redexgen/X/a7;

    sget v3, Lcom/facebook/ads/redexgen/X/YO;->A09:I

    sget v2, Lcom/facebook/ads/redexgen/X/YO;->A09:I

    sget v1, Lcom/facebook/ads/redexgen/X/YO;->A09:I

    sget v0, Lcom/facebook/ads/redexgen/X/YO;->A09:I

    invoke-virtual {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/a7;->setPadding(IIII)V

    .line 73443
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YO;->A05:Landroid/widget/TextView;

    .line 73444
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/YO;->setOrientation(I)V

    .line 73445
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YO;->A04:Landroid/widget/LinearLayout;

    .line 73446
    iput p2, p0, Lcom/facebook/ads/redexgen/X/YO;->A00:I

    .line 73447
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YO;->A00()V

    .line 73448
    return-void
.end method

.method private A00()V
    .locals 7

    .line 73449
    iget v0, p0, Lcom/facebook/ads/redexgen/X/YO;->A00:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/YO;->setToolbarActionMode(I)V

    .line 73450
    const/4 v4, -0x2

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 73451
    .local v0, "actionContainerParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0x11

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/YO;->setGravity(I)V

    .line 73452
    sget v1, Lcom/facebook/ads/redexgen/X/YO;->A0A:I

    sget v0, Lcom/facebook/ads/redexgen/X/YO;->A0A:I

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 73453
    .local v3, "actionIconParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/YO;->A05:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0W(Landroid/widget/TextView;ZI)V

    .line 73454
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YO;->A05:Landroid/widget/TextView;

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73455
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YO;->A05:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73456
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YO;->A04:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YO;->A03:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73457
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YO;->A04:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YO;->A07:Lcom/facebook/ads/redexgen/X/a7;

    invoke-virtual {v1, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73458
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YO;->A04:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v5}, Lcom/facebook/ads/redexgen/X/YO;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73459
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 73460
    .local v1, "actionTextLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 73461
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YO;->A05:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/YO;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73462
    return-void
.end method

.method private A01()V
    .locals 6

    .line 73463
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YO;->A07:Lcom/facebook/ads/redexgen/X/a7;

    .line 73464
    iget v0, p0, Lcom/facebook/ads/redexgen/X/YO;->A00:I

    const/16 v5, 0x8

    const/4 v4, 0x6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/YO;->A00:I

    if-ne v0, v4, :cond_5

    .line 73465
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/YO;->A01:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    .line 73466
    :goto_0
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/a7;->setVisibility(I)V

    .line 73467
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/YO;->A03:Landroid/widget/ImageView;

    .line 73468
    iget v1, p0, Lcom/facebook/ads/redexgen/X/YO;->A00:I

    const/4 v0, 0x5

    if-ne v1, v0, :cond_2

    .line 73469
    const/4 v5, 0x4

    .line 73470
    :cond_1
    :goto_1
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73471
    return-void

    .line 73472
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/YO;->A00:I

    if-eq v0, v3, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/YO;->A00:I

    if-ne v0, v4, :cond_3

    goto :goto_1

    .line 73473
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 73474
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 73475
    :cond_5
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public final A02()V
    .locals 1

    .line 73476
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/YO;->setVisibility(I)V

    .line 73477
    return-void
.end method

.method public final A03(FI)V
    .locals 1

    .line 73478
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YO;->A07:Lcom/facebook/ads/redexgen/X/a7;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/a7;->A02(FI)V

    .line 73479
    return-void
.end method

.method public final A04(Lcom/facebook/ads/redexgen/X/My;ZZ)V
    .locals 4

    .line 73480
    invoke-virtual {p1, p2}, Lcom/facebook/ads/redexgen/X/My;->A05(Z)I

    move-result v3

    .line 73481
    .local v0, "accentColor":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YO;->A07:Lcom/facebook/ads/redexgen/X/a7;

    .line 73482
    const/16 v0, 0x4d

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/OP;->A02(II)I

    move-result v0

    .line 73483
    const/16 v2, 0x6e

    invoke-virtual {v1, v0, v3, v2}, Lcom/facebook/ads/redexgen/X/a7;->A03(III)V

    .line 73484
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YO;->A03:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 73485
    if-eqz p3, :cond_0

    .line 73486
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YO;->A05:Landroid/widget/TextView;

    .line 73487
    const/4 v0, -0x1

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/OP;->A02(II)I

    move-result v0

    .line 73488
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73489
    :goto_0
    return-void

    .line 73490
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YO;->A05:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public final A05()Z
    .locals 1

    .line 73491
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YO;->A05:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final A06()Z
    .locals 2

    .line 73492
    iget v1, p0, Lcom/facebook/ads/redexgen/X/YO;->A00:I

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/YO;->A00:I

    const/4 v0, 0x4

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getToolbarActionMode()I
    .locals 1

    .line 73493
    iget v0, p0, Lcom/facebook/ads/redexgen/X/YO;->A00:I

    return v0
.end method

.method public setActionClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 73494
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/YO;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73495
    return-void
.end method

.method public setInitialUnskippableSeconds(I)V
    .locals 1

    .line 73496
    if-lez p1, :cond_0

    .line 73497
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/YO;->setToolbarActionMode(I)V

    .line 73498
    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 1

    .line 73499
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YO;->A07:Lcom/facebook/ads/redexgen/X/a7;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/a7;->setProgressWithAnimation(F)V

    .line 73500
    return-void
.end method

.method public setProgressClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 73501
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YO;->A07:Lcom/facebook/ads/redexgen/X/a7;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/a7;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73502
    return-void
.end method

.method public setProgressImage(Lcom/facebook/ads/redexgen/X/XX;)V
    .locals 1

    .line 73503
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YO;->A07:Lcom/facebook/ads/redexgen/X/a7;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/a7;->setImage(Lcom/facebook/ads/redexgen/X/XX;)V

    .line 73504
    return-void
.end method

.method public setProgressImmediate(F)V
    .locals 1

    .line 73505
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YO;->A07:Lcom/facebook/ads/redexgen/X/a7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/a7;->clearAnimation()V

    .line 73506
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YO;->A07:Lcom/facebook/ads/redexgen/X/a7;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/a7;->setProgress(F)V

    .line 73507
    return-void
.end method

.method public setProgressSpinnerInvisible(Z)V
    .locals 0

    .line 73508
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/YO;->A01:Z

    .line 73509
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YO;->A01()V

    .line 73510
    return-void
.end method

.method public setToolbarActionMode(I)V
    .locals 8

    .line 73511
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YO;->A06:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/LH;->AFR(I)V

    .line 73512
    iput p1, p0, Lcom/facebook/ads/redexgen/X/YO;->A00:I

    .line 73513
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/YO;->A01()V

    .line 73514
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/YO;->setVisibility(I)V

    .line 73515
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YO;->A03:Landroid/widget/ImageView;

    const/16 v0, 0xff

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 73516
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/YO;->A03:Landroid/widget/ImageView;

    sget v3, Lcom/facebook/ads/redexgen/X/YO;->A09:I

    sget v2, Lcom/facebook/ads/redexgen/X/YO;->A09:I

    sget v1, Lcom/facebook/ads/redexgen/X/YO;->A09:I

    sget v0, Lcom/facebook/ads/redexgen/X/YO;->A09:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 73517
    const/16 v6, 0x8

    packed-switch p1, :pswitch_data_0

    .line 73518
    :pswitch_0
    sget-object v7, Lcom/facebook/ads/redexgen/X/XX;->A0O:Lcom/facebook/ads/redexgen/X/XX;

    .line 73519
    .local v2, "actionEncodedImage":Lcom/facebook/ads/redexgen/X/XX;
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YO;->A03:Landroid/widget/ImageView;

    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/XY;->A01(Lcom/facebook/ads/redexgen/X/XX;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 73520
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 73521
    const/16 v1, 0x3ed

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YO;->A03:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0E(ILandroid/view/View;)V

    .line 73522
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/YO;->setVisibility(I)V

    .line 73523
    :goto_1
    return-void

    .line 73524
    :cond_0
    if-ne p1, v6, :cond_1

    .line 73525
    const/16 v1, 0x3f1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YO;->A03:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0E(ILandroid/view/View;)V

    .line 73526
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/YO;->setVisibility(I)V

    goto :goto_1

    .line 73527
    :cond_1
    const/16 v1, 0x3ea

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YO;->A03:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0E(ILandroid/view/View;)V

    goto :goto_1

    .line 73528
    .end local v2    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/XX;
    :pswitch_1
    sget-object v7, Lcom/facebook/ads/redexgen/X/XX;->A0j:Lcom/facebook/ads/redexgen/X/XX;

    .line 73529
    .restart local v2    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/XX;
    goto :goto_0

    .line 73530
    .end local v2    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/XX;
    :pswitch_2
    sget-object v7, Lcom/facebook/ads/redexgen/X/XX;->A0O:Lcom/facebook/ads/redexgen/X/XX;

    .line 73531
    .restart local v2    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/XX;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YO;->A03:Landroid/widget/ImageView;

    const/16 v0, 0x6e

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 73532
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/YO;->A03:Landroid/widget/ImageView;

    sget v3, Lcom/facebook/ads/redexgen/X/YO;->A08:I

    sget v2, Lcom/facebook/ads/redexgen/X/YO;->A08:I

    sget v1, Lcom/facebook/ads/redexgen/X/YO;->A08:I

    sget v0, Lcom/facebook/ads/redexgen/X/YO;->A08:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 73533
    goto :goto_0

    .line 73534
    .end local v2    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/XX;
    :pswitch_3
    sget-object v7, Lcom/facebook/ads/redexgen/X/XX;->A0O:Lcom/facebook/ads/redexgen/X/XX;

    .line 73535
    .restart local v2    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/XX;
    goto :goto_0

    .line 73536
    .end local v2    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/XX;
    :pswitch_4
    sget-object v7, Lcom/facebook/ads/redexgen/X/XX;->A0O:Lcom/facebook/ads/redexgen/X/XX;

    .line 73537
    .restart local v2    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/XX;
    goto :goto_0

    .line 73538
    .end local v2    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/XX;
    :pswitch_5
    sget-object v7, Lcom/facebook/ads/redexgen/X/XX;->A0O:Lcom/facebook/ads/redexgen/X/XX;

    .line 73539
    .restart local v2    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/XX;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YO;->A03:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73540
    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/YO;->setVisibility(I)V

    .line 73541
    goto :goto_0

    .line 73542
    .end local v2    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/XX;
    :pswitch_6
    sget-object v7, Lcom/facebook/ads/redexgen/X/XX;->A0e:Lcom/facebook/ads/redexgen/X/XX;

    .line 73543
    .restart local v2    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/XX;
    goto :goto_0

    .line 73544
    .end local v2    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/XX;
    :pswitch_7
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/YO;->A02:Z

    if-nez v0, :cond_2

    sget-object v7, Lcom/facebook/ads/redexgen/X/XX;->A0v:Lcom/facebook/ads/redexgen/X/XX;

    goto :goto_0

    :cond_2
    sget-object v7, Lcom/facebook/ads/redexgen/X/XX;->A0o:Lcom/facebook/ads/redexgen/X/XX;

    goto :goto_0

    .line 73545
    .end local v2
    :pswitch_8
    sget-object v7, Lcom/facebook/ads/redexgen/X/XX;->A0O:Lcom/facebook/ads/redexgen/X/XX;

    .line 73546
    .restart local v2    # "actionEncodedImage":Lcom/facebook/ads/redexgen/X/XX;
    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setToolbarMessage(Ljava/lang/String;)V
    .locals 2

    .line 73547
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YO;->A05:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73548
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YO;->A05:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73549
    return-void

    .line 73550
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setToolbarMessageEnabled(Z)V
    .locals 2

    .line 73551
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YO;->A05:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73552
    return-void

    .line 73553
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method
