.class public final Lcom/google/zxing/multi/GenericMultipleBarcodeReader;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/google/zxing/multi/MultipleBarcodeReader;


# static fields
.field private static final MAX_DEPTH:I = 0x4

.field private static final MIN_DIMENSION_TO_RECUR:I = 0x64


# instance fields
.field private final delegate:Lcom/google/zxing/Reader;


# direct methods
.method public constructor <init>(Lcom/google/zxing/Reader;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->delegate:Lcom/google/zxing/Reader;

    .line 5
    .line 6
    return-void
.end method

.method private doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;",
            "Ljava/util/List<",
            "Lcom/google/zxing/Result;",
            ">;III)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move/from16 v5, p4

    .line 4
    .line 5
    move/from16 v6, p5

    .line 6
    .line 7
    move/from16 v8, p6

    .line 8
    .line 9
    const/4 v1, 0x4

    .line 10
    if-le v8, v1, :cond_0

    .line 11
    .line 12
    goto/16 :goto_3

    .line 13
    .line 14
    :cond_0
    move-object/from16 v1, p0

    .line 15
    .line 16
    :try_start_0
    iget-object v2, v1, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->delegate:Lcom/google/zxing/Reader;

    .line 17
    .line 18
    move-object/from16 v3, p2

    .line 19
    .line 20
    invoke-interface {v2, v0, v3}, Lcom/google/zxing/Reader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    .line 21
    .line 22
    .line 23
    move-result-object v2
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v7

    .line 32
    if-eqz v7, :cond_2

    .line 33
    .line 34
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    check-cast v7, Lcom/google/zxing/Result;

    .line 39
    .line 40
    invoke-virtual {v7}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    invoke-virtual {v2}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v9

    .line 48
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v7

    .line 52
    if-eqz v7, :cond_1

    .line 53
    .line 54
    move-object/from16 v7, p3

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    invoke-static {v2, v5, v6}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->translateResultPoints(Lcom/google/zxing/Result;II)Lcom/google/zxing/Result;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    move-object/from16 v7, p3

    .line 62
    .line 63
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    :goto_0
    invoke-virtual {v2}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    if-eqz v2, :cond_c

    .line 71
    .line 72
    array-length v4, v2

    .line 73
    if-nez v4, :cond_3

    .line 74
    .line 75
    goto/16 :goto_3

    .line 76
    .line 77
    :cond_3
    invoke-virtual {v0}, Lcom/google/zxing/BinaryBitmap;->getWidth()I

    .line 78
    .line 79
    .line 80
    move-result v9

    .line 81
    invoke-virtual {v0}, Lcom/google/zxing/BinaryBitmap;->getHeight()I

    .line 82
    .line 83
    .line 84
    move-result v10

    .line 85
    int-to-float v4, v9

    .line 86
    int-to-float v11, v10

    .line 87
    array-length v12, v2

    .line 88
    const/4 v13, 0x0

    .line 89
    move v15, v13

    .line 90
    const/4 v14, 0x0

    .line 91
    :goto_1
    if-ge v14, v12, :cond_8

    .line 92
    .line 93
    aget-object v16, v2, v14

    .line 94
    .line 95
    if-eqz v16, :cond_7

    .line 96
    .line 97
    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/ResultPoint;->getX()F

    .line 98
    .line 99
    .line 100
    move-result v17

    .line 101
    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/ResultPoint;->getY()F

    .line 102
    .line 103
    .line 104
    move-result v16

    .line 105
    cmpg-float v18, v17, v4

    .line 106
    .line 107
    if-gez v18, :cond_4

    .line 108
    .line 109
    move/from16 v4, v17

    .line 110
    .line 111
    :cond_4
    cmpg-float v18, v16, v11

    .line 112
    .line 113
    if-gez v18, :cond_5

    .line 114
    .line 115
    move/from16 v11, v16

    .line 116
    .line 117
    :cond_5
    cmpl-float v18, v17, v13

    .line 118
    .line 119
    if-lez v18, :cond_6

    .line 120
    .line 121
    move/from16 v13, v17

    .line 122
    .line 123
    :cond_6
    cmpl-float v17, v16, v15

    .line 124
    .line 125
    if-lez v17, :cond_7

    .line 126
    .line 127
    move/from16 v15, v16

    .line 128
    .line 129
    :cond_7
    add-int/lit8 v14, v14, 0x1

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_8
    const/high16 v12, 0x42c80000    # 100.0f

    .line 133
    .line 134
    cmpl-float v2, v4, v12

    .line 135
    .line 136
    if-lez v2, :cond_9

    .line 137
    .line 138
    float-to-int v2, v4

    .line 139
    const/4 v14, 0x0

    .line 140
    invoke-virtual {v0, v14, v14, v2, v10}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    add-int/lit8 v7, v8, 0x1

    .line 145
    .line 146
    move-object/from16 v4, p3

    .line 147
    .line 148
    invoke-direct/range {v1 .. v7}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V

    .line 149
    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_9
    const/4 v14, 0x0

    .line 153
    :goto_2
    cmpl-float v1, v11, v12

    .line 154
    .line 155
    if-lez v1, :cond_a

    .line 156
    .line 157
    float-to-int v1, v11

    .line 158
    invoke-virtual {v0, v14, v14, v9, v1}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    add-int/lit8 v7, v8, 0x1

    .line 163
    .line 164
    move-object/from16 v1, p0

    .line 165
    .line 166
    move-object/from16 v3, p2

    .line 167
    .line 168
    move-object/from16 v4, p3

    .line 169
    .line 170
    move/from16 v5, p4

    .line 171
    .line 172
    move/from16 v6, p5

    .line 173
    .line 174
    invoke-direct/range {v1 .. v7}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V

    .line 175
    .line 176
    .line 177
    :cond_a
    add-int/lit8 v1, v9, -0x64

    .line 178
    .line 179
    int-to-float v1, v1

    .line 180
    cmpg-float v1, v13, v1

    .line 181
    .line 182
    if-gez v1, :cond_b

    .line 183
    .line 184
    float-to-int v1, v13

    .line 185
    sub-int v2, v9, v1

    .line 186
    .line 187
    const/4 v14, 0x0

    .line 188
    invoke-virtual {v0, v1, v14, v2, v10}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    add-int v5, p4, v1

    .line 193
    .line 194
    add-int/lit8 v7, v8, 0x1

    .line 195
    .line 196
    move-object/from16 v1, p0

    .line 197
    .line 198
    move-object/from16 v3, p2

    .line 199
    .line 200
    move-object/from16 v4, p3

    .line 201
    .line 202
    move/from16 v6, p5

    .line 203
    .line 204
    invoke-direct/range {v1 .. v7}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V

    .line 205
    .line 206
    .line 207
    :cond_b
    add-int/lit8 v1, v10, -0x64

    .line 208
    .line 209
    int-to-float v1, v1

    .line 210
    cmpg-float v1, v15, v1

    .line 211
    .line 212
    if-gez v1, :cond_c

    .line 213
    .line 214
    float-to-int v1, v15

    .line 215
    sub-int/2addr v10, v1

    .line 216
    const/4 v14, 0x0

    .line 217
    invoke-virtual {v0, v14, v1, v9, v10}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    add-int v5, p5, v1

    .line 222
    .line 223
    add-int/lit8 v6, v8, 0x1

    .line 224
    .line 225
    move-object/from16 v2, p2

    .line 226
    .line 227
    move-object/from16 v3, p3

    .line 228
    .line 229
    move/from16 v4, p4

    .line 230
    .line 231
    move-object v1, v0

    .line 232
    move-object/from16 v0, p0

    .line 233
    .line 234
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V

    .line 235
    .line 236
    .line 237
    :catch_0
    :cond_c
    :goto_3
    return-void
.end method

.method private static translateResultPoints(Lcom/google/zxing/Result;II)Lcom/google/zxing/Result;
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    array-length v1, v0

    .line 9
    new-array v6, v1, [Lcom/google/zxing/ResultPoint;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    array-length v2, v0

    .line 13
    if-ge v1, v2, :cond_2

    .line 14
    .line 15
    aget-object v2, v0, v1

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    new-instance v3, Lcom/google/zxing/ResultPoint;

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getX()F

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    int-to-float v5, p1

    .line 26
    add-float/2addr v4, v5

    .line 27
    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getY()F

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    int-to-float v5, p2

    .line 32
    add-float/2addr v2, v5

    .line 33
    invoke-direct {v3, v4, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 34
    .line 35
    .line 36
    aput-object v3, v6, v1

    .line 37
    .line 38
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    new-instance v2, Lcom/google/zxing/Result;

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getRawBytes()[B

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getNumBits()I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getTimestamp()J

    .line 60
    .line 61
    .line 62
    move-result-wide v8

    .line 63
    invoke-direct/range {v2 .. v9}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[BI[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;J)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {v2, p0}, Lcom/google/zxing/Result;->putAllMetadata(Ljava/util/Map;)V

    .line 71
    .line 72
    .line 73
    return-object v2
.end method


# virtual methods
.method public decodeMultiple(Lcom/google/zxing/BinaryBitmap;)[Lcom/google/zxing/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->decodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)[Lcom/google/zxing/Result;

    move-result-object p1

    return-object p1
.end method

.method public decodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)[Lcom/google/zxing/Result;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)[",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 3
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V

    .line 4
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/google/zxing/Result;

    invoke-interface {v3, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/zxing/Result;

    return-object p1

    .line 6
    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1
.end method
