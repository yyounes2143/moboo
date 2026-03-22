.class public final Lcom/facebook/ads/redexgen/X/lO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/H1;


# instance fields
.field public final A00:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 96548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96549
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lO;->A00:[B

    .line 96550
    return-void
.end method


# virtual methods
.method public final A6W(Lcom/facebook/ads/redexgen/X/or;)V
    .locals 0

    .line 96551
    return-void
.end method

.method public final synthetic AI5(Lcom/facebook/ads/redexgen/X/20;IZ)I
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Gy;->A00(Lcom/facebook/ads/redexgen/X/H1;Lcom/facebook/ads/redexgen/X/20;IZ)I

    move-result v0

    return v0
.end method

.method public final AI6(Lcom/facebook/ads/redexgen/X/20;IZI)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96552
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lO;->A00:[B

    array-length v0, v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 96553
    .local v0, "bytesToSkipByReading":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lO;->A00:[B

    const/4 v0, 0x0

    invoke-interface {p1, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/20;->read([BII)I

    move-result v1

    .line 96554
    .local v1, "bytesSkipped":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    .line 96555
    if-eqz p3, :cond_0

    .line 96556
    return v0

    .line 96557
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 96558
    :cond_1
    return v1
.end method

.method public final synthetic AI7(Lcom/facebook/ads/redexgen/X/4J;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Gy;->A01(Lcom/facebook/ads/redexgen/X/H1;Lcom/facebook/ads/redexgen/X/4J;I)V

    return-void
.end method

.method public final AI8(Lcom/facebook/ads/redexgen/X/4J;II)V
    .locals 0

    .line 96559
    invoke-virtual {p1, p2}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 96560
    return-void
.end method

.method public final AIA(JIIILcom/facebook/ads/redexgen/X/Gz;)V
    .locals 0

    .line 96561
    return-void
.end method

.method public final AJu(Landroid/net/Uri;)V
    .locals 0
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "New API added for Meta"
    .end annotation

    .line 96562
    return-void
.end method
