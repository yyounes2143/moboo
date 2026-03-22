.class public final Lcom/facebook/ads/redexgen/X/Wd;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Wc;
    }
.end annotation


# instance fields
.field public A00:F

.field public A01:F

.field public A02:J

.field public A03:Z

.field public A04:Z

.field public final A05:Landroid/os/Handler;

.field public final A06:Lcom/facebook/ads/redexgen/X/Wc;


# direct methods
.method public constructor <init>(IFJLandroid/os/Handler;Lcom/facebook/ads/redexgen/X/Wc;)V
    .locals 0

    .line 71347
    invoke-direct {p0, p1, p6, p5}, Lcom/facebook/ads/redexgen/X/Wd;-><init>(ILcom/facebook/ads/redexgen/X/Wc;Landroid/os/Handler;)V

    .line 71348
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/Wd;->A02:J

    .line 71349
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Wd;->A01:F

    .line 71350
    return-void
.end method

.method public constructor <init>(ILcom/facebook/ads/redexgen/X/Wc;)V
    .locals 1

    .line 71351
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/Wd;-><init>(ILcom/facebook/ads/redexgen/X/Wc;Landroid/os/Handler;)V

    .line 71352
    return-void
.end method

.method public constructor <init>(ILcom/facebook/ads/redexgen/X/Wc;Landroid/os/Handler;)V
    .locals 2

    .line 71353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71354
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Wd;->A04:Z

    .line 71355
    int-to-float v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Wd;->A00:F

    .line 71356
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Wd;->A06:Lcom/facebook/ads/redexgen/X/Wc;

    .line 71357
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Wd;->A05:Landroid/os/Handler;

    .line 71358
    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Wd;->A02:J

    .line 71359
    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Wd;->A01:F

    .line 71360
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Wd;)J
    .locals 1

    .line 71361
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Wd;->A02:J

    return-wide v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Wd;)Landroid/os/Handler;
    .locals 0

    .line 71362
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Wd;->A05:Landroid/os/Handler;

    return-object p0
.end method

.method private A02()V
    .locals 2

    .line 71363
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Wd;->A00:F

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wd;->A01:F

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Wd;->A00:F

    .line 71364
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wd;->A06:Lcom/facebook/ads/redexgen/X/Wc;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wd;->A00:F

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Wc;->AEn(F)V

    .line 71365
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Wd;->A00:F

    const/4 v0, 0x0

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Wd;->A03:Z

    if-nez v0, :cond_0

    .line 71366
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Wd;->A03:Z

    .line 71367
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wd;->A06:Lcom/facebook/ads/redexgen/X/Wc;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Wc;->ACp()V

    .line 71368
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Wd;->A04:Z

    .line 71369
    :cond_0
    return-void
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Wd;)V
    .locals 0

    .line 71370
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wd;->A02()V

    return-void
.end method


# virtual methods
.method public final A04()Z
    .locals 2

    .line 71371
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Wd;->A00:F

    const/4 v0, 0x0

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A05()Z
    .locals 1

    .line 71372
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Wd;->A04:Z

    return v0
.end method

.method public final A06()Z
    .locals 2

    .line 71373
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Wd;->A05()Z

    move-result v1

    const/4 v0, 0x0

    if-nez v1, :cond_0

    .line 71374
    return v0

    .line 71375
    :cond_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Wd;->A04:Z

    .line 71376
    const/4 v0, 0x1

    return v0
.end method

.method public final A07()Z
    .locals 5

    .line 71377
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Wd;->A04()Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Wd;->A03:Z

    if-nez v0, :cond_0

    .line 71378
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/Wd;->A03:Z

    .line 71379
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wd;->A06:Lcom/facebook/ads/redexgen/X/Wc;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Wc;->ACp()V

    .line 71380
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Wd;->A04()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Wd;->A05()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71381
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 71382
    :cond_2
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/Wd;->A04:Z

    .line 71383
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wd;->A06:Lcom/facebook/ads/redexgen/X/Wc;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wd;->A00:F

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Wc;->AEn(F)V

    .line 71384
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Wd;->A05:Landroid/os/Handler;

    new-instance v2, Lcom/facebook/ads/redexgen/X/Oz;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/Oz;-><init>(Lcom/facebook/ads/redexgen/X/Wd;)V

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Wd;->A02:J

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 71385
    return v4
.end method
