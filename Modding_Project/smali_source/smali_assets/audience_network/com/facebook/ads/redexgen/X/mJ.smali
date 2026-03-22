.class public final Lcom/facebook/ads/redexgen/X/mJ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Cr;
.implements Lcom/facebook/ads/redexgen/X/Cs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/9A;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SampleStreamImpl"
.end annotation


# instance fields
.field public final A00:I

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/9A;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9A;I)V
    .locals 0

    .line 98563
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/mJ;->A01:Lcom/facebook/ads/redexgen/X/9A;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98564
    iput p2, p0, Lcom/facebook/ads/redexgen/X/mJ;->A00:I

    .line 98565
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/mJ;)I
    .locals 0

    .line 98566
    iget p0, p0, Lcom/facebook/ads/redexgen/X/mJ;->A00:I

    return p0
.end method


# virtual methods
.method public final A81()J
    .locals 2
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Added in D21840558 for FBVP"
    .end annotation

    .line 98567
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mJ;->A01:Lcom/facebook/ads/redexgen/X/9A;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9A;->A0W(Lcom/facebook/ads/redexgen/X/9A;)[Lcom/facebook/ads/redexgen/X/mE;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/mJ;->A00:I

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/mE;->A0S()J

    move-result-wide v0

    return-wide v0
.end method

.method public final AAV()Z
    .locals 2

    .line 98568
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/mJ;->A01:Lcom/facebook/ads/redexgen/X/9A;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/mJ;->A00:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9A;->A0f(I)Z

    move-result v0

    return v0
.end method

.method public final ABs()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98569
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/mJ;->A01:Lcom/facebook/ads/redexgen/X/9A;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/mJ;->A00:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9A;->A0d(I)V

    .line 98570
    return-void
.end method

.method public final AGf(Lcom/facebook/ads/redexgen/X/6N;Lcom/facebook/ads/redexgen/X/nY;I)I
    .locals 2

    .line 98571
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/mJ;->A01:Lcom/facebook/ads/redexgen/X/9A;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/mJ;->A00:I

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/9A;->A0Y(ILcom/facebook/ads/redexgen/X/6N;Lcom/facebook/ads/redexgen/X/nY;I)I

    move-result v0

    return v0
.end method

.method public final AJI(J)I
    .locals 2

    .line 98572
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/mJ;->A01:Lcom/facebook/ads/redexgen/X/9A;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/mJ;->A00:I

    invoke-virtual {v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/9A;->A0X(IJ)I

    move-result v0

    return v0
.end method
