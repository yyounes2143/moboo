.class public final Lcom/facebook/ads/redexgen/X/5q;
.super Lcom/facebook/ads/redexgen/X/KL;
.source ""


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final A00:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 377
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "jx4KYlgMCzDl9ClzKv"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "6Ix4GmMTfvyGvtJf24kawibkIRWRaxha"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "zW69YqA5HPweJk44OR41r89kehyD8PUK"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "YWeaBtgKCGSZjZhmH64nz1hbm3NBx6WA"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "r8zWPPccQcaX84RMJyONYLJrFGke7QKT"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "leMtqeNEOkXnn1xJcE4uVuewwh76dLco"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "HficAYafh9u7bjEKghLSIT4OmCXpUy86"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "1EAnVhI1sEBIq9Q3DhiB3BUE0Cu5Wqiv"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/5q;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/KE;IZLcom/facebook/ads/redexgen/X/My;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/eX;Lcom/facebook/ads/redexgen/X/XH;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/Cw;Lcom/facebook/ads/redexgen/X/Ua;Z)V
    .locals 16

    .line 16737
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

    .line 16738
    move-object/from16 v2, p0

    new-instance v0, Lcom/facebook/ads/redexgen/X/a2;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/a2;-><init>(Lcom/facebook/ads/redexgen/X/5q;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/5q;->A00:Ljava/lang/Runnable;

    .line 16739
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/5q;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 16740
    .local v0, "orientation":I
    invoke-direct {v2, v1}, Lcom/facebook/ads/redexgen/X/5q;->A07(I)V

    .line 16741
    invoke-direct {v2, v1}, Lcom/facebook/ads/redexgen/X/5q;->A0D(I)V

    .line 16742
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/5q;->A03()V

    .line 16743
    invoke-direct {v2, v1}, Lcom/facebook/ads/redexgen/X/5q;->A08(I)V

    .line 16744
    invoke-direct {v2, v1}, Lcom/facebook/ads/redexgen/X/5q;->A0C(I)V

    .line 16745
    invoke-direct {v2, v1}, Lcom/facebook/ads/redexgen/X/5q;->A0E(I)V

    .line 16746
    invoke-direct {v2, v1}, Lcom/facebook/ads/redexgen/X/5q;->A0B(I)V

    .line 16747
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/5q;->A02()V

    .line 16748
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/5q;->A01()V

    .line 16749
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/5q;->A04()V

    .line 16750
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/KL;->A04:Landroid/widget/TextView;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/5q;->A0F(Landroid/widget/TextView;)V

    .line 16751
    invoke-direct {v2, v1}, Lcom/facebook/ads/redexgen/X/5q;->A09(I)V

    .line 16752
    invoke-direct {v2, v1}, Lcom/facebook/ads/redexgen/X/5q;->A0A(I)V

    .line 16753
    invoke-direct {v2, v1}, Lcom/facebook/ads/redexgen/X/5q;->A05(I)V

    .line 16754
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/KL;->A0O:Landroid/widget/RelativeLayout;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/KL;->A0M:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 16755
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/KL;->A0O:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/5q;->addView(Landroid/view/View;)V

    .line 16756
    return-void
.end method

.method private A00()V
    .locals 3

    .line 16757
    const/16 v0, 0x8

    new-array v2, v0, [F

    fill-array-data v2, :array_0

    .line 16758
    .local v0, "outerRadii":[F
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0M:Landroid/widget/RelativeLayout;

    const/high16 v0, -0x4d000000

    invoke-virtual {p0, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/KL;->A0r(Landroid/view/View;I[F)V

    .line 16759
    return-void

    nop

    :array_0
    .array-data 4
        0x42900000    # 72.0f
        0x42900000    # 72.0f
        0x42900000    # 72.0f
        0x42900000    # 72.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private A01()V
    .locals 3

    .line 16760
    const/4 v1, -0x1

    sget v0, Lcom/facebook/ads/redexgen/X/KL;->A0b:I

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 16761
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0I:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 16762
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0I:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 16763
    sget v0, Lcom/facebook/ads/redexgen/X/KL;->A0u:I

    invoke-virtual {v2, v1, v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 16764
    :goto_0
    const/16 v0, 0xe

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16765
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A08:Lcom/facebook/ads/redexgen/X/KE;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/KE;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16766
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/KL;->A0k()V

    .line 16767
    return-void

    .line 16768
    :cond_0
    sget v0, Lcom/facebook/ads/redexgen/X/KL;->A0l:I

    invoke-virtual {v2, v1, v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method private A02()V
    .locals 3

    .line 16769
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0I:Landroid/widget/ImageView;

    .line 16770
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 16771
    .local v0, "chevronUpParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0P:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 16772
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0I:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 16773
    sget v0, Lcom/facebook/ads/redexgen/X/KL;->A0l:I

    invoke-virtual {v2, v1, v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 16774
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0I:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16775
    return-void

    .line 16776
    :cond_0
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method private A03()V
    .locals 3

    .line 16777
    const/4 v1, -0x1

    const/4 v0, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 16778
    .local v0, "childLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5q;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 16779
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 16780
    .local v2, "screenWidth":I
    int-to-float v1, v0

    const v0, 0x3ebd70a4    # 0.37f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 16781
    const/16 v0, 0xd

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16782
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0N:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16783
    return-void
.end method

.method private A04()V
    .locals 3

    .line 16784
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0U:Lcom/facebook/ads/redexgen/X/Cw;

    .line 16785
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Cw;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 16786
    .local v0, "progressBarLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x0

    sget v0, Lcom/facebook/ads/redexgen/X/KL;->A0l:I

    invoke-virtual {v2, v1, v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 16787
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A08:Lcom/facebook/ads/redexgen/X/KE;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KE;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 16788
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0U:Lcom/facebook/ads/redexgen/X/Cw;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Cw;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16789
    return-void
.end method

.method private A05(I)V
    .locals 2

    .line 16790
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 16791
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0M:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A09:Lcom/facebook/ads/redexgen/X/aK;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 16792
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0M:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0Q:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 16793
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0M:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0P:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 16794
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0M:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0I:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 16795
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0M:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A08:Lcom/facebook/ads/redexgen/X/KE;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 16796
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0M:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0U:Lcom/facebook/ads/redexgen/X/Cw;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 16797
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0M:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/KL;->A0u(Landroid/widget/RelativeLayout;)V

    .line 16798
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0M:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0K:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 16799
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0M:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0J:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 16800
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0Y:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0W:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16801
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/KL;->A0n()V

    .line 16802
    :cond_0
    :goto_0
    return-void

    .line 16803
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0N:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A09:Lcom/facebook/ads/redexgen/X/aK;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 16804
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0N:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0Q:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 16805
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0N:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0P:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 16806
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0N:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A08:Lcom/facebook/ads/redexgen/X/KE;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 16807
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0N:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0U:Lcom/facebook/ads/redexgen/X/Cw;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 16808
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0N:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/KL;->A0u(Landroid/widget/RelativeLayout;)V

    .line 16809
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0N:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0I:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 16810
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0O:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0J:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 16811
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0O:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0N:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 16812
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0O:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0K:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 16813
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0Y:Z

    if-eqz v0, :cond_0

    .line 16814
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/KL;->A0n()V

    goto :goto_0
.end method

.method private A06(I)V
    .locals 2

    .line 16815
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 16816
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0F:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5q;->A00:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 16817
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0M:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 16818
    :cond_0
    return-void
.end method

.method private A07(I)V
    .locals 5

    .line 16819
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 16820
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/KL;->A0M:Landroid/widget/RelativeLayout;

    const/16 v3, 0x190

    const/16 v2, 0x64

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/CU;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/CU;-><init>(Landroid/view/View;III)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A05:Lcom/facebook/ads/redexgen/X/CU;

    .line 16821
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0W:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 16822
    :cond_0
    return-void
.end method

.method private A08(I)V
    .locals 5

    .line 16823
    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 16824
    const/4 v0, -0x2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 16825
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0M:Landroid/widget/RelativeLayout;

    const/16 v0, 0x50

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 16826
    sget v1, Lcom/facebook/ads/redexgen/X/KL;->A0l:I

    sget v0, Lcom/facebook/ads/redexgen/X/KL;->A0l:I

    invoke-virtual {v3, v1, v4, v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 16827
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/KL;->A0M:Landroid/widget/RelativeLayout;

    sget v1, Lcom/facebook/ads/redexgen/X/KL;->A0n:I

    sget v0, Lcom/facebook/ads/redexgen/X/KL;->A0n:I

    invoke-virtual {v2, v1, v4, v0, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 16828
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5q;->A00()V

    .line 16829
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0M:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16830
    return-void

    .line 16831
    .end local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 16832
    .restart local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0M:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 16833
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0M:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v4, v0}, Lcom/facebook/ads/redexgen/X/KL;->A0r(Landroid/view/View;I[F)V

    goto :goto_0
.end method

.method private A09(I)V
    .locals 5

    .line 16834
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0K:Landroid/widget/LinearLayout;

    .line 16835
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 16836
    .local v0, "adReportingLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v0, 0x1

    const/16 v2, 0xc

    const/16 v1, 0xb

    const/4 v3, 0x0

    if-ne p1, v0, :cond_0

    .line 16837
    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 16838
    invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 16839
    sget v0, Lcom/facebook/ads/redexgen/X/KL;->A0m:I

    invoke-virtual {v4, v3, v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 16840
    invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16841
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0U:Lcom/facebook/ads/redexgen/X/Cw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Cw;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 16842
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0K:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16843
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/KL;->A0K:Landroid/widget/LinearLayout;

    sget v1, Lcom/facebook/ads/redexgen/X/KL;->A0u:I

    sget v0, Lcom/facebook/ads/redexgen/X/KL;->A0u:I

    invoke-virtual {v2, v1, v0, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 16844
    return-void

    .line 16845
    :cond_0
    sget v0, Lcom/facebook/ads/redexgen/X/KL;->A0r:I

    invoke-virtual {v4, v3, v3, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 16846
    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16847
    invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0
.end method

.method private A0A(I)V
    .locals 6

    .line 16848
    const/4 v0, -0x2

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 16849
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v0, 0x1

    const/4 v4, 0x3

    const/16 v3, 0xb

    const/16 v1, 0xc

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    .line 16850
    invoke-virtual {v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 16851
    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16852
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0U:Lcom/facebook/ads/redexgen/X/Cw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Cw;->getId()I

    move-result v0

    invoke-virtual {v5, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 16853
    sget v1, Lcom/facebook/ads/redexgen/X/KL;->A0o:I

    sget v0, Lcom/facebook/ads/redexgen/X/KL;->A0l:I

    invoke-virtual {v5, v2, v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 16854
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0J:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 16855
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0J:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16856
    return-void

    .line 16857
    :cond_0
    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 16858
    sget v0, Lcom/facebook/ads/redexgen/X/KL;->A0l:I

    invoke-virtual {v5, v2, v2, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 16859
    invoke-virtual {v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16860
    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16861
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0J:Landroid/widget/ImageView;

    sget v0, Lcom/facebook/ads/redexgen/X/KL;->A0l:I

    invoke-virtual {v1, v2, v2, v2, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto :goto_0
.end method

.method private A0B(I)V
    .locals 5

    .line 16862
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0P:Landroid/widget/TextView;

    .line 16863
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 16864
    .local v0, "descriptionParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xe

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16865
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0Q:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 16866
    sget v3, Lcom/facebook/ads/redexgen/X/KL;->A0u:I

    sget v1, Lcom/facebook/ads/redexgen/X/KL;->A0u:I

    sget v0, Lcom/facebook/ads/redexgen/X/KL;->A0u:I

    const/4 v2, 0x0

    invoke-virtual {v4, v3, v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 16867
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0P:Landroid/widget/TextView;

    const/high16 v0, 0x41900000    # 18.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 16868
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0P:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16869
    const/4 v0, 0x1

    const/4 v3, 0x2

    if-ne p1, v0, :cond_1

    .line 16870
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0W:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/5q;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x70

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/5q;->A01:[Ljava/lang/String;

    const-string v1, "LwMNVJXewPVvHtT8EyPDkqGjMUrnRCOE"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v4, :cond_0

    .line 16871
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0P:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16872
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0P:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 16873
    :cond_0
    :goto_0
    return-void

    .line 16874
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0P:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16875
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0P:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0C(I)V
    .locals 5

    .line 16876
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A09:Lcom/facebook/ads/redexgen/X/aK;

    .line 16877
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aK;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 16878
    .local v0, "imageParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v0, 0x1

    const/16 v3, 0xe

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 16879
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0W:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16880
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Zv;->A09:Lcom/facebook/ads/redexgen/X/aK;

    const/16 v0, 0x8

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/aK;->setVisibility(I)V

    .line 16881
    :cond_0
    sget v0, Lcom/facebook/ads/redexgen/X/KL;->A0g:I

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 16882
    sget v0, Lcom/facebook/ads/redexgen/X/KL;->A0g:I

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 16883
    sget v0, Lcom/facebook/ads/redexgen/X/KL;->A0g:I

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v2, v1, v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 16884
    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16885
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A09:Lcom/facebook/ads/redexgen/X/aK;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/aK;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16886
    return-void

    .line 16887
    :cond_1
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 16888
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 16889
    sget v0, Lcom/facebook/ads/redexgen/X/KL;->A0h:I

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 16890
    sget v0, Lcom/facebook/ads/redexgen/X/KL;->A0h:I

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 16891
    sget v0, Lcom/facebook/ads/redexgen/X/KL;->A0l:I

    invoke-virtual {v2, v1, v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 16892
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A09:Lcom/facebook/ads/redexgen/X/aK;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/aK;->setVisibility(I)V

    goto :goto_0
.end method

.method private A0D(I)V
    .locals 3

    .line 16893
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 16894
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0O:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClipChildren(Z)V

    .line 16895
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0O:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClipToPadding(Z)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/5q;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    .line 16896
    sget-object v2, Lcom/facebook/ads/redexgen/X/5q;->A01:[Ljava/lang/String;

    const-string v1, "cGbvdTJNONPNbXLhpEbXT6xJPDu44esN"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0O:Landroid/widget/RelativeLayout;

    const/16 v0, 0x50

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 16897
    :goto_0
    return-void

    .line 16898
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0O:Landroid/widget/RelativeLayout;

    const v0, 0x800033

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setGravity(I)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0E(I)V
    .locals 4

    .line 16899
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0Q:Landroid/widget/TextView;

    .line 16900
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 16901
    .local v0, "titleParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xe

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16902
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A09:Lcom/facebook/ads/redexgen/X/aK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aK;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 16903
    sget v0, Lcom/facebook/ads/redexgen/X/KL;->A0m:I

    const/4 v2, 0x0

    invoke-virtual {v3, v2, v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 16904
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0Q:Landroid/widget/TextView;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 16905
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0Q:Landroid/widget/TextView;

    const/high16 v0, 0x41f00000    # 30.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 16906
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0Q:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16907
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 16908
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/KL;->A0W:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v2, Lcom/facebook/ads/redexgen/X/5q;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/5q;->A01:[Ljava/lang/String;

    const-string v1, "mUrLjLxX8ps9KyyklEjsMvbvvfmlYgc4"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16909
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/KL;->A0Q:Landroid/widget/TextView;

    sget-object v1, Lcom/facebook/ads/redexgen/X/5q;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x70

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/5q;->A01:[Ljava/lang/String;

    const-string v1, "Ry88z4pj2pKB6I6ufE2OgGjTn2NC40NW"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16910
    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/5q;->A01:[Ljava/lang/String;

    const-string v1, "gqkT8dK3xSCWX8L5GFvNij0exRjeTiiQ"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const/4 v0, 0x3

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 16911
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0Q:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0F(Landroid/widget/TextView;)V
    .locals 4

    .line 16912
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/5q;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x70

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/5q;->A01:[Ljava/lang/String;

    const-string v1, "mNXbhcpsRbbwGhDffCZ213OdU3Broeit"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    .line 16913
    .end local v0
    :cond_0
    return-void

    .line 16914
    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 16915
    .local v0, "param":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0U:Lcom/facebook/ads/redexgen/X/Cw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Cw;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 16916
    sget v1, Lcom/facebook/ads/redexgen/X/KL;->A0u:I

    const/4 v0, 0x0

    invoke-virtual {v2, v0, v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 16917
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16918
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A0h(I)V
    .locals 3

    .line 16919
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/KL;->A0h(I)V

    .line 16920
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/5q;->A06(I)V

    .line 16921
    const/16 v0, 0xa

    new-array v2, v0, [Landroid/view/View;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0N:Landroid/widget/RelativeLayout;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A09:Lcom/facebook/ads/redexgen/X/aK;

    aput-object v0, v2, v1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0Q:Landroid/widget/TextView;

    aput-object v0, v2, v1

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A08:Lcom/facebook/ads/redexgen/X/KE;

    aput-object v0, v2, v1

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0U:Lcom/facebook/ads/redexgen/X/Cw;

    aput-object v0, v2, v1

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A04:Landroid/widget/TextView;

    aput-object v0, v2, v1

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0P:Landroid/widget/TextView;

    aput-object v0, v2, v1

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0K:Landroid/widget/LinearLayout;

    aput-object v0, v2, v1

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0J:Landroid/widget/ImageView;

    aput-object v0, v2, v1

    const/16 v1, 0x9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0I:Landroid/widget/ImageView;

    aput-object v0, v2, v1

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/XP;->A0Z([Landroid/view/View;)V

    .line 16922
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/5q;->A0D(I)V

    .line 16923
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/5q;->A08(I)V

    .line 16924
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5q;->A03()V

    .line 16925
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/5q;->A0C(I)V

    .line 16926
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A04:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/5q;->A0F(Landroid/widget/TextView;)V

    .line 16927
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5q;->A04()V

    .line 16928
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5q;->A02()V

    .line 16929
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5q;->A01()V

    .line 16930
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/5q;->A0E(I)V

    .line 16931
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/5q;->A0B(I)V

    .line 16932
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/5q;->A09(I)V

    .line 16933
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/5q;->A0A(I)V

    .line 16934
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/5q;->A05(I)V

    .line 16935
    return-void
.end method

.method public final A0q(I)V
    .locals 4

    .line 16936
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A05:Lcom/facebook/ads/redexgen/X/CU;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 16937
    :cond_0
    return-void

    .line 16938
    :cond_1
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/KL;->A05:Lcom/facebook/ads/redexgen/X/CU;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/CU;->A42(ZZ)V

    .line 16939
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0W:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 16940
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/KL;->A0F:Landroid/os/Handler;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/5q;->A00:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1388

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 16941
    return-void
.end method

.method public final A0s(Landroid/view/ViewGroup;Landroid/widget/RelativeLayout;I)V
    .locals 0

    .line 16942
    return-void
.end method

.method public setInfo(Lcom/facebook/ads/redexgen/X/Mw;Lcom/facebook/ads/redexgen/X/Mz;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Wv;Lcom/facebook/ads/redexgen/X/a4;)V
    .locals 0

    .line 16943
    invoke-super/range {p0 .. p6}, Lcom/facebook/ads/redexgen/X/Zv;->setInfo(Lcom/facebook/ads/redexgen/X/Mw;Lcom/facebook/ads/redexgen/X/Mz;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Wv;Lcom/facebook/ads/redexgen/X/a4;)V

    .line 16944
    return-void
.end method
