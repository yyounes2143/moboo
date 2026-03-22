.class public final Lcom/facebook/ads/redexgen/X/hg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/S7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/NH;->A09(Lcom/facebook/ads/redexgen/X/dL;Ljava/util/EnumSet;Lcom/facebook/ads/redexgen/X/hy;ILcom/facebook/ads/redexgen/X/NG;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/hy;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/NG;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/NH;

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/dL;

.field public final synthetic A04:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/NH;Lcom/facebook/ads/redexgen/X/dL;ZLcom/facebook/ads/redexgen/X/hy;Lcom/facebook/ads/redexgen/X/NG;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 85278
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/hg;->A02:Lcom/facebook/ads/redexgen/X/NH;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/hg;->A03:Lcom/facebook/ads/redexgen/X/dL;

    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/hg;->A04:Z

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/hg;->A00:Lcom/facebook/ads/redexgen/X/hy;

    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/hg;->A01:Lcom/facebook/ads/redexgen/X/NG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private A00(Z)V
    .locals 5

    .line 85279
    if-eqz p1, :cond_1

    .line 85280
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hg;->A03:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A1l(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hg;->A04:Z

    if-eqz v0, :cond_0

    .line 85281
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hg;->A02:Lcom/facebook/ads/redexgen/X/NH;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NH;->A05(Lcom/facebook/ads/redexgen/X/NH;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/hg;->A03:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/hg;->A00:Lcom/facebook/ads/redexgen/X/hy;

    new-instance v1, Lcom/facebook/ads/redexgen/X/hh;

    invoke-direct {v1, p0}, Lcom/facebook/ads/redexgen/X/hh;-><init>(Lcom/facebook/ads/redexgen/X/hg;)V

    .line 85282
    const/4 v0, 0x1

    invoke-static {v3, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/bu;->A01(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/hy;ILcom/facebook/ads/redexgen/X/br;)Lcom/facebook/ads/redexgen/X/bt;

    move-result-object v0

    .line 85283
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85284
    :goto_0
    return-void

    .line 85285
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hg;->A01:Lcom/facebook/ads/redexgen/X/NG;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/NG;->ACG()V

    goto :goto_0

    .line 85286
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hg;->A01:Lcom/facebook/ads/redexgen/X/NG;

    sget-object v0, Lcom/facebook/ads/AdError;->CACHE_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/NG;->ACF(Lcom/facebook/ads/AdError;)V

    goto :goto_0
.end method


# virtual methods
.method public final ACh()V
    .locals 1

    .line 85287
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/hg;->A00(Z)V

    .line 85288
    return-void
.end method

.method public final ACq()V
    .locals 1

    .line 85289
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/hg;->A00(Z)V

    .line 85290
    return-void
.end method
