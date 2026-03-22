.class public final Landroidx/media3/extractor/HevcConfig;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# static fields
.field private static final SPS_NAL_UNIT_TYPE:I = 0x21


# instance fields
.field public final bitdepthChroma:I

.field public final bitdepthLuma:I

.field public final codecs:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final colorRange:I

.field public final colorSpace:I

.field public final colorTransfer:I

.field public final height:I

.field public final initializationData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public final maxNumReorderPics:I

.field public final nalUnitLengthFieldLength:I

.field public final pixelWidthHeightRatio:F

.field public final width:I


# direct methods
.method private constructor <init>(Ljava/util/List;IIIIIIIIFILjava/lang/String;)V
    .locals 0
    .param p12    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;IIIIIIIIFI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/extractor/HevcConfig;->initializationData:Ljava/util/List;

    .line 5
    .line 6
    iput p2, p0, Landroidx/media3/extractor/HevcConfig;->nalUnitLengthFieldLength:I

    .line 7
    .line 8
    iput p3, p0, Landroidx/media3/extractor/HevcConfig;->width:I

    .line 9
    .line 10
    iput p4, p0, Landroidx/media3/extractor/HevcConfig;->height:I

    .line 11
    .line 12
    iput p5, p0, Landroidx/media3/extractor/HevcConfig;->bitdepthLuma:I

    .line 13
    .line 14
    iput p6, p0, Landroidx/media3/extractor/HevcConfig;->bitdepthChroma:I

    .line 15
    .line 16
    iput p7, p0, Landroidx/media3/extractor/HevcConfig;->colorSpace:I

    .line 17
    .line 18
    iput p8, p0, Landroidx/media3/extractor/HevcConfig;->colorRange:I

    .line 19
    .line 20
    iput p9, p0, Landroidx/media3/extractor/HevcConfig;->colorTransfer:I

    .line 21
    .line 22
    iput p10, p0, Landroidx/media3/extractor/HevcConfig;->pixelWidthHeightRatio:F

    .line 23
    .line 24
    iput p11, p0, Landroidx/media3/extractor/HevcConfig;->maxNumReorderPics:I

    .line 25
    .line 26
    iput-object p12, p0, Landroidx/media3/extractor/HevcConfig;->codecs:Ljava/lang/String;

    .line 27
    .line 28
    return-void
.end method

