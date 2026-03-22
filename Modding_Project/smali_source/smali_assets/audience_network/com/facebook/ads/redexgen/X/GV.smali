.class public abstract Lcom/facebook/ads/redexgen/X/GV;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:[I

.field public static final A03:[I

.field public static final A04:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 721
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Y8HEI18e1GadHrln0qmDFCEaxi"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "oL2ricEuOMEwxHFhMskly09xAYMP2tCR"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "T"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "KMY19rMWfOVULyqsMixIRosvw7BV"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "hLcN9Ked"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "HwmbqduaXfn6sstptA"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "kxZRIOPiX6BuamdrhGUbsB3Guhn0rTOf"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "HgYihtPWg4cBhJSwUBMvBFzsg3tZPPZN"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/GV;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/GV;->A06()V

    const/16 v1, 0x10

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/GV;->A02:[I

    .line 722
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/facebook/ads/redexgen/X/GV;->A03:[I

    .line 723
    const/16 v0, 0x1d

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/facebook/ads/redexgen/X/GV;->A04:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x6
        0x6
        0x6
        0x7
        0x8
        0x8
    .end array-data

    :array_1
    .array-data 4
        -0x1
        0x1f40
        0x3e80
        0x7d00
        -0x1
        -0x1
        0x2b11
        0x5622
        0xac44
        -0x1
        -0x1
        0x2ee0
        0x5dc0
        0xbb80
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        0x40
        0x70
        0x80
        0xc0
        0xe0
        0x100
        0x180
        0x1c0
        0x200
        0x280
        0x300
        0x380
        0x400
        0x480
        0x500
        0x600
        0x780
        0x800
        0x900
        0xa00
        0xa80
        0xb00
        0xb07
        0xb80
        0xc00
        0xf00
        0x1000
        0x1800
        0x1e00
    .end array-data
.end method

.method public static A00(Ljava/nio/ByteBuffer;)I
    .locals 3

    .line 37729
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 37730
    .local v0, "position":I
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 37731
    add-int/lit8 v0, v2, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit8 v0, v0, 0x1

    shl-int/lit8 v1, v0, 0x6

    add-int/lit8 v0, v2, 0x5

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xfc

    shr-int/lit8 v0, v0, 0x2

    or-int/2addr v1, v0

    .line 37732
    .local v1, "nblks":I
    :goto_0
    add-int/lit8 v0, v1, 0x1

    mul-int/lit8 v0, v0, 0x20

    return v0

    .line 37733
    .end local v1    # "nblks":I
    :sswitch_0
    add-int/lit8 v0, v2, 0x5

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit8 v0, v0, 0x7

    shl-int/lit8 v1, v0, 0x4

    add-int/lit8 v0, v2, 0x6

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit8 v0, v0, 0x3c

    shr-int/lit8 v0, v0, 0x2

    or-int/2addr v1, v0

    .line 37734
    .restart local v1    # "nblks":I
    goto :goto_0

    .line 37735
    .end local v1    # "nblks":I
    :sswitch_1
    add-int/lit8 v0, v2, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit8 v0, v0, 0x7

    shl-int/lit8 v1, v0, 0x4

    add-int/lit8 v0, v2, 0x7

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit8 v0, v0, 0x3c

    shr-int/lit8 v0, v0, 0x2

    or-int/2addr v1, v0

    .line 37736
    .restart local v1    # "nblks":I
    goto :goto_0

    .line 37737
    .end local v1    # "nblks":I
    :sswitch_2
    add-int/lit8 v0, v2, 0x5

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit8 v0, v0, 0x1

    shl-int/lit8 v1, v0, 0x6

    add-int/lit8 v0, v2, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xfc

    shr-int/lit8 v0, v0, 0x2

    or-int/2addr v1, v0

    .line 37738
    .restart local v1    # "nblks":I
    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2 -> :sswitch_2
        -0x1 -> :sswitch_1
        0x1f -> :sswitch_0
    .end sparse-switch
.end method

.method public static A01([B)I
    .locals 8

    .line 37739
    const/4 v7, 0x0

    .line 37740
    .local v0, "uses14BitPerWord":Z
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    const/4 v6, 0x6

    const/4 v5, 0x7

    const/4 v4, 0x4

    sparse-switch v0, :sswitch_data_0

    .line 37741
    const/4 v0, 0x5

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x3

    shl-int/lit8 v1, v0, 0xc

    aget-byte v0, p0, v6

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v4

    or-int/2addr v1, v0

    aget-byte v0, p0, v5

    and-int/lit16 v0, v0, 0xf0

    shr-int/2addr v0, v4

    or-int/2addr v1, v0

    add-int/lit8 v0, v1, 0x1

    .line 37742
    .local v1, "fsize":I
    :goto_0
    if-eqz v7, :cond_0

    mul-int/lit8 v0, v0, 0x10

    div-int/lit8 v0, v0, 0xe

    :cond_0
    return v0

    .line 37743
    .end local v1    # "fsize":I
    :sswitch_0
    aget-byte v0, p0, v6

    and-int/lit8 v0, v0, 0x3

    shl-int/lit8 v1, v0, 0xc

    aget-byte v0, p0, v5

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v4

    or-int/2addr v1, v0

    const/16 v0, 0x8

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x3c

    shr-int/lit8 v0, v0, 0x2

    or-int/2addr v1, v0

    add-int/lit8 v0, v1, 0x1

    .line 37744
    .restart local v1    # "fsize":I
    const/4 v7, 0x1

    .line 37745
    goto :goto_0

    .line 37746
    .end local v1    # "fsize":I
    :sswitch_1
    aget-byte v0, p0, v5

    and-int/lit8 v0, v0, 0x3

    shl-int/lit8 v1, v0, 0xc

    aget-byte v0, p0, v6

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v4

    or-int/2addr v1, v0

    const/16 v0, 0x9

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x3c

    shr-int/lit8 v0, v0, 0x2

    or-int/2addr v1, v0

    add-int/lit8 v0, v1, 0x1

    .line 37747
    .restart local v1    # "fsize":I
    const/4 v7, 0x1

    .line 37748
    goto :goto_0

    .line 37749
    .end local v1    # "fsize":I
    :sswitch_2
    aget-byte v3, p0, v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/GV;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/GV;->A01:[Ljava/lang/String;

    const-string v1, "4XRrhZnjb0Sc0OiDCf"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "emycfV24cXaR3M70231yELMb9K"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    and-int/lit8 v0, v3, 0x3

    shl-int/lit8 v1, v0, 0xc

    aget-byte v0, p0, v5

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v4

    or-int/2addr v1, v0

    aget-byte v0, p0, v6

    and-int/lit16 v0, v0, 0xf0

    shr-int/2addr v0, v4

    or-int/2addr v1, v0

    add-int/lit8 v0, v1, 0x1

    .line 37750
    .restart local v1    # "fsize":I
    goto :goto_0

    .line 37751
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2 -> :sswitch_2
        -0x1 -> :sswitch_1
        0x1f -> :sswitch_0
    .end sparse-switch
.end method

.method public static A02([B)I
    .locals 5

    .line 37752
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    const/4 v0, 0x7

    const/4 v4, 0x6

    const/4 v3, 0x5

    const/4 v2, 0x4

    sparse-switch v1, :sswitch_data_0

    .line 37753
    aget-byte v0, p0, v2

    and-int/lit8 v1, v0, 0x1

    shl-int/2addr v1, v4

    aget-byte v0, p0, v3

    and-int/lit16 v0, v0, 0xfc

    shr-int/lit8 v0, v0, 0x2

    or-int/2addr v1, v0

    .line 37754
    .local v0, "nblks":I
    :goto_0
    add-int/lit8 v0, v1, 0x1

    mul-int/lit8 v0, v0, 0x20

    return v0

    .line 37755
    .end local v0    # "nblks":I
    :sswitch_0
    aget-byte v1, p0, v3

    and-int/2addr v1, v0

    shl-int/2addr v1, v2

    aget-byte v0, p0, v4

    and-int/lit8 v0, v0, 0x3c

    shr-int/lit8 v0, v0, 0x2

    or-int/2addr v1, v0

    .line 37756
    .restart local v0    # "nblks":I
    goto :goto_0

    .line 37757
    .end local v0    # "nblks":I
    :sswitch_1
    aget-byte v1, p0, v2

    and-int/2addr v1, v0

    shl-int/2addr v1, v2

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x3c

    shr-int/lit8 v0, v0, 0x2

    or-int/2addr v1, v0

    .line 37758
    .restart local v0    # "nblks":I
    goto :goto_0

    .line 37759
    .end local v0    # "nblks":I
    :sswitch_2
    aget-byte v0, p0, v3

    and-int/lit8 v1, v0, 0x1

    shl-int/2addr v1, v4

    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xfc

    shr-int/lit8 v0, v0, 0x2

    or-int/2addr v1, v0

    .line 37760
    .restart local v0    # "nblks":I
    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x2 -> :sswitch_2
        -0x1 -> :sswitch_1
        0x1f -> :sswitch_0
    .end sparse-switch
.end method

.method public static A03([BLjava/lang/String;Ljava/lang/String;Lcom/facebook/ads/androidx/media3/common/DrmInitData;)Lcom/facebook/ads/redexgen/X/or;
    .locals 6

    .line 37761
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/GV;->A04([B)Lcom/facebook/ads/redexgen/X/4I;

    move-result-object v3

    .line 37762
    .local v0, "frameBits":Lcom/facebook/ads/redexgen/X/4I;
    const/16 v0, 0x3c

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 37763
    const/4 v0, 0x6

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v1

    .line 37764
    .local v1, "amode":I
    sget-object v0, Lcom/facebook/ads/redexgen/X/GV;->A02:[I

    aget p0, v0, v1

    .line 37765
    .local v2, "channelCount":I
    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v1

    .line 37766
    .local v3, "sfreq":I
    sget-object v0, Lcom/facebook/ads/redexgen/X/GV;->A03:[I

    aget v5, v0, v1

    .line 37767
    .local v4, "sampleRate":I
    const/4 v0, 0x5

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v1

    .line 37768
    .local v5, "rate":I
    sget-object v0, Lcom/facebook/ads/redexgen/X/GV;->A04:[I

    array-length v0, v0

    const/4 v2, 0x2

    if-lt v1, v0, :cond_1

    .line 37769
    const/4 v0, -0x1

    .line 37770
    .local p0, "bitrate":I
    :goto_0
    const/16 v1, 0xa

    invoke-virtual {v3, v1}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 37771
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    add-int/2addr p0, v1

    .line 37772
    new-instance v1, Lcom/facebook/ads/redexgen/X/2D;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/2D;-><init>()V

    .line 37773
    invoke-virtual {v1, p1}, Lcom/facebook/ads/redexgen/X/2D;->A0y(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v4

    .line 37774
    const/4 v3, 0x0

    const/16 v2, 0xd

    const/16 v1, 0x1b

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/GV;->A05(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/facebook/ads/redexgen/X/2D;->A11(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v1

    .line 37775
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2D;->A0a(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 37776
    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/2D;->A0b(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 37777
    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/2D;->A0m(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 37778
    invoke-virtual {v0, p3}, Lcom/facebook/ads/redexgen/X/2D;->A0u(Lcom/facebook/ads/androidx/media3/common/DrmInitData;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 37779
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/2D;->A10(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 37780
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2D;->A14()Lcom/facebook/ads/redexgen/X/or;

    move-result-object v0

    .line 37781
    return-object v0

    .line 37782
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 37783
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/GV;->A04:[I

    aget v0, v0, v1

    mul-int/lit16 v0, v0, 0x3e8

    div-int/2addr v0, v2

    goto :goto_0
.end method

.method public static A04([B)Lcom/facebook/ads/redexgen/X/4I;
    .locals 7

    .line 37784
    const/4 v3, 0x0

    aget-byte v1, p0, v3

    const/16 v0, 0x7f

    if-ne v1, v0, :cond_0

    .line 37785
    new-instance v0, Lcom/facebook/ads/redexgen/X/4I;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/4I;-><init>([B)V

    return-object v0

    .line 37786
    :cond_0
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    .line 37787
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/GV;->A08([B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37788
    const/4 v2, 0x0

    .local v1, "i":I
    :goto_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_1

    .line 37789
    aget-byte v1, p0, v2

    .line 37790
    .local v2, "temp":B
    add-int/lit8 v0, v2, 0x1

    aget-byte v0, p0, v0

    aput-byte v0, p0, v2

    .line 37791
    add-int/lit8 v0, v2, 0x1

    aput-byte v1, p0, v0

    .line 37792
    .end local v2    # "temp":B
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 37793
    .end local v1    # "i":I
    :cond_1
    new-instance v6, Lcom/facebook/ads/redexgen/X/4I;

    invoke-direct {v6, p0}, Lcom/facebook/ads/redexgen/X/4I;-><init>([B)V

    .line 37794
    .local v1, "frameBits":Lcom/facebook/ads/redexgen/X/4I;
    aget-byte v1, p0, v3

    const/16 v0, 0x1f

    if-ne v1, v0, :cond_3

    .line 37795
    new-instance v5, Lcom/facebook/ads/redexgen/X/4I;

    invoke-direct {v5, p0}, Lcom/facebook/ads/redexgen/X/4I;-><init>([B)V

    .line 37796
    .local v0, "scratchBits":Lcom/facebook/ads/redexgen/X/4I;
    :goto_1
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4I;->A01()I

    move-result v1

    const/16 v0, 0x10

    if-lt v1, v0, :cond_3

    .line 37797
    const/4 v0, 0x2

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 37798
    const/16 v4, 0xe

    invoke-virtual {v5, v4}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/GV;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/GV;->A01:[Ljava/lang/String;

    const-string v1, "nbIesC19CiuPXGAO1XmsVCjTSWLNlLKJ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "ltOJbsz7vYOuZPV8QSj4f10zt4SJvXCJ"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v6, v3, v4}, Lcom/facebook/ads/redexgen/X/4I;->A0B(II)V

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 37799
    .end local v0    # "scratchBits":Lcom/facebook/ads/redexgen/X/4I;
    :cond_3
    invoke-virtual {v6, p0}, Lcom/facebook/ads/redexgen/X/4I;->A0D([B)V

    .line 37800
    return-object v6
.end method

.method public static A05(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/GV;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x7d

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A06()V
    .locals 1

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/GV;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x7t
        0x13t
        0x2t
        0xft
        0x9t
        0x49t
        0x10t
        0x8t
        0x2t
        0x48t
        0x2t
        0x12t
        0x15t
    .end array-data
.end method

.method public static A07(I)Z
    .locals 1

    .line 37801
    const v0, 0x7ffe8001

    if-eq p0, v0, :cond_0

    const v0, -0x180fe80

    if-eq p0, v0, :cond_0

    const v0, 0x1fffe800

    if-eq p0, v0, :cond_0

    const v0, -0xe0ff18

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A08([B)Z
    .locals 3

    .line 37802
    const/4 v2, 0x0

    aget-byte v1, p0, v2

    const/4 v0, -0x2

    if-eq v1, v0, :cond_0

    aget-byte v1, p0, v2

    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method
