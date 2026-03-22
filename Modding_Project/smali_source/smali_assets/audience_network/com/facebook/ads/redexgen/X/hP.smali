.class public final Lcom/facebook/ads/redexgen/X/hP;
.super Lcom/facebook/ads/redexgen/X/Vt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/6y;->A0R(Lcom/facebook/ads/redexgen/X/MP;Lcom/facebook/ads/redexgen/X/TE;Lcom/facebook/ads/redexgen/X/TC;Lcom/facebook/ads/redexgen/X/NU;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/iS;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/NU;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/6y;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/6y;Lcom/facebook/ads/redexgen/X/NU;Lcom/facebook/ads/redexgen/X/iS;)V
    .locals 0

    .line 84782
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/hP;->A02:Lcom/facebook/ads/redexgen/X/6y;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/hP;->A01:Lcom/facebook/ads/redexgen/X/NU;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/hP;->A00:Lcom/facebook/ads/redexgen/X/iS;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vt;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 4

    .line 84783
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hP;->A02:Lcom/facebook/ads/redexgen/X/6y;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hP;->A01:Lcom/facebook/ads/redexgen/X/NU;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/hQ;->A0T(Lcom/facebook/ads/redexgen/X/NU;)V

    .line 84784
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hP;->A02:Lcom/facebook/ads/redexgen/X/6y;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hP;->A00:Lcom/facebook/ads/redexgen/X/iS;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/hQ;->A0Q(Lcom/facebook/ads/redexgen/X/MP;)V

    .line 84785
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hP;->A02:Lcom/facebook/ads/redexgen/X/6y;

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/hQ;->A00:Lcom/facebook/ads/redexgen/X/MP;

    .line 84786
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERSTITIAL_AD_TIMEOUT:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/V1;->A00(Lcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/redexgen/X/V1;

    move-result-object v3

    .line 84787
    .local v0, "error":Lcom/facebook/ads/redexgen/X/V1;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hP;->A02:Lcom/facebook/ads/redexgen/X/6y;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/hQ;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    .line 84788
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v2

    .line 84789
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/V1;->A03()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v1

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/V1;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LH;->A5Y(ILjava/lang/String;)V

    .line 84790
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hP;->A02:Lcom/facebook/ads/redexgen/X/6y;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/hQ;->A07:Lcom/facebook/ads/redexgen/X/MQ;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/MQ;->A0G(Lcom/facebook/ads/redexgen/X/V1;)V

    .line 84791
    return-void
.end method
