.class public final Lcom/facebook/ads/redexgen/X/Ju;
.super Lcom/facebook/ads/redexgen/X/ae;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Wf;


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/hy;

.field public final A01:Lcom/facebook/ads/redexgen/X/Wh;

.field public final A02:Lcom/facebook/ads/redexgen/X/Xn;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 859
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "jViytUMb8W4ggVUJxJM4ipopCTL5"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "9aLNfhHGIgyW1yw0lAvb2knTk6C61HAs"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "tSRmVjXXTSnTtzrce7INiQjRTYiInlbV"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "4hcdJiGUQmFME9vgh87fiTmYWHBJid0b"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Sl93MFe7LYTqHCUKgRBPFfcYUFdC2Wx2"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "6CReOOSeiw7R4vGYWPFAi839J8MszZAI"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "rkSedGSxOJTtoP7gEY2R8PFp4jzzUrYJ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "HZKY5YyrBfN27m9O42YnVDeAUeo6GkfS"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ju;->A04:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ju;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ai;Z)V
    .locals 13

    .line 46631
    move-object v5, p0

    const/4 v1, 0x1

    invoke-direct {v5, p1, v1}, Lcom/facebook/ads/redexgen/X/ae;-><init>(Lcom/facebook/ads/redexgen/X/ai;Z)V

    .line 46632
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A0D()Lcom/facebook/ads/redexgen/X/Xn;

    move-result-object v0

    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/Ju;->A02:Lcom/facebook/ads/redexgen/X/Xn;

    .line 46633
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/Ju;->A00:Lcom/facebook/ads/redexgen/X/hy;

    .line 46634
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A06()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-direct {v4, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 46635
    .local v3, "bottomContainer":Landroid/widget/RelativeLayout;
    const/4 v8, -0x1

    const/4 v9, -0x2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 46636
    .local v4, "bottomContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xc

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 46637
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ae;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0P(Landroid/view/View;Landroid/content/Context;)V

    .line 46638
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A06()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 46639
    .local v7, "auxContainer":Landroid/widget/LinearLayout;
    xor-int/lit8 v0, p2, 0x1

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 46640
    const/16 v0, 0x50

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 46641
    invoke-static {v10}, Lcom/facebook/ads/redexgen/X/XP;->A0I(Landroid/view/View;)V

    .line 46642
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 46643
    .local v8, "auxContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v7, Lcom/facebook/ads/redexgen/X/ae;->A07:I

    sget v2, Lcom/facebook/ads/redexgen/X/ae;->A07:I

    sget v0, Lcom/facebook/ads/redexgen/X/ae;->A07:I

    const/4 v12, 0x0

    invoke-virtual {v6, v7, v12, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 46644
    if-eqz p2, :cond_a

    const/4 v0, -0x2

    :goto_0
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 46645
    .local v9, "ctaParams":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz p2, :cond_9

    sget v7, Lcom/facebook/ads/redexgen/X/ae;->A07:I

    :goto_1
    if-eqz p2, :cond_8

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v2, v7, v0, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 46646
    if-eqz p2, :cond_7

    const/4 v0, 0x0

    :goto_3
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v0, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 46647
    .local v10, "textParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v7, v12, v12, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 46648
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 46649
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ae;->getTitleDescContainer()Lcom/facebook/ads/redexgen/X/aQ;

    move-result-object v0

    invoke-virtual {v10, v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46650
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A06()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v7

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Ju;->A00:Lcom/facebook/ads/redexgen/X/hy;

    invoke-static {v7, v0, v5}, Lcom/facebook/ads/redexgen/X/Wh;->A00(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/Wf;)Lcom/facebook/ads/redexgen/X/Wh;

    move-result-object v0

    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/Ju;->A01:Lcom/facebook/ads/redexgen/X/Wh;

    .line 46651
    iget-object v7, v5, Lcom/facebook/ads/redexgen/X/Ju;->A01:Lcom/facebook/ads/redexgen/X/Wh;

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Ju;->A00:Lcom/facebook/ads/redexgen/X/hy;

    .line 46652
    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/Wh;->A02(Lcom/facebook/ads/redexgen/X/hy;)Lcom/facebook/ads/redexgen/X/Wg;

    move-result-object v7

    .line 46653
    .local v11, "supported":Lcom/facebook/ads/redexgen/X/Wg;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A06()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    .line 46654
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0H()Lcom/facebook/ads/redexgen/X/SO;

    move-result-object v11

    iget-boolean v0, v7, Lcom/facebook/ads/redexgen/X/Wg;->A01:Z

    .line 46655
    invoke-virtual {v11, v0}, Lcom/facebook/ads/redexgen/X/SO;->A00(Z)V

    .line 46656
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A0I()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 46657
    nop

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A06()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    new-instance v11, Lcom/facebook/ads/redexgen/X/cm;

    invoke-direct {v11, v0}, Lcom/facebook/ads/redexgen/X/cm;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    .line 46658
    .local p0, "pageDetailsView":Lcom/facebook/ads/redexgen/X/cm;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A23()Lcom/facebook/ads/redexgen/X/N9;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/facebook/ads/redexgen/X/cm;->setPageDetails(Lcom/facebook/ads/redexgen/X/N9;)V

    .line 46659
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/ae;->A06:Lcom/facebook/ads/redexgen/X/ai;

    .line 46660
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A1z()Lcom/facebook/ads/redexgen/X/Ml;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ml;->A00()Lcom/facebook/ads/redexgen/X/My;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/My;->A05(Z)I

    move-result v0

    .line 46661
    .local v1, "textColor":I
    invoke-virtual {v11, v0, v0}, Lcom/facebook/ads/redexgen/X/cm;->A02(II)V

    .line 46662
    const/16 v0, 0x3ef

    invoke-static {v0, v11}, Lcom/facebook/ads/redexgen/X/XP;->A0E(ILandroid/view/View;)V

    .line 46663
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 46664
    .local p1, "pageDetailsLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/ae;->A07:I

    invoke-virtual {v1, v12, v0, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 46665
    invoke-virtual {v10, v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46666
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A06()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A18(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46667
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ae;->getCtaButton()Lcom/facebook/ads/redexgen/X/KE;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/facebook/ads/redexgen/X/cm;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46668
    .end local v1    # "textColor":I
    .end local p0    # "pageDetailsView":Lcom/facebook/ads/redexgen/X/cm;
    .end local p1    # "pageDetailsLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ae;->getCtaButton()Lcom/facebook/ads/redexgen/X/KE;

    move-result-object v0

    invoke-virtual {v10, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46669
    invoke-virtual {v4, v10, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46670
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ae;->getCtaButton()Lcom/facebook/ads/redexgen/X/KE;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A0C()Lcom/facebook/ads/redexgen/X/Xm;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KE;->A0F(Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/Xm;)Z

    .line 46671
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A02()Landroid/view/View;

    move-result-object v2

    .line 46672
    .local v1, "mMediaView":Landroid/view/View;
    if-eqz v2, :cond_6

    iget-boolean v0, v7, Lcom/facebook/ads/redexgen/X/Wg;->A00:Z

    if-nez v0, :cond_1

    .line 46673
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ae;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A1I(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 46674
    :cond_1
    if-eqz p2, :cond_5

    .line 46675
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v9, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 46676
    .local v6, "mediaViewParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v6    # "mediaViewParams":Landroid/widget/FrameLayout$LayoutParams;
    :goto_4
    const/16 v0, 0x11

    iput v0, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 46677
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A06()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 46678
    .local v12, "insideContainerLayout":Landroid/widget/FrameLayout;
    invoke-virtual {v1, v2, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46679
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/Ju;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46680
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ae;->getCtaButton()Lcom/facebook/ads/redexgen/X/KE;

    move-result-object v1

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Ju;->A01:Lcom/facebook/ads/redexgen/X/Wh;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/KE;->setCreativeAsCtaLoggingHelper(Lcom/facebook/ads/redexgen/X/Wh;)V

    .line 46681
    iget-boolean v0, v7, Lcom/facebook/ads/redexgen/X/Wg;->A00:Z

    if-eqz v0, :cond_4

    .line 46682
    new-instance v0, Lcom/facebook/ads/redexgen/X/aa;

    invoke-direct {v0, v5}, Lcom/facebook/ads/redexgen/X/aa;-><init>(Lcom/facebook/ads/redexgen/X/Ju;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46683
    :cond_2
    :goto_5
    invoke-virtual {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/Ju;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46684
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A06()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A17(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 46685
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ae;->getTitleDescContainer()Lcom/facebook/ads/redexgen/X/aQ;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ae;->getCtaButton()Lcom/facebook/ads/redexgen/X/KE;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/aQ;->setCTAClickListener(Lcom/facebook/ads/redexgen/X/KE;)V

    .line 46686
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A0C()Lcom/facebook/ads/redexgen/X/Xm;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 46687
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A0C()Lcom/facebook/ads/redexgen/X/Xm;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ae;->getCtaButton()Lcom/facebook/ads/redexgen/X/KE;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xm;->setCTAClickListener(Lcom/facebook/ads/redexgen/X/KE;)V

    .line 46688
    :cond_3
    return-void

    .line 46689
    :cond_4
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ae;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A1J(Landroid/content/Context;)Z

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/ab;

    invoke-direct {v0, v5}, Lcom/facebook/ads/redexgen/X/ab;-><init>(Lcom/facebook/ads/redexgen/X/Ju;)V

    .line 46690
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zs;->A00(Landroid/view/View;ZLandroid/view/View$OnClickListener;)V

    goto :goto_5

    .line 46691
    .end local v6    # "mediaViewParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_5
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_4

    .line 46692
    .end local v6
    .end local v12    # "insideContainerLayout":Landroid/widget/FrameLayout;
    :cond_6
    if-eqz v2, :cond_2

    .line 46693
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v2, v0}, Lcom/facebook/ads/redexgen/X/Ju;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    .line 46694
    :cond_7
    const/4 v0, -0x1

    goto/16 :goto_3

    .line 46695
    :cond_8
    sget v0, Lcom/facebook/ads/redexgen/X/ae;->A07:I

    goto/16 :goto_2

    :cond_9
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 46696
    :cond_a
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ju;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ju;->A04:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ju;->A04:[Ljava/lang/String;

    const-string v1, "P3g3yiO3ICi92ZTGqQIjITPfAPWFUEMm"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "pyBqNmisWoZkDTGCi8bHuToayw1uFlPn"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_1

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x4e

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

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ju;->A03:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x40t
        0x44t
        0x48t
        0x4et
        0x4ct
    .end array-data
.end method


# virtual methods
.method public final A1B()V
    .locals 1

    .line 46697
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/ae;->A1B()V

    .line 46698
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ju;->A01:Lcom/facebook/ads/redexgen/X/Wh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wh;->A03()V

    .line 46699
    return-void
.end method

.method public final A1G(Lcom/facebook/ads/redexgen/X/Mp;Ljava/lang/String;DLandroid/os/Bundle;)V
    .locals 0

    .line 46700
    invoke-super/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/ae;->A1G(Lcom/facebook/ads/redexgen/X/Mp;Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 46701
    return-void
.end method

.method public final A1M()Z
    .locals 1

    .line 46702
    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic A1O(Landroid/view/View;)V
    .locals 4

    .line 46703
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ae;->getCtaButton()Lcom/facebook/ads/redexgen/X/KE;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x5

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ju;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/KE;->A0E(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/ME;

    return-void
.end method
