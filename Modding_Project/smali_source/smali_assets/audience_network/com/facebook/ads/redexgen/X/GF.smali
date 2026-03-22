.class public abstract Lcom/facebook/ads/redexgen/X/GF;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/GE;
    }
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:[I

.field public static final A03:[I

.field public static final A04:[I

.field public static final A05:[I

.field public static final A06:[I

.field public static final A07:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 709
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Jtf4c9GAOgAJpDK2mVqEjBHHHDeO7jol"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "kDsThcfbWymyo7SA47OqEnjsA64Naf4x"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "cJoAWc4I2qPJ3tdp2oEUxn8HL8nWEytb"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "qFOfekTrSk46i"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "58lsU6cH4CrpheTwcdx0E4dGrWTfnMIv"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Xoqjc4jVEqoArq5wHw2izr92BVYhns54"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "K2bZ7AvhLOnhV8b3rnKBJIfNWJInr7Ql"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "H1rRYQzsJBGjD"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/GF;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/GF;->A0B()V

    const/4 v3, 0x3

    const/4 v2, 0x6

    const/4 v1, 0x1

    const/4 v0, 0x2

    filled-new-array {v1, v0, v3, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/GF;->A03:[I

    .line 710
    const v2, 0xac44

    const/16 v1, 0x7d00

    const v0, 0xbb80

    filled-new-array {v0, v2, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/GF;->A05:[I

    .line 711
    const/16 v2, 0x5622

    const/16 v1, 0x3e80

    const/16 v0, 0x5dc0

    filled-new-array {v0, v2, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/GF;->A06:[I

    .line 712
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/GF;->A04:[I

    .line 713
    const/16 v1, 0x13

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/facebook/ads/redexgen/X/GF;->A02:[I

    .line 714
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/facebook/ads/redexgen/X/GF;->A07:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x1
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
    .end array-data

    :array_1
    .array-data 4
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x140
        0x180
        0x1c0
        0x200
        0x240
        0x280
    .end array-data

    :array_2
    .array-data 4
        0x45
        0x57
        0x68
        0x79
        0x8b
        0xae
        0xd0
        0xf3
        0x116
        0x15c
        0x1a1
        0x1e7
        0x22d
        0x2b8
        0x343
        0x3cf
        0x45a
        0x4e5
        0x571
    .end array-data
.end method

.method public static A00(II)I
    .locals 5

    .line 37131
    div-int/lit8 v1, p1, 0x2

    .line 37132
    .local v0, "halfFrmsizecod":I
    if-ltz p0, :cond_0

    sget-object v0, Lcom/facebook/ads/redexgen/X/GF;->A05:[I

    array-length v0, v0

    if-ge p0, v0, :cond_0

    if-ltz p1, :cond_0

    sget-object v0, Lcom/facebook/ads/redexgen/X/GF;->A07:[I

    array-length v0, v0

    if-lt v1, v0, :cond_1

    .line 37133
    .end local v1
    .end local v2
    :cond_0
    const/4 v0, -0x1

    return v0

    .line 37134
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/GF;->A05:[I

    aget p0, v0, p0

    .line 37135
    .local v1, "sampleRate":I
    const v0, 0xac44

    if-ne p0, v0, :cond_2

    .line 37136
    sget-object v0, Lcom/facebook/ads/redexgen/X/GF;->A07:[I

    aget v1, v0, v1

    rem-int/lit8 v0, p1, 0x2

    add-int/2addr v1, v0

    mul-int/lit8 v0, v1, 0x2

    return v0

    .line 37137
    :cond_2
    sget-object v0, Lcom/facebook/ads/redexgen/X/GF;->A02:[I

    aget v4, v0, v1

    .line 37138
    .local v2, "bitrate":I
    const/16 v3, 0x7d00

    sget-object v2, Lcom/facebook/ads/redexgen/X/GF;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/GF;->A01:[Ljava/lang/String;

    const-string v1, "CpIhzBdts1JRjCy6aRe02MLhvkoBTutu"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ne p0, v3, :cond_4

    .line 37139
    mul-int/lit8 v0, v4, 0x6

    return v0

    .line 37140
    :cond_4
    mul-int/lit8 v0, v4, 0x4

    return v0
.end method

.method public static A01(III)I
    .locals 1

    .line 37141
    mul-int/2addr p0, p1

    mul-int/lit8 v0, p2, 0x20

    div-int/2addr p0, v0

    return p0
.end method

.method public static A02(Ljava/nio/ByteBuffer;)I
    .locals 5

    .line 37142
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 37143
    .local v0, "startIndex":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    add-int/lit8 v3, v0, -0xa

    .line 37144
    .local v1, "endIndex":I
    move v2, v4

    .local v2, "i":I
    :goto_0
    if-gt v2, v3, :cond_1

    .line 37145
    add-int/lit8 v0, v2, 0x4

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/4a;->A0F(Ljava/nio/ByteBuffer;I)I

    move-result v0

    and-int/lit8 v1, v0, -0x2

    const v0, -0x78d9046

    if-ne v1, v0, :cond_0

    .line 37146
    sub-int/2addr v2, v4

    return v2

    .line 37147
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 37148
    .end local v2    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static A03(Ljava/nio/ByteBuffer;)I
    .locals 3

    .line 37149
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v2, v0, 0xf8

    const/4 v1, 0x3

    shr-int/2addr v2, v1

    const/16 v0, 0xa

    if-le v2, v0, :cond_1

    const/4 v0, 0x1

    .line 37150
    .local v0, "isEac3":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 37151
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v0, v0, 0x6

    .line 37152
    .local v2, "fscod":I
    if-ne v0, v1, :cond_0

    .line 37153
    .local v1, "numblkscod":I
    :goto_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/GF;->A03:[I

    aget v0, v0, v1

    mul-int/lit16 v0, v0, 0x100

    return v0

    .line 37154
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit8 v0, v0, 0x30

    shr-int/lit8 v1, v0, 0x4

    goto :goto_1

    .line 37155
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 37156
    .end local v1    # "numblkscod":I
    .end local v2    # "fscod":I
    :cond_2
    const/16 v0, 0x600

    return v0
.end method

.method public static A04(Ljava/nio/ByteBuffer;I)I
    .locals 5

    .line 37157
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v1, v0, 0xff

    const/16 v0, 0xbb

    if-ne v1, v0, :cond_0

    const/4 v4, 0x1

    .line 37158
    .local v0, "isMlp":Z
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/GF;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x74

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 37159
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/GF;->A01:[Ljava/lang/String;

    const-string v1, "2LNqrJlwnzIqb"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "f1x5AMhp2hTyk"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v4, :cond_2

    .line 37160
    const/16 v0, 0x9

    :goto_1
    add-int/2addr v3, v0

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    shr-int/lit8 v0, v0, 0x4

    and-int/lit8 v1, v0, 0x7

    const/16 v0, 0x28

    shl-int/2addr v0, v1

    return v0

    :cond_2
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public static A05([B)I
    .locals 3

    .line 37161
    array-length v1, p0

    const/4 v0, 0x6

    if-ge v1, v0, :cond_0

    .line 37162
    const/4 v0, -0x1

    return v0

    .line 37163
    :cond_0
    const/4 v0, 0x5

    aget-byte v0, p0, v0

    and-int/lit16 v1, v0, 0xf8

    const/4 v2, 0x3

    shr-int/2addr v1, v2

    const/16 v0, 0xa

    if-le v1, v0, :cond_1

    const/4 v0, 0x1

    .line 37164
    .local v0, "isEac3":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 37165
    const/4 v0, 0x2

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x7

    shl-int/lit8 v1, v0, 0x8

    .line 37166
    .local p0, "frmsiz":I
    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    .line 37167
    .end local p0    # "frmsiz":I
    .local v2, "frmsiz":I
    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x2

    return v0

    .line 37168
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 37169
    .end local v2    # "frmsiz":I
    :cond_2
    const/4 v2, 0x4

    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v1, v0, 0x6

    .line 37170
    .local v1, "fscod":I
    aget-byte v0, p0, v2

    and-int/lit8 v0, v0, 0x3f

    .line 37171
    .local v2, "frmsizecod":I
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/GF;->A00(II)I

    move-result v0

    return v0
.end method

.method public static A06([B)I
    .locals 4

    .line 37172
    const/4 v0, 0x4

    aget-byte v1, p0, v0

    const/4 v0, -0x8

    const/4 v3, 0x0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x5

    aget-byte v1, p0, v0

    const/16 v0, 0x72

    if-ne v1, v0, :cond_0

    const/4 v0, 0x6

    aget-byte v1, p0, v0

    const/16 v0, 0x6f

    if-ne v1, v0, :cond_0

    const/4 v2, 0x7

    aget-byte v0, p0, v2

    and-int/lit16 v1, v0, 0xfe

    const/16 v0, 0xba

    if-eq v1, v0, :cond_1

    .line 37173
    .end local v2
    :cond_0
    return v3

    .line 37174
    :cond_1
    aget-byte v0, p0, v2

    and-int/lit16 v1, v0, 0xff

    const/16 v0, 0xbb

    if-ne v1, v0, :cond_2

    const/4 v3, 0x1

    .line 37175
    .local v2, "isMlp":Z
    :cond_2
    if-eqz v3, :cond_3

    const/16 v0, 0x9

    :goto_0
    aget-byte v0, p0, v0

    shr-int/lit8 v1, v0, 0x4

    and-int/2addr v1, v2

    const/16 v0, 0x28

    shl-int/2addr v0, v1

    return v0

    :cond_3
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public static A07(Lcom/facebook/ads/redexgen/X/4J;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/androidx/media3/common/DrmInitData;)Lcom/facebook/ads/redexgen/X/or;
    .locals 7

    .line 37176
    new-instance v2, Lcom/facebook/ads/redexgen/X/4I;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/4I;-><init>()V

    .line 37177
    .local v0, "dataBitArray":Lcom/facebook/ads/redexgen/X/4I;
    invoke-virtual {v2, p0}, Lcom/facebook/ads/redexgen/X/4I;->A0C(Lcom/facebook/ads/redexgen/X/4J;)V

    .line 37178
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v1

    .line 37179
    .local v1, "fscod":I
    sget-object v0, Lcom/facebook/ads/redexgen/X/GF;->A05:[I

    aget v5, v0, v1

    .line 37180
    .local v2, "sampleRate":I
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 37181
    sget-object v1, Lcom/facebook/ads/redexgen/X/GF;->A04:[I

    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v0

    aget v6, v1, v0

    .line 37182
    .local v3, "channelCount":I
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 37183
    add-int/lit8 v6, v6, 0x1

    .line 37184
    :cond_0
    const/4 v0, 0x5

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v1

    .line 37185
    .local v4, "halfFrmsizecod":I
    sget-object v0, Lcom/facebook/ads/redexgen/X/GF;->A02:[I

    aget v0, v0, v1

    mul-int/lit16 v4, v0, 0x3e8

    .line 37186
    .local v5, "constantBitrate":I
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4I;->A06()V

    .line 37187
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4I;->A02()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 37188
    new-instance v0, Lcom/facebook/ads/redexgen/X/2D;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/2D;-><init>()V

    .line 37189
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/2D;->A0y(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v3

    .line 37190
    const/4 v2, 0x0

    const/16 v1, 0x9

    const/4 v0, 0x4

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/GF;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/2D;->A11(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 37191
    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/2D;->A0b(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 37192
    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/2D;->A0m(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 37193
    invoke-virtual {v0, p3}, Lcom/facebook/ads/redexgen/X/2D;->A0u(Lcom/facebook/ads/androidx/media3/common/DrmInitData;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 37194
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/2D;->A10(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 37195
    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/2D;->A0a(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 37196
    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/2D;->A0j(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 37197
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2D;->A14()Lcom/facebook/ads/redexgen/X/or;

    move-result-object v0

    .line 37198
    return-object v0
.end method

.method public static A08(Lcom/facebook/ads/redexgen/X/4J;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/androidx/media3/common/DrmInitData;)Lcom/facebook/ads/redexgen/X/or;
    .locals 9

    .line 37199
    new-instance v6, Lcom/facebook/ads/redexgen/X/4I;

    invoke-direct {v6}, Lcom/facebook/ads/redexgen/X/4I;-><init>()V

    .line 37200
    .local v0, "dataBitArray":Lcom/facebook/ads/redexgen/X/4I;
    invoke-virtual {v6, p0}, Lcom/facebook/ads/redexgen/X/4I;->A0C(Lcom/facebook/ads/redexgen/X/4J;)V

    .line 37201
    const/16 v0, 0xd

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v0

    mul-int/lit16 v3, v0, 0x3e8

    .line 37202
    .local v1, "peakBitrate":I
    const/4 v2, 0x3

    invoke-virtual {v6, v2}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 37203
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v1

    .line 37204
    .local v3, "fscod":I
    sget-object v0, Lcom/facebook/ads/redexgen/X/GF;->A05:[I

    aget v4, v0, v1

    .line 37205
    .local v4, "sampleRate":I
    const/16 v0, 0xa

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 37206
    sget-object v1, Lcom/facebook/ads/redexgen/X/GF;->A04:[I

    invoke-virtual {v6, v2}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v0

    aget v5, v1, v0

    .line 37207
    .local v5, "channelCount":I
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 37208
    add-int/lit8 v5, v5, 0x1

    .line 37209
    :cond_0
    invoke-virtual {v6, v2}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 37210
    const/4 v0, 0x4

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v8

    .line 37211
    .local v2, "numDepSub":I
    invoke-virtual {v6, v7}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/GF;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 37212
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/GF;->A01:[Ljava/lang/String;

    const-string v1, "mDbBoGQY4vpPxfXnFDb06caCJn7GdJsS"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-lez v8, :cond_3

    .line 37213
    const/4 v0, 0x6

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/4I;->A0A(I)V

    .line 37214
    invoke-virtual {v6, v7}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 37215
    add-int/lit8 v5, v5, 0x2

    .line 37216
    :cond_2
    invoke-virtual {v6, v7}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 37217
    :cond_3
    const/16 v2, 0x9

    const/16 v1, 0xa

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/GF;->A0A(III)Ljava/lang/String;

    move-result-object v2

    .line 37218
    .local v7, "mimeType":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/4I;->A01()I

    move-result v1

    const/4 v0, 0x7

    if-le v1, v0, :cond_4

    .line 37219
    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 37220
    invoke-virtual {v6, v7}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v0

    if-eqz v0, :cond_4

    .line 37221
    const/16 v2, 0x13

    const/16 v1, 0xe

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/GF;->A0A(III)Ljava/lang/String;

    move-result-object v2

    .line 37222
    :cond_4
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/4I;->A06()V

    .line 37223
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/4I;->A02()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 37224
    new-instance v0, Lcom/facebook/ads/redexgen/X/2D;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/2D;-><init>()V

    .line 37225
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/2D;->A0y(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 37226
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/2D;->A11(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 37227
    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/2D;->A0b(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 37228
    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/2D;->A0m(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 37229
    invoke-virtual {v0, p3}, Lcom/facebook/ads/redexgen/X/2D;->A0u(Lcom/facebook/ads/androidx/media3/common/DrmInitData;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 37230
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/2D;->A10(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 37231
    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/2D;->A0j(I)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v0

    .line 37232
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2D;->A14()Lcom/facebook/ads/redexgen/X/or;

    move-result-object v0

    .line 37233
    return-object v0
.end method

.method public static A09(Lcom/facebook/ads/redexgen/X/4I;)Lcom/facebook/ads/redexgen/X/GE;
    .locals 24

    .line 37234
    move-object/from16 v13, p0

    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4I;->A03()I

    move-result v3

    .line 37235
    .local v1, "initialPosition":I
    const/16 v0, 0x28

    invoke-virtual {v13, v0}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 37236
    const/4 v14, 0x5

    invoke-virtual {v13, v14}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v0

    const/4 v12, 0x1

    const/16 v1, 0xa

    if-le v0, v1, :cond_25

    const/4 v2, 0x1

    .line 37237
    .local v3, "isEac3":Z
    :goto_0
    invoke-virtual {v13, v3}, Lcom/facebook/ads/redexgen/X/4I;->A08(I)V

    .line 37238
    const/4 v11, -0x1

    .line 37239
    .local v6, "streamType":I
    const/16 v0, 0x8

    const/4 v10, 0x3

    const/4 v4, 0x2

    if-eqz v2, :cond_27

    .line 37240
    const/16 v2, 0x10

    invoke-virtual {v13, v2}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 37241
    invoke-virtual {v13, v4}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 37242
    const/4 v11, -0x1

    .line 37243
    :goto_1
    invoke-virtual {v13, v10}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 37244
    const/16 v2, 0xb

    invoke-virtual {v13, v2}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v2

    add-int/2addr v2, v12

    mul-int/lit8 v9, v2, 0x2

    .line 37245
    .local v12, "frameSize":I
    invoke-virtual {v13, v4}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v8

    .line 37246
    .local v13, "fscod":I
    if-ne v8, v10, :cond_24

    .line 37247
    const/4 v7, 0x3

    .line 37248
    .local v14, "numblkscod":I
    sget-object v3, Lcom/facebook/ads/redexgen/X/GF;->A06:[I

    invoke-virtual {v13, v4}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v2

    aget v6, v3, v2

    .line 37249
    .local v15, "sampleRate":I
    const/4 v5, 0x6

    .line 37250
    .local v16, "audioBlocks":I
    .end local v16    # "audioBlocks":I
    .local v8, "audioBlocks":I
    .restart local v15    # "sampleRate":I
    :goto_2
    mul-int/lit16 v15, v5, 0x100

    .line 37251
    .local v10, "sampleCount":I
    invoke-static {v9, v6, v5}, Lcom/facebook/ads/redexgen/X/GF;->A01(III)I

    move-result v4

    .line 37252
    .local v18, "bitrate":I
    invoke-virtual {v13, v10}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v3

    .line 37253
    .local v11, "acmod":I
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4I;->A0H()Z

    move-result v18

    .line 37254
    .local v20, "lfeon":Z
    sget-object v2, Lcom/facebook/ads/redexgen/X/GF;->A04:[I

    aget v19, v2, v3

    add-int v19, v19, v18

    .line 37255
    .local v21, "channelCount":I
    invoke-virtual {v13, v1}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 37256
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4I;->A0H()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37257
    invoke-virtual {v13, v0}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 37258
    :cond_0
    if-nez v3, :cond_1

    .line 37259
    invoke-virtual {v13, v14}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 37260
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4I;->A0H()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37261
    invoke-virtual {v13, v0}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 37262
    :cond_1
    if-ne v11, v12, :cond_3

    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4I;->A0H()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 37263
    const/16 v2, 0x10

    sget-object v1, Lcom/facebook/ads/redexgen/X/GF;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x62

    if-eq v1, v0, :cond_2

    :goto_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v16, Lcom/facebook/ads/redexgen/X/GF;->A01:[Ljava/lang/String;

    const-string v1, "EFtXQuggqvCecn8xtkL0dgnIAj4EDltD"

    const/4 v0, 0x2

    aput-object v1, v16, v0

    invoke-virtual {v13, v2}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 37264
    :cond_3
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4I;->A0H()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 37265
    const/4 v1, 0x2

    if-le v3, v1, :cond_4

    .line 37266
    invoke-virtual {v13, v1}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 37267
    :cond_4
    and-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_23

    if-le v3, v1, :cond_23

    .line 37268
    const/4 v2, 0x6

    invoke-virtual {v13, v2}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 37269
    :goto_4
    and-int/lit8 v17, v3, 0x4

    sget-object v1, Lcom/facebook/ads/redexgen/X/GF;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x62

    if-eq v1, v0, :cond_22

    if-eqz v17, :cond_5

    .line 37270
    :goto_5
    invoke-virtual {v13, v2}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 37271
    :cond_5
    if-eqz v18, :cond_6

    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4I;->A0H()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 37272
    invoke-virtual {v13, v14}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 37273
    :cond_6
    if-nez v11, :cond_c

    .line 37274
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4I;->A0H()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 37275
    const/4 v1, 0x6

    invoke-virtual {v13, v1}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 37276
    :goto_6
    if-nez v3, :cond_7

    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4I;->A0H()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 37277
    invoke-virtual {v13, v1}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 37278
    :cond_7
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4I;->A0H()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 37279
    invoke-virtual {v13, v1}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 37280
    :cond_8
    const/4 v1, 0x2

    invoke-virtual {v13, v1}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v0

    .line 37281
    .local v7, "mixdef":I
    if-ne v0, v12, :cond_13

    .line 37282
    invoke-virtual {v13, v14}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 37283
    .end local v5
    :cond_9
    :goto_7
    const/4 v2, 0x2

    sget-object v1, Lcom/facebook/ads/redexgen/X/GF;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x20

    if-eq v1, v0, :cond_12

    sget-object v10, Lcom/facebook/ads/redexgen/X/GF;->A01:[Ljava/lang/String;

    const-string v1, "CT6fc8NDwAee95wvc4i3U0G4PwptFgbR"

    const/4 v0, 0x5

    aput-object v1, v10, v0

    const-string v1, "cOprcaH4V9QUBwGl6SpW2PXD2gkWJWIT"

    const/4 v0, 0x0

    aput-object v1, v10, v0

    if-ge v3, v2, :cond_b

    .line 37284
    :goto_8
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4I;->A0H()Z

    move-result v0

    const/16 v1, 0xe

    if-eqz v0, :cond_a

    .line 37285
    invoke-virtual {v13, v1}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 37286
    :cond_a
    if-nez v3, :cond_b

    .line 37287
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4I;->A0H()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 37288
    invoke-virtual {v13, v1}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 37289
    :cond_b
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4I;->A0H()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 37290
    if-nez v7, :cond_10

    .line 37291
    invoke-virtual {v13, v14}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 37292
    .end local v4
    .end local v7    # "mixdef":I
    :cond_c
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4I;->A0H()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 37293
    invoke-virtual {v13, v14}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 37294
    const/4 v1, 0x2

    if-ne v3, v1, :cond_d

    .line 37295
    const/4 v0, 0x4

    invoke-virtual {v13, v0}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 37296
    :cond_d
    const/4 v0, 0x6

    if-lt v3, v0, :cond_e

    .line 37297
    invoke-virtual {v13, v1}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 37298
    :cond_e
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4I;->A0H()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 37299
    const/16 v5, 0x8

    invoke-virtual {v13, v5}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 37300
    :goto_9
    if-nez v3, :cond_2e

    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4I;->A0H()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/GF;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2d

    goto/16 :goto_3

    .line 37301
    :cond_f
    const/16 v5, 0x8

    goto :goto_9

    .line 37302
    :cond_10
    const/4 v1, 0x0

    .local v4, "blk":I
    :goto_a
    if-ge v1, v5, :cond_c

    .line 37303
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4I;->A0H()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 37304
    invoke-virtual {v13, v14}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 37305
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_12
    sget-object v10, Lcom/facebook/ads/redexgen/X/GF;->A01:[Ljava/lang/String;

    const-string v1, "TfLNzHkYjjGfwBXQwG7FQ44lMKhqfIt5"

    const/4 v0, 0x2

    aput-object v1, v10, v0

    if-ge v3, v2, :cond_b

    goto :goto_8

    .line 37306
    :cond_13
    if-ne v0, v1, :cond_14

    .line 37307
    const/16 v0, 0xc

    invoke-virtual {v13, v0}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    goto/16 :goto_7

    .line 37308
    :cond_14
    if-ne v0, v10, :cond_9

    .line 37309
    invoke-virtual {v13, v14}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v16

    .line 37310
    .local v5, "mixdeflen":I
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4I;->A0H()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 37311
    invoke-virtual {v13, v14}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 37312
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4I;->A0H()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 37313
    const/4 v10, 0x4

    invoke-virtual {v13, v10}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 37314
    :goto_b
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4I;->A0H()Z

    move-result v12

    sget-object v1, Lcom/facebook/ads/redexgen/X/GF;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6f

    if-eq v1, v0, :cond_1d

    sget-object v2, Lcom/facebook/ads/redexgen/X/GF;->A01:[Ljava/lang/String;

    const-string v1, "PWQ2PfTArLXSbAuYPJT5x4iA7pnZIJ5J"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v12, :cond_15

    .line 37315
    :goto_c
    invoke-virtual {v13, v10}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 37316
    :cond_15
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4I;->A0H()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 37317
    invoke-virtual {v13, v10}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 37318
    :cond_16
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4I;->A0H()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 37319
    invoke-virtual {v13, v10}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 37320
    :cond_17
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4I;->A0H()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 37321
    invoke-virtual {v13, v10}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 37322
    :cond_18
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4I;->A0H()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 37323
    invoke-virtual {v13, v10}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 37324
    :cond_19
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4I;->A0H()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 37325
    invoke-virtual {v13, v10}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 37326
    :cond_1a
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4I;->A0H()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 37327
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4I;->A0H()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 37328
    invoke-virtual {v13, v10}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 37329
    :cond_1b
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4I;->A0H()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 37330
    invoke-virtual {v13, v10}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 37331
    :cond_1c
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4I;->A0H()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 37332
    invoke-virtual {v13, v14}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 37333
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4I;->A0H()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 37334
    const/4 v0, 0x7

    invoke-virtual {v13, v0}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 37335
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4I;->A0H()Z

    move-result v10

    sget-object v1, Lcom/facebook/ads/redexgen/X/GF;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6f

    if-eq v1, v0, :cond_1f

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1d
    sget-object v2, Lcom/facebook/ads/redexgen/X/GF;->A01:[Ljava/lang/String;

    const-string v1, "3piylhlPW6ECi"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "2ld3o4GemUbvA"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v12, :cond_15

    goto/16 :goto_c

    .line 37336
    :cond_1e
    const/4 v10, 0x4

    goto/16 :goto_b

    :cond_1f
    sget-object v2, Lcom/facebook/ads/redexgen/X/GF;->A01:[Ljava/lang/String;

    const-string v1, "rSblh4R2S5jwen1kap7KA3ClbKLn4xCa"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v10, :cond_20

    .line 37337
    const/16 v0, 0x8

    invoke-virtual {v13, v0}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 37338
    :cond_20
    add-int/lit8 v0, v16, 0x2

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {v13, v0}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 37339
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4I;->A06()V

    goto/16 :goto_7

    .line 37340
    :cond_21
    const/4 v1, 0x6

    goto/16 :goto_6

    :cond_22
    sget-object v16, Lcom/facebook/ads/redexgen/X/GF;->A01:[Ljava/lang/String;

    const-string v1, "n86rU7cJyKu1PGdXCxu3oQra88IC0cti"

    const/4 v0, 0x2

    aput-object v1, v16, v0

    if-eqz v17, :cond_5

    goto/16 :goto_5

    .line 37341
    :cond_23
    const/4 v2, 0x6

    goto/16 :goto_4

    .line 37342
    .end local v14    # "numblkscod":I
    .end local v15    # "sampleRate":I
    .end local v16
    :cond_24
    invoke-virtual {v13, v4}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v7

    .line 37343
    .restart local v14    # "numblkscod":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/GF;->A03:[I

    aget v5, v2, v7

    .line 37344
    .restart local v16    # "audioBlocks":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/GF;->A05:[I

    aget v6, v2, v8

    goto/16 :goto_2

    .line 37345
    :pswitch_0
    const/4 v11, 0x2

    .line 37346
    goto/16 :goto_1

    .line 37347
    :pswitch_1
    const/4 v11, 0x1

    .line 37348
    goto/16 :goto_1

    .line 37349
    :pswitch_2
    const/4 v11, 0x0

    .line 37350
    goto/16 :goto_1

    .line 37351
    :cond_25
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 37352
    :cond_26
    const/4 v1, 0x3

    goto :goto_f

    .line 37353
    .end local v4    # "blk":I
    .end local v10    # "sampleCount":I
    .end local v11    # "acmod":I
    .end local v12    # "frameSize":I
    .end local v15
    .end local v18    # "bitrate":I
    .end local v20    # "lfeon":Z
    .end local v21    # "channelCount":I
    :cond_27
    const/4 v2, 0x0

    const/16 v1, 0x9

    const/4 v0, 0x4

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/GF;->A0A(III)Ljava/lang/String;

    move-result-object v17

    .line 37354
    .local v2, "mimeType":Ljava/lang/String;
    const/16 v0, 0x20

    invoke-virtual {v13, v0}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 37355
    const/4 v0, 0x2

    invoke-virtual {v13, v0}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v3

    .line 37356
    .local v5, "fscod":I
    const/4 v0, 0x3

    if-ne v3, v0, :cond_28

    .line 37357
    const/16 v17, 0x0

    .line 37358
    .end local v2    # "mimeType":Ljava/lang/String;
    .restart local v4    # "blk":I
    :cond_28
    const/4 v0, 0x6

    invoke-virtual {v13, v0}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v2

    .line 37359
    .local v2, "frmsizecod":I
    sget-object v1, Lcom/facebook/ads/redexgen/X/GF;->A02:[I

    div-int/lit8 v0, v2, 0x2

    aget v0, v1, v0

    mul-int/lit16 v4, v0, 0x3e8

    .line 37360
    .local v7, "bitrate":I
    invoke-static {v3, v2}, Lcom/facebook/ads/redexgen/X/GF;->A00(II)I

    move-result v9

    .line 37361
    .restart local v12    # "frameSize":I
    const/16 v0, 0x8

    invoke-virtual {v13, v0}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 37362
    const/4 v0, 0x3

    invoke-virtual {v13, v0}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v2

    .line 37363
    .restart local v11    # "acmod":I
    and-int/lit8 v0, v2, 0x1

    if-eqz v0, :cond_2c

    const/4 v0, 0x1

    if-eq v2, v0, :cond_2c

    .line 37364
    const/4 v1, 0x2

    invoke-virtual {v13, v1}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 37365
    :goto_d
    and-int/lit8 v0, v2, 0x4

    if-eqz v0, :cond_29

    .line 37366
    invoke-virtual {v13, v1}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 37367
    :cond_29
    if-ne v2, v1, :cond_2a

    .line 37368
    invoke-virtual {v13, v1}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 37369
    :cond_2a
    sget-object v0, Lcom/facebook/ads/redexgen/X/GF;->A05:[I

    array-length v0, v0

    if-ge v3, v0, :cond_2b

    sget-object v0, Lcom/facebook/ads/redexgen/X/GF;->A05:[I

    aget v6, v0, v3

    .line 37370
    .restart local v15    # "sampleRate":I
    :goto_e
    const/16 v15, 0x600

    .line 37371
    .restart local v10    # "sampleCount":I
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4I;->A0H()Z

    move-result v1

    .line 37372
    .restart local v20    # "lfeon":Z
    sget-object v0, Lcom/facebook/ads/redexgen/X/GF;->A04:[I

    aget v19, v0, v2

    add-int v19, v19, v1

    goto :goto_11

    .line 37373
    :cond_2b
    const/4 v6, -0x1

    goto :goto_e

    .line 37374
    :cond_2c
    const/4 v1, 0x2

    goto :goto_d

    .line 37375
    :cond_2d
    sget-object v2, Lcom/facebook/ads/redexgen/X/GF;->A01:[Ljava/lang/String;

    const-string v1, "YsaJcRTRbu2uSs1yKbmR882rDeXrY1Vp"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "pJsPcDksUtPyGih90nhVsOa0zw9Rh9Kw"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_2e

    .line 37376
    invoke-virtual {v13, v5}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 37377
    :cond_2e
    const/4 v1, 0x3

    if-ge v8, v1, :cond_2f

    .line 37378
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4I;->A07()V

    .line 37379
    :cond_2f
    :goto_f
    if-nez v11, :cond_30

    if-eq v7, v1, :cond_30

    .line 37380
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4I;->A07()V

    .line 37381
    :cond_30
    const/4 v0, 0x2

    if-ne v11, v0, :cond_34

    if-eq v7, v1, :cond_31

    .line 37382
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4I;->A0H()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 37383
    :cond_31
    const/4 v3, 0x6

    invoke-virtual {v13, v3}, Lcom/facebook/ads/redexgen/X/4I;->A09(I)V

    .line 37384
    :goto_10
    const/16 v2, 0x9

    const/16 v1, 0xa

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/GF;->A0A(III)Ljava/lang/String;

    move-result-object v17

    .line 37385
    .local v4, "mimeType":Ljava/lang/String;
    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/4I;->A0H()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 37386
    invoke-virtual {v13, v3}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v0

    .line 37387
    .local v2, "addbsil":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_32

    const/16 v0, 0x8

    invoke-virtual {v13, v0}, Lcom/facebook/ads/redexgen/X/4I;->A04(I)I

    move-result v0

    if-ne v0, v1, :cond_32

    .line 37388
    const/16 v2, 0x13

    const/16 v1, 0xe

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/GF;->A0A(III)Ljava/lang/String;

    move-result-object v17

    .line 37389
    .end local v2    # "addbsil":I
    .end local v5    # "fscod":I
    .end local v7    # "bitrate":I
    .restart local v18    # "bitrate":I
    .restart local v21    # "channelCount":I
    :cond_32
    :goto_11
    new-instance v16, Lcom/facebook/ads/redexgen/X/GE;

    const/16 p0, 0x0

    move/from16 v21, v9

    move/from16 v22, v15

    move/from16 v23, v4

    move/from16 v18, v11

    move/from16 v20, v6

    invoke-direct/range {v16 .. v24}, Lcom/facebook/ads/redexgen/X/GE;-><init>(Ljava/lang/String;IIIIIILcom/facebook/ads/redexgen/X/GC;)V

    return-object v16

    .line 37390
    :cond_33
    const/4 v3, 0x6

    goto :goto_10

    .line 37391
    :cond_34
    const/4 v3, 0x6

    goto :goto_10

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static A0A(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/GF;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0B()V
    .locals 1

    const/16 v0, 0x21

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/GF;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x64t
        0x70t
        0x61t
        0x6ct
        0x6at
        0x2at
        0x64t
        0x66t
        0x36t
        0x6bt
        0x7ft
        0x6et
        0x63t
        0x65t
        0x25t
        0x6ft
        0x6bt
        0x69t
        0x39t
        0x27t
        0x33t
        0x22t
        0x2ft
        0x29t
        0x69t
        0x23t
        0x27t
        0x25t
        0x75t
        0x6bt
        0x2ct
        0x29t
        0x25t
    .end array-data
.end method
