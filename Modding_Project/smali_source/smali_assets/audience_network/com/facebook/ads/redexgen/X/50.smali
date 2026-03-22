.class public final Lcom/facebook/ads/redexgen/X/50;
.super Lcom/facebook/ads/redexgen/X/Hr;
.source ""


# static fields
.field public static A09:[Ljava/lang/String;

.field public static final A0A:Landroid/widget/RelativeLayout$LayoutParams;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Wd;

.field public A01:Lcom/facebook/ads/redexgen/X/ae;

.field public A02:Lcom/facebook/ads/redexgen/X/Cw;

.field public final A03:I

.field public final A04:Landroid/widget/ImageView;

.field public final A05:Lcom/facebook/ads/redexgen/X/Ua;

.field public final A06:Lcom/facebook/ads/redexgen/X/Xm;

.field public final A07:Lcom/facebook/ads/redexgen/X/cT;

.field public final A08:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 339
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "48gXxVXafINQx"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "X9eHMFtmNxkudREV2ga0mL63IUwpVFyn"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "fDHVKSg"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "BJ3S"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "6p1nQLD"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "GwvdfXoW7Tkcgx6xI32"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "XjSW5yJHqMwpzXQP1hTrWYHuzeodWOV3"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "mLwcnNPCnn6Mi"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/50;->A09:[Ljava/lang/String;

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/50;->A0A:Landroid/widget/RelativeLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/YY;ILcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/Xm;Lcom/facebook/ads/redexgen/X/Ua;ZZLcom/facebook/ads/redexgen/X/cT;II)V
    .locals 13

    .line 14680
    move-object v2, p0

    move-object v3, p0

    move/from16 v12, p13

    move/from16 v10, p10

    move/from16 v9, p9

    move-object/from16 v11, p6

    move-object/from16 v7, p5

    move-object/from16 v6, p4

    move/from16 v8, p3

    move-object v5, p2

    move-object v4, p1

    invoke-direct/range {v3 .. v12}, Lcom/facebook/ads/redexgen/X/Hr;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/YY;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/hy;IZZLcom/facebook/ads/redexgen/X/Xn;I)V

    .line 14681
    const/4 v1, 0x0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/50;->A08:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14682
    move/from16 v0, p12

    iput v0, v2, Lcom/facebook/ads/redexgen/X/50;->A03:I

    .line 14683
    move-object/from16 v0, p11

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/50;->A07:Lcom/facebook/ads/redexgen/X/cT;

    .line 14684
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/50;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/50;->A04:Landroid/widget/ImageView;

    .line 14685
    move-object/from16 v0, p7

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/50;->A06:Lcom/facebook/ads/redexgen/X/Xm;

    .line 14686
    move-object/from16 v0, p8

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/50;->A05:Lcom/facebook/ads/redexgen/X/Ua;

    .line 14687
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/Mo;->A1U()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14688
    iget v1, v2, Lcom/facebook/ads/redexgen/X/50;->A03:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/Cw;

    invoke-direct {v0, v4, v1}, Lcom/facebook/ads/redexgen/X/Cw;-><init>(Lcom/facebook/ads/redexgen/X/dL;I)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/50;->A02:Lcom/facebook/ads/redexgen/X/Cw;

    .line 14689
    :cond_0
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/50;->A04:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 14690
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/50;->A04:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 14691
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/50;->A04:Landroid/widget/ImageView;

    new-instance v2, Lcom/facebook/ads/redexgen/X/KZ;

    invoke-direct {v2, v0, v4}, Lcom/facebook/ads/redexgen/X/KZ;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/dL;)V

    .line 14692
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ms;->A00()I

    move-result v1

    .line 14693
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ms;->A01()I

    move-result v0

    .line 14694
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A05(II)Lcom/facebook/ads/redexgen/X/KZ;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hj;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Hj;-><init>(Lcom/facebook/ads/redexgen/X/50;)V

    .line 14695
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A06(Lcom/facebook/ads/redexgen/X/Zo;)Lcom/facebook/ads/redexgen/X/KZ;

    move-result-object v1

    .line 14696
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ms;->A08()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A07(Ljava/lang/String;)V

    .line 14697
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/dL;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 14698
    .local v4, "orientation":I
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/50;->A08(I)V

    .line 14699
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/50;)I
    .locals 0

    .line 14700
    iget p0, p0, Lcom/facebook/ads/redexgen/X/50;->A03:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/50;)Lcom/facebook/ads/redexgen/X/Xm;
    .locals 0

    .line 14701
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/50;->A06:Lcom/facebook/ads/redexgen/X/Xm;

    return-object p0
