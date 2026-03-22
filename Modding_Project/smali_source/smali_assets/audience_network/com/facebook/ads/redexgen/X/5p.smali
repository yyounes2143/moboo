.class public final Lcom/facebook/ads/redexgen/X/5p;
.super Lcom/facebook/ads/redexgen/X/KL;
.source ""


# static fields
.field public static A00:[Ljava/lang/String;

.field public static final A01:I

.field public static final A02:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 375
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "xFpGP6HPJdxG02oIdF9HxIihRC1N68eF"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "SON7b0vH7pU6goQPwxtgPgRIrt0b"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "K8DFrhhg1SsjCm4z8vXCiiOaNBIf4pDg"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "gTEb8e"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "wHRSkCegs17WrS1ZFDoTECKCsF5cwC3Q"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "MW7m9Sx4Y"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "aUUm4uG1aRzEZg1qhLXNvnDll0TBP1yk"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "rrQmUhcDQBY8PjMlrfgiyZrhPVfY"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/5p;->A00:[Ljava/lang/String;

    const/high16 v1, 0x43180000    # 152.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/5p;->A02:I

    .line 376
    const/high16 v1, 0x42700000    # 60.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/5p;->A01:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/KE;IZLcom/facebook/ads/redexgen/X/My;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/eX;Lcom/facebook/ads/redexgen/X/XH;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/Cw;Lcom/facebook/ads/redexgen/X/Ua;Z)V
    .locals 16

    .line 16491
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v15, p14

    move-object/from16 v14, p13

    move-object/from16 v13, p12

    move-object/from16 v12, p11

    move-object/from16 v11, p10

    move-object/from16 v10, p9

    move-object/from16 v9, p8

    move-object/from16 v8, p7

    move-object/from16 v7, p6

    move-object/from16 v5, p5

    move/from16 v4, p4

    move/from16 v3, p3

    move-object/from16 v2, p2

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v15}, Lcom/facebook/ads/redexgen/X/KL;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/KE;IZLcom/facebook/ads/redexgen/X/My;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/eX;Lcom/facebook/ads/redexgen/X/XH;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/Cw;Lcom/facebook/ads/redexgen/X/Ua;Z)V

    .line 16492
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/5p;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 16493
    .local v0, "orientation":I
    move-object/from16 v2, p0

    invoke-direct {v2, v1}, Lcom/facebook/ads/redexgen/X/5p;->A02(I)V

    .line 16494
    invoke-direct {v2, v1}, Lcom/facebook/ads/redexgen/X/5p;->A03(I)V

    .line 16495
    invoke-direct {v2, v1}, Lcom/facebook/ads/redexgen/X/5p;->A09(I)V

    .line 16496
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/5p;->A00()V

    .line 16497
    invoke-direct {v2, v1}, Lcom/facebook/ads/redexgen/X/5p;->A06(I)V

    .line 16498
    invoke-direct {v2, v1}, Lcom/facebook/ads/redexgen/X/5p;->A05(I)V

    .line 16499
    invoke-direct {v2, v1}, Lcom/facebook/ads/redexgen/X/5p;->A0C(I)V

    .line 16500
    invoke-direct {v2, v1}, Lcom/facebook/ads/redexgen/X/5p;->A07(I)V

    .line 16501
    invoke-direct {v2, v1}, Lcom/facebook/ads/redexgen/X/5p;->A0B(I)V

    .line 16502
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/KL;->A0P:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0I(Landroid/view/View;)V

    .line 16503
    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 16504
    invoke-direct {v2, v1}, Lcom/facebook/ads/redexgen/X/5p;->A08(I)V

    .line 16505
    :cond_0
    invoke-direct {v2, v1}, Lcom/facebook/ads/redexgen/X/5p;->A0A(I)V

    .line 16506
    invoke-direct {v2, v1}, Lcom/facebook/ads/redexgen/X/5p;->A01(I)V

    .line 16507
    invoke-direct {v2, v1}, Lcom/facebook/ads/redexgen/X/5p;->A04(I)V

    .line 16508
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/KL;->A0O:Landroid/widget/RelativeLayout;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/KL;->A0M:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 16509
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/KL;->A0O:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/5p;->addView(Landroid/view/View;)V

    .line 16510
    return-void
