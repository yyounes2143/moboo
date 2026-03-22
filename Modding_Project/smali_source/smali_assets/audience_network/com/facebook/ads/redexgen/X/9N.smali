.class public final Lcom/facebook/ads/redexgen/X/9N;
.super Lcom/facebook/ads/redexgen/X/my;
.source ""


# instance fields
.field public A00:[I

.field public A01:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26332
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/my;-><init>()V

    return-void
.end method


# virtual methods
.method public final A09(Lcom/facebook/ads/redexgen/X/36;)Lcom/facebook/ads/redexgen/X/36;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/37;
        }
    .end annotation

    .line 26333
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/9N;->A01:[I

    .line 26334
    .local v0, "outputChannels":[I
    if-nez v5, :cond_0

    .line 26335
    sget-object v0, Lcom/facebook/ads/redexgen/X/36;->A05:Lcom/facebook/ads/redexgen/X/36;

    return-object v0

    .line 26336
    :cond_0
    iget v0, p1, Lcom/facebook/ads/redexgen/X/36;->A02:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_6

    .line 26337
    iget v1, p1, Lcom/facebook/ads/redexgen/X/36;->A01:I

    array-length v0, v5

    if-eq v1, v0, :cond_2

    const/4 v3, 0x1

    .line 26338
    .local v1, "active":Z
    :goto_0
    const/4 v2, 0x0

    .local v3, "i":I
    :goto_1
    array-length v0, v5

    if-ge v2, v0, :cond_4

    .line 26339
    aget v1, v5, v2

    .line 26340
    .local p0, "channelIndex":I
    iget v0, p1, Lcom/facebook/ads/redexgen/X/36;->A01:I

    if-ge v1, v0, :cond_3

    .line 26341
    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    :goto_2
    or-int/2addr v3, v0

    .line 26342
    .end local p0    # "channelIndex":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 26343
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 26344
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 26345
    .restart local p0    # "channelIndex":I
    :cond_3
    new-instance v0, Lcom/facebook/ads/redexgen/X/37;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/37;-><init>(Lcom/facebook/ads/redexgen/X/36;)V

    throw v0

    .line 26346
    .end local v3    # "i":I
    .end local p0    # "channelIndex":I
    :cond_4
    if-eqz v3, :cond_5

    .line 26347
    iget v2, p1, Lcom/facebook/ads/redexgen/X/36;->A03:I

    array-length v1, v5

    new-instance v0, Lcom/facebook/ads/redexgen/X/36;

    invoke-direct {v0, v2, v1, v4}, Lcom/facebook/ads/redexgen/X/36;-><init>(III)V

    .line 26348
    :goto_3
    return-object v0

    .line 26349
    :cond_5
    sget-object v0, Lcom/facebook/ads/redexgen/X/36;->A05:Lcom/facebook/ads/redexgen/X/36;

    goto :goto_3

    .line 26350
    .end local v1    # "active":Z
    :cond_6
    new-instance v0, Lcom/facebook/ads/redexgen/X/37;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/37;-><init>(Lcom/facebook/ads/redexgen/X/36;)V

    throw v0
.end method

.method public final A0A()V
    .locals 1

    .line 26351
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9N;->A01:[I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9N;->A00:[I

    .line 26352
    return-void
.end method

.method public final A0C([I)V
    .locals 0

    .line 26353
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9N;->A01:[I

    .line 26354
    return-void
.end method

.method public final AGX(Ljava/nio/ByteBuffer;)V
    .locals 7

    .line 26355
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9N;->A00:[I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    .line 26356
    .local v0, "outputChannels":[I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 26357
    .local v1, "position":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    .line 26358
    .local v2, "limit":I
    sub-int v1, v4, v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/my;->A05:Lcom/facebook/ads/redexgen/X/36;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/36;->A00:I

    div-int/2addr v1, v0

    .line 26359
    .local v3, "frameCount":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/my;->A06:Lcom/facebook/ads/redexgen/X/36;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/36;->A00:I

    mul-int/2addr v0, v1

    .line 26360
    .local v4, "outputSize":I
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/my;->A00(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 26361
    .local v5, "buffer":Ljava/nio/ByteBuffer;
    :goto_0
    if-ge v5, v4, :cond_1

    .line 26362
    array-length v2, v6

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_0

    aget v0, v6, v1

    .line 26363
    .local p1, "channelIndex":I
    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v5

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 26364
    .end local p1    # "channelIndex":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 26365
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/my;->A05:Lcom/facebook/ads/redexgen/X/36;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/36;->A00:I

    add-int/2addr v5, v0

    goto :goto_0

    .line 26366
    :cond_1
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 26367
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 26368
    return-void
.end method