.end method

.method private A02(I)Lcom/facebook/ads/redexgen/X/ae;
    .locals 12

    .line 14702
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A04:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 14703
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A04:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0H(Landroid/view/View;)V

    .line 14704
    :cond_0
    const/4 v1, 0x2

    const/4 v0, 0x1

    if-eq p1, v1, :cond_2

    const/4 v3, 0x1

    .line 14705
    .local v0, "showPageDetailsInFooter":Z
    :goto_0
    new-instance v4, Lcom/facebook/ads/redexgen/X/ah;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Hr;->A07:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Hr;->A08:Lcom/facebook/ads/redexgen/X/US;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Hr;->A0B:Lcom/facebook/ads/redexgen/X/Xn;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/Hr;->A06:Lcom/facebook/ads/redexgen/X/hy;

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/50;->A04:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/Hr;->A0D:Lcom/facebook/ads/redexgen/X/eX;

    iget-object v11, p0, Lcom/facebook/ads/redexgen/X/Hr;->A0A:Lcom/facebook/ads/redexgen/X/XH;

    invoke-direct/range {v4 .. v11}, Lcom/facebook/ads/redexgen/X/ah;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/hy;Landroid/view/View;Lcom/facebook/ads/redexgen/X/eX;Lcom/facebook/ads/redexgen/X/XH;)V

    .line 14706
    .local v2, "interstitialLayoutParamsBuilder":Lcom/facebook/ads/redexgen/X/ah;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/50;->A06:Lcom/facebook/ads/redexgen/X/Xm;

    .line 14707
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Xm;->getToolbarHeight()I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/facebook/ads/redexgen/X/ah;->A0K(I)Lcom/facebook/ads/redexgen/X/ah;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/50;->A06:Lcom/facebook/ads/redexgen/X/Xm;

    .line 14708
    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/ah;->A0R(Lcom/facebook/ads/redexgen/X/Xm;)Lcom/facebook/ads/redexgen/X/ah;

    move-result-object v1

    .line 14709
    invoke-virtual {v1, p1}, Lcom/facebook/ads/redexgen/X/ah;->A0J(I)Lcom/facebook/ads/redexgen/X/ah;

    move-result-object v1

    .line 14710
    invoke-virtual {v1, v3}, Lcom/facebook/ads/redexgen/X/ah;->A0V(Z)Lcom/facebook/ads/redexgen/X/ah;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hr;->A00:Ljava/lang/String;

    .line 14711
    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/ah;->A0U(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/ah;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/50;->A05:Lcom/facebook/ads/redexgen/X/Ua;

    .line 14712
    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/ah;->A0N(Lcom/facebook/ads/redexgen/X/Ua;)Lcom/facebook/ads/redexgen/X/ah;

    .line 14713
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/50;->A02:Lcom/facebook/ads/redexgen/X/Cw;

    if-eqz v1, :cond_1

    .line 14714
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/50;->A02:Lcom/facebook/ads/redexgen/X/Cw;

    invoke-virtual {v4, v1}, Lcom/facebook/ads/redexgen/X/ah;->A0T(Lcom/facebook/ads/redexgen/X/Cw;)Lcom/facebook/ads/redexgen/X/ah;

    .line 14715
    :cond_1
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Hr;->A07:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Hr;->A08:Lcom/facebook/ads/redexgen/X/US;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hr;->A06:Lcom/facebook/ads/redexgen/X/hy;

    .line 14716
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Mp;->A0J()Lcom/facebook/ads/redexgen/X/Mz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Mz;->A05()Ljava/lang/String;

    move-result-object v1

    .line 14717
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/WQ;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hr;->A06:Lcom/facebook/ads/redexgen/X/hy;

    .line 14718
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/hy;->A21()Lcom/facebook/ads/redexgen/X/N3;

    move-result-object v10

    .line 14719
    const-string v7, ""

    invoke-static/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/MI;->A00(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/N3;)Lcom/facebook/ads/redexgen/X/MH;

    move-result-object v1

    .line 14720
    .local v3, "adAction":Lcom/facebook/ads/redexgen/X/MH;
    invoke-virtual {v4, v1}, Lcom/facebook/ads/redexgen/X/ah;->A0M(Lcom/facebook/ads/redexgen/X/MH;)Lcom/facebook/ads/redexgen/X/ah;

    .line 14721
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/50;->A07:Lcom/facebook/ads/redexgen/X/cT;

    invoke-virtual {v4, v1}, Lcom/facebook/ads/redexgen/X/ah;->A0S(Lcom/facebook/ads/redexgen/X/cT;)Lcom/facebook/ads/redexgen/X/ah;

    .line 14722
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/ah;->A0W()Lcom/facebook/ads/redexgen/X/ai;

    move-result-object v2

    .line 14723
    .local v4, "params":Lcom/facebook/ads/redexgen/X/ai;
    const/4 v1, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/af;->A00(Lcom/facebook/ads/redexgen/X/ai;Landroid/os/Bundle;Z)Lcom/facebook/ads/redexgen/X/ae;

    move-result-object v0

    return-object v0

    .line 14724
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/50;)Lcom/facebook/ads/redexgen/X/ae;
    .locals 0

    .line 14725
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/50;->A01:Lcom/facebook/ads/redexgen/X/ae;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/50;)Lcom/facebook/ads/redexgen/X/cT;
    .locals 0

    .line 14726
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/50;->A07:Lcom/facebook/ads/redexgen/X/cT;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/50;)Lcom/facebook/ads/redexgen/X/Cw;
    .locals 0

    .line 14727
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/50;->A02:Lcom/facebook/ads/redexgen/X/Cw;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/50;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 14728
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/50;->A08:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private A07()V
    .locals 1

    .line 14729
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A08:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14730
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hr;->A1C()V

    .line 14731
    :cond_0
    return-void
