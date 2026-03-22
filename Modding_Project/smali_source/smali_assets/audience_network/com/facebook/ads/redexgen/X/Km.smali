.class public final Lcom/facebook/ads/redexgen/X/Km;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Kn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChunkHeader"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    .line 49673
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49674
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Km;->A00:I

    .line 49675
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/Km;->A01:J

    .line 49676
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/lN;Lcom/facebook/ads/redexgen/X/4J;)Lcom/facebook/ads/redexgen/X/Km;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49677
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v2

    const/16 v1, 0x8

    const/4 v0, 0x0

    invoke-interface {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/lN;->AG9([BII)V

    .line 49678
    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 49679
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result p0

    .line 49680
    .local v0, "id":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4J;->A0O()J

    move-result-wide v1

    .line 49681
    .local v1, "size":J
    new-instance v0, Lcom/facebook/ads/redexgen/X/Km;

    invoke-direct {v0, p0, v1, v2}, Lcom/facebook/ads/redexgen/X/Km;-><init>(IJ)V

    return-object v0
.end method
