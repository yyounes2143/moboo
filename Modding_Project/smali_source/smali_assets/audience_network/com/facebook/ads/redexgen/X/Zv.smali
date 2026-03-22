.class public abstract Lcom/facebook/ads/redexgen/X/Zv;
.super Landroid/widget/LinearLayout;
.source ""


# static fields
.field public static A0A:[B

.field public static final A0B:Landroid/widget/LinearLayout$LayoutParams;


# instance fields
.field public A00:Landroid/widget/LinearLayout;

.field public A01:Landroid/widget/TextView;

.field public A02:Ljava/lang/String;

.field public A03:Z

.field public final A04:I

.field public final A05:Landroid/view/View$OnClickListener;

.field public final A06:Landroid/widget/RelativeLayout;

.field public final A07:Lcom/facebook/ads/redexgen/X/dL;

.field public final A08:Lcom/facebook/ads/redexgen/X/KE;

.field public final A09:Lcom/facebook/ads/redexgen/X/aK;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 2473
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Zv;->A0e()V

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Zv;->A0B:Landroid/widget/LinearLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/KE;ILcom/facebook/ads/redexgen/X/My;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/eX;Lcom/facebook/ads/redexgen/X/XH;Lcom/facebook/ads/redexgen/X/N3;ZLjava/lang/String;)V
    .locals 16

    .line 75469
    move-object/from16 v3, p0

    move-object v4, v3

    move-object/from16 v5, p1

    invoke-direct {v3, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 75470
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zv;->A0d(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/Zv;->A02:Ljava/lang/String;

    .line 75471
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/XP;->A0I(Landroid/view/View;)V

    .line 75472
    iput-object v5, v4, Lcom/facebook/ads/redexgen/X/Zv;->A07:Lcom/facebook/ads/redexgen/X/dL;

    .line 75473
    move/from16 v0, p3

    iput v0, v4, Lcom/facebook/ads/redexgen/X/Zv;->A04:I

    .line 75474
    move/from16 v2, p12

    iput-boolean v2, v4, Lcom/facebook/ads/redexgen/X/Zv;->A03:Z

    .line 75475
    move-object/from16 v0, p13

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/Zv;->A02:Ljava/lang/String;

    .line 75476
    new-instance v0, Lcom/facebook/ads/redexgen/X/aK;

    invoke-direct {v0, v5}, Lcom/facebook/ads/redexgen/X/aK;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/Zv;->A09:Lcom/facebook/ads/redexgen/X/aK;

    .line 75477
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Zv;->A09:Lcom/facebook/ads/redexgen/X/aK;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0K(Landroid/view/View;I)V

    .line 75478
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Zv;->A09:Lcom/facebook/ads/redexgen/X/aK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0I(Landroid/view/View;)V

    .line 75479
    if-eqz v2, :cond_0

    .line 75480
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/Zv;->A00:Landroid/widget/LinearLayout;

    .line 75481
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/Zv;->A01:Landroid/widget/TextView;

    .line 75482
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Zv;->A01:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0I(Landroid/view/View;)V

    .line 75483
    :cond_0
    move-object/from16 v0, p2

    if-eqz v0, :cond_1

    .line 75484
    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/Zv;->A08:Lcom/facebook/ads/redexgen/X/KE;

    .line 75485
    :goto_0
    const/16 v1, 0x3e9

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Zv;->A08:Lcom/facebook/ads/redexgen/X/KE;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0E(ILandroid/view/View;)V

    .line 75486
    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/Zv;->A08:Lcom/facebook/ads/redexgen/X/KE;

    .line 75487
    const/4 v2, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zv;->A0d(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/aV;->A03(Lcom/facebook/ads/redexgen/X/KE;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/aU;

    move-result-object v0

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/Zv;->A05:Landroid/view/View$OnClickListener;

    .line 75488
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/Zv;->A06:Landroid/widget/RelativeLayout;

    .line 75489
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Zv;->A06:Landroid/widget/RelativeLayout;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Zv;->A0B:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75490
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Zv;->A06:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0I(Landroid/view/View;)V

    .line 75491
    return-void

    .line 75492
    :cond_1
    new-instance v6, Lcom/facebook/ads/redexgen/X/KE;

    move-object v7, v5

    move-object v0, v6

    move-object/from16 v15, p11

    move-object/from16 v14, p10

    move-object/from16 v13, p9

    move-object/from16 v12, p8

    move-object/from16 v11, p7

    move-object/from16 v8, p6

    move/from16 v10, p5

    move-object/from16 v9, p4

    invoke-direct/range {v6 .. v15}, Lcom/facebook/ads/redexgen/X/KE;-><init>(Lcom/facebook/ads/redexgen/X/dL;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/My;ZLcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/eX;Lcom/facebook/ads/redexgen/X/XH;Lcom/facebook/ads/redexgen/X/N3;)V

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/Zv;->A08:Lcom/facebook/ads/redexgen/X/KE;

    goto :goto_0
.end method

.method public static A0d(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Zv;->A0A:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0xb

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0e()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Zv;->A0A:[B

    return-void

    :array_0
    .array-data 1
        -0x60t
        -0x5dt
        -0x5dt
        -0x5ct
        -0x4dt
        -0x60t
        -0x58t
        -0x55t
        -0x4et
    .end array-data
.end method


# virtual methods
.method public A0f()V
    .locals 0

    .line 75493
    return-void
.end method

.method public A0g()V
    .locals 2

    .line 75494
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zv;->A09:Lcom/facebook/ads/redexgen/X/aK;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A05:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/aK;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75495
    return-void
.end method

.method public abstract A0h(I)V
.end method

.method public final getCTAButton()Lcom/facebook/ads/redexgen/X/KE;
    .locals 1

    .line 75496
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A08:Lcom/facebook/ads/redexgen/X/KE;

    return-object v0
.end method

.method public getExpandableLayout()Landroid/view/View;
    .locals 1

    .line 75497
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getIconView()Landroid/widget/ImageView;
    .locals 1

    .line 75498
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A09:Lcom/facebook/ads/redexgen/X/aK;

    return-object v0
.end method

.method public setInfo(Lcom/facebook/ads/redexgen/X/Mw;Lcom/facebook/ads/redexgen/X/Mz;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Wv;Lcom/facebook/ads/redexgen/X/a4;)V
    .locals 6

    .line 75499
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A08:Lcom/facebook/ads/redexgen/X/KE;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v5, p6

    move-object v4, p5

    move-object v2, p3

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/KE;->setCta(Lcom/facebook/ads/redexgen/X/Mz;Ljava/lang/String;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/Wv;Lcom/facebook/ads/redexgen/X/a4;)V

    .line 75500
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zv;->A09:Lcom/facebook/ads/redexgen/X/aK;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A07:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v2, Lcom/facebook/ads/redexgen/X/KZ;

    invoke-direct {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/dL;)V

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Zv;->A04:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A04:I

    .line 75501
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A05(II)Lcom/facebook/ads/redexgen/X/KZ;

    move-result-object v0

    .line 75502
    invoke-virtual {v0, p4}, Lcom/facebook/ads/redexgen/X/KZ;->A07(Ljava/lang/String;)V

    .line 75503
    return-void
.end method

.method public setTitleMaxLines(I)V
    .locals 0

    .line 75504
    return-void
.end method
