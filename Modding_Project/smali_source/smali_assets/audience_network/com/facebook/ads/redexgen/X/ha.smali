.class public final Lcom/facebook/ads/redexgen/X/ha;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Re;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/NH;->A08(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/77;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/NH;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/NH;)V
    .locals 0

    .line 85222
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ha;->A00:Lcom/facebook/ads/redexgen/X/NH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ACM()V
    .locals 1

    .line 85223
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ha;->A00:Lcom/facebook/ads/redexgen/X/NH;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NH;->A02(Lcom/facebook/ads/redexgen/X/NH;)Lcom/facebook/ads/redexgen/X/NG;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/NG;->ACG()V

    .line 85224
    return-void
.end method

.method public final ACN()V
    .locals 2

    .line 85225
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ha;->A00:Lcom/facebook/ads/redexgen/X/NH;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NH;->A02(Lcom/facebook/ads/redexgen/X/NH;)Lcom/facebook/ads/redexgen/X/NG;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/AdError;->CACHE_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/NG;->ACF(Lcom/facebook/ads/AdError;)V

    .line 85226
    return-void
.end method
