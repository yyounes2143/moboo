.class public final Lcom/facebook/ads/redexgen/X/LV;
.super Lcom/facebook/ads/redexgen/X/Yd;
.source ""


# static fields
.field public static A03:[Ljava/lang/String;

.field public static final A04:I


# instance fields
.field public final A00:Landroid/widget/RelativeLayout;

.field public final A01:Lcom/facebook/ads/redexgen/X/O2;

.field public final A02:Lcom/facebook/ads/redexgen/X/dL;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1308
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ps9u6Kn8p"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "fRCCllxRFm9XYnsS5Nz0CDYYbd8rz98F"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "veZY5LUK4HkumILqtvhVtf9OT9QK1Jmh"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "8c6Edyt19YE2bwpDp37rWBgdyfN4I4si"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Dgwj6SSLqT"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "biYcUlACC5CMDg3zbjwwDR7mq5XP76DA"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "rp5V5gFYHfFnaijOqqdMDMWavMrEx7HP"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ycj43TNZcka4uMSCxDz6fuqQ2r9gi3g6"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/LV;->A03:[Ljava/lang/String;

    const/high16 v1, 0x41000000    # 8.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/LV;->A04:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/N9;Lcom/facebook/ads/redexgen/X/Xo;Lcom/facebook/ads/redexgen/X/Xn;)V
    .locals 3

    .line 50378
    invoke-direct/range {p0 .. p6}, Lcom/facebook/ads/redexgen/X/Yd;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/N9;Lcom/facebook/ads/redexgen/X/Xo;Lcom/facebook/ads/redexgen/X/Xn;)V

    .line 50379
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/LV;->A02:Lcom/facebook/ads/redexgen/X/dL;

    .line 50380
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/SQ;->A02()Lcom/facebook/ads/redexgen/X/cu;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/O3;->A00(Lcom/facebook/ads/redexgen/X/cu;)Lcom/facebook/ads/redexgen/X/O2;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A01:Lcom/facebook/ads/redexgen/X/O2;

    .line 50381
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/LV;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A00:Landroid/widget/RelativeLayout;

    .line 50382
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/LV;->A00:Landroid/widget/RelativeLayout;

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/LV;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50383
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LV;->A00:Landroid/widget/RelativeLayout;

    const/high16 v0, -0x67000000

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0K(Landroid/view/View;I)V

    .line 50384
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LV;->A00:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Yi;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Yi;-><init>(Lcom/facebook/ads/redexgen/X/LV;)V

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50385
    return-void
.end method

