.class public final Lcom/facebook/ads/redexgen/X/hR;
.super Lcom/facebook/ads/redexgen/X/Vt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/hQ;->ADB(Lcom/facebook/ads/redexgen/X/V1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/hQ;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/V1;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/hQ;Lcom/facebook/ads/redexgen/X/V1;)V
    .locals 0

    .line 85081
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/hR;->A00:Lcom/facebook/ads/redexgen/X/hQ;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/hR;->A01:Lcom/facebook/ads/redexgen/X/V1;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vt;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 3

    .line 85082
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hR;->A00:Lcom/facebook/ads/redexgen/X/hQ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/hQ;->A0B:Lcom/facebook/ads/redexgen/X/dL;

    .line 85083
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hR;->A01:Lcom/facebook/ads/redexgen/X/V1;

    .line 85084
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/V1;->A03()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hR;->A01:Lcom/facebook/ads/redexgen/X/V1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/V1;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/LH;->A5Y(ILjava/lang/String;)V

    .line 85085
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hR;->A00:Lcom/facebook/ads/redexgen/X/hQ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/hQ;->A07:Lcom/facebook/ads/redexgen/X/MQ;

    if-eqz v0, :cond_0

    .line 85086
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hR;->A00:Lcom/facebook/ads/redexgen/X/hQ;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/hQ;->A07:Lcom/facebook/ads/redexgen/X/MQ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hR;->A01:Lcom/facebook/ads/redexgen/X/V1;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/MQ;->A0G(Lcom/facebook/ads/redexgen/X/V1;)V

    .line 85087
    :cond_0
    return-void
.end method
