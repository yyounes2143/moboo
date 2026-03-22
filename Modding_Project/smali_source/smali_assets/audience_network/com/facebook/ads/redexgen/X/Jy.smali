.class public final Lcom/facebook/ads/redexgen/X/Jy;
.super Lcom/facebook/ads/redexgen/X/Zv;
.source ""


# static fields
.field public static A0J:[B

.field public static A0K:[Ljava/lang/String;

.field public static final A0L:I

.field public static final A0M:I

.field public static final A0N:I

.field public static final A0O:I

.field public static final A0P:I

.field public static final A0Q:I

.field public static final A0R:I

.field public static final A0S:I

.field public static final A0T:I

.field public static final A0U:I

.field public static final A0V:I


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Landroid/widget/LinearLayout;

.field public A03:Landroid/widget/TextView;

.field public A04:Landroid/widget/TextView;

.field public A05:Landroid/widget/TextView;

.field public A06:Lcom/facebook/ads/redexgen/X/Mw;

.field public A07:Lcom/facebook/ads/redexgen/X/My;

.field public A08:Lcom/facebook/ads/redexgen/X/Mz;

.field public A09:Lcom/facebook/ads/redexgen/X/aM;

.field public A0A:Z

.field public A0B:Z

.field public A0C:Z

.field public final A0D:Landroid/widget/LinearLayout;

.field public final A0E:Landroid/widget/RelativeLayout;

.field public final A0F:Landroid/widget/RelativeLayout;

.field public final A0G:Landroid/widget/TextView;

.field public final A0H:Lcom/facebook/ads/redexgen/X/dL;

.field public final A0I:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 880
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "U1MfpI1C6bH5E6SUUi1isARh9jp"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "U"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Ubu5RVHkDHh3GnMyAX4EkYenDqWvQs6J"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Crj7vvGLMnYJtX1VpNFn8xcnVkyg9fPV"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "3oNG9AhO9bk5LTGV0GcEQxoD"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "h"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "kfjfnNCZtD"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "orAcnrCTNYiJWv2aZLW"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Jy;->A0K:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Jy;->A09()V

    const/4 v1, -0x1

    const/16 v0, 0x4d

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/OP;->A02(II)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/Jy;->A0U:I

    .line 881
    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    const/high16 v2, 0x41400000    # 12.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Jy;->A0O:I

    .line 882
    const/high16 v1, 0x41000000    # 8.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Jy;->A0P:I

    .line 883
    const/high16 v1, 0x41d00000    # 26.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Jy;->A0L:I

    .line 884
    const/high16 v1, 0x43100000    # 144.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Jy;->A0N:I

    .line 885
    const/high16 v1, 0x42400000    # 48.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Jy;->A0M:I

    .line 886
    const/high16 v1, 0x41800000    # 16.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Jy;->A0Q:I

    .line 887
    const/high16 v1, 0x41600000    # 14.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Jy;->A0V:I

    .line 888
    const/high16 v1, 0x41a80000    # 21.0f

    sget v0, Lcom/facebook/ads/redexgen/X/OE;->A08:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Jy;->A0R:I

    .line 889
    sget v0, Lcom/facebook/ads/redexgen/X/OE;->A08:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Jy;->A0S:I

    .line 890
    const/high16 v1, 0x41200000    # 10.0f

    sget v0, Lcom/facebook/ads/redexgen/X/OE;->A08:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Jy;->A0T:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/KE;IZLcom/facebook/ads/redexgen/X/My;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/eX;Lcom/facebook/ads/redexgen/X/XH;Lcom/facebook/ads/redexgen/X/N3;ZLjava/lang/String;Z)V
    .locals 18

    .line 47333
    move-object/from16 v2, p0

    move-object v2, v2

    move-object v4, v2

    move-object/from16 v17, p14

    move/from16 v16, p13

    move-object/from16 v15, p12

    move-object/from16 v14, p11

    move-object/from16 v13, p10

    move-object/from16 v12, p9

    move-object/from16 v11, p8

    move-object/from16 v10, p7

    move/from16 v9, p6

    move-object/from16 v8, p5

    move/from16 v7, p3

    move-object/from16 v6, p2

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v17}, Lcom/facebook/ads/redexgen/X/Zv;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/KE;ILcom/facebook/ads/redexgen/X/My;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/eX;Lcom/facebook/ads/redexgen/X/XH;Lcom/facebook/ads/redexgen/X/N3;ZLjava/lang/String;)V

    .line 47334
    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Jy;->A0C:Z

    .line 47335
    iput v0, v2, Lcom/facebook/ads/redexgen/X/Jy;->A00:I

    .line 47336
    iput v0, v2, Lcom/facebook/ads/redexgen/X/Jy;->A01:I

    .line 47337
    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Jy;->A0A:Z

    .line 47338
    iput-object v5, v2, Lcom/facebook/ads/redexgen/X/Jy;->A0H:Lcom/facebook/ads/redexgen/X/dL;

    .line 47339
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Zv;->A09:Lcom/facebook/ads/redexgen/X/aK;

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/aK;->setFullCircleCorners(Z)V

    .line 47340
    sget v4, Lcom/facebook/ads/redexgen/X/Jy;->A0O:I

    sget v3, Lcom/facebook/ads/redexgen/X/Jy;->A0O:I

    sget v1, Lcom/facebook/ads/redexgen/X/Jy;->A0O:I

    sget v0, Lcom/facebook/ads/redexgen/X/Jy;->A0L:I

    invoke-virtual {v2, v4, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Jy;->setPadding(IIII)V

    .line 47341
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Jy;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Jy;->A0E:Landroid/widget/RelativeLayout;

    .line 47342
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Jy;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Jy;->A05:Landroid/widget/TextView;

    .line 47343
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Jy;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Jy;->A02:Landroid/widget/LinearLayout;

    .line 47344
    new-instance v9, Lcom/facebook/ads/redexgen/X/aM;

    iget-object v10, v2, Lcom/facebook/ads/redexgen/X/Jy;->A0H:Lcom/facebook/ads/redexgen/X/dL;

    sget v11, Lcom/facebook/ads/redexgen/X/Jy;->A0V:I

    sget v13, Lcom/facebook/ads/redexgen/X/Jy;->A0U:I

    const/4 v14, -0x1

    const/4 v12, 0x5

    invoke-direct/range {v9 .. v14}, Lcom/facebook/ads/redexgen/X/aM;-><init>(Lcom/facebook/ads/redexgen/X/dL;IIII)V

    iput-object v9, v2, Lcom/facebook/ads/redexgen/X/Jy;->A09:Lcom/facebook/ads/redexgen/X/aM;

    .line 47345
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Jy;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Jy;->A0F:Landroid/widget/RelativeLayout;

    .line 47346
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Jy;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Jy;->A0D:Landroid/widget/LinearLayout;

    .line 47347
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Jy;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Jy;->A04:Landroid/widget/TextView;

    .line 47348
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Jy;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Jy;->A03:Landroid/widget/TextView;

    .line 47349
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/Zv;->A06:Landroid/widget/RelativeLayout;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Jy;->A0E:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 47350
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/Zv;->A06:Landroid/widget/RelativeLayout;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Jy;->A0D:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 47351
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Jy;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Jy;->A0G:Landroid/widget/TextView;

    .line 47352
    iput-object v8, v2, Lcom/facebook/ads/redexgen/X/Jy;->A07:Lcom/facebook/ads/redexgen/X/My;

    .line 47353
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/U7;->A17(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Jy;->A0I:Z

    .line 47354
    invoke-static {v2, v5}, Lcom/facebook/ads/redexgen/X/XP;->A0P(Landroid/view/View;Landroid/content/Context;)V

    .line 47355
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Jy;->A0H:Lcom/facebook/ads/redexgen/X/dL;

    .line 47356
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A2U(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Jy;->A0B:Z

    .line 47357
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Jy;->A0i()V

    .line 47358
    if-eqz p15, :cond_0

    .line 47359
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Jy;->A03:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 47360
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Jy;->A0D:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 47361
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/KE;IZLcom/facebook/ads/redexgen/X/My;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/eX;Lcom/facebook/ads/redexgen/X/XH;Lcom/facebook/ads/redexgen/X/hy;)V
    .locals 16

    .line 47362
    invoke-virtual/range {p12 .. p12}, Lcom/facebook/ads/redexgen/X/hy;->A21()Lcom/facebook/ads/redexgen/X/N3;

    move-result-object v12

    .line 47363
    invoke-virtual/range {p12 .. p12}, Lcom/facebook/ads/redexgen/X/Mo;->A1c()Z

    move-result v13

    .line 47364
    invoke-virtual/range {p12 .. p12}, Lcom/facebook/ads/redexgen/X/Mo;->A0x()Ljava/lang/String;

    move-result-object v14

    .line 47365
    invoke-virtual/range {p12 .. p12}, Lcom/facebook/ads/redexgen/X/Mo;->A1k()Z

    move-result v15

    .line 47366
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v11, p11

    move-object/from16 v10, p10

    move-object/from16 v9, p9

    move-object/from16 v8, p8

    move-object/from16 v7, p7

    move-object/from16 v5, p5

    move/from16 v4, p4

    move/from16 v3, p3

    move-object/from16 v2, p2

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v15}, Lcom/facebook/ads/redexgen/X/Jy;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/KE;IZLcom/facebook/ads/redexgen/X/My;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/eX;Lcom/facebook/ads/redexgen/X/XH;Lcom/facebook/ads/redexgen/X/N3;ZLjava/lang/String;Z)V

    .line 47367
    return-void
