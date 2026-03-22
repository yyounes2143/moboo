.class public final Lcom/facebook/ads/redexgen/X/hi;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Re;


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

    .line 85294
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/hi;->A02:Lcom/facebook/ads/redexgen/X/NH;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/hi;->A03:Lcom/facebook/ads/redexgen/X/dL;

    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/hi;->A04:Z

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/hi;->A00:Lcom/facebook/ads/redexgen/X/hy;

    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/hi;->A01:Lcom/facebook/ads/redexgen/X/NG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ACM()V
    .locals 5

    .line 85295
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hi;->A03:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A1l(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hi;->A04:Z

    if-eqz v0, :cond_0

    .line 85296
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hi;->A02:Lcom/facebook/ads/redexgen/X/NH;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NH;->A05(Lcom/facebook/ads/redexgen/X/NH;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/hi;->A03:Lcom/facebook/ads/redexgen/X/dL;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/hi;->A00:Lcom/facebook/ads/redexgen/X/hy;

    new-instance v1, Lcom/facebook/ads/redexgen/X/hj;

    invoke-direct {v1, p0}, Lcom/facebook/ads/redexgen/X/hj;-><init>(Lcom/facebook/ads/redexgen/X/hi;)V

    .line 85297
    const/4 v0, 0x1

    invoke-static {v3, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/bu;->A01(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/hy;ILcom/facebook/ads/redexgen/X/br;)Lcom/facebook/ads/redexgen/X/bt;

    move-result-object v0

    .line 85298
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85299
    :goto_0
    return-void

    .line 85300
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hi;->A01:Lcom/facebook/ads/redexgen/X/NG;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/NG;->ACG()V

    goto :goto_0
.end method

.method public final ACN()V
    .locals 2

    .line 85301
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hi;->A01:Lcom/facebook/ads/redexgen/X/NG;

    sget-object v0, Lcom/facebook/ads/AdError;->CACHE_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/NG;->ACF(Lcom/facebook/ads/AdError;)V

    .line 85302
    return-void
.end method
