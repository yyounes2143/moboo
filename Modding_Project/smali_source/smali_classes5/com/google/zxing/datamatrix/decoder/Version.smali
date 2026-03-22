.class public final Lcom/google/zxing/datamatrix/decoder/Version;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/datamatrix/decoder/Version$ECB;,
        Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    }
.end annotation


# static fields
.field private static final VERSIONS:[Lcom/google/zxing/datamatrix/decoder/Version;


# instance fields
.field private final dataRegionSizeColumns:I

.field private final dataRegionSizeRows:I

.field private final ecBlocks:Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

.field private final symbolSizeColumns:I

.field private final symbolSizeRows:I

.field private final totalCodewords:I

.field private final versionNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/zxing/datamatrix/decoder/Version;->buildVersions()[Lcom/google/zxing/datamatrix/decoder/Version;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/google/zxing/datamatrix/decoder/Version;->VERSIONS:[Lcom/google/zxing/datamatrix/decoder/Version;

    .line 6
    .line 7
    return-void
.end method

.method private constructor <init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/google/zxing/datamatrix/decoder/Version;->versionNumber:I

    .line 5
    .line 6
    iput p2, p0, Lcom/google/zxing/datamatrix/decoder/Version;->symbolSizeRows:I

    .line 7
    .line 8
    iput p3, p0, Lcom/google/zxing/datamatrix/decoder/Version;->symbolSizeColumns:I

    .line 9
    .line 10
    iput p4, p0, Lcom/google/zxing/datamatrix/decoder/Version;->dataRegionSizeRows:I

    .line 11
    .line 12
    iput p5, p0, Lcom/google/zxing/datamatrix/decoder/Version;->dataRegionSizeColumns:I

    .line 13
    .line 14
    iput-object p6, p0, Lcom/google/zxing/datamatrix/decoder/Version;->ecBlocks:Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    .line 15
    .line 16
    invoke-virtual {p6}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->getECCodewords()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-virtual {p6}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->getECBlocks()[Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    array-length p3, p2

    .line 25
    const/4 p4, 0x0

    .line 26
    move p5, p4

    .line 27
    :goto_0
    if-ge p4, p3, :cond_0

    .line 28
    .line 29
    aget-object p6, p2, p4

    .line 30
    .line 31
    invoke-virtual {p6}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->getCount()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-virtual {p6}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->getDataCodewords()I

    .line 36
    .line 37
    .line 38
    move-result p6

    .line 39
    add-int/2addr p6, p1

    .line 40
    mul-int/2addr v0, p6

    .line 41
    add-int/2addr p5, v0

    .line 42
    add-int/lit8 p4, p4, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iput p5, p0, Lcom/google/zxing/datamatrix/decoder/Version;->totalCodewords:I

    .line 46
    .line 47
    return-void
.end method

.method private static buildVersions()[Lcom/google/zxing/datamatrix/decoder/Version;
    .locals 67

    .line 1
    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version;

    .line 2
    .line 3
    new-instance v6, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    .line 4
    .line 5
    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    .line 6
    .line 7
    const/4 v7, 0x1

    .line 8
    const/4 v8, 0x3

    .line 9
    const/4 v9, 0x0

    .line 10
    invoke-direct {v1, v7, v8, v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$1;)V

    .line 11
    .line 12
    .line 13
    const/4 v10, 0x5

    .line 14
    invoke-direct {v6, v10, v1, v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$1;)V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    const/16 v2, 0xa

    .line 19
    .line 20
    const/16 v3, 0xa

    .line 21
    .line 22
    const/16 v4, 0x8

    .line 23
    .line 24
    const/16 v5, 0x8

    .line 25
    .line 26
    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    .line 27
    .line 28
    .line 29
    new-instance v11, Lcom/google/zxing/datamatrix/decoder/Version;

    .line 30
    .line 31
    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    .line 32
    .line 33
    new-instance v2, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    .line 34
    .line 35
    invoke-direct {v2, v7, v10, v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$1;)V

    .line 36
    .line 37
    .line 38
    const/4 v3, 0x7

    .line 39
    invoke-direct {v1, v3, v2, v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$1;)V

    .line 40
    .line 41
    .line 42
    const/4 v12, 0x2

    .line 43
    const/16 v13, 0xc

    .line 44
    .line 45
    const/16 v14, 0xc

    .line 46
    .line 47
    const/16 v15, 0xa

    .line 48
    .line 49
    const/16 v16, 0xa

    .line 50
    .line 51
    move-object/from16 v17, v1

    .line 52
    .line 53
    invoke-direct/range {v11 .. v17}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    .line 54
    .line 55
    .line 56
    new-instance v12, Lcom/google/zxing/datamatrix/decoder/Version;

    .line 57
    .line 58
    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    .line 59
    .line 60
    new-instance v2, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    .line 61
    .line 62
    invoke-direct {v2, v7, v4, v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$1;)V

    .line 63
    .line 64
    .line 65
    const/16 v5, 0xa

    .line 66
    .line 67
    invoke-direct {v1, v5, v2, v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$1;)V

    .line 68
    .line 69
    .line 70
    const/4 v13, 0x3

    .line 71
    const/16 v14, 0xe

    .line 72
    .line 73
    const/16 v15, 0xe

    .line 74
    .line 75
    const/16 v16, 0xc

    .line 76
    .line 77
    const/16 v17, 0xc

    .line 78
    .line 79
    move-object/from16 v18, v1

    .line 80
    .line 81
    invoke-direct/range {v12 .. v18}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    .line 82
    .line 83
    .line 84
    new-instance v13, Lcom/google/zxing/datamatrix/decoder/Version;

    .line 85
    .line 86
    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    .line 87
    .line 88
    new-instance v2, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    .line 89
    .line 90
    const/16 v6, 0xc

    .line 91
    .line 92
    invoke-direct {v2, v7, v6, v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$1;)V

    .line 93
    .line 94
    .line 95
    invoke-direct {v1, v6, v2, v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$1;)V

    .line 96
    .line 97
    .line 98
    const/4 v14, 0x4

    .line 99
    const/16 v15, 0x10

    .line 100
    .line 101
    const/16 v16, 0x10

    .line 102
    .line 103
    const/16 v17, 0xe

    .line 104
    .line 105
    const/16 v18, 0xe

    .line 106
    .line 107
    move-object/from16 v19, v1

    .line 108
    .line 109
    invoke-direct/range {v13 .. v19}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    .line 110
    .line 111
    .line 112
    new-instance v14, Lcom/google/zxing/datamatrix/decoder/Version;

    .line 113
    .line 114
    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    .line 115
    .line 116
    new-instance v2, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    .line 117
    .line 118
    const/16 v15, 0x12

    .line 119
    .line 120
    invoke-direct {v2, v7, v15, v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$1;)V

    .line 121
    .line 122
    .line 123
    move/from16 v21, v6

    .line 124
    .line 125
    const/16 v6, 0xe

    .line 126
    .line 127
    invoke-direct {v1, v6, v2, v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$1;)V

    .line 128
    .line 129
    .line 130
    move v2, v15

    .line 131
    const/4 v15, 0x5

    .line 132
    const/16 v16, 0x12

    .line 133
    .line 134
    const/16 v17, 0x12

    .line 135
    .line 136
    const/16 v18, 0x10

    .line 137
    .line 138
    const/16 v19, 0x10

    .line 139
    .line 140
    move-object/from16 v20, v1

    .line 141
    .line 142
    invoke-direct/range {v14 .. v20}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    .line 143
    .line 144
    .line 145
    new-instance v22, Lcom/google/zxing/datamatrix/decoder/Version;

    .line 146
    .line 147
    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    .line 148
    .line 149
    new-instance v15, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    .line 150
    .line 151
    move/from16 v16, v8

    .line 152
    .line 153
    const/16 v8, 0x16

    .line 154
    .line 155
    invoke-direct {v15, v7, v8, v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$1;)V

    .line 156
    .line 157
    .line 158
    invoke-direct {v1, v2, v15, v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$1;)V

    .line 159
    .line 160
    .line 161
    const/16 v23, 0x6

    .line 162
    .line 163
    const/16 v24, 0x14

    .line 164
    .line 165
    const/16 v25, 0x14

    .line 166
    .line 167
    const/16 v26, 0x12

    .line 168
    .line 169
    const/16 v27, 0x12

    .line 170
    .line 171
    move-object/from16 v28, v1

    .line 172
    .line 173
    invoke-direct/range {v22 .. v28}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    .line 174
    .line 175
    .line 176
    new-instance v23, Lcom/google/zxing/datamatrix/decoder/Version;

    .line 177
    .line 178
    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    .line 179
    .line 180
    new-instance v15, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    .line 181
    .line 182
    const/16 v2, 0x1e

    .line 183
    .line 184
    invoke-direct {v15, v7, v2, v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$1;)V

    .line 185
    .line 186
    .line 187
    const/16 v2, 0x14

    .line 188
    .line 189
    invoke-direct {v1, v2, v15, v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$1;)V

    .line 190
    .line 191
    .line 192
    const/16 v24, 0x7

    .line 193
    .line 194
    const/16 v25, 0x16

    .line 195
    .line 196
    const/16 v26, 0x16

    .line 197
    .line 198
    const/16 v27, 0x14

    .line 199
    .line 200
    const/16 v28, 0x14

    .line 201
    .line 202
    move-object/from16 v29, v1

    .line 203
    .line 204
    invoke-direct/range {v23 .. v29}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    .line 205
    .line 206
    .line 207
    new-instance v24, Lcom/google/zxing/datamatrix/decoder/Version;

    .line 208
    .line 209
    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    .line 210
    .line 211
    new-instance v15, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    .line 212
    .line 213
    move/from16 v19, v2

    .line 214
    .line 215
    const/16 v2, 0x24

    .line 216
    .line 217
    invoke-direct {v15, v7, v2, v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$1;)V

    .line 218
    .line 219
    .line 220
    const/16 v8, 0x18

    .line 221
    .line 222
    invoke-direct {v1, v8, v15, v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$1;)V

    .line 223
    .line 224
    .line 225
    const/16 v25, 0x8

    .line 226
    .line 227
    const/16 v26, 0x18

    .line 228
    .line 229
    const/16 v27, 0x18

    .line 230
    .line 231
    const/16 v28, 0x16

    .line 232
    .line 233
    const/16 v29, 0x16

    .line 234
    .line 235
    move-object/from16 v30, v1

    .line 236
    .line 237
    invoke-direct/range {v24 .. v30}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    .line 238
    .line 239
    .line 240
    new-instance v25, Lcom/google/zxing/datamatrix/decoder/Version;

    .line 241
    .line 242
    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    .line 243
    .line 244
    new-instance v15, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    .line 245
    .line 246
    const/16 v8, 0x2c

    .line 247
    .line 248
    invoke-direct {v15, v7, v8, v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$1;)V

    .line 249
    .line 250
    .line 251
    const/16 v8, 0x1c

    .line 252
    .line 253
    invoke-direct {v1, v8, v15, v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$1;)V

    .line 254
    .line 255
    .line 256
    const/16 v26, 0x9

    .line 257
    .line 258
    const/16 v27, 0x1a

    .line 259
    .line 260
    const/16 v28, 0x1a

    .line 261
    .line 262
    const/16 v29, 0x18

    .line 263
    .line 264
    const/16 v30, 0x18

    .line 265
    .line 266
    move-object/from16 v31, v1

    .line 267
    .line 268
    invoke-direct/range {v25 .. v31}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    .line 269
    .line 270
    .line 271
    new-instance v33, Lcom/google/zxing/datamatrix/decoder/Version;

    .line 272
    .line 273
    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    .line 274
    .line 275
    new-instance v15, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    .line 276
    .line 277
    const/16 v8, 0x3e

    .line 278
    .line 279
    invoke-direct {v15, v7, v8, v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$1;)V

    .line 280
    .line 281
    .line 282
    invoke-direct {v1, v2, v15, v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$1;)V

    .line 283
    .line 284
    .line 285
    const/16 v34, 0xa

    .line 286
    .line 287
    const/16 v35, 0x20

    .line 288
    .line 289
    const/16 v36, 0x20

    .line 290
    .line 291
    const/16 v37, 0xe

    .line 292
    .line 293
    const/16 v38, 0xe

    .line 294
    .line 295
    move-object/from16 v39, v1

    .line 296
    .line 297
    invoke-direct/range {v33 .. v39}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    .line 298
    .line 299
    .line 300
    new-instance v34, Lcom/google/zxing/datamatrix/decoder/Version;

    .line 301
    .line 302
    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    .line 303
    .line 304
    new-instance v15, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    .line 305
    .line 306
    const/16 v6, 0x56

    .line 307
    .line 308
    invoke-direct {v15, v7, v6, v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$1;)V

    .line 309
    .line 310
    .line 311
    const/16 v6, 0x2a

    .line 312
    .line 313
    invoke-direct {v1, v6, v15, v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$1;)V

    .line 314
    .line 315
    .line 316
    const/16 v35, 0xb

    .line 317
    .line 318
    const/16 v36, 0x24

    .line 319
    .line 320
    const/16 v37, 0x24

    .line 321
    .line 322
    const/16 v38, 0x10

    .line 323
    .line 324
    const/16 v39, 0x10

    .line 325
    .line 326
    move-object/from16 v40, v1

    .line 327
    .line 328
    invoke-direct/range {v34 .. v40}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    .line 329
    .line 330
    .line 331
    new-instance v35, Lcom/google/zxing/datamatrix/decoder/Version;

    .line 332
    .line 333
    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    .line 334
    .line 335
    new-instance v15, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    .line 336
    .line 337
    const/16 v5, 0x72

    .line 338
    .line 339
    invoke-direct {v15, v7, v5, v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$1;)V

    .line 340
    .line 341
    .line 342
    const/16 v3, 0x30

    .line 343
    .line 344
    invoke-direct {v1, v3, v15, v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$1;)V

    .line 345
    .line 346
    .line 347
    const/16 v36, 0xc

    .line 348
    .line 349
    const/16 v37, 0x28

    .line 350
    .line 351
    const/16 v38, 0x28

    .line 352
    .line 353
    const/16 v39, 0x12

    .line 354
    .line 355
    const/16 v40, 0x12

    .line 356
    .line 357
    move-object/from16 v41, v1

    .line 358
    .line 359
    invoke-direct/range {v35 .. v41}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    .line 360
    .line 361
    .line 362
    new-instance v36, Lcom/google/zxing/datamatrix/decoder/Version;

    .line 363
    .line 364
    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    .line 365
    .line 366
    new-instance v15, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    .line 367
    .line 368
    const/16 v10, 0x90

    .line 369
    .line 370
    invoke-direct {v15, v7, v10, v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$1;)V

    .line 371
    .line 372
    .line 373
    const/16 v8, 0x38

    .line 374
    .line 375
    invoke-direct {v1, v8, v15, v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$1;)V

    .line 376
    .line 377
    .line 378
    const/16 v37, 0xd

    .line 379
    .line 380
    const/16 v38, 0x2c

    .line 381
    .line 382
    const/16 v39, 0x2c

    .line 383
    .line 384
    const/16 v40, 0x14

    .line 385
    .line 386
    const/16 v41, 0x14

    .line 387
    .line 388
    move-object/from16 v42, v1

    .line 389
    .line 390
    invoke-direct/range {v36 .. v42}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    .line 391
    .line 392
    .line 393
    new-instance v37, Lcom/google/zxing/datamatrix/decoder/Version;

    .line 394
    .line 395
    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    .line 396
    .line 397
    new-instance v15, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    .line 398
    .line 399
    const/16 v4, 0xae

    .line 400
    .line 401
    invoke-direct {v15, v7, v4, v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$1;)V

    .line 402
    .line 403
    .line 404
    const/16 v7, 0x44

    .line 405
    .line 406
    invoke-direct {v1, v7, v15, v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$1;)V

    .line 407
    .line 408
    .line 409
    const/16 v38, 0xe

    .line 410
    .line 411
    const/16 v39, 0x30

    .line 412
    .line 413
    const/16 v40, 0x30

    .line 414
    .line 415
    const/16 v41, 0x16

    .line 416
    .line 417
    const/16 v42, 0x16

    .line 418
    .line 419
    move-object/from16 v43, v1

    .line 420
    .line 421
    invoke-direct/range {v37 .. v43}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    .line 422
    .line 423
    .line 424
    new-instance v45, Lcom/google/zxing/datamatrix/decoder/Version;

    .line 425
    .line 426
    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    .line 427
    .line 428
    new-instance v15, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    .line 429
    .line 430
    const/16 v7, 0x66

    .line 431
    .line 432
    const/4 v4, 0x2

    .line 433
    invoke-direct {v15, v4, v7, v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$1;)V

    .line 434
    .line 435
    .line 436
    invoke-direct {v1, v6, v15, v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$1;)V

    .line 437
    .line 438
    .line 439
    const/16 v46, 0xf

    .line 440
    .line 441
    const/16 v47, 0x34

    .line 442
    .line 443
    const/16 v48, 0x34

    .line 444
    .line 445
    const/16 v49, 0x18

    .line 446
    .line 447
    const/16 v50, 0x18

    .line 448
    .line 449
    move-object/from16 v51, v1

    .line 450
    .line 451
    invoke-direct/range {v45 .. v51}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    .line 452
    .line 453
    .line 454
    new-instance v46, Lcom/google/zxing/datamatrix/decoder/Version;

    .line 455
    .line 456
    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    .line 457
    .line 458
    new-instance v6, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    .line 459
    .line 460
    const/16 v7, 0x8c

    .line 461
    .line 462
    invoke-direct {v6, v4, v7, v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$1;)V

    .line 463
    .line 464
    .line 465
    invoke-direct {v1, v8, v6, v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$1;)V

    .line 466
    .line 467
    .line 468
    const/16 v47, 0x10

    .line 469
    .line 470
    const/16 v48, 0x40

    .line 471
    .line 472
    const/16 v49, 0x40

    .line 473
    .line 474
    const/16 v50, 0xe

    .line 475
    .line 476
    const/16 v51, 0xe

    .line 477
    .line 478
    move-object/from16 v52, v1

    .line 479
    .line 480
    invoke-direct/range {v46 .. v52}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    .line 481
    .line 482
    .line 483
    new-instance v47, Lcom/google/zxing/datamatrix/decoder/Version;

    .line 484
    .line 485
    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    .line 486
    .line 487
    new-instance v6, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    .line 488
    .line 489
    const/16 v7, 0x5c

    .line 490
    .line 491
    const/4 v15, 0x4

    .line 492
    invoke-direct {v6, v15, v7, v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$1;)V

    .line 493
    .line 494
    .line 495
    invoke-direct {v1, v2, v6, v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$1;)V

    .line 496
    .line 497
    .line 498
    const/16 v48, 0x11

    .line 499
    .line 500
    const/16 v49, 0x48

    .line 501
    .line 502
    const/16 v50, 0x48

    .line 503
    .line 504
    const/16 v51, 0x10

    .line 505
    .line 506
    const/16 v52, 0x10

    .line 507
    .line 508
    move-object/from16 v53, v1

    .line 509
    .line 510
    invoke-direct/range {v47 .. v53}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    .line 511
    .line 512
    .line 513
    new-instance v48, Lcom/google/zxing/datamatrix/decoder/Version;

    .line 514
    .line 515
    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    .line 516
    .line 517
    new-instance v2, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    .line 518
    .line 519
    invoke-direct {v2, v15, v5, v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$1;)V

    .line 520
    .line 521
    .line 522
    invoke-direct {v1, v3, v2, v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$1;)V

    .line 523
    .line 524
    .line 525
    const/16 v49, 0x12

    .line 526
    .line 527
    const/16 v50, 0x50

    .line 528
    .line 529
    const/16 v51, 0x50

    .line 530
    .line 531
    const/16 v52, 0x12

    .line 532
    .line 533
    const/16 v53, 0x12

    .line 534
    .line 535
    move-object/from16 v54, v1

    .line 536
    .line 537
    invoke-direct/range {v48 .. v54}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    .line 538
    .line 539
    .line 540
    new-instance v49, Lcom/google/zxing/datamatrix/decoder/Version;

    .line 541
    .line 542
    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    .line 543
    .line 544
    new-instance v2, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    .line 545
    .line 546
    invoke-direct {v2, v15, v10, v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$1;)V

    .line 547
    .line 548
    .line 549
    invoke-direct {v1, v8, v2, v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$1;)V

    .line 550
    .line 551
    .line 552
    const/16 v50, 0x13

    .line 553
    .line 554
    const/16 v51, 0x58

    .line 555
    .line 556
    const/16 v52, 0x58

    .line 557
    .line 558
    const/16 v53, 0x14

    .line 559
    .line 560
    const/16 v54, 0x14

    .line 561
    .line 562
    move-object/from16 v55, v1

    .line 563
    .line 564
    invoke-direct/range {v49 .. v55}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    .line 565
    .line 566
    .line 567
    new-instance v50, Lcom/google/zxing/datamatrix/decoder/Version;

    .line 568
    .line 569
    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    .line 570
    .line 571
    new-instance v2, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    .line 572
    .line 573
    const/16 v3, 0xae

    .line 574
    .line 575
    invoke-direct {v2, v15, v3, v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$1;)V

    .line 576
    .line 577
    .line 578
    const/16 v3, 0x44

    .line 579
    .line 580
    invoke-direct {v1, v3, v2, v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$1;)V

    .line 581
    .line 582
    .line 583
    const/16 v51, 0x14

    .line 584
    .line 585
    const/16 v52, 0x60

    .line 586
    .line 587
    const/16 v53, 0x60

    .line 588
    .line 589
    const/16 v54, 0x16

    .line 590
    .line 591
    const/16 v55, 0x16

    .line 592
    .line 593
    move-object/from16 v56, v1

    .line 594
    .line 595
    invoke-direct/range {v50 .. v56}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    .line 596
    .line 597
    .line 598
    new-instance v51, Lcom/google/zxing/datamatrix/decoder/Version;

    .line 599
    .line 600
    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    .line 601
    .line 602
    new-instance v2, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    .line 603
    .line 604
    const/4 v3, 0x6

    .line 605
    const/16 v5, 0x88

    .line 606
    .line 607
    invoke-direct {v2, v3, v5, v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$1;)V

    .line 608
    .line 609
    .line 610
    invoke-direct {v1, v8, v2, v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$1;)V

    .line 611
    .line 612
    .line 613
    const/16 v52, 0x15

    .line 614
    .line 615
    const/16 v53, 0x68

    .line 616
    .line 617
    const/16 v54, 0x68

    .line 618
    .line 619
    const/16 v55, 0x18

    .line 620
    .line 621
    const/16 v56, 0x18

    .line 622
    .line 623
    move-object/from16 v57, v1

    .line 624
    .line 625
    invoke-direct/range {v51 .. v57}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    .line 626
    .line 627
    .line 628
    new-instance v52, Lcom/google/zxing/datamatrix/decoder/Version;

    .line 629
    .line 630
    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    .line 631
    .line 632
    new-instance v2, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    .line 633
    .line 634
    const/16 v5, 0xaf

    .line 635
    .line 636
    invoke-direct {v2, v3, v5, v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$1;)V

    .line 637
    .line 638
    .line 639
    const/16 v5, 0x44

    .line 640
    .line 641
    invoke-direct {v1, v5, v2, v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$1;)V

    .line 642
    .line 643
    .line 644
    const/16 v53, 0x16

    .line 645
    .line 646
    const/16 v54, 0x78

    .line 647
    .line 648
    const/16 v55, 0x78

    .line 649
    .line 650
    const/16 v56, 0x12

    .line 651
    .line 652
    const/16 v57, 0x12

    .line 653
    .line 654
    move-object/from16 v58, v1

    .line 655
    .line 656
    invoke-direct/range {v52 .. v58}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    .line 657
    .line 658
    .line 659
    new-instance v53, Lcom/google/zxing/datamatrix/decoder/Version;

    .line 660
    .line 661
    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    .line 662
    .line 663
    new-instance v2, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    .line 664
    .line 665
    const/16 v5, 0xa3

    .line 666
    .line 667
    const/16 v6, 0x8

    .line 668
    .line 669
    invoke-direct {v2, v6, v5, v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$1;)V

    .line 670
    .line 671
    .line 672
    const/16 v5, 0x3e

    .line 673
    .line 674
    invoke-direct {v1, v5, v2, v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$1;)V

    .line 675
    .line 676
    .line 677
    const/16 v54, 0x17

    .line 678
    .line 679
    const/16 v55, 0x84

    .line 680
    .line 681
    const/16 v56, 0x84

    .line 682
    .line 683
    const/16 v57, 0x14

    .line 684
    .line 685
    const/16 v58, 0x14

    .line 686
    .line 687
    move-object/from16 v59, v1

    .line 688
    .line 689
    invoke-direct/range {v53 .. v59}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    .line 690
    .line 691
    .line 692
    new-instance v54, Lcom/google/zxing/datamatrix/decoder/Version;

    .line 693
    .line 694
    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    .line 695
    .line 696
    new-instance v2, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    .line 697
    .line 698
    const/16 v5, 0x9c

    .line 699
    .line 700
    const/16 v6, 0x8

    .line 701
    .line 702
    invoke-direct {v2, v6, v5, v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$1;)V

    .line 703
    .line 704
    .line 705
    new-instance v5, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    .line 706
    .line 707
    const/16 v6, 0x9b

    .line 708
    .line 709
    invoke-direct {v5, v4, v6, v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$1;)V

    .line 710
    .line 711
    .line 712
    const/16 v6, 0x3e

    .line 713
    .line 714
    invoke-direct {v1, v6, v2, v5, v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$1;)V

    .line 715
    .line 716
    .line 717
    const/16 v55, 0x18

    .line 718
    .line 719
    const/16 v56, 0x90

    .line 720
    .line 721
    const/16 v57, 0x90

    .line 722
    .line 723
    const/16 v58, 0x16

    .line 724
    .line 725
    const/16 v59, 0x16

    .line 726
    .line 727
    move-object/from16 v60, v1

    .line 728
    .line 729
    invoke-direct/range {v54 .. v60}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    .line 730
    .line 731
    .line 732
    new-instance v55, Lcom/google/zxing/datamatrix/decoder/Version;

    .line 733
    .line 734
    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    .line 735
    .line 736
    new-instance v2, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    .line 737
    .line 738
    const/4 v5, 0x1

    .line 739
    const/4 v6, 0x5

    .line 740
    invoke-direct {v2, v5, v6, v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$1;)V

    .line 741
    .line 742
    .line 743
    const/4 v6, 0x7

    .line 744
    invoke-direct {v1, v6, v2, v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$1;)V

    .line 745
    .line 746
    .line 747
    const/16 v56, 0x19

    .line 748
    .line 749
    const/16 v57, 0x8

    .line 750
    .line 751
    const/16 v58, 0x12

    .line 752
    .line 753
    const/16 v59, 0x6

    .line 754
    .line 755
    const/16 v60, 0x10

    .line 756
    .line 757
    move-object/from16 v61, v1

    .line 758
    .line 759
    invoke-direct/range {v55 .. v61}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    .line 760
    .line 761
    .line 762
    new-instance v56, Lcom/google/zxing/datamatrix/decoder/Version;

    .line 763
    .line 764
    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    .line 765
    .line 766
    new-instance v2, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    .line 767
    .line 768
    const/16 v6, 0xa

    .line 769
    .line 770
    invoke-direct {v2, v5, v6, v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$1;)V

    .line 771
    .line 772
    .line 773
    const/16 v5, 0xb

    .line 774
    .line 775
    invoke-direct {v1, v5, v2, v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$1;)V

    .line 776
    .line 777
    .line 778
    const/16 v57, 0x1a

    .line 779
    .line 780
    const/16 v58, 0x8

    .line 781
    .line 782
    const/16 v59, 0x20

    .line 783
    .line 784
    const/16 v60, 0x6

    .line 785
    .line 786
    const/16 v61, 0xe

    .line 787
    .line 788
    move-object/from16 v62, v1

    .line 789
    .line 790
    invoke-direct/range {v56 .. v62}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    .line 791
    .line 792
    .line 793
    new-instance v57, Lcom/google/zxing/datamatrix/decoder/Version;

    .line 794
    .line 795
    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    .line 796
    .line 797
    new-instance v2, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    .line 798
    .line 799
    const/16 v6, 0x10

    .line 800
    .line 801
    const/4 v7, 0x1

    .line 802
    invoke-direct {v2, v7, v6, v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$1;)V

    .line 803
    .line 804
    .line 805
    const/16 v8, 0xe

    .line 806
    .line 807
    invoke-direct {v1, v8, v2, v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$1;)V

    .line 808
    .line 809
    .line 810
    const/16 v58, 0x1b

    .line 811
    .line 812
    const/16 v59, 0xc

    .line 813
    .line 814
    const/16 v60, 0x1a

    .line 815
    .line 816
    const/16 v61, 0xa

    .line 817
    .line 818
    const/16 v62, 0x18

    .line 819
    .line 820
    move-object/from16 v63, v1

    .line 821
    .line 822
    invoke-direct/range {v57 .. v63}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    .line 823
    .line 824
    .line 825
    new-instance v58, Lcom/google/zxing/datamatrix/decoder/Version;

    .line 826
    .line 827
    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    .line 828
    .line 829
    new-instance v2, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    .line 830
    .line 831
    const/16 v8, 0x16

    .line 832
    .line 833
    invoke-direct {v2, v7, v8, v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$1;)V

    .line 834
    .line 835
    .line 836
    const/16 v7, 0x12

    .line 837
    .line 838
    invoke-direct {v1, v7, v2, v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$1;)V

    .line 839
    .line 840
    .line 841
    const/16 v59, 0x1c

    .line 842
    .line 843
    const/16 v60, 0xc

    .line 844
    .line 845
    const/16 v61, 0x24

    .line 846
    .line 847
    const/16 v62, 0xa

    .line 848
    .line 849
    const/16 v63, 0x10

    .line 850
    .line 851
    move-object/from16 v64, v1

    .line 852
    .line 853
    invoke-direct/range {v58 .. v64}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    .line 854
    .line 855
    .line 856
    new-instance v59, Lcom/google/zxing/datamatrix/decoder/Version;

    .line 857
    .line 858
    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    .line 859
    .line 860
    new-instance v2, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    .line 861
    .line 862
    const/16 v7, 0x20

    .line 863
    .line 864
    const/4 v8, 0x1

    .line 865
    invoke-direct {v2, v8, v7, v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$1;)V

    .line 866
    .line 867
    .line 868
    const/16 v7, 0x18

    .line 869
    .line 870
    invoke-direct {v1, v7, v2, v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$1;)V

    .line 871
    .line 872
    .line 873
    const/16 v60, 0x1d

    .line 874
    .line 875
    const/16 v61, 0x10

    .line 876
    .line 877
    const/16 v62, 0x24

    .line 878
    .line 879
    const/16 v63, 0xe

    .line 880
    .line 881
    const/16 v64, 0x10

    .line 882
    .line 883
    move-object/from16 v65, v1

    .line 884
    .line 885
    invoke-direct/range {v59 .. v65}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    .line 886
    .line 887
    .line 888
    new-instance v60, Lcom/google/zxing/datamatrix/decoder/Version;

    .line 889
    .line 890
    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    .line 891
    .line 892
    new-instance v2, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    .line 893
    .line 894
    const/16 v7, 0x31

    .line 895
    .line 896
    const/4 v8, 0x1

    .line 897
    invoke-direct {v2, v8, v7, v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(IILcom/google/zxing/datamatrix/decoder/Version$1;)V

    .line 898
    .line 899
    .line 900
    const/16 v7, 0x1c

    .line 901
    .line 902
    invoke-direct {v1, v7, v2, v9}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$1;)V

    .line 903
    .line 904
    .line 905
    const/16 v61, 0x1e

    .line 906
    .line 907
    const/16 v62, 0x10

    .line 908
    .line 909
    const/16 v63, 0x30

    .line 910
    .line 911
    const/16 v64, 0xe

    .line 912
    .line 913
    const/16 v65, 0x16

    .line 914
    .line 915
    move-object/from16 v66, v1

    .line 916
    .line 917
    invoke-direct/range {v60 .. v66}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    .line 918
    .line 919
    .line 920
    const/16 v1, 0x1e

    .line 921
    .line 922
    new-array v1, v1, [Lcom/google/zxing/datamatrix/decoder/Version;

    .line 923
    .line 924
    const/4 v2, 0x0

    .line 925
    aput-object v0, v1, v2

    .line 926
    .line 927
    aput-object v11, v1, v8

    .line 928
    .line 929
    aput-object v12, v1, v4

    .line 930
    .line 931
    aput-object v13, v1, v16

    .line 932
    .line 933
    aput-object v14, v1, v15

    .line 934
    .line 935
    const/16 v30, 0x5

    .line 936
    .line 937
    aput-object v22, v1, v30

    .line 938
    .line 939
    aput-object v23, v1, v3

    .line 940
    .line 941
    const/16 v29, 0x7

    .line 942
    .line 943
    aput-object v24, v1, v29

    .line 944
    .line 945
    const/16 v44, 0x8

    .line 946
    .line 947
    aput-object v25, v1, v44

    .line 948
    .line 949
    const/16 v0, 0x9

    .line 950
    .line 951
    aput-object v33, v1, v0

    .line 952
    .line 953
    const/16 v28, 0xa

    .line 954
    .line 955
    aput-object v34, v1, v28

    .line 956
    .line 957
    aput-object v35, v1, v5

    .line 958
    .line 959
    aput-object v36, v1, v21

    .line 960
    .line 961
    const/16 v0, 0xd

    .line 962
    .line 963
    aput-object v37, v1, v0

    .line 964
    .line 965
    const/16 v27, 0xe

    .line 966
    .line 967
    aput-object v45, v1, v27

    .line 968
    .line 969
    const/16 v0, 0xf

    .line 970
    .line 971
    aput-object v46, v1, v0

    .line 972
    .line 973
    aput-object v47, v1, v6

    .line 974
    .line 975
    const/16 v0, 0x11

    .line 976
    .line 977
    aput-object v48, v1, v0

    .line 978
    .line 979
    const/16 v17, 0x12

    .line 980
    .line 981
    aput-object v49, v1, v17

    .line 982
    .line 983
    const/16 v0, 0x13

    .line 984
    .line 985
    aput-object v50, v1, v0

    .line 986
    .line 987
    aput-object v51, v1, v19

    .line 988
    .line 989
    const/16 v0, 0x15

    .line 990
    .line 991
    aput-object v52, v1, v0

    .line 992
    .line 993
    const/16 v20, 0x16

    .line 994
    .line 995
    aput-object v53, v1, v20

    .line 996
    .line 997
    const/16 v0, 0x17

    .line 998
    .line 999
    aput-object v54, v1, v0

    .line 1000
    .line 1001
    const/16 v32, 0x18

    .line 1002
    .line 1003
    aput-object v55, v1, v32

    .line 1004
    .line 1005
    const/16 v0, 0x19

    .line 1006
    .line 1007
    aput-object v56, v1, v0

    .line 1008
    .line 1009
    const/16 v0, 0x1a

    .line 1010
    .line 1011
    aput-object v57, v1, v0

    .line 1012
    .line 1013
    const/16 v0, 0x1b

    .line 1014
    .line 1015
    aput-object v58, v1, v0

    .line 1016
    .line 1017
    const/16 v26, 0x1c

    .line 1018
    .line 1019
    aput-object v59, v1, v26

    .line 1020
    .line 1021
    const/16 v0, 0x1d

    .line 1022
    .line 1023
    aput-object v60, v1, v0

    .line 1024
    .line 1025
    return-object v1
.end method

.method public static getVersionForDimensions(II)Lcom/google/zxing/datamatrix/decoder/Version;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 1
    and-int/lit8 v0, p0, 0x1

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    and-int/lit8 v0, p1, 0x1

    .line 6
    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    sget-object v0, Lcom/google/zxing/datamatrix/decoder/Version;->VERSIONS:[Lcom/google/zxing/datamatrix/decoder/Version;

    .line 10
    .line 11
    array-length v1, v0

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v1, :cond_1

    .line 14
    .line 15
    aget-object v3, v0, v2

    .line 16
    .line 17
    iget v4, v3, Lcom/google/zxing/datamatrix/decoder/Version;->symbolSizeRows:I

    .line 18
    .line 19
    if-ne v4, p0, :cond_0

    .line 20
    .line 21
    iget v4, v3, Lcom/google/zxing/datamatrix/decoder/Version;->symbolSizeColumns:I

    .line 22
    .line 23
    if-ne v4, p1, :cond_0

    .line 24
    .line 25
    return-object v3

    .line 26
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    throw p0

    .line 34
    :cond_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    throw p0
.end method


# virtual methods
.method public getDataRegionSizeColumns()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/datamatrix/decoder/Version;->dataRegionSizeColumns:I

    .line 2
    .line 3
    return v0
.end method

.method public getDataRegionSizeRows()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/datamatrix/decoder/Version;->dataRegionSizeRows:I

    .line 2
    .line 3
    return v0
.end method

.method public getECBlocks()Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/datamatrix/decoder/Version;->ecBlocks:Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSymbolSizeColumns()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/datamatrix/decoder/Version;->symbolSizeColumns:I

    .line 2
    .line 3
    return v0
.end method

.method public getSymbolSizeRows()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/datamatrix/decoder/Version;->symbolSizeRows:I

    .line 2
    .line 3
    return v0
.end method

.method public getTotalCodewords()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/datamatrix/decoder/Version;->totalCodewords:I

    .line 2
    .line 3
    return v0
.end method

.method public getVersionNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/datamatrix/decoder/Version;->versionNumber:I

    .line 2
    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/datamatrix/decoder/Version;->versionNumber:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
