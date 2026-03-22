.class public final Lcom/facebook/ads/redexgen/X/PV;
.super Lcom/facebook/ads/redexgen/X/VX;
.source ""


# instance fields
.field public final A00:I

.field public final A01:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/TE;)V
    .locals 2

    .line 58314
    sget-object v1, Lcom/facebook/ads/redexgen/X/VW;->A03:Lcom/facebook/ads/redexgen/X/VW;

    const/4 v0, 0x0

    invoke-direct {p0, v1, p3, v0}, Lcom/facebook/ads/redexgen/X/VX;-><init>(Lcom/facebook/ads/redexgen/X/VW;Lcom/facebook/ads/redexgen/X/TE;Ljava/lang/String;)V

    .line 58315
    iput p2, p0, Lcom/facebook/ads/redexgen/X/PV;->A00:I

    .line 58316
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/PV;->A01:Ljava/lang/String;

    .line 58317
    return-void
.end method


# virtual methods
.method public final bridge synthetic A00()Lcom/facebook/ads/redexgen/X/TE;
    .locals 1

    .line 58318
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/VX;->A00()Lcom/facebook/ads/redexgen/X/TE;

    move-result-object v0

    return-object v0
.end method

.method public final A03()I
    .locals 1

    .line 58319
    iget v0, p0, Lcom/facebook/ads/redexgen/X/PV;->A00:I

    return v0
.end method

.method public final A04()Ljava/lang/String;
    .locals 1

    .line 58320
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PV;->A01:Ljava/lang/String;

    return-object v0
.end method
