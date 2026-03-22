.class public final Lcom/facebook/ads/redexgen/X/7u;
.super Lcom/facebook/ads/redexgen/X/lS;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/kk;


# direct methods
.method public constructor <init>(JJLcom/facebook/ads/redexgen/X/Gl;Z)V
    .locals 8

    .line 22561
    iget v5, p5, Lcom/facebook/ads/redexgen/X/Gl;->A00:I

    iget v6, p5, Lcom/facebook/ads/redexgen/X/Gl;->A02:I

    move-object v0, p0

    move-wide v3, p3

    move v7, p6

    move-wide v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/lS;-><init>(JJIIZ)V

    .line 22562
    return-void
.end method


# virtual methods
.method public final A7b()J
    .locals 2

    .line 22563
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final A99(J)J
    .locals 2

    .line 22564
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/lS;->A02(J)J

    move-result-wide v0

    return-wide v0
.end method
