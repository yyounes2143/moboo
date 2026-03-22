.class public final Lcom/facebook/ads/redexgen/X/Lz;
.super Lcom/facebook/ads/redexgen/X/Y3;
.source ""


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/3i;

.field public A01:Z

.field public A02:Z

.field public final A03:Landroid/view/ViewGroup;

.field public final A04:Lcom/facebook/ads/redexgen/X/SF;

.field public final A05:Lcom/facebook/ads/redexgen/X/US;

.field public final A06:Lcom/facebook/ads/redexgen/X/E1;

.field public final A07:Lcom/facebook/ads/redexgen/X/DX;

.field public final A08:Lcom/facebook/ads/redexgen/X/DV;

.field public final A09:Lcom/facebook/ads/redexgen/X/D6;

.field public final A0A:Lcom/facebook/ads/redexgen/X/D3;

.field public final A0B:Lcom/facebook/ads/redexgen/X/D1;

.field public final A0C:Lcom/facebook/ads/redexgen/X/eW;

.field public final A0D:Lcom/facebook/ads/redexgen/X/eX;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/SF;Lcom/facebook/ads/redexgen/X/Ua;Landroid/view/View$OnClickListener;)V
    .locals 3

    .line 51416
    invoke-direct {p0, p1, p5}, Lcom/facebook/ads/redexgen/X/Y3;-><init>(Lcom/facebook/ads/redexgen/X/dL;Landroid/view/View$OnClickListener;)V

    .line 51417
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A02:Z

    .line 51418
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A01:Z

    .line 51419
    new-instance v0, Lcom/facebook/ads/redexgen/X/63;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/63;-><init>(Lcom/facebook/ads/redexgen/X/Lz;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A07:Lcom/facebook/ads/redexgen/X/DX;

    .line 51420
    new-instance v0, Lcom/facebook/ads/redexgen/X/62;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/62;-><init>(Lcom/facebook/ads/redexgen/X/Lz;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A08:Lcom/facebook/ads/redexgen/X/DV;

    .line 51421
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Lz;->A05:Lcom/facebook/ads/redexgen/X/US;

    .line 51422
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Lz;->A04:Lcom/facebook/ads/redexgen/X/SF;

    .line 51423
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Lz;->A00()Lcom/facebook/ads/redexgen/X/MA;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A0C:Lcom/facebook/ads/redexgen/X/eW;

    .line 51424
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Lz;->A07()Lcom/facebook/ads/redexgen/X/eX;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A0D:Lcom/facebook/ads/redexgen/X/eX;

    .line 51425
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A03:Landroid/view/ViewGroup;

    .line 51426
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Lz;->A03:Landroid/view/ViewGroup;

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/Lz;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51427
    invoke-direct {p0, p4}, Lcom/facebook/ads/redexgen/X/Lz;->A01(Lcom/facebook/ads/redexgen/X/Ua;)Lcom/facebook/ads/redexgen/X/E1;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A06:Lcom/facebook/ads/redexgen/X/E1;

    .line 51428
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Lz;->A04()Lcom/facebook/ads/redexgen/X/D3;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A0A:Lcom/facebook/ads/redexgen/X/D3;

    .line 51429
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Lz;->A03()Lcom/facebook/ads/redexgen/X/D6;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A09:Lcom/facebook/ads/redexgen/X/D6;

    .line 51430
    invoke-direct {p0, p4}, Lcom/facebook/ads/redexgen/X/Lz;->A06(Lcom/facebook/ads/redexgen/X/Ua;)Lcom/facebook/ads/redexgen/X/D1;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A0B:Lcom/facebook/ads/redexgen/X/D1;

    .line 51431
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Lz;->A0C()V

    .line 51432
    return-void
.end method

.method private A00()Lcom/facebook/ads/redexgen/X/MA;
    .locals 1

    .line 51433
    new-instance v0, Lcom/facebook/ads/redexgen/X/MA;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/MA;-><init>(Lcom/facebook/ads/redexgen/X/Lz;)V

    return-object v0
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/Ua;)Lcom/facebook/ads/redexgen/X/E1;
    .locals 5

    .line 51434
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A01:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v2, Lcom/facebook/ads/redexgen/X/E1;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/E1;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    .line 51435
    .local v0, "videoView":Lcom/facebook/ads/redexgen/X/E1;
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/XP;->A0I(Landroid/view/View;)V

    .line 51436
    invoke-virtual {v2, p1}, Lcom/facebook/ads/redexgen/X/E1;->setFunnelLoggingHandler(Lcom/facebook/ads/redexgen/X/Ua;)V

    .line 51437
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/E1;->getEventBus()Lcom/facebook/ads/redexgen/X/Te;

    move-result-object v4

    const/4 v0, 0x2

    new-array v3, v0, [Lcom/facebook/ads/redexgen/X/Tf;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A07:Lcom/facebook/ads/redexgen/X/DX;

    aput-object v0, v3, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A08:Lcom/facebook/ads/redexgen/X/DV;

    aput-object v0, v3, v1

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/Te;->A03([Lcom/facebook/ads/redexgen/X/Tf;)V

    .line 51438
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A01:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A1U(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51439
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/E1;->setVolume(F)V

    .line 51440
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A01:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A1P(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 51441
    new-instance v0, Lcom/facebook/ads/redexgen/X/Y5;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Y5;-><init>(Lcom/facebook/ads/redexgen/X/Lz;)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/E1;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51442
    :cond_1
    const/4 v0, -0x2

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 51443
    .local v1, "videoLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 51444
    invoke-virtual {p0, v2, v1}, Lcom/facebook/ads/redexgen/X/Lz;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51445
    return-object v2
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Lz;)Lcom/facebook/ads/redexgen/X/E1;
    .locals 0

    .line 51446
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A06:Lcom/facebook/ads/redexgen/X/E1;

    return-object p0
.end method

.method private A03()Lcom/facebook/ads/redexgen/X/D6;
    .locals 3

    .line 51447
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A01:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v2, Lcom/facebook/ads/redexgen/X/D6;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/D6;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    .line 51448
    .local v0, "countdownPlugin":Lcom/facebook/ads/redexgen/X/D6;
    const/4 v0, -0x1

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/D6;->setTextColor(I)V

    .line 51449
    const/4 v1, 0x0

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0W(Landroid/widget/TextView;ZI)V

    .line 51450
    const/16 v0, 0x11

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/D6;->setGravity(I)V

    .line 51451
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A06:Lcom/facebook/ads/redexgen/X/E1;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/E1;->A0i(Lcom/facebook/ads/redexgen/X/dc;)V

    .line 51452
    return-object v2
.end method

.method private A04()Lcom/facebook/ads/redexgen/X/D3;
    .locals 2

    .line 51453
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A01:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v1, Lcom/facebook/ads/redexgen/X/D3;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/D3;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    .line 51454
    .local v0, "playPausePlugin":Lcom/facebook/ads/redexgen/X/D3;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A06:Lcom/facebook/ads/redexgen/X/E1;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/E1;->A0i(Lcom/facebook/ads/redexgen/X/dc;)V

    .line 51455
    return-object v1
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/Lz;)Lcom/facebook/ads/redexgen/X/D3;
    .locals 0

    .line 51456
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A0A:Lcom/facebook/ads/redexgen/X/D3;

    return-object p0
.end method

.method private A06(Lcom/facebook/ads/redexgen/X/Ua;)Lcom/facebook/ads/redexgen/X/D1;
    .locals 3

    .line 51457
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Y3;->A01:Lcom/facebook/ads/redexgen/X/dL;

    const/4 v0, 0x1

    new-instance v1, Lcom/facebook/ads/redexgen/X/D1;

    invoke-direct {v1, v2, p1, v0}, Lcom/facebook/ads/redexgen/X/D1;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/Ua;Z)V

    .line 51458
    .local v0, "muteButtonPlugin":Lcom/facebook/ads/redexgen/X/D1;
    const/high16 v0, 0x33000000

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/D1;->setBackgroundPaintColor(I)V

    .line 51459
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A06:Lcom/facebook/ads/redexgen/X/E1;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/E1;->A0i(Lcom/facebook/ads/redexgen/X/dc;)V

    .line 51460
    return-object v1
.end method

.method private A07()Lcom/facebook/ads/redexgen/X/eX;
    .locals 7

    .line 51461
    new-instance v1, Lcom/facebook/ads/redexgen/X/eX;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A0C:Lcom/facebook/ads/redexgen/X/eW;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Y3;->A01:Lcom/facebook/ads/redexgen/X/dL;

    const/16 v3, 0x32

    const/4 v4, 0x1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/eX;-><init>(Landroid/view/View;IZLjava/lang/ref/WeakReference;Lcom/facebook/ads/redexgen/X/dL;)V

    .line 51462
    .local v0, "viewabilityChecker":Lcom/facebook/ads/redexgen/X/eX;
    return-object v1
.end method

.method private A08()V
    .locals 1

    .line 51463
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Lz;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A01:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Lz;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51464
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A0D:Lcom/facebook/ads/redexgen/X/eX;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eX;->A0U()V

    .line 51465
    :goto_0
    return-void

    .line 51466
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A0D:Lcom/facebook/ads/redexgen/X/eX;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eX;->A0V()V

    goto :goto_0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/Lz;)Z
    .locals 0

    .line 51467
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A02:Z

    return p0
.end method


# virtual methods
.method public final A0A()V
    .locals 4

    .line 51468
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A0D:Lcom/facebook/ads/redexgen/X/eX;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eX;->A0V()V

    .line 51469
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A06:Lcom/facebook/ads/redexgen/X/E1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getEventBus()Lcom/facebook/ads/redexgen/X/Te;

    move-result-object v3

    const/4 v0, 0x2

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/Tf;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A07:Lcom/facebook/ads/redexgen/X/DX;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A08:Lcom/facebook/ads/redexgen/X/DV;

    aput-object v0, v2, v1

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/Te;->A04([Lcom/facebook/ads/redexgen/X/Tf;)V

    .line 51470
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A06:Lcom/facebook/ads/redexgen/X/E1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->A0Z()V

    .line 51471
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A06:Lcom/facebook/ads/redexgen/X/E1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0H(Landroid/view/View;)V

    .line 51472
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A00:Lcom/facebook/ads/redexgen/X/3i;

    if-eqz v0, :cond_0

    .line 51473
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A00:Lcom/facebook/ads/redexgen/X/3i;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3i;->A0p()V

    .line 51474
    :cond_0
    return-void
.end method

.method public final A0B()V
    .locals 1

    .line 51475
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A0B:Lcom/facebook/ads/redexgen/X/D1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/D1;->A09()V

    .line 51476
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A02:Z

    .line 51477
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A0D:Lcom/facebook/ads/redexgen/X/eX;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eX;->A0U()V

    .line 51478
    return-void
.end method

.method public final A0C()V
    .locals 4

    .line 51479
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Y3;->A0C()V

    .line 51480
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A01:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A1V(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 51481
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A0A:Lcom/facebook/ads/redexgen/X/D3;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0H(Landroid/view/View;)V

    .line 51482
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Lz;->A0A:Lcom/facebook/ads/redexgen/X/D3;

    invoke-virtual {p0, v3, v2}, Lcom/facebook/ads/redexgen/X/Y3;->A00(ZZ)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/D3;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51483
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A0A:Lcom/facebook/ads/redexgen/X/D3;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Lz;->addView(Landroid/view/View;)V

    .line 51484
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A01:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A1R(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51485
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A09:Lcom/facebook/ads/redexgen/X/D6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0H(Landroid/view/View;)V

    .line 51486
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Lz;->A09:Lcom/facebook/ads/redexgen/X/D6;

    invoke-virtual {p0, v3, v3}, Lcom/facebook/ads/redexgen/X/Y3;->A00(ZZ)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/D6;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51487
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A09:Lcom/facebook/ads/redexgen/X/D6;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Lz;->addView(Landroid/view/View;)V

    .line 51488
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A01:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A1T(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51489
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A0B:Lcom/facebook/ads/redexgen/X/D1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0H(Landroid/view/View;)V

    .line 51490
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Lz;->A0B:Lcom/facebook/ads/redexgen/X/D1;

    invoke-virtual {p0, v2, v2}, Lcom/facebook/ads/redexgen/X/Y3;->A00(ZZ)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/D1;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51491
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A0B:Lcom/facebook/ads/redexgen/X/D1;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Lz;->addView(Landroid/view/View;)V

    .line 51492
    :cond_2
    return-void
.end method

.method public final A0D()Z
    .locals 1

    .line 51493
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A06:Lcom/facebook/ads/redexgen/X/E1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->A0o()Z

    move-result v0

    return v0
.end method

.method public final A0E()Z
    .locals 6

    .line 51494
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Lz;->getMeasuredWidth()I

    move-result v0

    const/4 v5, 0x1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A06:Lcom/facebook/ads/redexgen/X/E1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getMeasuredWidth()I

    move-result v0

    if-gtz v0, :cond_1

    .line 51495
    .end local v0
    :cond_0
    return v5

    .line 51496
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Lz;->getMeasuredWidth()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A06:Lcom/facebook/ads/redexgen/X/E1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v1, v0

    int-to-double v3, v1

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double/2addr v3, v0

    double-to-int v2, v3

    .line 51497
    .local v0, "widthGap":I
    sget v1, Lcom/facebook/ads/redexgen/X/Y3;->A05:I

    sget v0, Lcom/facebook/ads/redexgen/X/Y3;->A04:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    if-le v2, v1, :cond_2

    :goto_0
    return v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public final A0F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Lz;
    .locals 4

    .line 51498
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A04:Lcom/facebook/ads/redexgen/X/SF;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/SF;->A0T(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51499
    .local v0, "cachedVideoUrl":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A06:Lcom/facebook/ads/redexgen/X/E1;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/E1;->setVideoURI(Ljava/lang/String;)V

    .line 51500
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Y3;->A01:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Lz;->A05:Lcom/facebook/ads/redexgen/X/US;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Lz;->A06:Lcom/facebook/ads/redexgen/X/E1;

    new-instance v0, Lcom/facebook/ads/redexgen/X/3i;

    invoke-direct {v0, v3, v2, v1, p1}, Lcom/facebook/ads/redexgen/X/3i;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/E1;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A00:Lcom/facebook/ads/redexgen/X/3i;

    .line 51501
    if-eqz p3, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51502
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Lz;->A03:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Y3;->A01:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v2, Lcom/facebook/ads/redexgen/X/KZ;

    invoke-direct {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;-><init>(Landroid/view/ViewGroup;Lcom/facebook/ads/redexgen/X/dL;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A03:Landroid/view/ViewGroup;

    .line 51503
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A03:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A05(II)Lcom/facebook/ads/redexgen/X/KZ;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/M0;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/M0;-><init>(Lcom/facebook/ads/redexgen/X/Lz;)V

    .line 51504
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A06(Lcom/facebook/ads/redexgen/X/Zo;)Lcom/facebook/ads/redexgen/X/KZ;

    move-result-object v0

    .line 51505
    invoke-virtual {v0, p3}, Lcom/facebook/ads/redexgen/X/KZ;->A07(Ljava/lang/String;)V

    .line 51506
    :cond_0
    if-eqz p5, :cond_1

    .line 51507
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A0A:Lcom/facebook/ads/redexgen/X/D3;

    invoke-virtual {v0, p4}, Lcom/facebook/ads/redexgen/X/D3;->setPlayAccessibilityLabel(Ljava/lang/String;)V

    .line 51508
    :cond_1
    if-eqz p5, :cond_2

    .line 51509
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A0A:Lcom/facebook/ads/redexgen/X/D3;

    invoke-virtual {v0, p5}, Lcom/facebook/ads/redexgen/X/D3;->setPauseAccessibilityLabel(Ljava/lang/String;)V

    .line 51510
    :cond_2
    return-object p0
.end method

.method public getMediaViewId()I
    .locals 1

    .line 51511
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A06:Lcom/facebook/ads/redexgen/X/E1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getId()I

    move-result v0

    return v0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 51512
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Y3;->onAttachedToWindow()V

    .line 51513
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A01:Z

    .line 51514
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Lz;->A08()V

    .line 51515
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 51516
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Y3;->onDetachedFromWindow()V

    .line 51517
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Lz;->A01:Z

    .line 51518
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Lz;->A08()V

    .line 51519
    return-void
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 51520
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Y3;->onVisibilityChanged(Landroid/view/View;I)V

    .line 51521
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Lz;->A08()V

    .line 51522
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 0

    .line 51523
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Y3;->onWindowFocusChanged(Z)V

    .line 51524
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Lz;->A08()V

    .line 51525
    return-void
.end method
