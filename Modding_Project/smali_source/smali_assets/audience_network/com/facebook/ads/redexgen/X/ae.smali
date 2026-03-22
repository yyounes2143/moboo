.class public abstract Lcom/facebook/ads/redexgen/X/ae;
.super Landroid/widget/RelativeLayout;
.source ""


# static fields
.field public static final A07:I

.field public static final A08:I

.field public static final A09:I

.field public static final A0A:I

.field public static final A0B:I

.field public static final A0C:I

.field public static final A0D:I

.field public static final A0E:I

.field public static final A0F:I

.field public static final A0G:I

.field public static final A0H:I

.field public static final A0I:I

.field public static final A0J:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/My;

.field public A01:Z

.field public final A02:Lcom/facebook/ads/redexgen/X/dL;

.field public final A03:Lcom/facebook/ads/redexgen/X/US;

.field public final A04:Lcom/facebook/ads/redexgen/X/KE;

.field public final A05:Lcom/facebook/ads/redexgen/X/aQ;

.field public final A06:Lcom/facebook/ads/redexgen/X/ai;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2497
    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    const/high16 v2, 0x41800000    # 16.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/ae;->A07:I

    .line 2498
    const/high16 v1, 0x41e00000    # 28.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/ae;->A08:I

    .line 2499
    const/high16 v1, 0x40000000    # 2.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/ae;->A0B:I

    .line 2500
    const/high16 v1, 0x40800000    # 4.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/ae;->A0E:I

    .line 2501
    const/high16 v1, 0x41000000    # 8.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/ae;->A0I:I

    .line 2502
    const/high16 v1, 0x41400000    # 12.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/ae;->A09:I

    .line 2503
    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/ae;->A0A:I

    .line 2504
    const/high16 v1, 0x41a00000    # 20.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/ae;->A0C:I

    .line 2505
    const/high16 v1, 0x41c00000    # 24.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/ae;->A0D:I

    .line 2506
    const/high16 v1, 0x42300000    # 44.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/ae;->A0F:I

    .line 2507
    const/high16 v1, 0x42400000    # 48.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/ae;->A0G:I

    .line 2508
    const/high16 v1, 0x42800000    # 64.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/ae;->A0H:I

    .line 2509
    const/high16 v1, 0x42000000    # 32.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/ae;->A0J:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ai;Z)V
    .locals 9

    .line 76262
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A06()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 76263
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ae;->A06:Lcom/facebook/ads/redexgen/X/ai;

    .line 76264
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A06()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ae;->A02:Lcom/facebook/ads/redexgen/X/dL;

    .line 76265
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A07()Lcom/facebook/ads/redexgen/X/US;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ae;->A03:Lcom/facebook/ads/redexgen/X/US;

    .line 76266
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A00()I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 76267
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A1z()Lcom/facebook/ads/redexgen/X/Ml;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ml;->A01()Lcom/facebook/ads/redexgen/X/My;

    move-result-object v0

    .line 76268
    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ae;->A00:Lcom/facebook/ads/redexgen/X/My;

    .line 76269
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/ae;->A01:Z

    .line 76270
    new-instance v0, Lcom/facebook/ads/redexgen/X/KE;

    .line 76271
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A06()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v1

    .line 76272
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/ae;->A00:Lcom/facebook/ads/redexgen/X/My;

    .line 76273
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A07()Lcom/facebook/ads/redexgen/X/US;

    move-result-object v4

    .line 76274
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A0D()Lcom/facebook/ads/redexgen/X/Xn;

    move-result-object v5

    .line 76275
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A0G()Lcom/facebook/ads/redexgen/X/eX;

    move-result-object v6

    .line 76276
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A0A()Lcom/facebook/ads/redexgen/X/XH;

    move-result-object v7

    .line 76277
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A09()Lcom/facebook/ads/redexgen/X/Wv;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/facebook/ads/redexgen/X/KE;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/My;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/Xn;Lcom/facebook/ads/redexgen/X/eX;Lcom/facebook/ads/redexgen/X/XH;Lcom/facebook/ads/redexgen/X/Wv;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ae;->A04:Lcom/facebook/ads/redexgen/X/KE;

    .line 76278
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ae;->A04:Lcom/facebook/ads/redexgen/X/KE;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ae;->A01()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/aB;->setRoundedCornersEnabled(Z)V

    .line 76279
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ae;->A04:Lcom/facebook/ads/redexgen/X/KE;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ae;->A0C()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/aB;->setViewShowsOverMedia(Z)V

    .line 76280
    const/16 v1, 0x3e9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ae;->A04:Lcom/facebook/ads/redexgen/X/KE;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0E(ILandroid/view/View;)V

    .line 76281
    new-instance v0, Lcom/facebook/ads/redexgen/X/aQ;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ae;->A02:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/ae;->A00:Lcom/facebook/ads/redexgen/X/My;

    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/ae;->A01:Z

    .line 76282
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ae;->A02()Z

    move-result v4

    .line 76283
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ae;->A0D()Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/aQ;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/My;ZZZ)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ae;->A05:Lcom/facebook/ads/redexgen/X/aQ;

    .line 76284
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ae;->A05:Lcom/facebook/ads/redexgen/X/aQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XP;->A0I(Landroid/view/View;)V

    .line 76285
    return-void

    .line 76286
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A1z()Lcom/facebook/ads/redexgen/X/Ml;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ml;->A00()Lcom/facebook/ads/redexgen/X/My;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final A00(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/Ua;Lcom/facebook/ads/redexgen/X/Z5;Lcom/facebook/ads/redexgen/X/Xn;Landroid/os/Handler;)Landroid/widget/ImageView;
    .locals 6

    .line 76287
    move-object v5, p6

    move-object v4, p5

    move-object v3, p4

    move-object v1, p3

    move-object v2, p2

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Z9;->A01(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/Ua;Lcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/Z5;Lcom/facebook/ads/redexgen/X/Xn;Landroid/os/Handler;)Landroid/widget/ImageView;

    move-result-object v4

    .line 76288
    .local v0, "creditLineView":Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/XP;->A0I(Landroid/view/View;)V

    .line 76289
    const/4 v0, -0x2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 76290
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v2, Lcom/facebook/ads/redexgen/X/ae;->A0A:I

    const/4 v1, 0x0

    sget v0, Lcom/facebook/ads/redexgen/X/ae;->A0A:I

    invoke-virtual {v3, v2, v1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 76291
    const/16 v0, 0xc

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 76292
    const/16 v0, 0x9

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 76293
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76294
    return-object v4
.end method

.method public A01()Z
    .locals 1

    .line 76295
    const/4 v0, 0x1

    return v0
.end method

.method public A02()Z
    .locals 1

    .line 76296
    const/4 v0, 0x1

    return v0
.end method

.method public final A03()Z
    .locals 1

    .line 76297
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ae;->A06:Lcom/facebook/ads/redexgen/X/ai;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1m()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ae;->A06:Lcom/facebook/ads/redexgen/X/ai;

    .line 76298
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mo;->A1o()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 76299
    :goto_0
    return v0

    .line 76300
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public A0C()Z
    .locals 1

    .line 76301
    const/4 v0, 0x1

    return v0
.end method

.method public A0D()Z
    .locals 1

    .line 76302
    const/4 v0, 0x1

    return v0
.end method

.method public A1A(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/ME;
    .locals 1

    .line 76303
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ae;->getCtaButton()Lcom/facebook/ads/redexgen/X/KE;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/KE;->A0E(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/ME;

    move-result-object v0

    return-object v0
.end method

.method public A1B()V
    .locals 0

    .line 76304
    return-void
.end method

.method public A1C()V
    .locals 0

    .line 76305
    return-void
.end method

.method public A1D()V
    .locals 0

    .line 76306
    return-void
.end method

.method public A1E()V
    .locals 0

    .line 76307
    return-void
.end method

.method public A1F()V
    .locals 0

    .line 76308
    return-void
.end method

.method public A1G(Lcom/facebook/ads/redexgen/X/Mp;Ljava/lang/String;DLandroid/os/Bundle;)V
    .locals 9

    .line 76309
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/ae;->A05:Lcom/facebook/ads/redexgen/X/aQ;

    .line 76310
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Mp;->A0I()Lcom/facebook/ads/redexgen/X/Mw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mw;->A0E()Ljava/lang/String;

    move-result-object v4

    .line 76311
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Mp;->A0I()Lcom/facebook/ads/redexgen/X/Mw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mw;->A04()Ljava/lang/String;

    move-result-object v5

    .line 76312
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ae;->A1M()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    cmpl-double v0, p3, v1

    if-lez v0, :cond_0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p3, v1

    if-gez v0, :cond_0

    const/4 v8, 0x1

    .line 76313
    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/aQ;->A04(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 76314
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/ae;->A04:Lcom/facebook/ads/redexgen/X/KE;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Mp;->A0J()Lcom/facebook/ads/redexgen/X/Mz;

    move-result-object v1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2, v1, p2, v0}, Lcom/facebook/ads/redexgen/X/KE;->setCta(Lcom/facebook/ads/redexgen/X/Mz;Ljava/lang/String;Ljava/util/Map;)V

    .line 76315
    return-void

    .line 76316
    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public A1H(Lcom/facebook/ads/redexgen/X/3d;)V
    .locals 0

    .line 76317
    return-void
.end method

.method public A1I(Lcom/facebook/ads/redexgen/X/DO;)V
    .locals 0

    .line 76318
    return-void
.end method

.method public A1J(Lcom/facebook/ads/redexgen/X/3Q;I)V
    .locals 0

    .line 76319
    return-void
.end method

.method public A1K()Z
    .locals 1

    .line 76320
    const/4 v0, 0x0

    return v0
.end method

.method public A1L()Z
    .locals 1

    .line 76321
    const/4 v0, 0x1

    return v0
.end method

.method public abstract A1M()Z
.end method

.method public A1N(Z)Z
    .locals 1

    .line 76322
    const/4 v0, 0x0

    return v0
.end method

.method public getAdContextWrapper()Lcom/facebook/ads/redexgen/X/dL;
    .locals 1

    .line 76323
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ae;->A02:Lcom/facebook/ads/redexgen/X/dL;

    return-object v0
.end method

.method public getAdEventManager()Lcom/facebook/ads/redexgen/X/US;
    .locals 1

    .line 76324
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ae;->A03:Lcom/facebook/ads/redexgen/X/US;

    return-object v0
.end method

.method public getCloseButtonStyle()I
    .locals 1

    .line 76325
    const/4 v0, 0x0

    return v0
.end method

.method public getColors()Lcom/facebook/ads/redexgen/X/My;
    .locals 1

    .line 76326
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ae;->A00:Lcom/facebook/ads/redexgen/X/My;

    return-object v0
.end method

.method public getCtaButton()Lcom/facebook/ads/redexgen/X/KE;
    .locals 1

    .line 76327
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ae;->A04:Lcom/facebook/ads/redexgen/X/KE;

    return-object v0
.end method

.method public getTitleDescContainer()Lcom/facebook/ads/redexgen/X/aQ;
    .locals 1

    .line 76328
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ae;->A05:Lcom/facebook/ads/redexgen/X/aQ;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 76329
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 76330
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 76331
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ae;->A06:Lcom/facebook/ads/redexgen/X/ai;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A1z()Lcom/facebook/ads/redexgen/X/Ml;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ml;->A01()Lcom/facebook/ads/redexgen/X/My;

    move-result-object v0

    .line 76332
    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ae;->A00:Lcom/facebook/ads/redexgen/X/My;

    .line 76333
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ae;->A04:Lcom/facebook/ads/redexgen/X/KE;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ae;->A0C()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/aB;->setViewShowsOverMedia(Z)V

    .line 76334
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ae;->A04:Lcom/facebook/ads/redexgen/X/KE;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ae;->A00:Lcom/facebook/ads/redexgen/X/My;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/aB;->setUpButtonColors(Lcom/facebook/ads/redexgen/X/My;)V

    .line 76335
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/ae;->A05:Lcom/facebook/ads/redexgen/X/aQ;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ae;->A00:Lcom/facebook/ads/redexgen/X/My;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ae;->A01:Z

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/aQ;->A03(Lcom/facebook/ads/redexgen/X/My;Z)V

    .line 76336
    return-void

    .line 76337
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ae;->A06:Lcom/facebook/ads/redexgen/X/ai;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A05()Lcom/facebook/ads/redexgen/X/hy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/hy;->A1z()Lcom/facebook/ads/redexgen/X/Ml;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ml;->A00()Lcom/facebook/ads/redexgen/X/My;

    move-result-object v0

    goto :goto_0
.end method

.method public setAccidentalClickCappingListener(Lcom/facebook/ads/redexgen/X/MF;)V
    .locals 1

    .line 76338
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ae;->getCtaButton()Lcom/facebook/ads/redexgen/X/KE;

    move-result-object v0

    .line 76339
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KE;->getCtaActionHelper()Lcom/facebook/ads/redexgen/X/a5;

    move-result-object v0

    .line 76340
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/a5;->A07(Lcom/facebook/ads/redexgen/X/MF;)V

    .line 76341
    return-void
.end method

.method public setChainedWatchAndBrowseSkippableStatus(Z)V
    .locals 0

    .line 76342
    return-void
.end method
