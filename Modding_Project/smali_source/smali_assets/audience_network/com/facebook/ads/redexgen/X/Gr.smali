.class public abstract Lcom/facebook/ads/redexgen/X/Gr;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 745
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "LICRowSKufdYuvwk0u6bsAkyuycb3o"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "3c3IkJ7dOAlpkofMi9kyF"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "8"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "QmWMZEVudINzrA2kZLMiJGq1bO"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Rty4yJjWzs33"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "sO"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "x"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "tim3YlDUE2i6MxDxj85j1aO5zMSMD9gT"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Gr;->A00:[Ljava/lang/String;

    return-void
.end method

.method public static A00(Ljava/nio/ByteBuffer;)I
    .locals 4

    .line 38738
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    const/4 v0, 0x1

    if-le v1, v0, :cond_0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    :cond_0
    invoke-static {v2, v3}, Lcom/facebook/ads/redexgen/X/Gr;->A03(BB)J

    move-result-wide v0

    .line 38739
    .local v0, "packetDurationUs":J
    const-wide/32 v2, 0xbb80

    mul-long/2addr v2, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr v2, v0

    long-to-int v0, v2

    return v0
.end method

.method public static A01([B)I
    .locals 1

    .line 38740
    const/16 v0, 0x9

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static A02([B)I
    .locals 2

    .line 38741
    const/16 v0, 0xb

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v0, 0x8

    const/16 v0, 0xa

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v1, v0

    return v1
.end method

.method public static A03(BB)J
    .locals 4

    .line 38742
    and-int/lit16 v1, p0, 0xff

    .line 38743
    .local v0, "toc":I
    and-int/lit8 v0, v1, 0x3

    packed-switch v0, :pswitch_data_0

    .line 38744
    and-int/lit8 p1, p1, 0x3f

    .line 38745
    .local v1, "frames":I
    :goto_0
    shr-int/lit8 v1, v1, 0x3

    .line 38746
    .local v2, "config":I
    and-int/lit8 p0, v1, 0x3

    .line 38747
    .local v3, "length":I
    const/16 v0, 0x10

    if-lt v1, v0, :cond_0

    .line 38748
    const/16 v3, 0x9c4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gr;->A00:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4f

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Gr;->A00:[Ljava/lang/String;

    const-string v1, "r0CXzG1"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    shl-int/2addr v3, p0

    .line 38749
    .local p0, "frameDurationUs":I
    .restart local p0    # "frameDurationUs":I
    :goto_1
    int-to-long p0, p1

    int-to-long v0, v3

    mul-long/2addr p0, v0

    return-wide p0

    .line 38750
    .end local p0    # "frameDurationUs":I
    :cond_0
    const/16 v0, 0xc

    const/16 v3, 0x2710

    if-lt v1, v0, :cond_1

    .line 38751
    and-int/lit8 v0, p0, 0x1

    shl-int/2addr v3, v0

    .restart local p0    # "frameDurationUs":I
    goto :goto_1

    .line 38752
    .end local p0    # "frameDurationUs":I
    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    .line 38753
    const v3, 0xea60

    .restart local p0    # "frameDurationUs":I
    goto :goto_1

    .line 38754
    .end local p0    # "frameDurationUs":I
    :cond_2
    shl-int/2addr v3, p0

    goto :goto_1

    .line 38755
    .end local v1    # "frames":I
    :pswitch_0
    const/4 p1, 0x2

    .line 38756
    .restart local v1    # "frames":I
    goto :goto_0

    .line 38757
    .end local v1    # "frames":I
    :pswitch_1
    const/4 p1, 0x1

    .line 38758
    .restart local v1    # "frames":I
    goto :goto_0

    .line 38759
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static A04(J)J
    .locals 4

    .line 38760
    const-wide/32 v2, 0x3b9aca00

    mul-long/2addr v2, p0

    const-wide/32 v0, 0xbb80

    div-long/2addr v2, v0

    return-wide v2
.end method

.method public static A05([B)J
    .locals 4

    .line 38761
    const/4 v3, 0x0

    aget-byte v2, p0, v3

    array-length v1, p0

    const/4 v0, 0x1

    if-le v1, v0, :cond_0

    aget-byte v3, p0, v0

    :cond_0
    invoke-static {v2, v3}, Lcom/facebook/ads/redexgen/X/Gr;->A03(BB)J

    move-result-wide v0

    return-wide v0
.end method

.method public static A06([B)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 38762
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Gr;->A02([B)I

    move-result v0

    .line 38763
    .local v0, "preSkipSamples":I
    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Gr;->A04(J)J

    move-result-wide v4

    .line 38764
    .local v1, "preSkipNanos":J
    const-wide/16 v0, 0xf00

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Gr;->A04(J)J

    move-result-wide v2

    .line 38765
    .local v3, "seekPreRollNanos":J
    const/4 v0, 0x3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 38766
    .local v5, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38767
    invoke-static {v4, v5}, Lcom/facebook/ads/redexgen/X/Gr;->A07(J)[B

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38768
    invoke-static {v2, v3}, Lcom/facebook/ads/redexgen/X/Gr;->A07(J)[B

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38769
    return-object v1
.end method

.method public static A07(J)[B
    .locals 2

    .line 38770
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method