.end method

.method private A00()V
    .locals 2

    .line 16511
    const/4 v0, -0x2

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 16512
    .local v0, "ctaContainerLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16513
    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16514
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0L:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16515
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0L:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 16516
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0L:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 16517
    return-void
.end method

.method private A01(I)V
    .locals 2

    .line 16518
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 16519
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A04:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A04:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 16520
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0O:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A04:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 16521
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0O:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0U:Lcom/facebook/ads/redexgen/X/Cw;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 16522
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0O:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0J:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 16523
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0O:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A08:Lcom/facebook/ads/redexgen/X/KE;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 16524
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0O:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0I:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 16525
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0Y:Z

    if-eqz v0, :cond_1

    .line 16526
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/KL;->A0n()V

    .line 16527
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0O:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0K:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 16528
    return-void

    .line 16529
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0L:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0I:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 16530
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0L:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A08:Lcom/facebook/ads/redexgen/X/KE;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 16531
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0N:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0L:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 16532
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0N:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A09:Lcom/facebook/ads/redexgen/X/aK;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 16533
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0N:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0Q:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 16534
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0M:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0J:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 16535
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0M:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0N:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 16536
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0M:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0U:Lcom/facebook/ads/redexgen/X/Cw;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 16537
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A04:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A04:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 16538
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0M:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A04:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private A02(I)V
    .locals 5

    .line 16539
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 16540
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/KL;->A0M:Landroid/widget/RelativeLayout;

    const/16 v3, 0x190

    const/16 v2, 0x64

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/CU;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/CU;-><init>(Landroid/view/View;III)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A05:Lcom/facebook/ads/redexgen/X/CU;

    .line 16541
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0W:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 16542
    :cond_0
    return-void
.end method