.end method

.method private A08(I)V
    .locals 5

    .line 14732
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A01:Lcom/facebook/ads/redexgen/X/ae;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0H(Landroid/view/View;)V

    .line 14733
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/50;->A02(I)Lcom/facebook/ads/redexgen/X/ae;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A01:Lcom/facebook/ads/redexgen/X/ae;

    .line 14734
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A01:Lcom/facebook/ads/redexgen/X/ae;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/JU;

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    .line 14735
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A01:Lcom/facebook/ads/redexgen/X/ae;

    check-cast v0, Lcom/facebook/ads/redexgen/X/JU;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/JU;->setChildChainedAd(Z)V

    .line 14736
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/50;->A01:Lcom/facebook/ads/redexgen/X/ae;

    const/4 v1, 0x0

    sget-object v0, Lcom/facebook/ads/redexgen/X/50;->A0A:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/50;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 14737
    return-void

    .line 14738
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A01:Lcom/facebook/ads/redexgen/X/ae;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/Is;

    if-eqz v0, :cond_0

    .line 14739
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/50;->A01:Lcom/facebook/ads/redexgen/X/ae;

    sget-object v2, Lcom/facebook/ads/redexgen/X/50;->A09:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/50;->A09:[Ljava/lang/String;

    const-string v1, "Sp2NSSouatJBlog5Q54"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    check-cast v3, Lcom/facebook/ads/redexgen/X/Is;

    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/Is;->setChildChainedAd(Z)V

    goto :goto_0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/50;)V
    .locals 0

    .line 14740
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/50;->A07()V

    return-void
.end method


