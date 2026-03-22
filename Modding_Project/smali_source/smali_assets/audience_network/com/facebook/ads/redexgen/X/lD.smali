.class public final Lcom/facebook/ads/redexgen/X/lD;
.super Lcom/facebook/ads/redexgen/X/GQ;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/lE;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Gh;IJJ)V
    .locals 18

    .line 96329
    move-object/from16 v2, p1

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/facebook/ads/redexgen/X/lF;

    invoke-direct {v3, v2}, Lcom/facebook/ads/redexgen/X/lF;-><init>(Lcom/facebook/ads/redexgen/X/Gh;)V

    const/4 v0, 0x0

    new-instance v4, Lcom/facebook/ads/redexgen/X/lE;

    move/from16 v1, p2

    invoke-direct {v4, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/lE;-><init>(Lcom/facebook/ads/redexgen/X/Gh;ILcom/facebook/ads/redexgen/X/HC;)V

    .line 96330
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Gh;->A06()J

    move-result-wide v5

    iget-wide v9, v2, Lcom/facebook/ads/redexgen/X/Gh;->A09:J

    .line 96331
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Gh;->A05()J

    move-result-wide v15

    iget v1, v2, Lcom/facebook/ads/redexgen/X/Gh;->A06:I

    .line 96332
    const/4 v0, 0x6

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 96333
    const-wide/16 v7, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v13, p5

    move-wide/from16 v11, p3

    invoke-direct/range {v2 .. v17}, Lcom/facebook/ads/redexgen/X/GQ;-><init>(Lcom/facebook/ads/redexgen/X/GL;Lcom/facebook/ads/redexgen/X/GP;JJJJJJI)V

    .line 96334
    return-void
.end method