.method private A03(I)V
    .locals 8

    .line 16543
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0M:Landroid/widget/RelativeLayout;

    .line 16544
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 16545
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/KL;->A0l:I

    const/4 v5, 0x0

    invoke-virtual {v6, v5, v5, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 16546
    const/4 v0, 0x1

    const/16 v7, 0x8

    if-ne p1, v0, :cond_0

    .line 16547
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0M:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 16548
    .end local v1
    .end local v3
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0M:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16549
    return-void

    .line 16550
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5p;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 16551
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/5p;->A00:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/5p;->A00:[Ljava/lang/String;

    const-string v1, "fxD9Evjxj1QSbkd6sjXNqMWP1zvaSe0y"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "LbyTcx7MzeGvJAIRAeX8dxGClI61VeIC"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    int-to-float v1, v3

    const v0, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 16552
    const/4 v0, -0x2

    iput v0, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 16553
    const/16 v0, 0xc

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16554
    const/16 v0, 0xb

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16555
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/KL;->A0M:Landroid/widget/RelativeLayout;

    sget v3, Lcom/facebook/ads/redexgen/X/KL;->A0l:I

    sget v2, Lcom/facebook/ads/redexgen/X/KL;->A0l:I

    sget v1, Lcom/facebook/ads/redexgen/X/KL;->A0l:I

    sget v0, Lcom/facebook/ads/redexgen/X/KL;->A0l:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 16556
    new-array v2, v7, [F

    fill-array-data v2, :array_0

    .line 16557
    .local v3, "outerRadius":[F
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0M:Landroid/widget/RelativeLayout;

    const/high16 v0, -0x67000000

    invoke-virtual {p0, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/KL;->A0r(Landroid/view/View;I[F)V

    .line 16558
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0M:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x42000000    # 32.0f
        0x42000000    # 32.0f
        0x0
        0x0
        0x0
        0x0
        0x42000000    # 32.0f
        0x42000000    # 32.0f
    .end array-data
.end method

.method private A04(I)V
    .locals 5

    .line 16559
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0K:Landroid/widget/LinearLayout;

    .line 16560
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 16561
    .local v0, "adReportingLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v2, 0x1

    const/16 v1, 0x14

    const/16 v0, 0x15

    const/4 v4, 0x0

    if-ne p1, v2, :cond_0

    .line 16562
    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 16563
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16564
    sget v0, Lcom/facebook/ads/redexgen/X/KL;->A0r:I

    invoke-virtual {v3, v4, v4, v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 16565
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/KL;->A0K:Landroid/widget/LinearLayout;

    sget v1, Lcom/facebook/ads/redexgen/X/KL;->A0u:I

    sget v0, Lcom/facebook/ads/redexgen/X/KL;->A0u:I

    invoke-virtual {v2, v1, v0, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 16566
    :goto_0
    const/16 v0, 0xc

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16567
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/KL;->A0K:Landroid/widget/LinearLayout;

    sget v1, Lcom/facebook/ads/redexgen/X/KL;->A0u:I

    sget v0, Lcom/facebook/ads/redexgen/X/KL;->A0u:I

    invoke-virtual {v2, v4, v1, v0, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 16568
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0K:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16569
    return-void

    .line 16570
    :cond_0
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 16571
    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/5p;->A00:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_1

    .line 16572
    sget-object v2, Lcom/facebook/ads/redexgen/X/5p;->A00:[Ljava/lang/String;

    const-string v1, "loHD1sEgjyAFCmeIlD5ALXOeqArjH8d"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    sget v0, Lcom/facebook/ads/redexgen/X/KL;->A0r:I

    invoke-virtual {v3, v0, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A05(I)V
    .locals 8

    .line 16573
    sget v0, Lcom/facebook/ads/redexgen/X/KL;->A0b:I

    const/4 v7, -0x1

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v7, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 16574
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v0, 0x1

    const/16 v1, 0xf

    const/16 v4, 0xe

    const/4 v6, 0x2

    const/4 v3, 0x0

    if-ne p1, v0, :cond_0

    .line 16575
    invoke-virtual {v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 16576
    const/16 v0, 0x1e

    iput v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A02:I

    .line 16577
    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16578
    sget v2, Lcom/facebook/ads/redexgen/X/KL;->A0r:I

    sget v1, Lcom/facebook/ads/redexgen/X/KL;->A0r:I

    sget v0, Lcom/facebook/ads/redexgen/X/KL;->A0l:I

    invoke-virtual {v5, v2, v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 16579
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0U:Lcom/facebook/ads/redexgen/X/Cw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Cw;->getId()I

    move-result v0

    invoke-virtual {v5, v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 16580
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A08:Lcom/facebook/ads/redexgen/X/KE;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/KE;->setMinWidth(I)V

    .line 16581
    .end local v1
    .end local v2
    :goto_0
    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16582
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A08:Lcom/facebook/ads/redexgen/X/KE;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/KE;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16583
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Zv;->A08:Lcom/facebook/ads/redexgen/X/KE;

    sget v1, Lcom/facebook/ads/redexgen/X/KL;->A0s:I

    sget v0, Lcom/facebook/ads/redexgen/X/KL;->A0s:I

    invoke-virtual {v2, v1, v3, v0, v3}, Lcom/facebook/ads/redexgen/X/KE;->setPadding(IIII)V

    .line 16584
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/KL;->A0k()V

    .line 16585
    return-void

    .line 16586
    :cond_0
    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 16587
    const/16 v0, 0x10

    iput v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A02:I

    .line 16588
    const/4 v0, -0x2

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 16589
    sget v0, Lcom/facebook/ads/redexgen/X/KL;->A0i:I

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 16590
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0I:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 16591
    invoke-virtual {v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16592
    :cond_1
    invoke-virtual {v5, v3, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 16593
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5p;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 16594
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 16595
    .local v2, "screenWidth":I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Zv;->A08:Lcom/facebook/ads/redexgen/X/KE;

    int-to-float v1, v0

    const v0, 0x3df5c28f    # 0.12f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/KE;->setMinWidth(I)V

    goto :goto_0
.end method

.method private A06(I)V
    .locals 5

    .line 16596
    sget v1, Lcom/facebook/ads/redexgen/X/KL;->A0c:I

    sget v0, Lcom/facebook/ads/redexgen/X/KL;->A0c:I

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 16597
    .local v0, "chevronUpParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v0, 0x1

    const/16 v3, 0xe

    const/4 v2, 0x2

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 16598
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A08:Lcom/facebook/ads/redexgen/X/KE;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KE;->getId()I

    move-result v0

    invoke-virtual {v4, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 16599
    sget v0, Lcom/facebook/ads/redexgen/X/KL;->A0u:I

    invoke-virtual {v4, v1, v1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 16600
    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16601
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0I:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16602
    return-void

    .line 16603
    :cond_0
    sget v0, Lcom/facebook/ads/redexgen/X/KL;->A0s:I

    invoke-virtual {v4, v1, v1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 16604
    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 16605
    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    goto :goto_0
.end method

.method private A07(I)V
    .locals 5

    .line 16606
    const/4 v0, -0x2

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 16607
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xc

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 16608
    const/4 v1, 0x3

    invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 16609
    const/4 v0, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    .line 16610
    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16611
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A08:Lcom/facebook/ads/redexgen/X/KE;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KE;->getId()I

    move-result v1

    const/4 v0, 0x7

    invoke-virtual {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 16612
    sget v0, Lcom/facebook/ads/redexgen/X/KL;->A0l:I

    invoke-virtual {v4, v2, v2, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 16613
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0J:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16614
    return-void

    .line 16615
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0U:Lcom/facebook/ads/redexgen/X/Cw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Cw;->getId()I

    move-result v0

    invoke-virtual {v4, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 16616
    const/16 v0, 0xb

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16617
    sget v0, Lcom/facebook/ads/redexgen/X/KL;->A0k:I

    invoke-virtual {v4, v2, v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method private A08(I)V
    .locals 5

    .line 16618
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 16619
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0P:Landroid/widget/TextView;

    .line 16620
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 16621
    .local v0, "descriptionParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xe

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16622
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0Q:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 16623
    sget v3, Lcom/facebook/ads/redexgen/X/KL;->A0t:I

    sget v2, Lcom/facebook/ads/redexgen/X/KL;->A0t:I

    sget v1, Lcom/facebook/ads/redexgen/X/KL;->A0u:I

    const/4 v0, 0x0

    invoke-virtual {v4, v3, v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 16624
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0P:Landroid/widget/TextView;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 16625
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0P:Landroid/widget/TextView;

    const/high16 v0, 0x41900000    # 18.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 16626
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0P:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16627
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0P:Landroid/widget/TextView;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 16628
    .end local v0    # "descriptionParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method private A09(I)V
    .locals 4

    .line 16629
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A09:Lcom/facebook/ads/redexgen/X/aK;

    .line 16630
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aK;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 16631
    .local v0, "imageParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v0, 0x1

    const/16 v3, 0xe

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 16632
    sget v0, Lcom/facebook/ads/redexgen/X/5p;->A02:I

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 16633
    sget v0, Lcom/facebook/ads/redexgen/X/5p;->A02:I

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 16634
    sget v0, Lcom/facebook/ads/redexgen/X/5p;->A02:I

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x4

    .line 16635
    .local v1, "topMargin":I
    invoke-virtual {v2, v1, v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 16636
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16637
    const/16 v1, 0x1e

    .line 16638
    .local v1, "imageRadius":I
    .restart local v1    # "imageRadius":I
    :goto_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0X:Z

    if-nez v0, :cond_0

    .line 16639
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A09:Lcom/facebook/ads/redexgen/X/aK;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/aK;->setRadius(I)V

    .line 16640
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A09:Lcom/facebook/ads/redexgen/X/aK;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/aK;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16641
    return-void

    .line 16642
    .end local v1    # "imageRadius":I
    :cond_1
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 16643
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 16644
    sget v0, Lcom/facebook/ads/redexgen/X/5p;->A01:I

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 16645
    sget v0, Lcom/facebook/ads/redexgen/X/5p;->A01:I

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 16646
    sget v0, Lcom/facebook/ads/redexgen/X/KL;->A0u:I

    invoke-virtual {v2, v1, v1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 16647
    const/16 v1, 0xc

    goto :goto_0
.end method

.method private A0A(I)V
    .locals 6

    .line 16648
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A04:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A04:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 16649
    .end local v0
    :cond_0
    return-void

    .line 16650
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A04:Landroid/widget/TextView;

    .line 16651
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 16652
    .local v0, "param":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v3, 0x5

    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 16653
    const/4 v2, 0x3

    invoke-virtual {v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 16654
    const/4 v1, 0x2

    invoke-virtual {v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 16655
    const/4 v0, 0x1

    const/4 v4, 0x0

    if-ne p1, v0, :cond_3

    .line 16656
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0J:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 16657
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0J:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getId()I

    move-result v0

    invoke-virtual {v5, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 16658
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0U:Lcom/facebook/ads/redexgen/X/Cw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Cw;->getId()I

    move-result v0

    invoke-virtual {v5, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 16659
    sget v0, Lcom/facebook/ads/redexgen/X/KL;->A0u:I

    invoke-virtual {v5, v4, v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 16660
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A04:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16661
    return-void

    .line 16662
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0K:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    invoke-virtual {v5, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 16663
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0U:Lcom/facebook/ads/redexgen/X/Cw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Cw;->getId()I

    move-result v0

    invoke-virtual {v5, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 16664
    sget v3, Lcom/facebook/ads/redexgen/X/KL;->A0s:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/5p;->A00:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/5p;->A00:[Ljava/lang/String;

    const-string v1, "VmlO4tbuG"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v5, v4, v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0B(I)V
    .locals 5

    .line 16665
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0U:Lcom/facebook/ads/redexgen/X/Cw;

    .line 16666
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Cw;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 16667
    .local v0, "progressBarLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v2, 0x2

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 16668
    const/4 v1, 0x3

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 16669
    const/4 v0, 0x1

    const/4 v4, 0x0

    if-ne p1, v0, :cond_1

    .line 16670
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0J:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 16671
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0J:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getId()I

    move-result v0

    invoke-virtual {v3, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 16672
    :goto_0
    sget v2, Lcom/facebook/ads/redexgen/X/KL;->A0r:I

    sget v1, Lcom/facebook/ads/redexgen/X/KL;->A0r:I

    sget v0, Lcom/facebook/ads/redexgen/X/KL;->A0o:I

    invoke-virtual {v3, v2, v4, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 16673
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0U:Lcom/facebook/ads/redexgen/X/Cw;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Cw;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16674
    return-void

    .line 16675
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0K:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    invoke-virtual {v3, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 16676
    :cond_1
    sget v0, Lcom/facebook/ads/redexgen/X/KL;->A0u:I

    invoke-virtual {v3, v4, v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 16677
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0N:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1
.end method

.method private A0C(I)V
    .locals 7

    .line 16678
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0Q:Landroid/widget/TextView;

    .line 16679
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 16680
    .local v0, "titleParams":Landroid/widget/RelativeLayout$LayoutParams;
    .local v1, "textAlignment":I
    const/16 v6, 0xe

    const/4 v5, 0x3

    const/16 v0, 0xf

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-ne p1, v4, :cond_0

    .line 16681
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 16682
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 16683
    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 16684
    const/4 v3, 0x4

    .line 16685
    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16686
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A09:Lcom/facebook/ads/redexgen/X/aK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aK;->getId()I

    move-result v0

    invoke-virtual {v2, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 16687
    sget v5, Lcom/facebook/ads/redexgen/X/KL;->A0r:I

    sget v4, Lcom/facebook/ads/redexgen/X/KL;->A0l:I

    sget v1, Lcom/facebook/ads/redexgen/X/KL;->A0r:I

    sget v0, Lcom/facebook/ads/redexgen/X/KL;->A0u:I

    invoke-virtual {v2, v5, v4, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 16688
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0Q:Landroid/widget/TextView;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 16689
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0Q:Landroid/widget/TextView;

    const/high16 v0, 0x41f00000    # 30.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 16690
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0Q:Landroid/widget/TextView;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 16691
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0Q:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 16692
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0Q:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16693
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0Q:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 16694
    return-void

    .line 16695
    :cond_0
    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 16696
    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 16697
    const/4 v3, 0x5

    .line 16698
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16699
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A09:Lcom/facebook/ads/redexgen/X/aK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aK;->getId()I

    move-result v0

    invoke-virtual {v2, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 16700
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0L:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 16701
    sget v0, Lcom/facebook/ads/redexgen/X/KL;->A0u:I

    invoke-virtual {v2, v1, v1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 16702
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0Q:Landroid/widget/TextView;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 16703
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0Q:Landroid/widget/TextView;

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 16704
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0Q:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_0
.end method


# virtual methods
.method public final A0h(I)V
    .locals 3

    .line 16705
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/KL;->A0h(I)V

    .line 16706
    const/16 v0, 0xb

    new-array v2, v0, [Landroid/view/View;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0N:Landroid/widget/RelativeLayout;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0L:Landroid/widget/LinearLayout;

    aput-object v0, v2, v1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A09:Lcom/facebook/ads/redexgen/X/aK;

    aput-object v0, v2, v1

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0Q:Landroid/widget/TextView;

    aput-object v0, v2, v1

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A08:Lcom/facebook/ads/redexgen/X/KE;

    aput-object v0, v2, v1

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0U:Lcom/facebook/ads/redexgen/X/Cw;

    aput-object v0, v2, v1

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A04:Landroid/widget/TextView;

    aput-object v0, v2, v1

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0P:Landroid/widget/TextView;

    aput-object v0, v2, v1

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0I:Landroid/widget/ImageView;

    aput-object v0, v2, v1

    const/16 v1, 0x9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0K:Landroid/widget/LinearLayout;

    aput-object v0, v2, v1

    const/16 v1, 0xa

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0J:Landroid/widget/ImageView;

    aput-object v0, v2, v1

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/XP;->A0Z([Landroid/view/View;)V

    .line 16707
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/5p;->A03(I)V

    .line 16708
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/5p;->A04(I)V

    .line 16709
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/5p;->A07(I)V

    .line 16710
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/5p;->A0A(I)V

    .line 16711
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/5p;->A0B(I)V

    .line 16712
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5p;->A00()V

    .line 16713
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/5p;->A06(I)V

    .line 16714
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/5p;->A05(I)V

    .line 16715
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/5p;->A09(I)V

    .line 16716
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/5p;->A0C(I)V

    .line 16717
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/5p;->A08(I)V

    .line 16718
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/5p;->A01(I)V

    .line 16719
    return-void
.end method

.method public final A0q(I)V
    .locals 3

    .line 16720
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A05:Lcom/facebook/ads/redexgen/X/CU;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 16721
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/KL;->A05:Lcom/facebook/ads/redexgen/X/CU;

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/CU;->A42(ZZ)V

    .line 16722
    :cond_0
    return-void
.end method

.method public final A0s(Landroid/view/ViewGroup;Landroid/widget/RelativeLayout;I)V
    .locals 3

    .line 16723
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 16724
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A09:Lcom/facebook/ads/redexgen/X/aK;

    .line 16725
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aK;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 16726
    .local v0, "imageParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x3

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getId()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 16727
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A09:Lcom/facebook/ads/redexgen/X/aK;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/aK;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16728
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A09:Lcom/facebook/ads/redexgen/X/aK;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 16729
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0Q:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 16730
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0P:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 16731
    .end local v0    # "imageParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public setInfo(Lcom/facebook/ads/redexgen/X/Mw;Lcom/facebook/ads/redexgen/X/Mz;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Wv;Lcom/facebook/ads/redexgen/X/a4;)V
    .locals 0

    .line 16732
    invoke-super/range {p0 .. p6}, Lcom/facebook/ads/redexgen/X/Zv;->setInfo(Lcom/facebook/ads/redexgen/X/Mw;Lcom/facebook/ads/redexgen/X/Mz;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Wv;Lcom/facebook/ads/redexgen/X/a4;)V

    .line 16733
    return-void
.end method

.method public setTitleMaxLines(I)V
    .locals 2

    .line 16734
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0Q:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 16735
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0Q:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 16736
    return-void
.end method
