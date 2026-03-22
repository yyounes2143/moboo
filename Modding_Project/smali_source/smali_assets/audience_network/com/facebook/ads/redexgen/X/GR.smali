.class public abstract Lcom/facebook/ads/redexgen/X/GR;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/GR;->A02()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/4J;)I
    .locals 3

    .line 37642
    const/4 v2, 0x0

    .line 37643
    .local v0, "value":I
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v0

    if-nez v0, :cond_1

    .line 37644
    const/4 v0, -0x1

    return v0

    .line 37645
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v1

    .line 37646
    .local v1, "b":I
    add-int/2addr v2, v1

    .line 37647
    const/16 v0, 0xff

    if-eq v1, v0, :cond_0

    .line 37648
    return v2
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/GR;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x79

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x34

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/GR;->A00:[B

    return-void

    :array_0
    .array-data 1
        -0x41t
        -0x1ft
        -0x23t
        -0x2ft
        -0x10t
        -0x1bt
        -0x18t
        -0x24t
        -0xct
        -0xet
        -0x7t
        -0x7t
        -0xet
        -0x9t
        -0x10t
        -0x57t
        -0x5t
        -0x12t
        -0xat
        -0x16t
        -0xet
        -0x9t
        -0x13t
        -0x12t
        -0x5t
        -0x57t
        -0x8t
        -0x11t
        -0x57t
        -0xat
        -0x16t
        -0xbt
        -0x11t
        -0x8t
        -0x5t
        -0xat
        -0x12t
        -0x13t
        -0x57t
        -0x24t
        -0x32t
        -0x2et
        -0x57t
        -0x29t
        -0x36t
        -0x2bt
        -0x57t
        -0x2t
        -0x9t
        -0xet
        -0x3t
        -0x49t
    .end array-data
.end method

.method public static A03(JLcom/facebook/ads/redexgen/X/4J;[Lcom/facebook/ads/redexgen/X/H1;)V
    .locals 9

    .line 37649
    :goto_0
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v0

    const/4 v8, 0x1

    if-le v0, v8, :cond_9

    .line 37650
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/GR;->A00(Lcom/facebook/ads/redexgen/X/4J;)I

    move-result v2

    .line 37651
    .local v0, "payloadType":I
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/GR;->A00(Lcom/facebook/ads/redexgen/X/4J;)I

    move-result v1

    .line 37652
    .local v2, "payloadSize":I
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v7

    add-int/2addr v7, v1

    .line 37653
    .local v3, "nextPayloadPosition":I
    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4J;->A07()I

    move-result v0

    if-le v1, v0, :cond_2

    .line 37654
    .end local v4
    .end local v5
    .end local v6
    .end local v8
    .end local p0    # null:J
    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x7

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/GR;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x7

    const/16 v1, 0x2d

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/GR;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 37655
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4J;->A0A()I

    move-result v7

    .line 37656
    :cond_1
    :goto_1
    invoke-virtual {p2, v7}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 37657
    .end local v0    # "payloadType":I
    .end local v2    # "payloadSize":I
    .end local v3    # "nextPayloadPosition":I
    goto :goto_0

    .line 37658
    :cond_2
    const/4 v0, 0x4

    if-ne v2, v0, :cond_1

    const/16 v0, 0x8

    if-lt v1, v0, :cond_1

    .line 37659
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v6

    .line 37660
    .local v4, "countryCode":I
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4J;->A0M()I

    move-result v5

    .line 37661
    .local v5, "providerCode":I
    const/4 v4, 0x0

    .line 37662
    .local v6, "userIdentifier":I
    const/16 v3, 0x31

    if-ne v5, v3, :cond_3

    .line 37663
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4J;->A0C()I

    move-result v4

    .line 37664
    :cond_3
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v2

    .line 37665
    .local v8, "userDataTypeCode":I
    const/16 v1, 0x2f

    if-ne v5, v1, :cond_4

    .line 37666
    invoke-virtual {p2, v8}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 37667
    :cond_4
    const/16 v0, 0xb5

    if-ne v6, v0, :cond_8

    if-eq v5, v3, :cond_5

    if-ne v5, v1, :cond_8

    :cond_5
    const/4 v0, 0x3

    if-ne v2, v0, :cond_8

    const/4 v1, 0x1

    .line 37668
    .local p0, "messageIsSupportedCeaCaption":Z
    :goto_2
    if-ne v5, v3, :cond_6

    .line 37669
    const v0, 0x47413934

    if-ne v4, v0, :cond_7

    :goto_3
    and-int/2addr v1, v8

    .line 37670
    :cond_6
    if-eqz v1, :cond_1

    .line 37671
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/GR;->A04(JLcom/facebook/ads/redexgen/X/4J;[Lcom/facebook/ads/redexgen/X/H1;)V

    goto :goto_1

    .line 37672
    :cond_7
    const/4 v8, 0x0

    goto :goto_3

    .line 37673
    :cond_8
    const/4 v1, 0x0

    goto :goto_2

    .line 37674
    :cond_9
    return-void
.end method

.method public static A04(JLcom/facebook/ads/redexgen/X/4J;[Lcom/facebook/ads/redexgen/X/H1;)V
    .locals 15

    .line 37675
    move-object/from16 v6, p2

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v2

    .line 37676
    .local v2, "firstByte":I
    and-int/lit8 v0, v2, 0x40

    const/4 v5, 0x0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 37677
    .local v3, "processCcDataFlag":Z
    :goto_0
    if-nez v0, :cond_1

    .line 37678
    return-void

    .line 37679
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 37680
    :cond_1
    and-int/lit8 v0, v2, 0x1f

    .line 37681
    .local v6, "ccCount":I
    invoke-virtual {v6, v1}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 37682
    mul-int/lit8 v12, v0, 0x3

    .line 37683
    .local v5, "sampleLength":I
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v4

    .line 37684
    .local v14, "sampleStartPosition":I
    move-object/from16 v7, p3

    array-length v3, v7

    :goto_1
    if-ge v5, v3, :cond_3

    aget-object v8, v7, v5

    .line 37685
    .local v13, "output":Lcom/facebook/ads/redexgen/X/H1;
    invoke-virtual {v6, v4}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 37686
    invoke-interface {v8, v6, v12}, Lcom/facebook/ads/redexgen/X/H1;->AI7(Lcom/facebook/ads/redexgen/X/4J;I)V

    .line 37687
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v9, p0

    cmp-long v0, v9, v1

    if-eqz v0, :cond_2

    .line 37688
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v11, 0x1

    .end local v13    # "output":Lcom/facebook/ads/redexgen/X/H1;
    .local p2, "output":Lcom/facebook/ads/redexgen/X/H1;
    invoke-interface/range {v8 .. v14}, Lcom/facebook/ads/redexgen/X/H1;->AIA(JIIILcom/facebook/ads/redexgen/X/Gz;)V

    .line 37689
    .end local v13
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 37690
    :cond_3
    return-void
.end method
