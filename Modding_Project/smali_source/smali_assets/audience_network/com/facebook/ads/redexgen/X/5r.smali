.class public final Lcom/facebook/ads/redexgen/X/5r;
.super Lcom/facebook/ads/redexgen/X/KL;
.source ""


# static fields
.field public static A00:[Ljava/lang/String;

.field public static final A01:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 378
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "G"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "KzTy2hy9hhtw1RMGA4AWQtLCSBRvIgNx"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "TFXx3faCMHKsw8ZQwSQJp4p3qrvSFGQZ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "FDPqMwfpfrBnIs9VqOwKhGqv0efVrSDC"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "w99CmZO3gVFe1JaqJ0AV2MifxVBEUT0K"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "IReileYPgfNfW"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Qab6Yr7DAj1gKX83C9lxa"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "vvhOodmvLfB1cs4WARwmrAXLlmUlw4y7"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/5r;->A00:[Ljava/lang/String;

    const/high16 v1, 0x43180000    # 152.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/5r;->A01:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/KE;IZLcom/facebook/ads/redexgen/X/My;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/eX;Lcom/facebook/ads/redexgen/X/XH;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/Cw;Lcom/facebook/ads/redexgen/X/Ua;Z)V
    .locals 16

    .line 16945
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

    .line 16946
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/5r;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    .line 16947
    .local v0, "orientation":I
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/5r;->A00()V

    .line 16948
    move-object/from16 v1, p0

    invoke-direct {v1, v2}, Lcom/facebook/ads/redexgen/X/5r;->A07(I)V

    .line 16949
    invoke-direct {v1, v2}, Lcom/facebook/ads/redexgen/X/5r;->A09(I)V

    .line 16950
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/KL;->A0P:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0I(Landroid/view/View;)V

    .line 16951
    invoke-direct {v1, v2}, Lcom/facebook/ads/redexgen/X/5r;->A06(I)V

    .line 16952
    invoke-direct {v1, v2}, Lcom/facebook/ads/redexgen/X/5r;->A02(I)V

    .line 16953
    invoke-direct {v1, v2}, Lcom/facebook/ads/redexgen/X/5r;->A05(I)V

    .line 16954
    invoke-direct {v1, v2}, Lcom/facebook/ads/redexgen/X/5r;->A04(I)V

    .line 16955
    invoke-direct {v1, v2}, Lcom/facebook/ads/redexgen/X/5r;->A03(I)V

    .line 16956
    invoke-direct {v1, v2}, Lcom/facebook/ads/redexgen/X/5r;->A08(I)V

    .line 16957
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/KL;->A04:Landroid/widget/TextView;

    invoke-direct {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/5r;->A0A(Landroid/widget/TextView;I)V

    .line 16958
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/KL;->A0O:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5r;->addView(Landroid/view/View;)V

    .line 16959
    return-void
.end method

.method private A00()V
    .locals 3

    .line 16960
    const/4 v1, -0x1

    const/4 v0, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 16961
    .local v0, "childLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16962
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5r;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 16963
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 16964
    .local v2, "screenWidth":I
    int-to-float v1, v0

    const v0, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 16965
    .local p0, "margin":I
    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 16966
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0N:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16967
    return-void
.end method

.method private A01(I)V
    .locals 4

    .line 16968
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A08:Lcom/facebook/ads/redexgen/X/KE;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KE;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 16969
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Zv;->A08:Lcom/facebook/ads/redexgen/X/KE;

    sget-object v1, Lcom/facebook/ads/redexgen/X/5r;->A00:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/5r;->A00:[Ljava/lang/String;

    const-string v1, "77Sm8WMgdJozvQKOpKshJ"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/XP;->A0H(Landroid/view/View;)V

    .line 16970
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 16971
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0O:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/KL;->A0u(Landroid/widget/RelativeLayout;)V

    .line 16972
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0O:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0I:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 16973
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0O:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0U:Lcom/facebook/ads/redexgen/X/Cw;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 16974
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0O:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A08:Lcom/facebook/ads/redexgen/X/KE;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 16975
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0O:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0K:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 16976
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0O:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0J:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 16977
    :goto_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0Y:Z

    if-eqz v0, :cond_2

    .line 16978
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/KL;->A0n()V

    .line 16979
    :cond_2
    return-void

    .line 16980
    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0N:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A09:Lcom/facebook/ads/redexgen/X/aK;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 16981
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0N:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0Q:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 16982
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0N:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0P:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 16983
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0N:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A08:Lcom/facebook/ads/redexgen/X/KE;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 16984
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0N:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0U:Lcom/facebook/ads/redexgen/X/Cw;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 16985
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0N:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/KL;->A0u(Landroid/widget/RelativeLayout;)V

    .line 16986
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0N:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0I:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 16987
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0O:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0J:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 16988
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0O:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0N:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 16989
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0O:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0K:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private A02(I)V
    .locals 4

    .line 16990
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0K:Landroid/widget/LinearLayout;

    .line 16991
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 16992
    .local v0, "adReportingLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/KL;->A0r:I

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 16993
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16994
    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16995
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0K:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16996
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/KL;->A0K:Landroid/widget/LinearLayout;

    sget v1, Lcom/facebook/ads/redexgen/X/KL;->A0u:I

    sget v0, Lcom/facebook/ads/redexgen/X/KL;->A0u:I

    invoke-virtual {v2, v1, v0, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 16997
    return-void
.end method

.method private A03(I)V
    .locals 5

    .line 16998
    const/4 v1, -0x1

    sget v0, Lcom/facebook/ads/redexgen/X/KL;->A0b:I

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 16999
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v0, 0x1

    const/4 v3, 0x0

    if-ne p1, v0, :cond_0

    .line 17000
    sget v2, Lcom/facebook/ads/redexgen/X/KL;->A0r:I

    sget v1, Lcom/facebook/ads/redexgen/X/KL;->A0r:I

    sget v0, Lcom/facebook/ads/redexgen/X/KL;->A0l:I

    invoke-virtual {v4, v2, v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 17001
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0U:Lcom/facebook/ads/redexgen/X/Cw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Cw;->getId()I

    move-result v1

    const/4 v0, 0x2

    invoke-virtual {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 17002
    :goto_0
    const/16 v0, 0xe

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17003
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A08:Lcom/facebook/ads/redexgen/X/KE;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/KE;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17004
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/KL;->A0k()V

    .line 17005
    return-void

    .line 17006
    :cond_0
    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 17007
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0I:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0
.end method

.method private A04(I)V
    .locals 6

    .line 17008
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0I:Landroid/widget/ImageView;

    .line 17009
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 17010
    .local v0, "chevronUpParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v0, 0x1

    const/4 v5, 0x2

    const/4 v2, 0x3

    if-ne p1, v0, :cond_0

    .line 17011
    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 17012
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Zv;->A08:Lcom/facebook/ads/redexgen/X/KE;

    sget-object v1, Lcom/facebook/ads/redexgen/X/5r;->A00:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 17013
    :cond_0
    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 17014
    sget v1, Lcom/facebook/ads/redexgen/X/KL;->A0u:I

    const/4 v0, 0x0

    invoke-virtual {v3, v0, v0, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 17015
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0P:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v0

    invoke-virtual {v3, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 17016
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/5r;->A00:[Ljava/lang/String;

    const-string v1, "l"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/KE;->getId()I

    move-result v0

    invoke-virtual {v3, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 17017
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0I:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17018
    return-void
.end method

.method private A05(I)V
    .locals 5

    .line 17019
    const/4 v0, -0x2

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 17020
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v3, 0x1

    const/4 v1, 0x7

    const/16 v0, 0xb

    const/4 v2, 0x0

    if-ne p1, v3, :cond_0

    .line 17021
    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 17022
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A08:Lcom/facebook/ads/redexgen/X/KE;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KE;->getId()I

    move-result v0

    invoke-virtual {v4, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 17023
    invoke-virtual {v4, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 17024
    :goto_0
    const/16 v0, 0xc

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17025
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0J:Landroid/widget/ImageView;

    sget v0, Lcom/facebook/ads/redexgen/X/KL;->A0l:I

    invoke-virtual {v1, v2, v2, v2, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 17026
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0J:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17027
    return-void

    .line 17028
    :cond_0
    invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 17029
    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17030
    sget v0, Lcom/facebook/ads/redexgen/X/KL;->A0l:I

    invoke-virtual {v4, v2, v2, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method private A06(I)V
    .locals 4

    .line 17031
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0P:Landroid/widget/TextView;

    .line 17032
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 17033
    .local v0, "descriptionParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 17034
    sget v2, Lcom/facebook/ads/redexgen/X/KL;->A0t:I

    .line 17035
    .local v1, "horizontalMargin":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0P:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 17036
    :goto_0
    sget v1, Lcom/facebook/ads/redexgen/X/KL;->A0u:I

    sget v0, Lcom/facebook/ads/redexgen/X/KL;->A0l:I

    invoke-virtual {v3, v2, v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 17037
    const/16 v2, 0xe

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17038
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0Q:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 17039
    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17040
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0P:Landroid/widget/TextView;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 17041
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0P:Landroid/widget/TextView;

    const/high16 v0, 0x41900000    # 18.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 17042
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0P:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17043
    return-void

    .line 17044
    .end local v1    # "horizontalMargin":I
    :cond_0
    sget v2, Lcom/facebook/ads/redexgen/X/KL;->A0u:I

    .line 17045
    .restart local v1    # "horizontalMargin":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0P:Landroid/widget/TextView;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_0
.end method

.method private A07(I)V
    .locals 7

    .line 17046
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A09:Lcom/facebook/ads/redexgen/X/aK;

    .line 17047
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aK;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 17048
    .local v0, "imageParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v0, 0x1

    const/16 v5, 0xe

    const/4 v4, 0x0

    if-ne p1, v0, :cond_1

    .line 17049
    sget v0, Lcom/facebook/ads/redexgen/X/5r;->A01:I

    iput v0, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 17050
    sget v0, Lcom/facebook/ads/redexgen/X/5r;->A01:I

    iput v0, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 17051
    sget v0, Lcom/facebook/ads/redexgen/X/5r;->A01:I

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x4

    .line 17052
    .local v1, "topMargin":I
    invoke-virtual {v6, v4, v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 17053
    const/16 v1, 0x1e

    .line 17054
    .local v1, "radius":I
    .restart local v1    # "radius":I
    :goto_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0X:Z

    if-nez v0, :cond_0

    .line 17055
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A09:Lcom/facebook/ads/redexgen/X/aK;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/aK;->setRadius(I)V

    .line 17056
    :cond_0
    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17057
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A09:Lcom/facebook/ads/redexgen/X/aK;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/aK;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17058
    return-void

    .line 17059
    .end local v1    # "radius":I
    :cond_1
    const/4 v0, 0x3

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 17060
    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 17061
    sget v3, Lcom/facebook/ads/redexgen/X/KL;->A0h:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/5r;->A00:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/5r;->A00:[Ljava/lang/String;

    const-string v1, "bedGjlLGZ2badAr5t95UZlauyGcNPG4D"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iput v3, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 17062
    sget v0, Lcom/facebook/ads/redexgen/X/KL;->A0h:I

    iput v0, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 17063
    sget v0, Lcom/facebook/ads/redexgen/X/KL;->A0l:I

    invoke-virtual {v6, v4, v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 17064
    const/16 v1, 0xf

    goto :goto_0
.end method

.method private A08(I)V
    .locals 5

    .line 17065
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0U:Lcom/facebook/ads/redexgen/X/Cw;

    .line 17066
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Cw;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 17067
    .local v0, "progressBarLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v0, 0x1

    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v4, 0x0

    if-ne p1, v0, :cond_1

    .line 17068
    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 17069
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0J:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 17070
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0J:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getId()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 17071
    :goto_0
    sget v2, Lcom/facebook/ads/redexgen/X/KL;->A0r:I

    sget v1, Lcom/facebook/ads/redexgen/X/KL;->A0r:I

    sget v0, Lcom/facebook/ads/redexgen/X/KL;->A0p:I

    invoke-virtual {v3, v2, v4, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 17072
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0U:Lcom/facebook/ads/redexgen/X/Cw;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Cw;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17073
    return-void

    .line 17074
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0K:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 17075
    :cond_1
    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 17076
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A08:Lcom/facebook/ads/redexgen/X/KE;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KE;->getId()I

    move-result v0

    invoke-virtual {v3, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 17077
    sget v0, Lcom/facebook/ads/redexgen/X/KL;->A0l:I

    invoke-virtual {v3, v4, v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1
.end method

.method private A09(I)V
    .locals 4

    .line 17078
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0Q:Landroid/widget/TextView;

    .line 17079
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 17080
    .local v0, "titleParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0Q:Landroid/widget/TextView;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 17081
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0Q:Landroid/widget/TextView;

    const/high16 v0, 0x41f00000    # 30.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 17082
    const/4 v2, 0x0

    .line 17083
    .local v1, "horizontalMargin":I
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 17084
    sget v2, Lcom/facebook/ads/redexgen/X/KL;->A0r:I

    .line 17085
    :cond_0
    sget v1, Lcom/facebook/ads/redexgen/X/KL;->A0l:I

    const/4 v0, 0x0

    invoke-virtual {v3, v2, v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 17086
    const/16 v0, 0xe

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17087
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A09:Lcom/facebook/ads/redexgen/X/aK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aK;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 17088
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0Q:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17089
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0P:Landroid/widget/TextView;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 17090
    return-void
.end method

.method private A0A(Landroid/widget/TextView;I)V
    .locals 7

    .line 17091
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 17092
    .end local v0
    :cond_0
    return-void

    .line 17093
    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 17094
    .local v0, "textViewParam":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v6, 0x1

    const/4 v5, 0x5

    const/4 v3, 0x3

    sget-object v1, Lcom/facebook/ads/redexgen/X/5r;->A00:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1e

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/5r;->A00:[Ljava/lang/String;

    const-string v1, "MzAm3HoD6orDxlJQlGTEx6IPe7UcdOUI"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const/4 v0, 0x2

    if-ne p2, v6, :cond_3

    .line 17095
    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 17096
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0J:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 17097
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0J:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    invoke-virtual {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 17098
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0U:Lcom/facebook/ads/redexgen/X/Cw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Cw;->getId()I

    move-result v0

    invoke-virtual {v4, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 17099
    :goto_1
    sget v1, Lcom/facebook/ads/redexgen/X/KL;->A0u:I

    const/4 v0, 0x0

    invoke-virtual {v4, v0, v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 17100
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17101
    return-void

    .line 17102
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KL;->A0K:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getId()I

    move-result v1

    invoke-virtual {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 17103
    :cond_3
    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/5r;->A00:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_4

    .line 17104
    sget-object v2, Lcom/facebook/ads/redexgen/X/5r;->A00:[Ljava/lang/String;

    const-string v1, "7zj9JJJnjsPUDa1S35qln"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 17105
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0U:Lcom/facebook/ads/redexgen/X/Cw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Cw;->getId()I

    move-result v0

    invoke-virtual {v4, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    .line 17106
    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/5r;->A00:[Ljava/lang/String;

    const-string v1, "ItVyc3UmcGyu1CZchDJaM"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 17107
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0U:Lcom/facebook/ads/redexgen/X/Cw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Cw;->getId()I

    move-result v0

    invoke-virtual {v4, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A0h(I)V
    .locals 3

    .line 17108
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/KL;->A0h(I)V

    .line 17109
    const/16 v0, 0x9

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

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0U:Lcom/facebook/ads/redexgen/X/Cw;

    aput-object v0, v2, v1

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A04:Landroid/widget/TextView;

    aput-object v0, v2, v1

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0P:Landroid/widget/TextView;

    aput-object v0, v2, v1

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0K:Landroid/widget/LinearLayout;

    aput-object v0, v2, v1

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0J:Landroid/widget/ImageView;

    aput-object v0, v2, v1

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0I:Landroid/widget/ImageView;

    aput-object v0, v2, v1

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/XP;->A0Z([Landroid/view/View;)V

    .line 17110
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5r;->A00()V

    .line 17111
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/5r;->A07(I)V

    .line 17112
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A04:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/5r;->A0A(Landroid/widget/TextView;I)V

    .line 17113
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/5r;->A08(I)V

    .line 17114
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/5r;->A04(I)V

    .line 17115
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/5r;->A03(I)V

    .line 17116
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/5r;->A09(I)V

    .line 17117
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/5r;->A06(I)V

    .line 17118
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/5r;->A02(I)V

    .line 17119
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/5r;->A05(I)V

    .line 17120
    return-void
.end method

.method public final A0q(I)V
    .locals 0

    .line 17121
    return-void
.end method

.method public final A0s(Landroid/view/ViewGroup;Landroid/widget/RelativeLayout;I)V
    .locals 3

    .line 17122
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 17123
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A09:Lcom/facebook/ads/redexgen/X/aK;

    .line 17124
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aK;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 17125
    .local v0, "imageParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x3

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getId()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 17126
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A09:Lcom/facebook/ads/redexgen/X/aK;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/aK;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17127
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A09:Lcom/facebook/ads/redexgen/X/aK;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 17128
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0Q:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 17129
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KL;->A0P:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 17130
    .end local v0    # "imageParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    invoke-direct {p0, p3}, Lcom/facebook/ads/redexgen/X/5r;->A01(I)V

    .line 17131
    return-void
.end method