.method public static parse(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/HevcConfig;
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/16 v1, 0x15

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    and-int/lit8 v1, v1, 0x3

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    const/4 v4, 0x0

    .line 23
    move v5, v4

    .line 24
    move v6, v5

    .line 25
    :goto_0
    const/4 v7, 0x1

    .line 26
    if-ge v5, v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 32
    .line 33
    .line 34
    move-result v7

    .line 35
    move v8, v4

    .line 36
    :goto_1
    if-ge v8, v7, :cond_0

    .line 37
    .line 38
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 39
    .line 40
    .line 41
    move-result v9

    .line 42
    add-int/lit8 v10, v9, 0x4

    .line 43
    .line 44
    add-int/2addr v6, v10

    .line 45
    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 46
    .line 47
    .line 48
    add-int/lit8 v8, v8, 0x1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 55
    .line 56
    .line 57
    new-array v3, v6, [B

    .line 58
    .line 59
    const/4 v5, -0x1

    .line 60
    const/high16 v8, 0x3f800000    # 1.0f

    .line 61
    .line 62
    const/4 v9, 0x0

    .line 63
    move v13, v5

    .line 64
    move v14, v13

    .line 65
    move v15, v14

    .line 66
    move/from16 v16, v15

    .line 67
    .line 68
    move/from16 v17, v16

    .line 69
    .line 70
    move/from16 v18, v17

    .line 71
    .line 72
    move/from16 v19, v18

    .line 73
    .line 74
    move/from16 v21, v19

    .line 75
    .line 76
    move/from16 v20, v8

    .line 77
    .line 78
    move-object/from16 v22, v9

    .line 79
    .line 80
    move v5, v4

    .line 81
    move v8, v5

    .line 82
    :goto_2
    if-ge v5, v2, :cond_4

    .line 83
    .line 84
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    .line 85
    .line 86
    .line 87
    move-result v9

    .line 88
    and-int/lit8 v9, v9, 0x3f

    .line 89
    .line 90
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 91
    .line 92
    .line 93
    move-result v10

    .line 94
    move v11, v4

    .line 95
    :goto_3
    if-ge v11, v10, :cond_3

    .line 96
    .line 97
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 98
    .line 99
    .line 100
    move-result v12

    .line 101
    move/from16 v23, v7

    .line 102
    .line 103
    sget-object v7, Landroidx/media3/container/NalUnitUtil;->NAL_START_CODE:[B

    .line 104
    .line 105
    move/from16 v24, v1

    .line 106
    .line 107
    array-length v1, v7

    .line 108
    invoke-static {v7, v4, v3, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    .line 110
    .line 111
    array-length v1, v7

    .line 112
    add-int/2addr v8, v1

    .line 113
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    .line 118
    .line 119
    .line 120
    move-result v7

    .line 121
    invoke-static {v1, v7, v3, v8, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    .line 123
    .line 124
    const/16 v1, 0x21

    .line 125
    .line 126
    if-ne v9, v1, :cond_2

    .line 127
    .line 128
    if-nez v11, :cond_2

    .line 129
    .line 130
    add-int v1, v8, v12

    .line 131
    .line 132
    invoke-static {v3, v8, v1}, Landroidx/media3/container/NalUnitUtil;->parseH265SpsNalUnit([BII)Landroidx/media3/container/NalUnitUtil$H265SpsData;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    iget v13, v1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->width:I

    .line 137
    .line 138
    iget v14, v1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->height:I

    .line 139
    .line 140
    iget v7, v1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->bitDepthLumaMinus8:I

    .line 141
    .line 142
    add-int/lit8 v15, v7, 0x8

    .line 143
    .line 144
    iget v7, v1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->bitDepthChromaMinus8:I

    .line 145
    .line 146
    add-int/lit8 v16, v7, 0x8

    .line 147
    .line 148
    iget v7, v1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->colorSpace:I

    .line 149
    .line 150
    iget v4, v1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->colorRange:I

    .line 151
    .line 152
    move/from16 v25, v2

    .line 153
    .line 154
    iget v2, v1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->colorTransfer:I

    .line 155
    .line 156
    move/from16 v17, v2

    .line 157
    .line 158
    iget v2, v1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->pixelWidthHeightRatio:F

    .line 159
    .line 160
    move/from16 v18, v2

    .line 161
    .line 162
    iget v2, v1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->maxNumReorderPics:I

    .line 163
    .line 164
    move/from16 v19, v2

    .line 165
    .line 166
    iget v2, v1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->generalProfileSpace:I

    .line 167
    .line 168
    move/from16 v26, v2

    .line 169
    .line 170
    iget-boolean v2, v1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->generalTierFlag:Z

    .line 171
    .line 172
    move/from16 v27, v2

    .line 173
    .line 174
    iget v2, v1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->generalProfileIdc:I

    .line 175
    .line 176
    move/from16 v28, v2

    .line 177
    .line 178
    iget v2, v1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->generalProfileCompatibilityFlags:I

    .line 179
    .line 180
    move/from16 v29, v2

    .line 181
    .line 182
    iget-object v2, v1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->constraintBytes:[I

    .line 183
    .line 184
    iget v1, v1, Landroidx/media3/container/NalUnitUtil$H265SpsData;->generalLevelIdc:I

    .line 185
    .line 186
    move/from16 v31, v1

    .line 187
    .line 188
    move-object/from16 v30, v2

    .line 189
    .line 190
    invoke-static/range {v26 .. v31}, Landroidx/media3/common/util/CodecSpecificDataUtil;->buildHevcCodecString(IZII[II)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v22

    .line 194
    move/from16 v20, v18

    .line 195
    .line 196
    move/from16 v21, v19

    .line 197
    .line 198
    move/from16 v18, v4

    .line 199
    .line 200
    move/from16 v19, v17

    .line 201
    .line 202
    move/from16 v17, v7

    .line 203
    .line 204
    goto :goto_4

    .line 205
    :cond_2
    move/from16 v25, v2

    .line 206
    .line 207
    :goto_4
    add-int/2addr v8, v12

    .line 208
    invoke-virtual {v0, v12}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 209
    .line 210
    .line 211
    add-int/lit8 v11, v11, 0x1

    .line 212
    .line 213
    move/from16 v7, v23

    .line 214
    .line 215
    move/from16 v1, v24

    .line 216
    .line 217
    move/from16 v2, v25

    .line 218
    .line 219
    const/4 v4, 0x0

    .line 220
    goto :goto_3

    .line 221
    :cond_3
    move/from16 v24, v1

    .line 222
    .line 223
    move/from16 v25, v2

    .line 224
    .line 225
    move/from16 v23, v7

    .line 226
    .line 227
    add-int/lit8 v5, v5, 0x1

    .line 228
    .line 229
    const/4 v4, 0x0

    .line 230
    goto/16 :goto_2

    .line 231
    .line 232
    :cond_4
    move/from16 v24, v1

    .line 233
    .line 234
    move/from16 v23, v7

    .line 235
    .line 236
    if-nez v6, :cond_5

    .line 237
    .line 238
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 239
    .line 240
    :goto_5
    move-object v11, v0

    .line 241
    goto :goto_6

    .line 242
    :cond_5
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    goto :goto_5

    .line 247
    :goto_6
    new-instance v10, Landroidx/media3/extractor/HevcConfig;

    .line 248
    .line 249
    add-int/lit8 v12, v24, 0x1

    .line 250
    .line 251
    invoke-direct/range {v10 .. v22}, Landroidx/media3/extractor/HevcConfig;-><init>(Ljava/util/List;IIIIIIIIFILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    .line 253
    .line 254
    return-object v10

    .line 255
    :catch_0
    move-exception v0

    .line 256
    const-string v1, "Error parsing HEVC config"

    .line 257
    .line 258
    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    throw v0
.end method
