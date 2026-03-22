.class public final Lcom/facebook/ads/redexgen/X/Mn;
.super Lcom/facebook/ads/redexgen/X/Zv;
.source ""


# static fields
.field public static final A02:I

.field public static final A03:I

.field public static final A04:I

.field public static final A05:I


# instance fields
.field public final A00:Landroid/widget/TextView;

.field public final A01:Landroid/widget/TextView;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1378
    const/high16 v1, 0x42100000    # 36.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Mn;->A02:I

    .line 1379
    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Mn;->A05:I

    .line 1380
    const/high16 v1, 0x41000000    # 8.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Mn;->A03:I

    .line 1381
    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Mn;->A04:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;ILcom/facebook/ads/redexgen/X/My;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/eX;Lcom/facebook/ads/redexgen/X/XH;Lcom/facebook/ads/redexgen/X/N3;)V
    .locals 18

    .line 52663
    move-object/from16 v3, p0

    move-object v3, v3

    const/16 v16, 0x0

    const-string v17, ""

    const/4 v6, 0x0

    move-object v4, v3

    move-object/from16 v15, p10

    move-object/from16 v14, p9

    move-object/from16 v13, p8

    move-object/from16 v12, p7

    move-object/from16 v11, p6

    move-object/from16 v10, p5

    move/from16 v9, p4

    move-object/from16 v8, p3

    move/from16 v7, p2

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v17}, Lcom/facebook/ads/redexgen/X/Zv;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/KE;ILcom/facebook/ads/redexgen/X/My;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/eX;Lcom/facebook/ads/redexgen/X/XH;Lcom/facebook/ads/redexgen/X/N3;ZLjava/lang/String;)V

    .line 52664
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/facebook/ads/redexgen/X/Mn;->setOrientation(I)V

    .line 52665
    sget v4, Lcom/facebook/ads/redexgen/X/Mn;->A05:I

    sget v2, Lcom/facebook/ads/redexgen/X/Mn;->A05:I

    sget v1, Lcom/facebook/ads/redexgen/X/Mn;->A05:I

    sget v0, Lcom/facebook/ads/redexgen/X/Mn;->A05:I

    invoke-virtual {v3, v4, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Mn;->setPadding(IIII)V

    .line 52666
    const/16 v2, 0xd

    const/4 v1, 0x1

    const v0, -0xfafafb

    invoke-direct {v3, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Mn;->A01(IIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/Mn;->A01:Landroid/widget/TextView;

    .line 52667
    const v1, -0x9a9895

    const/16 v0, 0xc

    invoke-direct {v3, v1, v0, v6}, Lcom/facebook/ads/redexgen/X/Mn;->A01(IIZ)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/Mn;->A00:Landroid/widget/TextView;

    .line 52668
    invoke-direct {v3, v7}, Lcom/facebook/ads/redexgen/X/Mn;->A00(I)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 52669
    .local v2, "iconAndMetaDataContainer":Landroid/widget/LinearLayout;
    iget-object v2, v3, Lcom/facebook/ads/redexgen/X/Zv;->A06:Landroid/widget/RelativeLayout;

    const/4 v1, -0x1

    const/4 v4, -0x2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52670
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 52671
    .local v3, "auxContainerParams":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 52672
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Zv;->A06:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0, v1}, Lcom/facebook/ads/redexgen/X/Mn;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52673
    iget-object v2, v3, Lcom/facebook/ads/redexgen/X/Zv;->A08:Lcom/facebook/ads/redexgen/X/KE;

    sget v1, Lcom/facebook/ads/redexgen/X/Mn;->A03:I

    sget v0, Lcom/facebook/ads/redexgen/X/Mn;->A03:I

    invoke-virtual {v2, v1, v6, v0, v6}, Lcom/facebook/ads/redexgen/X/KE;->setPadding(IIII)V

    .line 52674
    sget v0, Lcom/facebook/ads/redexgen/X/Mn;->A02:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 52675
    .local v0, "ctaButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0x11

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 52676
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Zv;->A08:Lcom/facebook/ads/redexgen/X/KE;

    invoke-virtual {v3, v0, v1}, Lcom/facebook/ads/redexgen/X/Mn;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52677
    return-void
.end method

.method private A00(I)Landroid/widget/LinearLayout;
    .locals 5

    .line 52678
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A07:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 52679
    .local v0, "metaDataContainer":Landroid/widget/LinearLayout;
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 52680
    sget v1, Lcom/facebook/ads/redexgen/X/Mn;->A04:I

    sget v0, Lcom/facebook/ads/redexgen/X/Mn;->A04:I

    const/4 v2, 0x0

    invoke-virtual {v4, v1, v2, v0, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 52681
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Mn;->A01:Landroid/widget/TextView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Zv;->A0B:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52682
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Mn;->A00:Landroid/widget/TextView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Zv;->A0B:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52683
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A07:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 52684
    .local v1, "iconAndMetaDataContainer":Landroid/widget/LinearLayout;
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 52685
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zv;->A09:Lcom/facebook/ads/redexgen/X/aK;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52686
    const/4 v2, -0x1

    const/4 v0, -0x2

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 52687
    .local v2, "iconAndMetaDataParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0x10

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 52688
    invoke-virtual {v3, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52689
    return-object v3
.end method

.method private A01(IIZ)Landroid/widget/TextView;
    .locals 2

    .line 52690
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A07:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 52691
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52692
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 52693
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 52694
    invoke-static {v1, p3, p2}, Lcom/facebook/ads/redexgen/X/XP;->A0W(Landroid/widget/TextView;ZI)V

    .line 52695
    return-object v1
.end method


# virtual methods
.method public final A0g()V
    .locals 1

    .line 52696
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Zv;->A0g()V

    .line 52697
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A05:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Mn;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52698
    return-void
.end method

.method public final A0h(I)V
    .locals 0

    .line 52699
    return-void
.end method

.method public setInfo(Lcom/facebook/ads/redexgen/X/Mw;Lcom/facebook/ads/redexgen/X/Mz;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Wv;Lcom/facebook/ads/redexgen/X/a4;)V
    .locals 2

    .line 52700
    invoke-super/range {p0 .. p6}, Lcom/facebook/ads/redexgen/X/Zv;->setInfo(Lcom/facebook/ads/redexgen/X/Mw;Lcom/facebook/ads/redexgen/X/Mz;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Wv;Lcom/facebook/ads/redexgen/X/a4;)V

    .line 52701
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Mn;->A01:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Mw;->A0F()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52702
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Mn;->A00:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Mw;->A0E()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52703
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Mz;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52704
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A08:Lcom/facebook/ads/redexgen/X/KE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0F(Landroid/view/View;)V

    .line 52705
    :cond_0
    return-void
.end method