# virtual methods
.method public final A1A(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/ME;
    .locals 1

    .line 14741
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A01:Lcom/facebook/ads/redexgen/X/ae;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/ae;->A1A(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/ME;

    move-result-object v0

    return-object v0
.end method

.method public final A1B()V
    .locals 2

    .line 14742
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hr;->A07:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A1u(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14743
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hr;->A07:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A0B()Lcom/facebook/ads/redexgen/X/Ue;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A04:Landroid/widget/ImageView;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Ue;->AJj(Landroid/view/View;)V

    .line 14744
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A01:Lcom/facebook/ads/redexgen/X/ae;

    if-eqz v0, :cond_1

    .line 14745
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A01:Lcom/facebook/ads/redexgen/X/ae;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ae;->A1B()V

    .line 14746
    :cond_1
    return-void
.end method

.method public final A1D()V
    .locals 4

    .line 14747
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A01:Lcom/facebook/ads/redexgen/X/ae;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/Jx;

    if-eqz v0, :cond_0

    .line 14748
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/50;->A01:Lcom/facebook/ads/redexgen/X/ae;

    sget-object v2, Lcom/facebook/ads/redexgen/X/50;->A09:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 14749
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A01:Lcom/facebook/ads/redexgen/X/ae;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/Is;

    if-eqz v0, :cond_2

    .line 14750
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/50;->A01:Lcom/facebook/ads/redexgen/X/ae;

    check-cast v1, Lcom/facebook/ads/redexgen/X/Is;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Is;->A1R(Z)V

    goto :goto_0

    .line 14751
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/50;->A09:[Ljava/lang/String;

    const-string v1, "fHRV"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    check-cast v3, Lcom/facebook/ads/redexgen/X/Jx;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Jx;->A1O()V

    .line 14752
    :cond_2
    :goto_0
    return-void
.end method

.method public final A1E()V
    .locals 10

    .line 14753
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hr;->A06:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ms;->A02()I

    move-result v2

    .line 14754
    .local v0, "secondsForNextCta":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/50;->A03:I

    if-lez v0, :cond_4

    .line 14755
    new-instance v3, Lcom/facebook/ads/redexgen/X/Wd;

    iget v4, p0, Lcom/facebook/ads/redexgen/X/50;->A03:I

    .line 14756
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v9, Lcom/facebook/ads/redexgen/X/HV;

    invoke-direct {v9, p0}, Lcom/facebook/ads/redexgen/X/HV;-><init>(Lcom/facebook/ads/redexgen/X/50;)V

    const/high16 v5, 0x42c80000    # 100.0f

    const-wide/16 v6, 0x64

    invoke-direct/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/Wd;-><init>(IFJLandroid/os/Handler;Lcom/facebook/ads/redexgen/X/Wc;)V

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/50;->A00:Lcom/facebook/ads/redexgen/X/Wd;

    .line 14757
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A00:Lcom/facebook/ads/redexgen/X/Wd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wd;->A07()Z

    .line 14758
    if-ltz v2, :cond_0

    .line 14759
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/50;->A06:Lcom/facebook/ads/redexgen/X/Xm;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xm;->setProgressSpinnerInvisible(Z)V

    .line 14760
    :cond_0
    if-eqz v2, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/50;->A03:I

    if-lt v2, v0, :cond_3

    .line 14761
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/50;->A06:Lcom/facebook/ads/redexgen/X/Xm;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xm;->setToolbarActionMode(I)V

    .line 14762
    :cond_2
    :goto_0
    return-void

    .line 14763
    :cond_3
    if-lez v2, :cond_2

    .line 14764
    new-instance v1, Lcom/facebook/ads/redexgen/X/HS;

    invoke-direct {v1, p0}, Lcom/facebook/ads/redexgen/X/HS;-><init>(Lcom/facebook/ads/redexgen/X/50;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Wd;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Wd;-><init>(ILcom/facebook/ads/redexgen/X/Wc;)V

    .line 14765
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wd;->A07()Z

    goto :goto_0

    .line 14766
    :cond_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/50;->A07:Lcom/facebook/ads/redexgen/X/cT;

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/cT;->AFE(Z)V

    goto :goto_0
.end method

.method public final A1F(Z)V
    .locals 1

    .line 14767
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A01:Lcom/facebook/ads/redexgen/X/ae;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/ae;->setChainedWatchAndBrowseSkippableStatus(Z)V

    .line 14768
    return-void
.end method

.method public final A1G(Z)V
    .locals 1

    .line 14769
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A00:Lcom/facebook/ads/redexgen/X/Wd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A00:Lcom/facebook/ads/redexgen/X/Wd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wd;->A05()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14770
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A00:Lcom/facebook/ads/redexgen/X/Wd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wd;->A06()Z

    .line 14771
    :cond_0
    return-void
.end method

.method public final A1H(Z)V
    .locals 1

    .line 14772
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A00:Lcom/facebook/ads/redexgen/X/Wd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A00:Lcom/facebook/ads/redexgen/X/Wd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wd;->A04()Z

    move-result v0

    if-nez v0, :cond_0

    .line 14773
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A00:Lcom/facebook/ads/redexgen/X/Wd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wd;->A07()Z

    .line 14774
    :cond_0
    return-void
.end method

.method public final A1I()Z
    .locals 2

    .line 14775
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A01:Lcom/facebook/ads/redexgen/X/ae;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ae;->A1K()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14776
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A01:Lcom/facebook/ads/redexgen/X/ae;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/Jx;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A01:Lcom/facebook/ads/redexgen/X/ae;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Jx;

    .line 14777
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jx;->A1P()Z

    move-result v0

    if-nez v0, :cond_0

    .line 14778
    return v1

    .line 14779
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A01:Lcom/facebook/ads/redexgen/X/ae;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/Is;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A01:Lcom/facebook/ads/redexgen/X/ae;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Is;

    .line 14780
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Is;->A1T()Z

    move-result v0

    if-nez v0, :cond_1

    .line 14781
    return v1

    .line 14782
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final A1J()Z
    .locals 4

    .line 14783
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A01:Lcom/facebook/ads/redexgen/X/ae;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/Jx;

    if-eqz v0, :cond_0

    .line 14784
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A01:Lcom/facebook/ads/redexgen/X/ae;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Jx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jx;->A1P()Z

    move-result v0

    return v0

    .line 14785
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A01:Lcom/facebook/ads/redexgen/X/ae;

    instance-of v3, v0, Lcom/facebook/ads/redexgen/X/Is;

    sget-object v2, Lcom/facebook/ads/redexgen/X/50;->A09:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/50;->A09:[Ljava/lang/String;

    const-string v1, "VUX6Wbk"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "Kq1l7t9"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    .line 14786
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A01:Lcom/facebook/ads/redexgen/X/ae;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Is;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Is;->A1T()Z

    move-result v0

    return v0

    .line 14787
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final A1K()Z
    .locals 1

    .line 14788
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A01:Lcom/facebook/ads/redexgen/X/ae;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/Jx;

    if-eqz v0, :cond_0

    .line 14789
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A01:Lcom/facebook/ads/redexgen/X/ae;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Jx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jx;->A1Q()Z

    move-result v0

    return v0

    .line 14790
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A01:Lcom/facebook/ads/redexgen/X/ae;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/Is;

    if-eqz v0, :cond_1

    .line 14791
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A01:Lcom/facebook/ads/redexgen/X/ae;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Is;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Is;->A1U()Z

    move-result v0

    return v0

    .line 14792
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public getFullScreenAdStyle()Lcom/facebook/ads/redexgen/X/cR;
    .locals 9

    .line 14793
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A01:Lcom/facebook/ads/redexgen/X/ae;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ae;->getColors()Lcom/facebook/ads/redexgen/X/My;

    move-result-object v5

    .line 14794
    .local v0, "colors":Lcom/facebook/ads/redexgen/X/My;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A01:Lcom/facebook/ads/redexgen/X/ae;

    .line 14795
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ae;->A1M()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A01:Lcom/facebook/ads/redexgen/X/ae;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/Jw;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 14796
    .local v8, "fullScreenColors":Z
    :goto_0
    new-instance v2, Lcom/facebook/ads/redexgen/X/cR;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A01:Lcom/facebook/ads/redexgen/X/ae;

    .line 14797
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ae;->A1M()Z

    move-result v3

    sget v4, Lcom/facebook/ads/redexgen/X/cR;->A07:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hr;->A06:Lcom/facebook/ads/redexgen/X/hy;

    .line 14798
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KE;->A05(Lcom/facebook/ads/redexgen/X/hy;)Z

    move-result v6

    .line 14799
    invoke-virtual {v5, v1}, Lcom/facebook/ads/redexgen/X/My;->A08(Z)I

    move-result v7

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/cR;-><init>(ZILcom/facebook/ads/redexgen/X/My;ZILjava/lang/String;)V

    .line 14800
    return-object v2

    .line 14801
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 14802
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Hr;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 14803
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A01:Lcom/facebook/ads/redexgen/X/ae;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/Jx;

    if-eqz v0, :cond_0

    .line 14804
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A01:Lcom/facebook/ads/redexgen/X/ae;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/ae;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 14805
    return-void

    .line 14806
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hr;->A06:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0T()Z

    move-result v0

    if-nez v0, :cond_1

    .line 14807
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/50;->A08(I)V

    .line 14808
    :cond_1
    return-void
.end method
