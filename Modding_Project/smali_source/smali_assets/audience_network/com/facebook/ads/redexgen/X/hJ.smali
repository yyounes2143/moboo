.class public final Lcom/facebook/ads/redexgen/X/hJ;
.super Lcom/facebook/ads/redexgen/X/Vt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/6r;->A0R(Lcom/facebook/ads/redexgen/X/MP;Lcom/facebook/ads/redexgen/X/TE;Lcom/facebook/ads/redexgen/X/TC;Lcom/facebook/ads/redexgen/X/NU;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7B;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/NU;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/6r;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/6r;Lcom/facebook/ads/redexgen/X/NU;Lcom/facebook/ads/redexgen/X/7B;)V
    .locals 0

    .line 84597
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/hJ;->A02:Lcom/facebook/ads/redexgen/X/6r;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/hJ;->A01:Lcom/facebook/ads/redexgen/X/NU;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/hJ;->A00:Lcom/facebook/ads/redexgen/X/7B;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vt;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 4

    .line 84598
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hJ;->A02:Lcom/facebook/ads/redexgen/X/6r;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hJ;->A01:Lcom/facebook/ads/redexgen/X/NU;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/hQ;->A0T(Lcom/facebook/ads/redexgen/X/NU;)V

    .line 84599
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hJ;->A02:Lcom/facebook/ads/redexgen/X/6r;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hJ;->A00:Lcom/facebook/ads/redexgen/X/7B;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/hQ;->A0Q(Lcom/facebook/ads/redexgen/X/MP;)V

    .line 84600
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hJ;->A02:Lcom/facebook/ads/redexgen/X/6r;

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/hQ;->A00:Lcom/facebook/ads/redexgen/X/MP;

    .line 84601
    sget-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->RV_AD_TIMEOUT:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 84602
    .local v0, "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hJ;->A02:Lcom/facebook/ads/redexgen/X/6r;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/hQ;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v2

    invoke-virtual {v3}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v1

    invoke-virtual {v3}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LH;->A5Y(ILjava/lang/String;)V

    .line 84603
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hJ;->A02:Lcom/facebook/ads/redexgen/X/6r;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/hQ;->A07:Lcom/facebook/ads/redexgen/X/MQ;

    const-string v1, ""

    new-instance v0, Lcom/facebook/ads/redexgen/X/V1;

    invoke-direct {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/V1;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/MQ;->A0G(Lcom/facebook/ads/redexgen/X/V1;)V

    .line 84604
    return-void
.end method
