.class public final Lcom/facebook/ads/redexgen/X/le;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Ed;


# instance fields
.field public final A00:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 96823
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/le;-><init>(I)V

    .line 96824
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 96825
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96826
    iput p1, p0, Lcom/facebook/ads/redexgen/X/le;->A00:I

    .line 96827
    return-void
.end method


# virtual methods
.method public final A8R(I)I
    .locals 2

    .line 96828
    iget v1, p0, Lcom/facebook/ads/redexgen/X/le;->A00:I

    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    .line 96829
    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 96830
    const/4 v0, 0x6

    .line 96831
    :goto_0
    return v0

    .line 96832
    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    .line 96833
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/le;->A00:I

    return v0
.end method

.method public final A8m(Lcom/facebook/ads/redexgen/X/Ec;)J
    .locals 2

    .line 96834
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/Ec;->A03:Ljava/io/IOException;

    .line 96835
    .local v0, "exception":Ljava/io/IOException;
    instance-of v0, v1, Lcom/facebook/ads/redexgen/X/2i;

    if-nez v0, :cond_0

    instance-of v0, v1, Ljava/io/FileNotFoundException;

    if-nez v0, :cond_0

    instance-of v0, v1, Lcom/facebook/ads/redexgen/X/9h;

    if-nez v0, :cond_0

    instance-of v0, v1, Lcom/facebook/ads/redexgen/X/En;

    if-nez v0, :cond_0

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/4z;->A00(Ljava/io/IOException;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96836
    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 96837
    :goto_0
    return-wide v0

    .line 96838
    :cond_1
    iget v0, p1, Lcom/facebook/ads/redexgen/X/Ec;->A00:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit16 v1, v0, 0x3e8

    const/16 v0, 0x1388

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method
