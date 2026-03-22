.class public final Lcom/facebook/ads/redexgen/X/5e;
.super Lcom/facebook/ads/redexgen/X/Jw;
.source ""


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;

.field public static final A04:I


# instance fields
.field public final A00:Landroid/view/View;

.field public final A01:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 368
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ccLmdgMtf"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "50lpHgsnQSuWf1CWCacJGyiAwAWsDUud"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Nq2vo108Bdlpu7LWCjcAC5dDG31maruF"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "TAe0PaklKNA7XHBVlxrhZCtyBfgeydAO"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ouUdcivF6"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "IAXVD4SBpgtyrGYWX4yc8p2wBrUpSeUf"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "nA5GNdAWyE31pAGlKcdnPdOQEY7Q2fwD"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "a5Dyr8HKQP9cZfy0xnx35qJg31dQk6"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/5e;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/5e;->A01()V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lcom/facebook/ads/redexgen/X/5e;->A04:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ai;Z)V
    .locals 6

    .line 16025
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Jw;-><init>(Lcom/facebook/ads/redexgen/X/ai;Z)V

    .line 16026
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/5e;->A01:Z

    .line 16027
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A02()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5e;->A00:Landroid/view/View;

    .line 16028
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jw;->A1R()V

    .line 16029
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5e;->A01:Z

    const/4 v5, -0x1

    if-eqz v0, :cond_2

    .line 16030
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A02()Landroid/view/View;

    move-result-object v1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/5e;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 16031
    .end local v0
    .end local v1
    .end local v2
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jw;->A09:Lcom/facebook/ads/redexgen/X/Wh;

    .line 16032
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jw;->getAdDataBundle()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Wh;->A02(Lcom/facebook/ads/redexgen/X/hy;)Lcom/facebook/ads/redexgen/X/Wg;

    move-result-object v2

    .line 16033
    .local v0, "supported":Lcom/facebook/ads/redexgen/X/Wg;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A06()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    .line 16034
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0H()Lcom/facebook/ads/redexgen/X/SO;

    move-result-object v1

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Wg;->A01:Z

    .line 16035
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/SO;->A00(Z)V

    .line 16036
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ae;->getCtaButton()Lcom/facebook/ads/redexgen/X/KE;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jw;->A09:Lcom/facebook/ads/redexgen/X/Wh;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/KE;->setCreativeAsCtaLoggingHelper(Lcom/facebook/ads/redexgen/X/Wh;)V

    .line 16037
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5e;->A00:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 16038
    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Wg;->A00:Z

    if-eqz v0, :cond_1

    .line 16039
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5e;->A00:Landroid/view/View;

    new-instance v0, Lcom/facebook/ads/redexgen/X/aj;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/aj;-><init>(Lcom/facebook/ads/redexgen/X/5e;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16040
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jw;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Zv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zv;->bringToFront()V

    .line 16041
    return-void

    .line 16042
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ae;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A1I(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16043
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/5e;->A00:Landroid/view/View;

    .line 16044
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ae;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A1J(Landroid/content/Context;)Z

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/ak;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ak;-><init>(Lcom/facebook/ads/redexgen/X/5e;)V

    .line 16045
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zs;->A00(Landroid/view/View;ZLandroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 16046
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A06()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 16047
    .local v0, "insideContainerLayout":Landroid/widget/FrameLayout;
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 16048
    .local v2, "insideContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jw;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Zv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Zv;->getId()I

    move-result v1

    const/4 v0, 0x2

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 16049
    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16050
    const/4 v0, -0x2

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v5, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 16051
    .local v1, "mediaViewParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v0, 0x11

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 16052
    sget v2, Lcom/facebook/ads/redexgen/X/ae;->A07:I

    sget v1, Lcom/facebook/ads/redexgen/X/ae;->A07:I

    const/4 v0, 0x0

    invoke-virtual {v3, v2, v0, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 16053
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5e;->A00:Landroid/view/View;

    invoke-virtual {v4, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 16054
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/5e;->addView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/5e;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/5e;->A03:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1e

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/5e;->A03:[Ljava/lang/String;

    const-string v1, "FT3046kmt"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "J6Q3a22Lt"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_1

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x47

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/5e;->A02:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x25t
        0x21t
        0x2dt
        0x2bt
        0x29t
    .end array-data
.end method


# virtual methods
.method public final A0C()Z
    .locals 1

    .line 16055
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5e;->A01:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/ae;->A0D()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0D()Z
    .locals 1

    .line 16056
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5e;->A01:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/ae;->A0D()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A1G(Lcom/facebook/ads/redexgen/X/Mp;Ljava/lang/String;DLandroid/os/Bundle;)V
    .locals 4

    .line 16057
    invoke-super/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/Jw;->A1G(Lcom/facebook/ads/redexgen/X/Mp;Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 16058
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5e;->A01:Z

    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    cmpl-double v0, p3, v1

    if-lez v0, :cond_0

    .line 16059
    sget v1, Lcom/facebook/ads/redexgen/X/5e;->A04:I

    sget v0, Lcom/facebook/ads/redexgen/X/ae;->A07:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    .line 16060
    .local v0, "availableWidthPx":I
    int-to-double v2, v1

    div-double/2addr v2, p3

    double-to-int v1, v2

    .line 16061
    .local v1, "mediaHeight":I
    const/4 v0, -0x1

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 16062
    .local v2, "mediaViewParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v0, 0x11

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 16063
    sget v2, Lcom/facebook/ads/redexgen/X/ae;->A07:I

    sget v1, Lcom/facebook/ads/redexgen/X/ae;->A07:I

    const/4 v0, 0x0

    invoke-virtual {v3, v2, v0, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 16064
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5e;->A00:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16065
    .end local v0    # "availableWidthPx":I
    .end local v1    # "mediaHeight":I
    .end local v2    # "mediaViewParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public final A1M()Z
    .locals 1

    .line 16066
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5e;->A01:Z

    return v0
.end method

.method public final A1P(Lcom/facebook/ads/redexgen/X/ai;Lcom/facebook/ads/redexgen/X/Mp;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Zv;
    .locals 15

    .line 16067
    new-instance v2, Lcom/facebook/ads/redexgen/X/Jy;

    .line 16068
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/ai;->A06()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v3

    .line 16069
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ae;->getCtaButton()Lcom/facebook/ads/redexgen/X/KE;

    move-result-object v4

    sget v5, Lcom/facebook/ads/redexgen/X/Jw;->A0H:I

    .line 16070
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/ads/redexgen/X/Mp;->A0I()Lcom/facebook/ads/redexgen/X/Mw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mw;->A00()Lcom/facebook/ads/redexgen/X/Mu;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Mu;->A05:Lcom/facebook/ads/redexgen/X/Mu;

    if-ne v1, v0, :cond_0

    const/4 v6, 0x1

    .line 16071
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ae;->getColors()Lcom/facebook/ads/redexgen/X/My;

    move-result-object v7

    .line 16072
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/ads/redexgen/X/Mp;->A0J()Lcom/facebook/ads/redexgen/X/Mz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mz;->A06()Z

    move-result v8

    .line 16073
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/ai;->A07()Lcom/facebook/ads/redexgen/X/US;

    move-result-object v10

    .line 16074
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/ai;->A0D()Lcom/facebook/ads/redexgen/X/Xn;

    move-result-object v11

    .line 16075
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/ai;->A0G()Lcom/facebook/ads/redexgen/X/eX;

    move-result-object v12

    .line 16076
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/ai;->A0A()Lcom/facebook/ads/redexgen/X/XH;

    move-result-object v13

    .line 16077
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v14

    move-object/from16 v9, p3

    invoke-direct/range {v2 .. v14}, Lcom/facebook/ads/redexgen/X/Jy;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/KE;IZLcom/facebook/ads/redexgen/X/My;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/eX;Lcom/facebook/ads/redexgen/X/XH;Lcom/facebook/ads/redexgen/X/hy;)V

    .line 16078
    return-object v2

    .line 16079
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public final synthetic A1W(Landroid/view/View;)V
    .locals 4

    .line 16080
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ae;->getCtaButton()Lcom/facebook/ads/redexgen/X/KE;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x5

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5e;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/KE;->A0E(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/ME;

    return-void
.end method
