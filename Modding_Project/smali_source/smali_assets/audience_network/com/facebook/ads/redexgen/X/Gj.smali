.class public final Lcom/facebook/ads/redexgen/X/Gj;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A09:[B

.field public static A0A:[Ljava/lang/String;


# instance fields
.field public final A00:F

.field public final A01:I

.field public final A02:I

.field public final A03:I

.field public final A04:I

.field public final A05:I

.field public final A06:I

.field public final A07:Ljava/lang/String;

.field public final A08:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 733
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "EsB1Svc2O0r"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "neXgiGAVZF2hPSW"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "e5UrGC6TzR"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "xWVfqfZ1XD25z1nFBwMIBfHnywy3RQhb"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "m9mgew9TdIxun9z0pjAF4NJPGlbJBstI"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "nE"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "RVA0jPrNpk"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "4CgUEtTVWe3Kq65nNHH5xBV3YKPxdnIZ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Gj;->A0A:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Gj;->A02()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;IIIFLjava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;IIIF",
            "Ljava/lang/String;",
            "III)V"
        }
    .end annotation

    .line 38130
    .local p1, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38131
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Gj;->A08:Ljava/util/List;

    .line 38132
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Gj;->A05:I

    .line 38133
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Gj;->A06:I

    .line 38134
    iput p4, p0, Lcom/facebook/ads/redexgen/X/Gj;->A04:I

    .line 38135
    iput p5, p0, Lcom/facebook/ads/redexgen/X/Gj;->A00:F

    .line 38136
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/Gj;->A07:Ljava/lang/String;

    .line 38137
    iput p7, p0, Lcom/facebook/ads/redexgen/X/Gj;->A02:I

    .line 38138
    iput p8, p0, Lcom/facebook/ads/redexgen/X/Gj;->A01:I

    .line 38139
    iput p9, p0, Lcom/facebook/ads/redexgen/X/Gj;->A03:I

    .line 38140
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/4J;)Lcom/facebook/ads/redexgen/X/Gj;
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .line 38141
    const/16 v0, 0x15

    :try_start_0
    move-object/from16 v14, p0

    invoke-virtual {v14, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 38142
    invoke-virtual {v14}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v0

    and-int/lit8 v19, v0, 0x3

    .line 38143
    .local v0, "lengthSizeMinusOne":I
    invoke-virtual {v14}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v13

    .line 38144
    .local v2, "numberOfArrays":I
    const/4 v12, 0x0

    .line 38145
    .local v3, "csdLength":I
    invoke-virtual {v14}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v5

    .line 38146
    .local v4, "csdStartPosition":I
    const/4 v4, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v4, v13, :cond_1

    .line 38147
    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 38148
    invoke-virtual {v14}, Lcom/facebook/ads/redexgen/X/4J;->A0M()I

    move-result v3

    .line 38149
    .local v6, "numberOfNalUnits":I
    const/4 v2, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 38150
    invoke-virtual {v14}, Lcom/facebook/ads/redexgen/X/4J;->A0M()I

    move-result v1

    .line 38151
    .local v8, "nalUnitLength":I
    add-int/lit8 v0, v1, 0x4

    add-int/2addr v12, v0

    .line 38152
    invoke-virtual {v14, v1}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 38153
    .end local v8    # "nalUnitLength":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 38154
    .end local v6    # "numberOfNalUnits":I
    .end local v7    # "j":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 38155
    .end local v5    # "i":I
    :cond_1
    invoke-virtual {v14, v5}, Lcom/facebook/ads/redexgen/X/4J;->A0f(I)V

    .line 38156
    new-array v11, v12, [B

    .line 38157
    .local v5, "buffer":[B
    const/4 v10, 0x0

    .line 38158
    .local v6, "bufferPosition":I
    const/16 v18, -0x1

    .line 38159
    .local v7, "width":I
    const/16 v17, -0x1

    .line 38160
    .local v8, "height":I
    const/16 v16, -0x1

    .line 38161
    .local v9, "colorSpace":I
    const/4 v15, -0x1

    .line 38162
    .local v10, "colorRange":I
    const/4 v9, -0x1

    .line 38163
    .local v11, "colorTransfer":I
    const/high16 v8, 0x3f800000    # 1.0f

    .line 38164
    .local v12, "pixelWidthHeightRatio":F
    const/16 v26, 0x0

    .line 38165
    .local v13, "codecs":Ljava/lang/String;
    const/4 v7, 0x0

    .end local v7    # "width":I
    .end local v8    # "height":I
    .end local v9    # "colorSpace":I
    .end local v10    # "colorRange":I
    .end local v11    # "colorTransfer":I
    .end local v12    # "pixelWidthHeightRatio":F
    .end local v13    # "codecs":Ljava/lang/String;
    .local v14, "i":I
    .local v17, "width":I
    .local v18, "height":I
    .local v19, "colorSpace":I
    .local v20, "colorRange":I
    .local v21, "colorTransfer":I
    .local v22, "pixelWidthHeightRatio":F
    .local v23, "codecs":Ljava/lang/String;
    :goto_2
    if-ge v7, v13, :cond_4

    .line 38166
    invoke-virtual {v14}, Lcom/facebook/ads/redexgen/X/4J;->A0I()I

    move-result v0

    and-int/lit8 v6, v0, 0x3f

    .line 38167
    .local v7, "nalUnitType":I
    invoke-virtual {v14}, Lcom/facebook/ads/redexgen/X/4J;->A0M()I

    move-result v5

    .line 38168
    .local v8, "numberOfNalUnits":I
    const/4 v4, 0x0

    .local v9, "j":I
    :goto_3
    if-ge v4, v5, :cond_3

    .line 38169
    invoke-virtual {v14}, Lcom/facebook/ads/redexgen/X/4J;->A0M()I

    move-result v3

    .line 38170
    .local v10, "nalUnitLength":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/Gq;->A03:[B

    sget-object v0, Lcom/facebook/ads/redexgen/X/Gq;->A03:[B

    array-length v1, v0

    const/4 v0, 0x0

    invoke-static {v2, v0, v11, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38171
    sget-object v0, Lcom/facebook/ads/redexgen/X/Gq;->A03:[B

    array-length v0, v0

    add-int/2addr v10, v0

    .line 38172
    invoke-virtual {v14}, Lcom/facebook/ads/redexgen/X/4J;->A0l()[B

    move-result-object v1

    invoke-virtual {v14}, Lcom/facebook/ads/redexgen/X/4J;->A09()I

    move-result v0

    .line 38173
    invoke-static {v1, v0, v11, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38174
    const/16 v0, 0x21

    if-ne v6, v0, :cond_2

    if-nez v4, :cond_2

    .line 38175
    add-int v0, v10, v3

    .line 38176
    invoke-static {v11, v10, v0}, Lcom/facebook/ads/redexgen/X/Gq;->A05([BII)Lcom/facebook/ads/redexgen/X/Gn;

    move-result-object v1

    .line 38177
    .local v11, "spsData":Lcom/facebook/ads/redexgen/X/Gn;
    iget v0, v1, Lcom/facebook/ads/redexgen/X/Gn;->A0A:I

    move/from16 v18, v0

    .line 38178
    iget v0, v1, Lcom/facebook/ads/redexgen/X/Gn;->A08:I

    move/from16 v17, v0

    .line 38179
    iget v0, v1, Lcom/facebook/ads/redexgen/X/Gn;->A02:I

    move/from16 v16, v0

    .line 38180
    iget v15, v1, Lcom/facebook/ads/redexgen/X/Gn;->A01:I

    .line 38181
    iget v9, v1, Lcom/facebook/ads/redexgen/X/Gn;->A03:I

    .line 38182
    iget v8, v1, Lcom/facebook/ads/redexgen/X/Gn;->A00:F

    .line 38183
    iget v0, v1, Lcom/facebook/ads/redexgen/X/Gn;->A07:I

    move/from16 v20, v0

    iget-boolean v0, v1, Lcom/facebook/ads/redexgen/X/Gn;->A0B:Z

    move/from16 v21, v0

    iget v0, v1, Lcom/facebook/ads/redexgen/X/Gn;->A06:I

    move/from16 v22, v0

    .end local v2    # "numberOfArrays":I
    .local p1, "numberOfArrays":I
    iget v0, v1, Lcom/facebook/ads/redexgen/X/Gn;->A05:I

    move/from16 v23, v0

    .end local v4    # "csdStartPosition":I
    .local p2, "csdStartPosition":I
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/Gn;->A0C:[I

    .end local v7    # "nalUnitType":I
    .local v16, "nalUnitType":I
    iget v0, v1, Lcom/facebook/ads/redexgen/X/Gn;->A04:I

    .line 38184
    move/from16 v20, v20

    move/from16 v21, v21

    move/from16 v22, v22

    move/from16 v23, v23

    move-object/from16 v24, v2

    move/from16 v25, v0

    invoke-static/range {v20 .. v25}, Lcom/facebook/ads/redexgen/X/3U;->A03(IZII[II)Ljava/lang/String;

    move-result-object v26

    .line 38185
    .end local v2
    .end local v4
    .end local v7
    .restart local v16    # "nalUnitType":I
    .restart local p1
    .restart local p2
    :cond_2
    add-int/2addr v10, v3

    .line 38186
    invoke-virtual {v14, v3}, Lcom/facebook/ads/redexgen/X/4J;->A0g(I)V

    .line 38187
    .end local v10    # "nalUnitLength":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 38188
    .end local v16    # "nalUnitType":I
    .end local p1
    .end local p2
    .restart local v2    # "numberOfArrays":I
    .restart local v4    # "csdStartPosition":I
    .restart local v7    # "nalUnitType":I
    .end local v2    # "numberOfArrays":I
    .end local v4    # "csdStartPosition":I
    .end local v7    # "nalUnitType":I
    .end local v8    # "numberOfNalUnits":I
    .end local v9    # "j":I
    .restart local p1
    .restart local p2
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 38189
    .end local p1
    .end local p2
    .restart local v2    # "numberOfArrays":I
    .restart local v4    # "csdStartPosition":I
    .end local v2    # "numberOfArrays":I
    .end local v4    # "csdStartPosition":I
    .end local v14    # "i":I
    .restart local p1
    .restart local p2
    :cond_4
    if-nez v12, :cond_5

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v21

    goto :goto_4

    :cond_5
    invoke-static {v11}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v21

    .line 38190
    .local v8, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :goto_4
    new-instance v20, Lcom/facebook/ads/redexgen/X/Gj;

    add-int/lit8 v22, v19, 0x1

    move/from16 v27, v16

    move/from16 v28, v15

    move/from16 p0, v9

    move/from16 v23, v18

    move/from16 v24, v17

    move/from16 v25, v8

    invoke-direct/range {v20 .. v29}, Lcom/facebook/ads/redexgen/X/Gj;-><init>(Ljava/util/List;IIIFLjava/lang/String;III)V

    return-object v20
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38191
    .end local v0    # "lengthSizeMinusOne":I
    .end local v3    # "csdLength":I
    .end local v5    # "buffer":[B
    .end local v6    # "bufferPosition":I
    .end local v8    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v17    # "width":I
    .end local v18    # "height":I
    .end local v19    # "colorSpace":I
    .end local v20    # "colorRange":I
    .end local v21    # "colorTransfer":I
    .end local v22    # "pixelWidthHeightRatio":F
    .end local v23    # "codecs":Ljava/lang/String;
    .end local p1
    .end local p2
    :catch_0
    move-exception v3

    .line 38192
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const/4 v2, 0x0

    const/16 v1, 0x19

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gj;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/2i;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/2i;

    move-result-object v0

    throw v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gj;->A09:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p0, 0x0

    :goto_0
    array-length v3, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gj;->A0A:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Gj;->A0A:[Ljava/lang/String;

    const-string v1, "YyBlh7kREcvGfk8zeLahZrRMr2fR36"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ge p0, v3, :cond_0

    aget-byte v0, p1, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x44

    int-to-byte v0, v0

    aput-byte v0, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x19

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Gj;->A09:[B

    return-void

    :array_0
    .array-data 1
        0x7ft
        0x48t
        0x48t
        0x55t
        0x48t
        0x1at
        0x4at
        0x5bt
        0x48t
        0x49t
        0x53t
        0x54t
        0x5dt
        0x1at
        0x72t
        0x7ft
        0x6ct
        0x79t
        0x1at
        0x59t
        0x55t
        0x54t
        0x5ct
        0x53t
        0x5dt
    .end array-data
.end method