.method public static A00(Z)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3

    .line 50386
    const/4 v2, -0x1

    if-eqz p0, :cond_0

    const/4 v0, -0x1

    :goto_0
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 50387
    .local v0, "viewParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 50388
    return-object v1

    .line 50389
    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method private A01()V
    .locals 3

    .line 50390
    new-instance v2, Landroid/transition/TransitionSet;

    invoke-direct {v2}, Landroid/transition/TransitionSet;-><init>()V

    .line 50391
    .local v0, "transition":Landroid/transition/TransitionSet;
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    .line 50392
    new-instance v0, Landroid/transition/ChangeBounds;

    invoke-direct {v0}, Landroid/transition/ChangeBounds;-><init>()V

    invoke-virtual {v2, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v1

    new-instance v0, Landroid/transition/Explode;

    invoke-direct {v0}, Landroid/transition/Explode;-><init>()V

    invoke-virtual {v1, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 50393
    invoke-static {p0, v2}, Lcom/facebook/ads/redexgen/X/XP;->A0T(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 50394
    .end local v0    # "transition":Landroid/transition/TransitionSet;
    return-void
.end method


# virtual methods
.method public final A0N()V
    .locals 12

    .line 50395
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A01:Lcom/facebook/ads/redexgen/X/O2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O2;->A0A()Lcom/facebook/ads/redexgen/X/O6;

    move-result-object v11

    .line 50396
    .local v0, "hidingReason":Lcom/facebook/ads/redexgen/X/O6;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A02:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v8, Lcom/facebook/ads/redexgen/X/Ys;

    invoke-direct {v8, v0}, Lcom/facebook/ads/redexgen/X/Ys;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    .line 50397
    .local v1, "hideAdView":Lcom/facebook/ads/redexgen/X/Ys;
    sget-object v2, Lcom/facebook/ads/redexgen/X/XX;->A0Y:Lcom/facebook/ads/redexgen/X/XX;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A01:Lcom/facebook/ads/redexgen/X/O2;

    .line 50398
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O2;->A0H()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A01:Lcom/facebook/ads/redexgen/X/O2;

    .line 50399
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O2;->A0G()Ljava/lang/String;

    move-result-object v0

    .line 50400
    invoke-virtual {v8, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ys;->setInfo(Lcom/facebook/ads/redexgen/X/XX;Ljava/lang/String;Ljava/lang/String;)V

    .line 50401
    new-instance v0, Lcom/facebook/ads/redexgen/X/Yj;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Yj;-><init>(Lcom/facebook/ads/redexgen/X/LV;)V

    invoke-virtual {v8, v0}, Lcom/facebook/ads/redexgen/X/Ys;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50402
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A01:Lcom/facebook/ads/redexgen/X/O2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O2;->A0B()Lcom/facebook/ads/redexgen/X/O6;

    move-result-object v10

    .line 50403
    .local v2, "reportingReason":Lcom/facebook/ads/redexgen/X/O6;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A02:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v7, Lcom/facebook/ads/redexgen/X/Ys;

    invoke-direct {v7, v0}, Lcom/facebook/ads/redexgen/X/Ys;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    .line 50404
    .local v3, "reportAdView":Lcom/facebook/ads/redexgen/X/Ys;
    sget-object v2, Lcom/facebook/ads/redexgen/X/XX;->A0p:Lcom/facebook/ads/redexgen/X/XX;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A01:Lcom/facebook/ads/redexgen/X/O2;

    .line 50405
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O2;->A0L()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A01:Lcom/facebook/ads/redexgen/X/O2;

    .line 50406
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O2;->A0K()Ljava/lang/String;

    move-result-object v0

    .line 50407
    invoke-virtual {v7, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ys;->setInfo(Lcom/facebook/ads/redexgen/X/XX;Ljava/lang/String;Ljava/lang/String;)V

    .line 50408
    new-instance v0, Lcom/facebook/ads/redexgen/X/Yk;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Yk;-><init>(Lcom/facebook/ads/redexgen/X/LV;)V

    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/Ys;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50409
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A02:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v6, Lcom/facebook/ads/redexgen/X/Ys;

    invoke-direct {v6, v0}, Lcom/facebook/ads/redexgen/X/Ys;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    .line 50410
    .local v4, "adChoicesView":Lcom/facebook/ads/redexgen/X/Ys;
    sget-object v2, Lcom/facebook/ads/redexgen/X/XX;->A06:Lcom/facebook/ads/redexgen/X/XX;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A01:Lcom/facebook/ads/redexgen/X/O2;

    .line 50411
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O2;->A0M()Ljava/lang/String;

    move-result-object v1

    .line 50412
    const-string v0, ""

    invoke-virtual {v6, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ys;->setInfo(Lcom/facebook/ads/redexgen/X/XX;Ljava/lang/String;Ljava/lang/String;)V

    .line 50413
    new-instance v0, Lcom/facebook/ads/redexgen/X/Yl;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Yl;-><init>(Lcom/facebook/ads/redexgen/X/LV;)V

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/Ys;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50414
    const/4 v0, -0x2

    const/4 v9, -0x1

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v9, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 50415
    .local v5, "itemParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/LV;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 50416
    .local v6, "optionsView":Landroid/widget/LinearLayout;
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 50417
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 50418
    sget v0, Lcom/facebook/ads/redexgen/X/LV;->A04:I

    mul-int/lit8 v3, v0, 0x2

    sget v2, Lcom/facebook/ads/redexgen/X/LV;->A04:I

    sget v0, Lcom/facebook/ads/redexgen/X/LV;->A04:I

    mul-int/lit8 v1, v0, 0x2

    sget v0, Lcom/facebook/ads/redexgen/X/LV;->A04:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 50419
    invoke-static {v4, v9}, Lcom/facebook/ads/redexgen/X/XP;->A0K(Landroid/view/View;I)V

    .line 50420
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/O6;->A05()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50421
    invoke-virtual {v4, v8, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50422
    :cond_0
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/O6;->A05()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 50423
    invoke-virtual {v4, v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50424
    :cond_1
    invoke-virtual {v4, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50425
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/LV;->A01()V

    .line 50426
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A00:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 50427
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LV;->A00:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LV;->A00(Z)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50428
    return-void
.end method

.method public final A0O()V
    .locals 1

    .line 50429
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/XP;->A0G(Landroid/view/View;)V

    .line 50430
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A00:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 50431
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/XP;->A0H(Landroid/view/View;)V

    .line 50432
    return-void
.end method

.method public final A0P(Lcom/facebook/ads/redexgen/X/O6;Lcom/facebook/ads/redexgen/X/O4;)V
    .locals 7

    .line 50433
    sget-object v0, Lcom/facebook/ads/redexgen/X/O4;->A05:Lcom/facebook/ads/redexgen/X/O4;

    if-ne p2, v0, :cond_0

    .line 50434
    return-void

    .line 50435
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/O4;->A06:Lcom/facebook/ads/redexgen/X/O4;

    const/4 v6, 0x1

    if-ne p2, v0, :cond_1

    const/4 v5, 0x1

    .line 50436
    .local v0, "isReportFlow":Z
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LV;->A02:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yd;->A0B:Lcom/facebook/ads/redexgen/X/Yf;

    new-instance v4, Lcom/facebook/ads/redexgen/X/Yb;

    invoke-direct {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/Yf;)V

    .line 50437
    if-eqz v5, :cond_2

    .line 50438
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/LV;->A01:Lcom/facebook/ads/redexgen/X/O2;

    sget-object v1, Lcom/facebook/ads/redexgen/X/LV;->A03:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 50439
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 50440
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A01:Lcom/facebook/ads/redexgen/X/O2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O2;->A0E()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 50441
    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/LV;->A03:[Ljava/lang/String;

    const-string v1, "KfE81dulHFmzGO7NxqDM7oaE1pV2dKkX"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/O2;->A0F()Ljava/lang/String;

    move-result-object v0

    .line 50442
    :goto_1
    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Yb;->A0I(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Yb;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A01:Lcom/facebook/ads/redexgen/X/O2;

    .line 50443
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O2;->A0D()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->A0H(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Yb;

    move-result-object v1

    .line 50444
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/O6;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->A0F(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Yb;

    move-result-object v1

    .line 50445
    if-eqz v5, :cond_7

    sget-object v0, Lcom/facebook/ads/redexgen/X/XX;->A0p:Lcom/facebook/ads/redexgen/X/XX;

    :goto_2
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->A0E(Lcom/facebook/ads/redexgen/X/XX;)Lcom/facebook/ads/redexgen/X/Yb;

    move-result-object v1

    .line 50446
    if-eqz v5, :cond_6

    .line 50447
    const v0, -0x86dc5

    .line 50448
    :goto_3
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->A0D(I)Lcom/facebook/ads/redexgen/X/Yb;

    move-result-object v4

    .line 50449
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yd;->A0A:Lcom/facebook/ads/redexgen/X/N9;

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Yd;->A0A:Lcom/facebook/ads/redexgen/X/N9;

    sget-object v1, Lcom/facebook/ads/redexgen/X/LV;->A03:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x58

    if-eq v1, v0, :cond_4

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/N9;->A01()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Yb;->A0G(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Yb;

    move-result-object v0

    .line 50450
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Yb;->A0M()Lcom/facebook/ads/redexgen/X/Yc;

    move-result-object v2

    .line 50451
    .local v2, "adHiddenView":Lcom/facebook/ads/redexgen/X/Yc;
    const/4 v0, -0x1

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0K(Landroid/view/View;I)V

    .line 50452
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/XP;->A0R(Landroid/view/ViewGroup;)V

    .line 50453
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A00:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 50454
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/LV;->A00:Landroid/widget/RelativeLayout;

    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/LV;->A00(Z)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50455
    return-void

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/LV;->A03:[Ljava/lang/String;

    const-string v1, "vLdx3pZGf"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/N9;->A01()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 50456
    :cond_5
    const-string v0, ""

    goto :goto_4

    .line 50457
    :cond_6
    const v0, -0xca871b

    goto :goto_3

    .line 50458
    :cond_7
    sget-object v0, Lcom/facebook/ads/redexgen/X/XX;->A0Y:Lcom/facebook/ads/redexgen/X/XX;

    goto :goto_2
.end method

.method public final A0Q(Lcom/facebook/ads/redexgen/X/O6;Lcom/facebook/ads/redexgen/X/O4;)V
    .locals 11

    .line 50459
    sget-object v0, Lcom/facebook/ads/redexgen/X/O4;->A06:Lcom/facebook/ads/redexgen/X/O4;

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-ne p2, v0, :cond_2

    const/4 v1, 0x1

    .line 50460
    .local v0, "isReportFlow":Z
    :goto_0
    new-instance v5, Lcom/facebook/ads/redexgen/X/Yv;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/LV;->A02:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/Yd;->A0B:Lcom/facebook/ads/redexgen/X/Yf;

    .line 50461
    if-eqz v1, :cond_1

    .line 50462
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A01:Lcom/facebook/ads/redexgen/X/O2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O2;->A0L()Ljava/lang/String;

    move-result-object v9

    .line 50463
    :goto_1
    if-eqz v1, :cond_0

    sget-object v10, Lcom/facebook/ads/redexgen/X/XX;->A0p:Lcom/facebook/ads/redexgen/X/XX;

    :goto_2
    move-object v7, p1

    invoke-direct/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/Yv;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/O6;Lcom/facebook/ads/redexgen/X/Yf;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/XX;)V

    .line 50464
    .local v3, "reasonPickerView":Lcom/facebook/ads/redexgen/X/Yv;
    invoke-virtual {v5, v2}, Lcom/facebook/ads/redexgen/X/Yv;->setClickable(Z)V

    .line 50465
    const/4 v0, -0x1

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0K(Landroid/view/View;I)V

    .line 50466
    sget v0, Lcom/facebook/ads/redexgen/X/LV;->A04:I

    mul-int/lit8 v3, v0, 0x2

    sget v2, Lcom/facebook/ads/redexgen/X/LV;->A04:I

    sget v0, Lcom/facebook/ads/redexgen/X/LV;->A04:I

    mul-int/lit8 v1, v0, 0x2

    sget v0, Lcom/facebook/ads/redexgen/X/LV;->A04:I

    invoke-virtual {v5, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Yv;->setPadding(IIII)V

    .line 50467
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/LV;->A01()V

    .line 50468
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A00:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 50469
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/LV;->A00:Landroid/widget/RelativeLayout;

    sget-object v2, Lcom/facebook/ads/redexgen/X/LV;->A03:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/LV;->A03:[Ljava/lang/String;

    const-string v1, "OoQvJ70CiRWXlhIiWSDPNsGTFrOY4nX1"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/LV;->A00(Z)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50470
    return-void

    .line 50471
    :cond_0
    sget-object v10, Lcom/facebook/ads/redexgen/X/XX;->A0Y:Lcom/facebook/ads/redexgen/X/XX;

    goto :goto_2

    .line 50472
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LV;->A01:Lcom/facebook/ads/redexgen/X/O2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O2;->A0H()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 50473
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0R()Z
    .locals 1

    .line 50474
    const/4 v0, 0x0

    return v0
.end method
