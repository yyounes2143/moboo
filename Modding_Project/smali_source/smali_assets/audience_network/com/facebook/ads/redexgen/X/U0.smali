.class public final Lcom/facebook/ads/redexgen/X/U0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/U1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NumberedRecordFile"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/Tx;


# direct methods
.method public constructor <init>(ILcom/facebook/ads/redexgen/X/Tx;)V
    .locals 0

    .line 66563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66564
    iput p1, p0, Lcom/facebook/ads/redexgen/X/U0;->A00:I

    .line 66565
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/U0;->A01:Lcom/facebook/ads/redexgen/X/Tx;

    .line 66566
    return-void
.end method


# virtual methods
.method public final A00()I
    .locals 1

    .line 66567
    iget v0, p0, Lcom/facebook/ads/redexgen/X/U0;->A00:I

    return v0
.end method

.method public final A01()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66568
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U0;->A01:Lcom/facebook/ads/redexgen/X/Tx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tx;->A05()I

    move-result v0

    return v0
.end method

.method public final A02(I[BI[II)Lcom/facebook/ads/redexgen/X/To;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66569
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U0;->A01:Lcom/facebook/ads/redexgen/X/Tx;

    move v5, p5

    move-object v4, p4

    move v3, p3

    move-object v2, p2

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Tx;->A06(I[BI[II)Lcom/facebook/ads/redexgen/X/To;

    move-result-object v0

    return-object v0
.end method

.method public final A03()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66570
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U0;->A01:Lcom/facebook/ads/redexgen/X/Tx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tx;->A07()V

    .line 66571
    return-void
.end method

.method public final A04()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66572
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U0;->A01:Lcom/facebook/ads/redexgen/X/Tx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tx;->A08()V

    .line 66573
    return-void
.end method

.method public final A05([B)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66574
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U0;->A01:Lcom/facebook/ads/redexgen/X/Tx;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Tx;->A09([B)Z

    move-result v0

    return v0
.end method
