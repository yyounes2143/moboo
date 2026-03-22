.class public Lcom/facebook/ads/redexgen/X/5h;
.super Lcom/facebook/ads/redexgen/X/Ir;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/K0;
    }
.end annotation


# static fields
.field public static A0J:[Ljava/lang/String;

.field public static final A0K:I

.field public static final A0L:I

.field public static final A0M:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/YM;

.field public A01:Lcom/facebook/ads/redexgen/X/bX;

.field public A02:Lcom/facebook/ads/redexgen/X/cp;

.field public A03:Z

.field public A04:Z

.field public A05:Z

.field public A06:Landroid/widget/RelativeLayout;

.field public A07:Lcom/facebook/ads/redexgen/X/FH;

.field public final A08:Lcom/facebook/ads/redexgen/X/dL;

.field public final A09:Lcom/facebook/ads/redexgen/X/DX;

.field public final A0A:Lcom/facebook/ads/redexgen/X/DR;

.field public final A0B:Lcom/facebook/ads/redexgen/X/DP;

.field public final A0C:Lcom/facebook/ads/redexgen/X/DN;

.field public final A0D:Lcom/facebook/ads/redexgen/X/DE;

.field public final A0E:Ljava/lang/String;

.field public final A0F:Landroid/graphics/Paint;

.field public final A0G:Landroid/graphics/Path;

.field public final A0H:Landroid/graphics/RectF;

.field public final A0I:Lcom/facebook/ads/redexgen/X/ai;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 371
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "MpRqvkZj1q70y"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "JmeA7cKwz52Cf66UfzrPr0LMRH4SYAx7"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "6sdDVsKAMYqDcEUPGSGZSzHS1QCr5tGd"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "kTGZxaoWJV94XtNMqSwvdL"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Mc6tnSsqpweEwwZBrEzxWewdD5U0ZBnH"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "pH8A6EuZ6tOwC2LEaYgoPeYfMAE"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "hIXMP87egv28CzL5Z81pRvvAccgq29VA"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "kjeLkimcHFb7T02SebLVQF"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/5h;->A0J:[Ljava/lang/String;

    const/4 v1, 0x0

    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/5h;->A0L:I

    .line 372
    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    const/high16 v1, 0x41100000    # 9.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/5h;->A0M:I

    .line 373
    sget v0, Lcom/facebook/ads/redexgen/X/Wl;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/5h;->A0K:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ai;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/FH;)V
    .locals 4

    .line 16280
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ir;-><init>(Lcom/facebook/ads/redexgen/X/ai;Z)V

    .line 16281
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A0G:Landroid/graphics/Path;

    .line 16282
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A0H:Landroid/graphics/RectF;

    .line 16283
    new-instance v0, Lcom/facebook/ads/redexgen/X/5o;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/5o;-><init>(Lcom/facebook/ads/redexgen/X/5h;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A0D:Lcom/facebook/ads/redexgen/X/DE;

    .line 16284
    new-instance v0, Lcom/facebook/ads/redexgen/X/5m;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/5m;-><init>(Lcom/facebook/ads/redexgen/X/5h;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A09:Lcom/facebook/ads/redexgen/X/DX;

    .line 16285
    new-instance v0, Lcom/facebook/ads/redexgen/X/5l;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/5l;-><init>(Lcom/facebook/ads/redexgen/X/5h;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A0B:Lcom/facebook/ads/redexgen/X/DP;

    .line 16286
    new-instance v0, Lcom/facebook/ads/redexgen/X/5k;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/5k;-><init>(Lcom/facebook/ads/redexgen/X/5h;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A0A:Lcom/facebook/ads/redexgen/X/DR;

    .line 16287
    new-instance v0, Lcom/facebook/ads/redexgen/X/5i;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/5i;-><init>(Lcom/facebook/ads/redexgen/X/5h;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A0C:Lcom/facebook/ads/redexgen/X/DN;

    .line 16288
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5h;->A0I:Lcom/facebook/ads/redexgen/X/ai;

    .line 16289
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/5h;->A07:Lcom/facebook/ads/redexgen/X/FH;

    .line 16290
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/5h;->A0E:Ljava/lang/String;

    .line 16291
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ai;->A06()Lcom/facebook/ads/redexgen/X/dL;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A08:Lcom/facebook/ads/redexgen/X/dL;

    .line 16292
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/5h;->setGravity(I)V

    .line 16293
    sget v3, Lcom/facebook/ads/redexgen/X/5h;->A0L:I

    sget v2, Lcom/facebook/ads/redexgen/X/5h;->A0L:I

    sget v1, Lcom/facebook/ads/redexgen/X/5h;->A0L:I

    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/5h;->setPadding(IIII)V

    .line 16294
    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/XP;->A0K(Landroid/view/View;I)V

    .line 16295
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A08:Lcom/facebook/ads/redexgen/X/dL;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/5h;->setUpView(Lcom/facebook/ads/redexgen/X/dL;)V

    .line 16296
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A0F:Landroid/graphics/Paint;

    .line 16297
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5h;->A0F:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 16298
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5h;->A0F:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 16299
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5h;->A0F:Landroid/graphics/Paint;

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 16300
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5h;->A0F:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 16301
    return-void
.end method

.method private A00()V
    .locals 5

    .line 16302
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A0I:Lcom/facebook/ads/redexgen/X/ai;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A0F()Lcom/facebook/ads/redexgen/X/Cw;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 16303
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A02:Lcom/facebook/ads/redexgen/X/cp;

    if-eqz v0, :cond_1

    .line 16304
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A0I:Lcom/facebook/ads/redexgen/X/ai;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A0F()Lcom/facebook/ads/redexgen/X/Cw;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A02:Lcom/facebook/ads/redexgen/X/cp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cp;->getSimpleVideoView()Lcom/facebook/ads/redexgen/X/E1;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/5h;->A0J:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x47

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/5h;->A0J:[Ljava/lang/String;

    const-string v1, "7Tm7E6hvxl2lrINlaGqN4b4kJs9I709m"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "njm7q4dCrj2NJr9FsCrNNlLowJdEGDJD"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/Cw;->AAm(Lcom/facebook/ads/redexgen/X/E1;)V

    .line 16305
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5h;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A2E(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16306
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A0I:Lcom/facebook/ads/redexgen/X/ai;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A0F()Lcom/facebook/ads/redexgen/X/Cw;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Cw;->A09(Z)V

    .line 16307
    :cond_1
    return-void
.end method

.method private A01()V
    .locals 2

    .line 16308
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A0I:Lcom/facebook/ads/redexgen/X/ai;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A0F()Lcom/facebook/ads/redexgen/X/Cw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16309
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A0I:Lcom/facebook/ads/redexgen/X/ai;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A0F()Lcom/facebook/ads/redexgen/X/Cw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Cw;->A06()V

    .line 16310
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A02:Lcom/facebook/ads/redexgen/X/cp;

    if-eqz v0, :cond_0

    .line 16311
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A0I:Lcom/facebook/ads/redexgen/X/ai;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ai;->A0F()Lcom/facebook/ads/redexgen/X/Cw;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A02:Lcom/facebook/ads/redexgen/X/cp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cp;->getSimpleVideoView()Lcom/facebook/ads/redexgen/X/E1;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Cw;->AJk(Lcom/facebook/ads/redexgen/X/E1;)V

    .line 16312
    :cond_0
    return-void
.end method

.method private A02()V
    .locals 4

    .line 16313
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A01:Lcom/facebook/ads/redexgen/X/bX;

    if-nez v0, :cond_0

    .line 16314
    return-void

    .line 16315
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5h;->A1T()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/5h;->A05:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/5h;->A0J:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x53

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/5h;->A0J:[Ljava/lang/String;

    const-string v1, "H2PvwmHOgvOi5klEuL8elNjNTBtJADxS"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-nez v3, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5h;->A1T()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A04:Z

    if-eqz v0, :cond_3

    .line 16316
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A01:Lcom/facebook/ads/redexgen/X/bX;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/bX;->ACO()V

    .line 16317
    :cond_3
    return-void

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A03(Landroid/view/View;)V
    .locals 3

    .line 16318
    if-nez p1, :cond_0

    .line 16319
    return-void

    .line 16320
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 16321
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-nez v2, :cond_1

    .line 16322
    return-void

    .line 16323
    :cond_1
    const/16 v1, 0xd

    const/4 v0, -0x1

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 16324
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16325
    return-void
.end method

.method public static A04(Landroid/view/View;)V
    .locals 3

    .line 16326
    const/4 v2, -0x1

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16327
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/XP;->A0I(Landroid/view/View;)V

    .line 16328
    return-void
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/5h;)V
    .locals 0

    .line 16329
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5h;->A01()V

    return-void
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/5h;)V
    .locals 0

    .line 16330
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5h;->A00()V

    return-void
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/5h;)V
    .locals 0

    .line 16331
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5h;->A02()V

    return-void
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/5h;Z)Z
    .locals 0

    .line 16332
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/5h;->A05:Z

    return p1
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/5h;Z)Z
    .locals 0

    .line 16333
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/5h;->A04:Z

    return p1
.end method

.method private setUpView(Lcom/facebook/ads/redexgen/X/dL;)V
    .locals 0

    .line 16415
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/5h;->setUpImageView(Lcom/facebook/ads/redexgen/X/dL;)V

    .line 16416
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/5h;->setUpVideoView(Lcom/facebook/ads/redexgen/X/dL;)V

    .line 16417
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/5h;->setUpMediaContainer(Lcom/facebook/ads/redexgen/X/dL;)V

    .line 16418
    return-void
.end method


# virtual methods
.method public final A0C()Z
    .locals 1

    .line 16334
    const/4 v0, 0x0

    return v0
.end method

.method public final A1M()Z
    .locals 1

    .line 16335
    const/4 v0, 0x0

    return v0
.end method

.method public final A1P()V
    .locals 4

    .line 16336
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5h;->A1T()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A02:Lcom/facebook/ads/redexgen/X/cp;

    if-eqz v0, :cond_0

    .line 16337
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/5h;->A02:Lcom/facebook/ads/redexgen/X/cp;

    sget-object v1, Lcom/facebook/ads/redexgen/X/5h;->A0J:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x53

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/5h;->A0J:[Ljava/lang/String;

    const-string v1, "PPsdw83Xwgr8n"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "5ciU0wOzbld7CiHKSmuHpDfStOE"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/cp;->A01()V

    .line 16338
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A1Q()V
    .locals 2

    .line 16339
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5h;->A1T()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16340
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5h;->A1R()V

    .line 16341
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A02:Lcom/facebook/ads/redexgen/X/cp;

    if-eqz v0, :cond_0

    .line 16342
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5h;->A02:Lcom/facebook/ads/redexgen/X/cp;

    sget-object v0, Lcom/facebook/ads/redexgen/X/db;->A02:Lcom/facebook/ads/redexgen/X/db;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/cp;->A05(Lcom/facebook/ads/redexgen/X/db;)V

    .line 16343
    :cond_0
    return-void
.end method

.method public final A1R()V
    .locals 2

    .line 16344
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A07:Lcom/facebook/ads/redexgen/X/FH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/FH;->A0P()Lcom/facebook/ads/redexgen/X/ba;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ba;->getVolume()F

    move-result v1

    .line 16345
    .local v0, "newVolume":F
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5h;->A1T()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A02:Lcom/facebook/ads/redexgen/X/cp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A02:Lcom/facebook/ads/redexgen/X/cp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cp;->getVolume()F

    move-result v0

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_0

    .line 16346
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A02:Lcom/facebook/ads/redexgen/X/cp;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/cp;->setVolume(F)V

    .line 16347
    :cond_0
    return-void
.end method

.method public final A1S()Z
    .locals 1

    .line 16348
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5h;->A1T()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A02:Lcom/facebook/ads/redexgen/X/cp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A02:Lcom/facebook/ads/redexgen/X/cp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cp;->A06()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A1T()Z
    .locals 1

    .line 16349
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A03:Z

    return v0
.end method

.method public final A1U(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 16350
    .local p1, "extraParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A02:Lcom/facebook/ads/redexgen/X/cp;

    if-eqz v0, :cond_0

    .line 16351
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A02:Lcom/facebook/ads/redexgen/X/cp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cp;->A02()V

    .line 16352
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5h;->A1T()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16353
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/5h;->A02:Lcom/facebook/ads/redexgen/X/cp;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ae;->getAdEventManager()Lcom/facebook/ads/redexgen/X/US;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A0E:Ljava/lang/String;

    invoke-virtual {v2, v1, v0, p1}, Lcom/facebook/ads/redexgen/X/cp;->A04(Lcom/facebook/ads/redexgen/X/US;Ljava/lang/String;Ljava/util/Map;)V

    .line 16354
    :cond_0
    return-void
.end method

.method public final getVideoView()Lcom/facebook/ads/redexgen/X/cp;
    .locals 1

    .line 16355
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A02:Lcom/facebook/ads/redexgen/X/cp;

    return-object v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 16356
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/ae;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 16357
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 16358
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A0G:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 16359
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/5h;->A0H:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5h;->getWidth()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5h;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v7, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 16360
    const/4 v5, 0x0

    .line 16361
    .local v0, "radius":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5h;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x1

    if-ne v0, v6, :cond_2

    .line 16362
    .local v1, "isPortrait":Z
    :goto_0
    if-eqz v6, :cond_0

    .line 16363
    sget v5, Lcom/facebook/ads/redexgen/X/5h;->A0K:I

    .line 16364
    :cond_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/5h;->A0G:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/5h;->A0H:Landroid/graphics/RectF;

    int-to-float v2, v5

    int-to-float v1, v5

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 16365
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5h;->A0G:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A0F:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 16366
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/5h;->A0H:Landroid/graphics/RectF;

    sget v0, Lcom/facebook/ads/redexgen/X/5h;->A0L:I

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5h;->getWidth()I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/5h;->A0L:I

    sub-int/2addr v1, v0

    int-to-float v2, v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5h;->getHeight()I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/5h;->A0L:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    invoke-virtual {v4, v3, v7, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 16367
    if-eqz v6, :cond_1

    .line 16368
    sget v5, Lcom/facebook/ads/redexgen/X/5h;->A0M:I

    .line 16369
    :cond_1
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/5h;->A0G:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/5h;->A0H:Landroid/graphics/RectF;

    int-to-float v2, v5

    int-to-float v1, v5

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 16370
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A0G:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 16371
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Ir;->onDraw(Landroid/graphics/Canvas;)V

    .line 16372
    return-void

    .line 16373
    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public setCTAInfo(Lcom/facebook/ads/redexgen/X/Mz;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Mz;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 16374
    .local p2, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ir;->getCtaButton()Lcom/facebook/ads/redexgen/X/KE;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A0E:Ljava/lang/String;

    invoke-virtual {v1, p1, v0, p2}, Lcom/facebook/ads/redexgen/X/KE;->setCta(Lcom/facebook/ads/redexgen/X/Mz;Ljava/lang/String;Ljava/util/Map;)V

    .line 16375
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 3

    .line 16376
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A00:Lcom/facebook/ads/redexgen/X/YM;

    if-eqz v0, :cond_0

    .line 16377
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5h;->A00:Lcom/facebook/ads/redexgen/X/YM;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/YM;->setVisibility(I)V

    .line 16378
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/5h;->A00:Lcom/facebook/ads/redexgen/X/YM;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5h;->A08:Lcom/facebook/ads/redexgen/X/dL;

    new-instance v0, Lcom/facebook/ads/redexgen/X/KZ;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/KZ;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/dL;)V

    .line 16379
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KZ;->A04()Lcom/facebook/ads/redexgen/X/KZ;

    move-result-object v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/K0;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/K0;-><init>(Lcom/facebook/ads/redexgen/X/5h;Lcom/facebook/ads/redexgen/X/5o;)V

    .line 16380
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A06(Lcom/facebook/ads/redexgen/X/Zo;)Lcom/facebook/ads/redexgen/X/KZ;

    move-result-object v0

    .line 16381
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/KZ;->A07(Ljava/lang/String;)V

    .line 16382
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A02:Lcom/facebook/ads/redexgen/X/cp;

    if-eqz v0, :cond_1

    .line 16383
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5h;->A02:Lcom/facebook/ads/redexgen/X/cp;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/cp;->setVisibility(I)V

    .line 16384
    :cond_1
    return-void
.end method

.method public setIsVideo(Z)V
    .locals 0

    .line 16385
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/5h;->A03:Z

    .line 16386
    return-void
.end method

.method public setOnAssetsLoadedListener(Lcom/facebook/ads/redexgen/X/bX;)V
    .locals 0

    .line 16387
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5h;->A01:Lcom/facebook/ads/redexgen/X/bX;

    .line 16388
    return-void
.end method

.method public setUpImageView(Lcom/facebook/ads/redexgen/X/dL;)V
    .locals 3

    .line 16389
    new-instance v0, Lcom/facebook/ads/redexgen/X/YM;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/YM;-><init>(Lcom/facebook/ads/redexgen/X/dL;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A00:Lcom/facebook/ads/redexgen/X/YM;

    .line 16390
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/U7;->A1I(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16391
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/5h;->A00:Lcom/facebook/ads/redexgen/X/YM;

    .line 16392
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/U7;->A1J(Landroid/content/Context;)Z

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/aC;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/aC;-><init>(Lcom/facebook/ads/redexgen/X/5h;)V

    .line 16393
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zs;->A00(Landroid/view/View;ZLandroid/view/View$OnClickListener;)V

    .line 16394
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A00:Lcom/facebook/ads/redexgen/X/YM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5h;->A04(Landroid/view/View;)V

    .line 16395
    return-void
.end method

.method public setUpMediaContainer(Lcom/facebook/ads/redexgen/X/dL;)V
    .locals 2

    .line 16396
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A06:Landroid/widget/RelativeLayout;

    .line 16397
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A06:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5h;->A04(Landroid/view/View;)V

    .line 16398
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A00:Lcom/facebook/ads/redexgen/X/YM;

    if-eqz v0, :cond_0

    .line 16399
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5h;->A06:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A00:Lcom/facebook/ads/redexgen/X/YM;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 16400
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A00:Lcom/facebook/ads/redexgen/X/YM;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/5h;->A03(Landroid/view/View;)V

    .line 16401
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A02:Lcom/facebook/ads/redexgen/X/cp;

    if-eqz v0, :cond_1

    .line 16402
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5h;->A06:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A02:Lcom/facebook/ads/redexgen/X/cp;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 16403
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A02:Lcom/facebook/ads/redexgen/X/cp;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/5h;->A03(Landroid/view/View;)V

    .line 16404
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A06:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/5h;->addView(Landroid/view/View;)V

    .line 16405
    return-void
.end method

.method public setUpVideoView(Lcom/facebook/ads/redexgen/X/dL;)V
    .locals 4

    .line 16406
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/5h;->A0E:Ljava/lang/String;

    .line 16407
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ae;->getAdEventManager()Lcom/facebook/ads/redexgen/X/US;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/Ua;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Ua;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/US;)V

    .line 16408
    .local v0, "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/Ua;
    new-instance v0, Lcom/facebook/ads/redexgen/X/cp;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/cp;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/Ua;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A02:Lcom/facebook/ads/redexgen/X/cp;

    .line 16409
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/U7;->A1K(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16410
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/5h;->A02:Lcom/facebook/ads/redexgen/X/cp;

    .line 16411
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/U7;->A1L(Landroid/content/Context;)Z

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/aD;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/aD;-><init>(Lcom/facebook/ads/redexgen/X/5h;)V

    .line 16412
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zs;->A00(Landroid/view/View;ZLandroid/view/View$OnClickListener;)V

    .line 16413
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/5h;->A02:Lcom/facebook/ads/redexgen/X/cp;

    sget-object v1, Lcom/facebook/ads/redexgen/X/5h;->A0J:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x47

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/5h;->A0J:[Ljava/lang/String;

    const-string v1, "tNSgYVifT5FMSy2OwNBjuNxtKDkDnPPF"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/5h;->A04(Landroid/view/View;)V

    .line 16414
    return-void
.end method

.method public setVideoPlaceholderUrl(Ljava/lang/String;)V
    .locals 1

    .line 16419
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A02:Lcom/facebook/ads/redexgen/X/cp;

    if-eqz v0, :cond_0

    .line 16420
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A02:Lcom/facebook/ads/redexgen/X/cp;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/cp;->setPlaceholderUrl(Ljava/lang/String;)V

    .line 16421
    :cond_0
    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 4

    .line 16422
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A00:Lcom/facebook/ads/redexgen/X/YM;

    if-eqz v0, :cond_0

    .line 16423
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5h;->A00:Lcom/facebook/ads/redexgen/X/YM;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/YM;->setVisibility(I)V

    .line 16424
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/5h;->A02:Lcom/facebook/ads/redexgen/X/cp;

    sget-object v2, Lcom/facebook/ads/redexgen/X/5h;->A0J:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/5h;->A0J:[Ljava/lang/String;

    const-string v1, "Key351avhXFGNIES0xzUdjVz8AR1nkGO"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    .line 16425
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5h;->A02:Lcom/facebook/ads/redexgen/X/cp;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/cp;->setVisibility(I)V

    .line 16426
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A02:Lcom/facebook/ads/redexgen/X/cp;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/cp;->setVideoURI(Ljava/lang/String;)V

    .line 16427
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5h;->A02:Lcom/facebook/ads/redexgen/X/cp;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A0D:Lcom/facebook/ads/redexgen/X/DE;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/cp;->A03(Lcom/facebook/ads/redexgen/X/Tf;)V

    .line 16428
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5h;->A02:Lcom/facebook/ads/redexgen/X/cp;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A09:Lcom/facebook/ads/redexgen/X/DX;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/cp;->A03(Lcom/facebook/ads/redexgen/X/Tf;)V

    .line 16429
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5h;->A02:Lcom/facebook/ads/redexgen/X/cp;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A0B:Lcom/facebook/ads/redexgen/X/DP;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/cp;->A03(Lcom/facebook/ads/redexgen/X/Tf;)V

    .line 16430
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5h;->A02:Lcom/facebook/ads/redexgen/X/cp;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A0A:Lcom/facebook/ads/redexgen/X/DR;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/cp;->A03(Lcom/facebook/ads/redexgen/X/Tf;)V

    .line 16431
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5h;->A02:Lcom/facebook/ads/redexgen/X/cp;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5h;->A0C:Lcom/facebook/ads/redexgen/X/DN;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/cp;->A03(Lcom/facebook/ads/redexgen/X/Tf;)V

    .line 16432
    :cond_2
    return-void
.end method
