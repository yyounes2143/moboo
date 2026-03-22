.class public final Lcom/facebook/ads/redexgen/X/KI;
.super Lcom/facebook/ads/redexgen/X/OE;
.source ""


# static fields
.field public static A07:[B

.field public static A08:[Ljava/lang/String;

.field public static final A09:I

.field public static final A0A:I

.field public static final A0B:I

.field public static final A0C:I

.field public static final A0D:I


# instance fields
.field public final A00:Landroid/widget/LinearLayout;

.field public final A01:Landroid/widget/RelativeLayout;

.field public final A02:Lcom/facebook/ads/redexgen/X/hy;

.field public final A03:Lcom/facebook/ads/redexgen/X/dL;

.field public final A04:Lcom/facebook/ads/redexgen/X/US;

.field public final A05:Lcom/facebook/ads/redexgen/X/XH;

.field public final A06:Lcom/facebook/ads/redexgen/X/Xn;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 919
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "YL1yLKFo15UZj59z8sTirpPX5rRsAE8"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "O"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "O6aHciR8nIcXgMvSQpLVacnv7HWgT320"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "WCwGMxKVAM83NNo23MC3P4tNfApW0jy"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "jLj4WTNtvai9N9Pzwov0sYarXBGRxB6J"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "t8UiaIyNKCcrJZePb4XsdzT37H29Zzi"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ckjPU6sQ4thPoQS3sFeS4HnUH"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, ""

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/KI;->A08:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/KI;->A03()V

    const/high16 v1, 0x41400000    # 12.0f

    sget v0, Lcom/facebook/ads/redexgen/X/OE;->A08:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/KI;->A0C:I

    .line 920
    const/high16 v1, 0x42a80000    # 84.0f

    sget v0, Lcom/facebook/ads/redexgen/X/OE;->A08:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/KI;->A0D:I

    .line 921
    const/high16 v1, 0x41600000    # 14.0f

    sget v0, Lcom/facebook/ads/redexgen/X/OE;->A08:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/KI;->A0B:I

    .line 922
    const/high16 v1, 0x41000000    # 8.0f

    sget v0, Lcom/facebook/ads/redexgen/X/OE;->A08:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/KI;->A09:I

    .line 923
    const/4 v1, -0x1

    const/16 v0, 0x4d

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/OP;->A02(II)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/KI;->A0A:I

    .line 924
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/Xn;)V
    .locals 4

    .line 48285
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/OE;-><init>(Landroid/content/Context;)V

    .line 48286
    new-instance v0, Lcom/facebook/ads/redexgen/X/XH;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/XH;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KI;->A05:Lcom/facebook/ads/redexgen/X/XH;

    .line 48287
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/KI;->A03:Lcom/facebook/ads/redexgen/X/dL;

    .line 48288
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/KI;->A02:Lcom/facebook/ads/redexgen/X/hy;

    .line 48289
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/KI;->A04:Lcom/facebook/ads/redexgen/X/US;

    .line 48290
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/KI;->A06:Lcom/facebook/ads/redexgen/X/Xn;

    .line 48291
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KI;->A05:Lcom/facebook/ads/redexgen/X/XH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XH;->A05()V

    .line 48292
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/OE;->setRadius(F)V

    .line 48293
    const/high16 v0, 0x42960000    # 75.0f

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/OE;->setMaxCardElevation(F)V

    .line 48294
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KI;->A01:Landroid/widget/RelativeLayout;

    .line 48295
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KI;->A01:Landroid/widget/RelativeLayout;

    .line 48296
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ms;->A08()Ljava/lang/String;

    move-result-object v0

    .line 48297
    invoke-static {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/aR;->A00(Lcom/facebook/ads/redexgen/X/dL;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 48298
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KI;->A03:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KI;->A00:Landroid/widget/LinearLayout;

    .line 48299
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KI;->A00:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 48300
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KI;->A02()V

    .line 48301
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KI;->A01()V

    .line 48302
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/KI;->A01:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KI;->A00:Landroid/widget/LinearLayout;

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48303
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KI;->A01:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/KI;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48304
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/KI;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x41

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A01()V
    .locals 15

    .line 48305
    new-instance v5, Lcom/facebook/ads/redexgen/X/KE;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/KI;->A03:Lcom/facebook/ads/redexgen/X/dL;

    sget-object v0, Lcom/facebook/ads/redexgen/X/dh;->A04:Lcom/facebook/ads/redexgen/X/dh;

    .line 48306
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dh;->A03()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KI;->A02:Lcom/facebook/ads/redexgen/X/hy;

    .line 48307
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A1z()Lcom/facebook/ads/redexgen/X/Ml;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ml;->A01()Lcom/facebook/ads/redexgen/X/My;

    move-result-object v8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KI;->A02:Lcom/facebook/ads/redexgen/X/hy;

    .line 48308
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0J()Lcom/facebook/ads/redexgen/X/Mz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mz;->A06()Z

    move-result v9

    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/KI;->A04:Lcom/facebook/ads/redexgen/X/US;

    iget-object v11, p0, Lcom/facebook/ads/redexgen/X/KI;->A06:Lcom/facebook/ads/redexgen/X/Xn;

    iget-object v13, p0, Lcom/facebook/ads/redexgen/X/KI;->A05:Lcom/facebook/ads/redexgen/X/XH;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KI;->A02:Lcom/facebook/ads/redexgen/X/hy;

    .line 48309
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A21()Lcom/facebook/ads/redexgen/X/N3;

    move-result-object v14

    const/4 v12, 0x0

    invoke-direct/range {v5 .. v14}, Lcom/facebook/ads/redexgen/X/KE;-><init>(Lcom/facebook/ads/redexgen/X/dL;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/My;ZLcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/eX;Lcom/facebook/ads/redexgen/X/XH;Lcom/facebook/ads/redexgen/X/N3;)V

    .line 48310
    .local v0, "mCTAButton":Lcom/facebook/ads/redexgen/X/KE;
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/aB;->setViewShowsOverMedia(Z)V

    .line 48311
    const/16 v0, 0x3e9

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/XP;->A0E(ILandroid/view/View;)V

    .line 48312
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KI;->A02:Lcom/facebook/ads/redexgen/X/hy;

    .line 48313
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0J()Lcom/facebook/ads/redexgen/X/Mz;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KI;->A02:Lcom/facebook/ads/redexgen/X/hy;

    .line 48314
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A25()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 48315
    const/4 v0, 0x0

    invoke-virtual {v5, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KE;->setCta(Lcom/facebook/ads/redexgen/X/Mz;Ljava/lang/String;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/a4;)V

    .line 48316
    const/4 v1, -0x1

    const/4 v0, -0x2

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 48317
    .local v1, "ctaParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v3, Lcom/facebook/ads/redexgen/X/KI;->A0C:I

    sget v2, Lcom/facebook/ads/redexgen/X/KI;->A0C:I

    sget v1, Lcom/facebook/ads/redexgen/X/KI;->A0C:I

    sget v0, Lcom/facebook/ads/redexgen/X/KI;->A0C:I

    invoke-virtual {v5, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KE;->setPadding(IIII)V

    .line 48318
    sget v3, Lcom/facebook/ads/redexgen/X/KI;->A0C:I

    sget v2, Lcom/facebook/ads/redexgen/X/KI;->A0C:I

    sget v1, Lcom/facebook/ads/redexgen/X/KI;->A0C:I

    sget v0, Lcom/facebook/ads/redexgen/X/KI;->A0C:I

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 48319
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KI;->A00:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48320
    return-void
.end method

.method private A02()V
    .locals 16

    .line 48321
    move-object/from16 v6, p0

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/KI;->A03:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v5, Landroid/widget/RelativeLayout;

    invoke-direct {v5, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 48322
    .local v1, "iconAndDetailsContainer":Landroid/widget/RelativeLayout;
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/KI;->A03:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v9, Lcom/facebook/ads/redexgen/X/aK;

    invoke-direct {v9, v0}, Lcom/facebook/ads/redexgen/X/aK;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    .line 48323
    .local v2, "iconView":Lcom/facebook/ads/redexgen/X/aK;
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/KI;->A03:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v2, Lcom/facebook/ads/redexgen/X/KZ;

    invoke-direct {v2, v9, v0}, Lcom/facebook/ads/redexgen/X/KZ;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/dL;)V

    sget v1, Lcom/facebook/ads/redexgen/X/KI;->A0D:I

    sget v0, Lcom/facebook/ads/redexgen/X/KI;->A0D:I

    .line 48324
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A05(II)Lcom/facebook/ads/redexgen/X/KZ;

    move-result-object v1

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/KI;->A02:Lcom/facebook/ads/redexgen/X/hy;

    .line 48325
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A23()Lcom/facebook/ads/redexgen/X/N9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N9;->A01()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A07(Ljava/lang/String;)V

    .line 48326
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/facebook/ads/redexgen/X/aK;->setFullCircleCorners(Z)V

    .line 48327
    const/4 v1, 0x0

    invoke-static {v9, v1}, Lcom/facebook/ads/redexgen/X/XP;->A0K(Landroid/view/View;I)V

    .line 48328
    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/XP;->A0I(Landroid/view/View;)V

    .line 48329
    sget v2, Lcom/facebook/ads/redexgen/X/KI;->A0D:I

    sget v0, Lcom/facebook/ads/redexgen/X/KI;->A0D:I

    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 48330
    .local v5, "iconParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v4, Lcom/facebook/ads/redexgen/X/KI;->A0C:I

    sget v3, Lcom/facebook/ads/redexgen/X/KI;->A0C:I

    sget v2, Lcom/facebook/ads/redexgen/X/KI;->A0C:I

    sget v0, Lcom/facebook/ads/redexgen/X/KI;->A0C:I

    invoke-virtual {v8, v4, v3, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 48331
    const/16 v7, 0xe

    invoke-virtual {v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 48332
    invoke-virtual {v5, v9, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48333
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/KI;->A03:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v12, Landroid/widget/TextView;

    invoke-direct {v12, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 48334
    .local v7, "titleView":Landroid/widget/TextView;
    invoke-static {v12}, Lcom/facebook/ads/redexgen/X/XP;->A0I(Landroid/view/View;)V

    .line 48335
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/KI;->A02:Lcom/facebook/ads/redexgen/X/hy;

    .line 48336
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A1z()Lcom/facebook/ads/redexgen/X/Ml;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ml;->A01()Lcom/facebook/ads/redexgen/X/My;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/facebook/ads/redexgen/X/My;->A07(Z)I

    move-result v0

    .line 48337
    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48338
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/KI;->A02:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0I()Lcom/facebook/ads/redexgen/X/Mw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mw;->A0F()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48339
    const/16 v8, 0x11

    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 48340
    const/4 v2, -0x1

    const/4 v4, -0x2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 48341
    .local v9, "titleParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 48342
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/aK;->getId()I

    move-result v0

    const/4 v11, 0x3

    invoke-virtual {v3, v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 48343
    invoke-virtual {v5, v12, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48344
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/KI;->A03:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 48345
    .local v12, "ratingInfoContainer":Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/XP;->A0I(Landroid/view/View;)V

    .line 48346
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 48347
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 48348
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v10, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 48349
    .local v14, "ratingInfoContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v9, Lcom/facebook/ads/redexgen/X/KI;->A0C:I

    sget v8, Lcom/facebook/ads/redexgen/X/KI;->A0C:I

    sget v0, Lcom/facebook/ads/redexgen/X/KI;->A0C:I

    invoke-virtual {v10, v9, v1, v8, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 48350
    invoke-virtual {v10, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 48351
    invoke-virtual {v12}, Landroid/widget/TextView;->getId()I

    move-result v0

    invoke-virtual {v10, v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 48352
    invoke-virtual {v5, v3, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48353
    new-instance v10, Lcom/facebook/ads/redexgen/X/aM;

    iget-object v11, v6, Lcom/facebook/ads/redexgen/X/KI;->A03:Lcom/facebook/ads/redexgen/X/dL;

    sget v12, Lcom/facebook/ads/redexgen/X/KI;->A0B:I

    sget v14, Lcom/facebook/ads/redexgen/X/KI;->A0A:I

    const/4 v15, -0x1

    const/4 v13, 0x5

    invoke-direct/range {v10 .. v15}, Lcom/facebook/ads/redexgen/X/aM;-><init>(Lcom/facebook/ads/redexgen/X/dL;IIII)V

    .line 48354
    .local v3, "starRatingContainer":Lcom/facebook/ads/redexgen/X/aM;
    const/16 v9, 0x10

    invoke-virtual {v10, v9}, Lcom/facebook/ads/redexgen/X/aM;->setGravity(I)V

    .line 48355
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48356
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/KI;->A03:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 48357
    .local v13, "ratingCountView":Landroid/widget/TextView;
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/KI;->A02:Lcom/facebook/ads/redexgen/X/hy;

    .line 48358
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A1z()Lcom/facebook/ads/redexgen/X/Ml;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ml;->A01()Lcom/facebook/ads/redexgen/X/My;

    move-result-object v2

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/My;->A07(Z)I

    move-result v0

    .line 48359
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48360
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 48361
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 48362
    invoke-static {v8, v1, v7}, Lcom/facebook/ads/redexgen/X/XP;->A0W(Landroid/widget/TextView;ZI)V

    .line 48363
    const/4 v0, -0x1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 48364
    .local v8, "ratingCountParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/KI;->A09:I

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 48365
    invoke-virtual {v3, v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48366
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/KI;->A02:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0I()Lcom/facebook/ads/redexgen/X/Mw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mw;->A0B()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48367
    const/16 v7, 0x8

    sget-object v2, Lcom/facebook/ads/redexgen/X/KI;->A08:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 48368
    :cond_0
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 48369
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/KI;->A02:Lcom/facebook/ads/redexgen/X/hy;

    .line 48370
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0I()Lcom/facebook/ads/redexgen/X/Mw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mw;->A0B()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 48371
    invoke-virtual {v10, v0}, Lcom/facebook/ads/redexgen/X/aM;->setRating(F)V

    .line 48372
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/KI;->A02:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0I()Lcom/facebook/ads/redexgen/X/Mw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mw;->A08()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 48373
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KI;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 48374
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v2

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/KI;->A02:Lcom/facebook/ads/redexgen/X/hy;

    .line 48375
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0I()Lcom/facebook/ads/redexgen/X/Mw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mw;->A08()Ljava/lang/String;

    move-result-object v0

    .line 48376
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .end local v7    # "titleView":Landroid/widget/TextView;
    .local p3, "titleView":Landroid/widget/TextView;
    int-to-long v0, v0

    .line 48377
    invoke-virtual {v2, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v2, 0x1

    const/4 v1, 0x1

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KI;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48378
    .local v4, "ratingCount":Ljava/lang/String;
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 48379
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/KI;->A08:[Ljava/lang/String;

    const-string v1, "pDxc6WlcrgExZnzDlKhHZoNjTSnAqRc0"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "JfppCwNpdT1PFGKwLRSAK2lJbowaAIWW"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 48380
    .end local v7
    .restart local p3
    :cond_2
    :goto_0
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/KI;->A03:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 48381
    .local v4, "descriptionView":Landroid/widget/TextView;
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/KI;->A02:Lcom/facebook/ads/redexgen/X/hy;

    .line 48382
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A1z()Lcom/facebook/ads/redexgen/X/Ml;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ml;->A01()Lcom/facebook/ads/redexgen/X/My;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/My;->A07(Z)I

    move-result v0

    .line 48383
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48384
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/KI;->A02:Lcom/facebook/ads/redexgen/X/hy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A20()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0I()Lcom/facebook/ads/redexgen/X/Mw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mw;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48385
    const/16 v0, 0x11

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 48386
    sget v7, Lcom/facebook/ads/redexgen/X/KI;->A0C:I

    sget v2, Lcom/facebook/ads/redexgen/X/KI;->A0C:I

    sget v1, Lcom/facebook/ads/redexgen/X/KI;->A0C:I

    sget v0, Lcom/facebook/ads/redexgen/X/KI;->A0C:I

    invoke-virtual {v8, v7, v2, v1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 48387
    const/4 v7, -0x1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 48388
    .local v6, "descParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xe

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 48389
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 48390
    invoke-virtual {v5, v8, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48391
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 48392
    .local v7, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v0, 0x4

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 48393
    const v0, 0x3f4ccccd    # 0.8f

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 48394
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/KI;->A00:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48395
    return-void
.end method

.method public static A03()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/KI;->A07:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x1dt
        0x69t
    .end array-data
.end method
