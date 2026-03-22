.class public final Lcom/facebook/ads/redexgen/X/Ev;
.super Lcom/facebook/ads/redexgen/X/Qg;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Xu;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/N3;

.field public A01:Lcom/facebook/ads/redexgen/X/eW;

.field public A02:Lcom/facebook/ads/redexgen/X/eX;

.field public A03:Lcom/facebook/ads/redexgen/X/eX;

.field public final A04:I

.field public final A05:I

.field public final A06:I

.field public final A07:I

.field public final A08:Landroid/util/SparseBooleanArray;

.field public final A09:Lcom/facebook/ads/redexgen/X/dL;

.field public final A0A:Lcom/facebook/ads/redexgen/X/5Q;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5Q;Landroid/util/SparseBooleanArray;Lcom/facebook/ads/redexgen/X/eX;IIIILcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/N3;)V
    .locals 0

    .line 35282
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Qg;-><init>(Landroid/view/View;)V

    .line 35283
    iput-object p8, p0, Lcom/facebook/ads/redexgen/X/Ev;->A09:Lcom/facebook/ads/redexgen/X/dL;

    .line 35284
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ev;->A0A:Lcom/facebook/ads/redexgen/X/5Q;

    .line 35285
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Ev;->A08:Landroid/util/SparseBooleanArray;

    .line 35286
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Ev;->A02:Lcom/facebook/ads/redexgen/X/eX;

    .line 35287
    iput p4, p0, Lcom/facebook/ads/redexgen/X/Ev;->A04:I

    .line 35288
    iput p5, p0, Lcom/facebook/ads/redexgen/X/Ev;->A05:I

    .line 35289
    iput p6, p0, Lcom/facebook/ads/redexgen/X/Ev;->A06:I

    .line 35290
    iput p7, p0, Lcom/facebook/ads/redexgen/X/Ev;->A07:I

    .line 35291
    iput-object p9, p0, Lcom/facebook/ads/redexgen/X/Ev;->A00:Lcom/facebook/ads/redexgen/X/N3;

    .line 35292
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Ev;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 35293
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ev;->A08:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Ev;)Lcom/facebook/ads/redexgen/X/N3;
    .locals 0

    .line 35294
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ev;->A00:Lcom/facebook/ads/redexgen/X/N3;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Ev;)Lcom/facebook/ads/redexgen/X/dL;
    .locals 0

    .line 35295
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ev;->A09:Lcom/facebook/ads/redexgen/X/dL;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Ev;)Lcom/facebook/ads/redexgen/X/eX;
    .locals 0

    .line 35296
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ev;->A02:Lcom/facebook/ads/redexgen/X/eX;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/Ev;)Lcom/facebook/ads/redexgen/X/eX;
    .locals 0

    .line 35297
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ev;->A03:Lcom/facebook/ads/redexgen/X/eX;

    return-object p0
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/XH;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/cn;)V
    .locals 9

    .line 35298
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ev;->A08:Landroid/util/SparseBooleanArray;

    move-object v5, p4

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/cn;->A02()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35299
    return-void

    .line 35300
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ev;->A03:Lcom/facebook/ads/redexgen/X/eX;

    if-eqz v0, :cond_1

    .line 35301
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ev;->A03:Lcom/facebook/ads/redexgen/X/eX;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eX;->A0V()V

    .line 35302
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ev;->A03:Lcom/facebook/ads/redexgen/X/eX;

    .line 35303
    :cond_1
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/cn;->A04()Ljava/util/Map;

    move-result-object v7

    .line 35304
    .local v0, "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lcom/facebook/ads/redexgen/X/Ex;

    move-object v3, p0

    move-object v4, p3

    move-object v8, p2

    move-object v6, p1

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/Ex;-><init>(Lcom/facebook/ads/redexgen/X/Ev;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/cn;Lcom/facebook/ads/redexgen/X/US;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/XH;)V

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/Ev;->A01:Lcom/facebook/ads/redexgen/X/eW;

    .line 35305
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Ev;->A0A:Lcom/facebook/ads/redexgen/X/5Q;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ev;->A01:Lcom/facebook/ads/redexgen/X/eW;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ev;->A09:Lcom/facebook/ads/redexgen/X/dL;

    const/16 v1, 0xa

    new-instance v0, Lcom/facebook/ads/redexgen/X/eX;

    invoke-direct {v0, v4, v1, v3, v2}, Lcom/facebook/ads/redexgen/X/eX;-><init>(Landroid/view/View;ILjava/lang/ref/WeakReference;Lcom/facebook/ads/redexgen/X/dL;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ev;->A03:Lcom/facebook/ads/redexgen/X/eX;

    .line 35306
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ev;->A03:Lcom/facebook/ads/redexgen/X/eX;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/eX;->A0Y(Z)V

    .line 35307
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ev;->A03:Lcom/facebook/ads/redexgen/X/eX;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/eX;->A0W(I)V

    .line 35308
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ev;->A03:Lcom/facebook/ads/redexgen/X/eX;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/eX;->A0X(I)V

    .line 35309
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ev;->A0A:Lcom/facebook/ads/redexgen/X/5Q;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ew;

    invoke-direct {v0, p0, v5}, Lcom/facebook/ads/redexgen/X/Ew;-><init>(Lcom/facebook/ads/redexgen/X/Ev;Lcom/facebook/ads/redexgen/X/cn;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5Q;->setOnAssetsLoadedListener(Lcom/facebook/ads/redexgen/X/bX;)V

    .line 35310
    return-void
.end method


# virtual methods
.method public final A0p()Lcom/facebook/ads/redexgen/X/KE;
    .locals 1

    .line 35311
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ev;->A0A:Lcom/facebook/ads/redexgen/X/5Q;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ir;->getCtaButton()Lcom/facebook/ads/redexgen/X/KE;

    move-result-object v0

    return-object v0
.end method

.method public final A0q(Lcom/facebook/ads/redexgen/X/cn;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/SF;Lcom/facebook/ads/redexgen/X/XH;Ljava/lang/String;)V
    .locals 5

    .line 35312
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/cn;->A02()I

    move-result v4

    .line 35313
    .local v0, "position":I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ev;->A0A:Lcom/facebook/ads/redexgen/X/5Q;

    const v1, -0x5f000010

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5Q;->setTag(ILjava/lang/Object;)V

    .line 35314
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ev;->A04:I

    const/4 v0, -0x2

    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 35315
    .local v1, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    if-nez v4, :cond_2

    iget v3, p0, Lcom/facebook/ads/redexgen/X/Ev;->A05:I

    .line 35316
    .local v2, "leftMargin":I
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ev;->A07:I

    add-int/lit8 v0, v0, -0x1

    if-lt v4, v0, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ev;->A05:I

    .line 35317
    .local v3, "rightMargin":I
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {v2, v3, v0, v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 35318
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/cn;->A03()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ms;->A08()Ljava/lang/String;

    move-result-object v4

    .line 35319
    .local v4, "imageUrl":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/cn;->A03()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0H()Lcom/facebook/ads/redexgen/X/Ms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ms;->A09()Ljava/lang/String;

    move-result-object v3

    .line 35320
    .local p0, "videoUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ev;->A0A:Lcom/facebook/ads/redexgen/X/5Q;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5Q;->setIsVideo(Z)V

    .line 35321
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ev;->A0A:Lcom/facebook/ads/redexgen/X/5Q;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5Q;->A1T()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35322
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ev;->A0A:Lcom/facebook/ads/redexgen/X/5Q;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/5Q;->setVideoPlaceholderUrl(Ljava/lang/String;)V

    .line 35323
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ev;->A0A:Lcom/facebook/ads/redexgen/X/5Q;

    invoke-virtual {p3, v3}, Lcom/facebook/ads/redexgen/X/SF;->A0T(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5Q;->setVideoUrl(Ljava/lang/String;)V

    .line 35324
    :goto_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ev;->A0A:Lcom/facebook/ads/redexgen/X/5Q;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/5Q;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 35325
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ev;->A0A:Lcom/facebook/ads/redexgen/X/5Q;

    .line 35326
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/cn;->A03()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0I()Lcom/facebook/ads/redexgen/X/Mw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mw;->A0F()Ljava/lang/String;

    move-result-object v1

    .line 35327
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/cn;->A03()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0I()Lcom/facebook/ads/redexgen/X/Mw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mw;->A04()Ljava/lang/String;

    move-result-object v0

    .line 35328
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5Q;->setAdTitleAndDescription(Ljava/lang/String;Ljava/lang/String;)V

    .line 35329
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ev;->A0A:Lcom/facebook/ads/redexgen/X/5Q;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/cn;->A03()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->A0J()Lcom/facebook/ads/redexgen/X/Mz;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/cn;->A04()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5Q;->setCTAInfo(Lcom/facebook/ads/redexgen/X/Mz;Ljava/util/Map;)V

    .line 35330
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ev;->A0A:Lcom/facebook/ads/redexgen/X/5Q;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/cn;->A04()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5Q;->A1W(Ljava/util/Map;)V

    .line 35331
    invoke-direct {p0, p2, p4, p5, p1}, Lcom/facebook/ads/redexgen/X/Ev;->A05(Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/XH;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/cn;)V

    .line 35332
    return-void

    .line 35333
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ev;->A0A:Lcom/facebook/ads/redexgen/X/5Q;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/5Q;->setImageUrl(Ljava/lang/String;)V

    goto :goto_2

    .line 35334
    :cond_1
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ev;->A06:I

    goto/16 :goto_1

    .line 35335
    :cond_2
    iget v3, p0, Lcom/facebook/ads/redexgen/X/Ev;->A06:I

    goto/16 :goto_0
.end method

.method public final AIV()V
    .locals 1

    .line 35336
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ev;->A0A:Lcom/facebook/ads/redexgen/X/5Q;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ir;->A1O()V

    .line 35337
    return-void
.end method
