.class public final Lcom/facebook/ads/redexgen/X/32;
.super Lcom/facebook/ads/redexgen/X/DP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/D4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/D4;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/D4;)V
    .locals 0

    .line 10461
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/32;->A00:Lcom/facebook/ads/redexgen/X/D4;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DP;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/DQ;)V
    .locals 3

    .line 10462
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/32;->A00:Lcom/facebook/ads/redexgen/X/D4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/D4;->A0C(Lcom/facebook/ads/redexgen/X/D4;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10463
    return-void

    .line 10464
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/32;->A00:Lcom/facebook/ads/redexgen/X/D4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/D4;->A03(Lcom/facebook/ads/redexgen/X/D4;)Lcom/facebook/ads/redexgen/X/dr;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/dr;->A02:Lcom/facebook/ads/redexgen/X/dr;

    if-eq v1, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/32;->A00:Lcom/facebook/ads/redexgen/X/D4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/D4;->A0D(Lcom/facebook/ads/redexgen/X/D4;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10465
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/32;->A00:Lcom/facebook/ads/redexgen/X/D4;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/D4;->A04(Lcom/facebook/ads/redexgen/X/D4;Lcom/facebook/ads/redexgen/X/dr;)Lcom/facebook/ads/redexgen/X/dr;

    .line 10466
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/32;->A00:Lcom/facebook/ads/redexgen/X/D4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/D4;->A09(Lcom/facebook/ads/redexgen/X/D4;)V

    .line 10467
    return-void

    .line 10468
    :cond_2
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/32;->A00:Lcom/facebook/ads/redexgen/X/D4;

    const/4 v1, 0x0

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D4;->A0A(Lcom/facebook/ads/redexgen/X/D4;II)V

    .line 10469
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/Td;)V
    .locals 0

    .line 10470
    check-cast p1, Lcom/facebook/ads/redexgen/X/DQ;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/32;->A00(Lcom/facebook/ads/redexgen/X/DQ;)V

    return-void
.end method