.end method

.method private A00(IF)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 47368
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 47369
    .local v0, "drawable":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 47370
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 47371
    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Jy;->A0J:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x5f

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A02()V
    .locals 3

    .line 47372
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zv;->A08:Lcom/facebook/ads/redexgen/X/KE;

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v0, v0, v0}, Lcom/facebook/ads/redexgen/X/KE;->setPadding(IIII)V

    .line 47373
    const/4 v2, -0x1

    sget v0, Lcom/facebook/ads/redexgen/X/Jy;->A0M:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47374
    .local v0, "ctaButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A08:Lcom/facebook/ads/redexgen/X/KE;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/KE;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47375
    return-void
.end method

.method private A03()V
    .locals 7

    .line 47376
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A0D:Landroid/widget/LinearLayout;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 47377
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jy;->A0D:Landroid/widget/LinearLayout;

    sget v0, Lcom/facebook/ads/redexgen/X/Jy;->A0O:I

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v5, v5, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 47378
    const/4 v4, -0x1

    const/4 v3, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 47379
    .local v0, "expandableParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A0E:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 47380
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A0D:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47381
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A0D:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 47382
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jy;->A03:Landroid/widget/TextView;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 47383
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jy;->A03:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 47384
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A03:Landroid/widget/TextView;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 47385
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jy;->A03:Landroid/widget/TextView;

    .line 47386
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A0B:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A07:Lcom/facebook/ads/redexgen/X/My;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/My;->A06(Z)I

    move-result v0

    .line 47387
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47388
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A03:Landroid/widget/TextView;

    invoke-static {v0, v5, v2}, Lcom/facebook/ads/redexgen/X/XP;->A0W(Landroid/widget/TextView;ZI)V

    .line 47389
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A0I:Z

    if-eqz v0, :cond_0

    .line 47390
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47391
    .local v1, "descriptionParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v1    # "descriptionParams":Landroid/widget/LinearLayout$LayoutParams;
    :goto_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jy;->A0D:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A03:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47392
    return-void

    .line 47393
    .end local v1    # "descriptionParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_1

    .line 47394
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private A04()V
    .locals 8

    .line 47395
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A0E:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 47396
    const/4 v4, -0x2

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 47397
    .local v0, "iconAndMetaDataContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Jy;->A0O:I

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 47398
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A0E:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47399
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A0E:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0I(Landroid/view/View;)V

    .line 47400
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Zv;->A04:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A04:I

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 47401
    .local v2, "iconParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 47402
    const/16 v0, 0x9

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 47403
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jy;->A0E:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A09:Lcom/facebook/ads/redexgen/X/aK;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47404
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 47405
    .local v4, "containerParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Jy;->A0P:I

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 47406
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A09:Lcom/facebook/ads/redexgen/X/aK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aK;->getId()I

    move-result v0

    const/4 v7, 0x1

    invoke-virtual {v2, v7, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 47407
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 47408
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jy;->A0E:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A0F:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47409
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A0F:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 47410
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A05:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0I(Landroid/view/View;)V

    .line 47411
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jy;->A05:Landroid/widget/TextView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Zv;->A0B:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47412
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jy;->A05:Landroid/widget/TextView;

    .line 47413
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A0B:Z

    const/4 v3, -0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A07:Lcom/facebook/ads/redexgen/X/My;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/My;->A07(Z)I

    move-result v0

    .line 47414
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47415
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jy;->A05:Landroid/widget/TextView;

    const/16 v0, 0x12

    invoke-static {v1, v7, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0W(Landroid/widget/TextView;ZI)V

    .line 47416
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jy;->A0F:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A05:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 47417
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A02:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 47418
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A02:Landroid/widget/LinearLayout;

    const/16 v6, 0x10

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 47419
    sget v0, Lcom/facebook/ads/redexgen/X/Jy;->A0Q:I

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 47420
    .local v3, "ratingInfoContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Jy;->A0P:I

    div-int/lit8 v0, v0, 0x2

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 47421
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A05:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 47422
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jy;->A0F:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A02:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47423
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A02:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 47424
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A09:Lcom/facebook/ads/redexgen/X/aM;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/aM;->setGravity(I)V

    .line 47425
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47426
    .local p1, "starRatingContainerParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jy;->A02:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A09:Lcom/facebook/ads/redexgen/X/aM;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47427
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jy;->A04:Landroid/widget/TextView;

    .line 47428
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A0B:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A07:Lcom/facebook/ads/redexgen/X/My;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/My;->A07(Z)I

    move-result v0

    .line 47429
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47430
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A04:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 47431
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A04:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 47432
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jy;->A04:Landroid/widget/TextView;

    const/16 v0, 0xe

    invoke-static {v1, v5, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0W(Landroid/widget/TextView;ZI)V

    .line 47433
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47434
    .local v1, "ratingCountParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Jy;->A0P:I

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 47435
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jy;->A02:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A04:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47436
    return-void

    .line 47437
    :cond_0
    const/4 v0, -0x1

    goto :goto_1

    .line 47438
    :cond_1
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method private A05()V
    .locals 4

    .line 47439
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A01:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 47440
    const/4 v0, -0x2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47441
    .local v0, "descriptionTextViewParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zv;->A01:Landroid/widget/TextView;

    sget v0, Lcom/facebook/ads/redexgen/X/Jy;->A0S:I

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 47442
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zv;->A01:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A02:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47443
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zv;->A01:Landroid/widget/TextView;

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47444
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zv;->A01:Landroid/widget/TextView;

    const/16 v0, 0xf

    invoke-static {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0W(Landroid/widget/TextView;ZI)V

    .line 47445
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A01:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47446
    .end local v0    # "descriptionTextViewParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method private A06()V
    .locals 6

    .line 47447
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A00:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 47448
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A00:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 47449
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zv;->A00:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 47450
    const/4 v1, -0x2

    const/4 v0, -0x1

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47451
    .local v0, "containerParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v2, Lcom/facebook/ads/redexgen/X/Jy;->A0R:I

    sget v1, Lcom/facebook/ads/redexgen/X/Jy;->A0R:I

    const/4 v0, 0x0

    invoke-virtual {v5, v0, v2, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 47452
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zv;->A00:Landroid/widget/LinearLayout;

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 47453
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Zv;->A00:Landroid/widget/LinearLayout;

    sget v3, Lcom/facebook/ads/redexgen/X/Jy;->A0S:I

    sget v2, Lcom/facebook/ads/redexgen/X/Jy;->A0S:I

    sget v1, Lcom/facebook/ads/redexgen/X/Jy;->A0S:I

    sget v0, Lcom/facebook/ads/redexgen/X/Jy;->A0S:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 47454
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A00:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47455
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Zv;->A00:Landroid/widget/LinearLayout;

    sget v0, Lcom/facebook/ads/redexgen/X/Jy;->A0T:I

    int-to-float v1, v0

    .line 47456
    const v0, -0x42d2d2d3

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Jy;->A00(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 47457
    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0Q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 47458
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Jy;->A05()V

    .line 47459
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Jy;->A02()V

    .line 47460
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A01:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 47461
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zv;->A00:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A01:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 47462
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zv;->A00:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A08:Lcom/facebook/ads/redexgen/X/KE;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 47463
    .end local v0    # "containerParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method private A07()V
    .locals 4

    .line 47464
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A0G:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 47465
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jy;->A0G:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 47466
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jy;->A0G:Landroid/widget/TextView;

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 47467
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jy;->A0G:Landroid/widget/TextView;

    .line 47468
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A0B:Z

    const/4 v3, -0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A07:Lcom/facebook/ads/redexgen/X/My;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/My;->A07(Z)I

    move-result v0

    .line 47469
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47470
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A0G:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 47471
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Jy;->A0G:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0W(Landroid/widget/TextView;ZI)V

    .line 47472
    const/4 v2, -0x2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47473
    .local v0, "socialContextParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A0I:Z

    if-eqz v0, :cond_0

    .line 47474
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47475
    :goto_1
    sget v0, Lcom/facebook/ads/redexgen/X/Jy;->A0O:I

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 47476
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A0G:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47477
    return-void

    .line 47478
    :cond_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_1

    .line 47479
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private A08()V
    .locals 5

    .line 47480
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A06:Lcom/facebook/ads/redexgen/X/Mw;

    if-nez v0, :cond_0

    .line 47481
    return-void

    .line 47482
    :cond_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Jy;->A05:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Jy;->A06:Lcom/facebook/ads/redexgen/X/Mw;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Jy;->A0K:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6e

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/Jy;->A0K:[Ljava/lang/String;

    const-string v1, "SIvKbfulzllrpdkfdrym2tho7PogZ3oV"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Mw;->A0F()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47483
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jy;->A03:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A06:Lcom/facebook/ads/redexgen/X/Mw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mw;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47484
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jy;->A0G:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A06:Lcom/facebook/ads/redexgen/X/Mw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mw;->A0D()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47485
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A08:Lcom/facebook/ads/redexgen/X/Mz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mz;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47486
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A08:Lcom/facebook/ads/redexgen/X/KE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0F(Landroid/view/View;)V

    .line 47487
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A06:Lcom/facebook/ads/redexgen/X/Mw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mw;->A0D()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47488
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A0G:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0F(Landroid/view/View;)V

    .line 47489
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A06:Lcom/facebook/ads/redexgen/X/Mw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mw;->A0B()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 47490
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jy;->A02:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 47491
    :cond_3
    :goto_0
    return-void

    .line 47492
    :cond_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jy;->A02:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 47493
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jy;->A09:Lcom/facebook/ads/redexgen/X/aM;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A06:Lcom/facebook/ads/redexgen/X/Mw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mw;->A0B()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/aM;->setRating(F)V

    .line 47494
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A06:Lcom/facebook/ads/redexgen/X/Mw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mw;->A08()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 47495
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Jy;->A04:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 47496
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A06:Lcom/facebook/ads/redexgen/X/Mw;

    .line 47497
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mw;->A08()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x1

    const/4 v1, 0x1

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jy;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47498
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A09()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Jy;->A0J:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x50t
        -0x40t
    .end array-data
.end method

.method private final A0A()V
    .locals 5

    .line 47499
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Jy;->setWeightSum(F)V

    .line 47500
    const/4 v3, 0x0

    const/4 v4, -0x2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47501
    .local v0, "auxContainerParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A03:Z

    if-nez v0, :cond_2

    const/high16 v0, 0x40800000    # 4.0f

    :goto_0
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 47502
    sget v1, Lcom/facebook/ads/redexgen/X/Jy;->A0L:I

    sget v0, Lcom/facebook/ads/redexgen/X/Jy;->A0O:I

    sub-int/2addr v1, v0

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 47503
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A06:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47504
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A06:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0H(Landroid/view/View;)V

    .line 47505
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A06:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Jy;->addView(Landroid/view/View;)V

    .line 47506
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A03:Z

    if-nez v0, :cond_1

    .line 47507
    sget v0, Lcom/facebook/ads/redexgen/X/Jy;->A0M:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47508
    .local v2, "ctaButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Jy;->A0L:I

    div-int/lit8 v0, v0, 0x2

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 47509
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 47510
    const/16 v0, 0x50

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 47511
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A08:Lcom/facebook/ads/redexgen/X/KE;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/KE;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47512
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zv;->A08:Lcom/facebook/ads/redexgen/X/KE;

    sget v0, Lcom/facebook/ads/redexgen/X/Jy;->A0N:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/KE;->setMinWidth(I)V

    .line 47513
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A08:Lcom/facebook/ads/redexgen/X/KE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0H(Landroid/view/View;)V

    .line 47514
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A08:Lcom/facebook/ads/redexgen/X/KE;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Jy;->addView(Landroid/view/View;)V

    .line 47515
    .end local v2    # "ctaButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A0G:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0H(Landroid/view/View;)V

    .line 47516
    const/4 v0, -0x1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47517
    .local v2, "socialContextParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 47518
    sget v0, Lcom/facebook/ads/redexgen/X/Jy;->A0P:I

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 47519
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jy;->A0D:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A0G:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47520
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A0D:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 47521
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jy;->A0G:Landroid/widget/TextView;

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 47522
    return-void

    .line 47523
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A00:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 47524
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47525
    .local v2, "rewardContainerLayoutParam":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 47526
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A00:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47527
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A00:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    goto :goto_1

    .line 47528
    :cond_2
    const/high16 v0, 0x40400000    # 3.0f

    goto/16 :goto_0
.end method

.method private final A0B()V
    .locals 4

    .line 47529
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zv;->A06:Landroid/widget/RelativeLayout;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Zv;->A0B:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47530
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Jy;->A04()V

    .line 47531
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Jy;->A03()V

    .line 47532
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A03:Z

    if-nez v0, :cond_4

    .line 47533
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Jy;->A02()V

    .line 47534
    :goto_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Jy;->A07()V

    .line 47535
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Jy;->A08()V

    .line 47536
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A06:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0H(Landroid/view/View;)V

    .line 47537
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A03:Z

    if-nez v0, :cond_0

    .line 47538
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Zv;->A08:Lcom/facebook/ads/redexgen/X/KE;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Jy;->A0K:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/Jy;->A0K:[Ljava/lang/String;

    const-string v1, "AjTT"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/XP;->A0H(Landroid/view/View;)V

    .line 47539
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A06:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Jy;->addView(Landroid/view/View;)V

    .line 47540
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A03:Z

    if-nez v0, :cond_3

    .line 47541
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Zv;->A08:Lcom/facebook/ads/redexgen/X/KE;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Jy;->A0K:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x18

    if-eq v1, v0, :cond_2

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/Jy;->addView(Landroid/view/View;)V

    .line 47542
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A0G:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0H(Landroid/view/View;)V

    .line 47543
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A0G:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Jy;->addView(Landroid/view/View;)V

    .line 47544
    return-void

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Jy;->A0K:[Ljava/lang/String;

    const-string v1, "rq1KML2CIBWnAolyigIp8Fd7"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/Jy;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 47545
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A00:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 47546
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A00:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Jy;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 47547
    :cond_4
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Jy;->A06()V

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A0g()V
    .locals 2

    .line 47548
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Zv;->A0g()V

    .line 47549
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jy;->A09:Lcom/facebook/ads/redexgen/X/aM;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A05:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/aM;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47550
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jy;->A0G:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A05:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47551
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jy;->A04:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A05:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47552
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jy;->A03:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A05:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47553
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jy;->A05:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zv;->A05:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47554
    return-void
.end method

.method public final A0h(I)V
    .locals 1

    .line 47555
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A0A:Z

    .line 47556
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A0A:Z

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Jy;->setOrientation(I)V

    .line 47557
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jy;->A0i()V

    .line 47558
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jy;->bringToFront()V

    .line 47559
    return-void

    .line 47560
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0i()V
    .locals 1

    .line 47561
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jy;->removeAllViews()V

    .line 47562
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A0A:Z

    if-eqz v0, :cond_0

    .line 47563
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Jy;->A0B()V

    .line 47564
    :goto_0
    return-void

    .line 47565
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Jy;->A0A()V

    goto :goto_0
.end method

.method public final getExpandableLayout()Landroid/view/View;
    .locals 1

    .line 47566
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A0D:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public final onLayout(ZIIII)V
    .locals 1

    .line 47567
    invoke-super/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/Zv;->onLayout(ZIIII)V

    .line 47568
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A00:I

    if-nez v0, :cond_0

    .line 47569
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A03:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A00:I

    .line 47570
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A0G:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A01:I

    .line 47571
    :cond_0
    return-void
.end method

.method public setInfo(Lcom/facebook/ads/redexgen/X/Mw;Lcom/facebook/ads/redexgen/X/Mz;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Wv;Lcom/facebook/ads/redexgen/X/a4;)V
    .locals 0

    .line 47572
    invoke-super/range {p0 .. p6}, Lcom/facebook/ads/redexgen/X/Zv;->setInfo(Lcom/facebook/ads/redexgen/X/Mw;Lcom/facebook/ads/redexgen/X/Mz;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Wv;Lcom/facebook/ads/redexgen/X/a4;)V

    .line 47573
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Jy;->A06:Lcom/facebook/ads/redexgen/X/Mw;

    .line 47574
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Jy;->A08:Lcom/facebook/ads/redexgen/X/Mz;

    .line 47575
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Jy;->A08()V

    .line 47576
    return-void
.end method

.method public setTitleMaxLines(I)V
    .locals 2

    .line 47577
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jy;->A05:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 47578
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jy;->A05:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 47579
    return-void
.end method
