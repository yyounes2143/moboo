.class public final Lcom/facebook/ads/redexgen/X/9L;
.super Lcom/facebook/ads/redexgen/X/my;
.source ""


# static fields
.field public static final A00:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 544
    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/9L;->A00:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26277
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/my;-><init>()V

    return-void
.end method

.method public static A00(ILjava/nio/ByteBuffer;)V
    .locals 5

    .line 26278
    const-wide v3, 0x3e00000000200000L    # 4.656612875245797E-10

    int-to-double v1, p0

    mul-double/2addr v1, v3

    double-to-float v0, v1

    .line 26279
    .local v0, "pcm32BitFloat":F
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 26280
    .local v1, "floatBits":I
    sget v0, Lcom/facebook/ads/redexgen/X/9L;->A00:I

    if-ne v1, v0, :cond_0

    .line 26281
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 26282
    :cond_0
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 26283
    return-void
.end method


# virtual methods
.method public final A09(Lcom/facebook/ads/redexgen/X/36;)Lcom/facebook/ads/redexgen/X/36;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/37;
        }
    .end annotation

    .line 26284
    iget v1, p1, Lcom/facebook/ads/redexgen/X/36;->A02:I

    .line 26285
    .local v0, "encoding":I
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/4a;->A14(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26286
    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    .line 26287
    iget v2, p1, Lcom/facebook/ads/redexgen/X/36;->A03:I

    iget v1, p1, Lcom/facebook/ads/redexgen/X/36;->A01:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/36;

    invoke-direct {v0, v2, v1, v3}, Lcom/facebook/ads/redexgen/X/36;-><init>(III)V

    .line 26288
    :goto_0
    return-object v0

    .line 26289
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/36;->A05:Lcom/facebook/ads/redexgen/X/36;

    goto :goto_0

    .line 26290
    :cond_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/37;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/37;-><init>(Lcom/facebook/ads/redexgen/X/36;)V

    throw v0
.end method

.method public final AGX(Ljava/nio/ByteBuffer;)V
    .locals 5

    .line 26291
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 26292
    .local v0, "position":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    .line 26293
    .local v1, "limit":I
    sub-int v1, v3, v4

    .line 26294
    .local v2, "size":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/my;->A05:Lcom/facebook/ads/redexgen/X/36;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/36;->A02:I

    sparse-switch v0, :sswitch_data_0

    .line 26295
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 26296
    :sswitch_0
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/my;->A00(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 26297
    .local v3, "buffer":Ljava/nio/ByteBuffer;
    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 26298
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v1, v0, 0xff

    add-int/lit8 v0, v4, 0x1

    .line 26299
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v1, v0

    add-int/lit8 v0, v4, 0x2

    .line 26300
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v1, v0

    add-int/lit8 v0, v4, 0x3

    .line 26301
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v1, v0

    .line 26302
    .local p0, "pcm32BitInteger":I
    invoke-static {v1, v2}, Lcom/facebook/ads/redexgen/X/9L;->A00(ILjava/nio/ByteBuffer;)V

    .line 26303
    .end local p0    # "pcm32BitInteger":I
    add-int/lit8 v4, v4, 0x4

    goto :goto_0

    .line 26304
    .end local v3    # "buffer":Ljava/nio/ByteBuffer;
    :sswitch_1
    div-int/lit8 v0, v1, 0x3

    mul-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/my;->A00(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 26305
    .restart local v3    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v4    # "i":I
    :goto_1
    if-ge v4, v3, :cond_0

    .line 26306
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v0, 0x8

    add-int/lit8 v0, v4, 0x1

    .line 26307
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v1, v0

    add-int/lit8 v0, v4, 0x2

    .line 26308
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v1, v0

    .line 26309
    .restart local p0    # "pcm32BitInteger":I
    invoke-static {v1, v2}, Lcom/facebook/ads/redexgen/X/9L;->A00(ILjava/nio/ByteBuffer;)V

    .line 26310
    .end local p0    # "pcm32BitInteger":I
    add-int/lit8 v4, v4, 0x3

    goto :goto_1

    .line 26311
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 26312
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 26313
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x20000000 -> :sswitch_1
        0x30000000 -> :sswitch_0
    .end sparse-switch
.end method
