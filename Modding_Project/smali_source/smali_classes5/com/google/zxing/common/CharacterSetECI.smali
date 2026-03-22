.class public final enum Lcom/google/zxing/common/CharacterSetECI;
.super Ljava/lang/Enum;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/common/CharacterSetECI;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ASCII:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum Big5:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum Cp1250:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum Cp1251:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum Cp1252:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum Cp1256:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum Cp437:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum EUC_KR:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum GB18030:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_1:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_10:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_11:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_13:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_14:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_15:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_16:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_2:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_3:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_4:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_5:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_6:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_7:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_8:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum ISO8859_9:Lcom/google/zxing/common/CharacterSetECI;

.field private static final NAME_TO_ECI:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/zxing/common/CharacterSetECI;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum SJIS:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum UTF8:Lcom/google/zxing/common/CharacterSetECI;

.field public static final enum UnicodeBigUnmarked:Lcom/google/zxing/common/CharacterSetECI;

.field private static final VALUE_TO_ECI:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/zxing/common/CharacterSetECI;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final otherEncodingNames:[Ljava/lang/String;

.field private final values:[I


# direct methods
.method static constructor <clinit>()V
    .locals 53

    .line 1
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    filled-new-array {v1, v2}, [I

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    new-array v4, v1, [Ljava/lang/String;

    .line 10
    .line 11
    const-string v5, "Cp437"

    .line 12
    .line 13
    invoke-direct {v0, v5, v1, v3, v4}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->Cp437:Lcom/google/zxing/common/CharacterSetECI;

    .line 17
    .line 18
    new-instance v3, Lcom/google/zxing/common/CharacterSetECI;

    .line 19
    .line 20
    const/4 v4, 0x1

    .line 21
    const/4 v5, 0x3

    .line 22
    filled-new-array {v4, v5}, [I

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    const-string v7, "ISO-8859-1"

    .line 27
    .line 28
    filled-new-array {v7}, [Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    const-string v8, "ISO8859_1"

    .line 33
    .line 34
    invoke-direct {v3, v8, v4, v6, v7}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    sput-object v3, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_1:Lcom/google/zxing/common/CharacterSetECI;

    .line 38
    .line 39
    new-instance v6, Lcom/google/zxing/common/CharacterSetECI;

    .line 40
    .line 41
    const-string v7, "ISO-8859-2"

    .line 42
    .line 43
    filled-new-array {v7}, [Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    const-string v8, "ISO8859_2"

    .line 48
    .line 49
    const/4 v9, 0x4

    .line 50
    invoke-direct {v6, v8, v2, v9, v7}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    sput-object v6, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_2:Lcom/google/zxing/common/CharacterSetECI;

    .line 54
    .line 55
    new-instance v7, Lcom/google/zxing/common/CharacterSetECI;

    .line 56
    .line 57
    const-string v8, "ISO-8859-3"

    .line 58
    .line 59
    filled-new-array {v8}, [Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    const-string v10, "ISO8859_3"

    .line 64
    .line 65
    const/4 v11, 0x5

    .line 66
    invoke-direct {v7, v10, v5, v11, v8}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    sput-object v7, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_3:Lcom/google/zxing/common/CharacterSetECI;

    .line 70
    .line 71
    new-instance v8, Lcom/google/zxing/common/CharacterSetECI;

    .line 72
    .line 73
    const-string v10, "ISO-8859-4"

    .line 74
    .line 75
    filled-new-array {v10}, [Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v10

    .line 79
    const-string v12, "ISO8859_4"

    .line 80
    .line 81
    const/4 v13, 0x6

    .line 82
    invoke-direct {v8, v12, v9, v13, v10}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    sput-object v8, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_4:Lcom/google/zxing/common/CharacterSetECI;

    .line 86
    .line 87
    new-instance v10, Lcom/google/zxing/common/CharacterSetECI;

    .line 88
    .line 89
    const-string v12, "ISO-8859-5"

    .line 90
    .line 91
    filled-new-array {v12}, [Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v12

    .line 95
    const-string v14, "ISO8859_5"

    .line 96
    .line 97
    const/4 v15, 0x7

    .line 98
    invoke-direct {v10, v14, v11, v15, v12}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    sput-object v10, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_5:Lcom/google/zxing/common/CharacterSetECI;

    .line 102
    .line 103
    new-instance v12, Lcom/google/zxing/common/CharacterSetECI;

    .line 104
    .line 105
    const-string v14, "ISO-8859-6"

    .line 106
    .line 107
    filled-new-array {v14}, [Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v14

    .line 111
    move/from16 v16, v1

    .line 112
    .line 113
    const-string v1, "ISO8859_6"

    .line 114
    .line 115
    move/from16 v17, v2

    .line 116
    .line 117
    const/16 v2, 0x8

    .line 118
    .line 119
    invoke-direct {v12, v1, v13, v2, v14}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    sput-object v12, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_6:Lcom/google/zxing/common/CharacterSetECI;

    .line 123
    .line 124
    new-instance v1, Lcom/google/zxing/common/CharacterSetECI;

    .line 125
    .line 126
    const-string v14, "ISO-8859-7"

    .line 127
    .line 128
    filled-new-array {v14}, [Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v14

    .line 132
    move/from16 v18, v4

    .line 133
    .line 134
    const-string v4, "ISO8859_7"

    .line 135
    .line 136
    move/from16 v19, v5

    .line 137
    .line 138
    const/16 v5, 0x9

    .line 139
    .line 140
    invoke-direct {v1, v4, v15, v5, v14}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    sput-object v1, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_7:Lcom/google/zxing/common/CharacterSetECI;

    .line 144
    .line 145
    new-instance v4, Lcom/google/zxing/common/CharacterSetECI;

    .line 146
    .line 147
    const-string v14, "ISO-8859-8"

    .line 148
    .line 149
    filled-new-array {v14}, [Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v14

    .line 153
    move/from16 v20, v9

    .line 154
    .line 155
    const-string v9, "ISO8859_8"

    .line 156
    .line 157
    move/from16 v21, v11

    .line 158
    .line 159
    const/16 v11, 0xa

    .line 160
    .line 161
    invoke-direct {v4, v9, v2, v11, v14}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    sput-object v4, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_8:Lcom/google/zxing/common/CharacterSetECI;

    .line 165
    .line 166
    new-instance v9, Lcom/google/zxing/common/CharacterSetECI;

    .line 167
    .line 168
    const-string v14, "ISO-8859-9"

    .line 169
    .line 170
    filled-new-array {v14}, [Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v14

    .line 174
    move/from16 v22, v2

    .line 175
    .line 176
    const-string v2, "ISO8859_9"

    .line 177
    .line 178
    move/from16 v23, v13

    .line 179
    .line 180
    const/16 v13, 0xb

    .line 181
    .line 182
    invoke-direct {v9, v2, v5, v13, v14}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    sput-object v9, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_9:Lcom/google/zxing/common/CharacterSetECI;

    .line 186
    .line 187
    new-instance v2, Lcom/google/zxing/common/CharacterSetECI;

    .line 188
    .line 189
    const-string v14, "ISO-8859-10"

    .line 190
    .line 191
    filled-new-array {v14}, [Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v14

    .line 195
    move/from16 v24, v5

    .line 196
    .line 197
    const-string v5, "ISO8859_10"

    .line 198
    .line 199
    move/from16 v25, v15

    .line 200
    .line 201
    const/16 v15, 0xc

    .line 202
    .line 203
    invoke-direct {v2, v5, v11, v15, v14}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    sput-object v2, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_10:Lcom/google/zxing/common/CharacterSetECI;

    .line 207
    .line 208
    new-instance v5, Lcom/google/zxing/common/CharacterSetECI;

    .line 209
    .line 210
    const-string v14, "ISO-8859-11"

    .line 211
    .line 212
    filled-new-array {v14}, [Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v14

    .line 216
    move/from16 v26, v11

    .line 217
    .line 218
    const-string v11, "ISO8859_11"

    .line 219
    .line 220
    const/16 v15, 0xd

    .line 221
    .line 222
    invoke-direct {v5, v11, v13, v15, v14}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    sput-object v5, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_11:Lcom/google/zxing/common/CharacterSetECI;

    .line 226
    .line 227
    new-instance v11, Lcom/google/zxing/common/CharacterSetECI;

    .line 228
    .line 229
    const-string v14, "ISO-8859-13"

    .line 230
    .line 231
    filled-new-array {v14}, [Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v14

    .line 235
    move/from16 v28, v13

    .line 236
    .line 237
    const-string v13, "ISO8859_13"

    .line 238
    .line 239
    const/16 v15, 0xf

    .line 240
    .line 241
    move-object/from16 v30, v0

    .line 242
    .line 243
    const/16 v0, 0xc

    .line 244
    .line 245
    invoke-direct {v11, v13, v0, v15, v14}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    sput-object v11, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_13:Lcom/google/zxing/common/CharacterSetECI;

    .line 249
    .line 250
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    .line 251
    .line 252
    const-string v13, "ISO-8859-14"

    .line 253
    .line 254
    filled-new-array {v13}, [Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v13

    .line 258
    const-string v14, "ISO8859_14"

    .line 259
    .line 260
    const/16 v15, 0x10

    .line 261
    .line 262
    move-object/from16 v32, v1

    .line 263
    .line 264
    const/16 v1, 0xd

    .line 265
    .line 266
    invoke-direct {v0, v14, v1, v15, v13}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_14:Lcom/google/zxing/common/CharacterSetECI;

    .line 270
    .line 271
    new-instance v1, Lcom/google/zxing/common/CharacterSetECI;

    .line 272
    .line 273
    const-string v13, "ISO-8859-15"

    .line 274
    .line 275
    filled-new-array {v13}, [Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v13

    .line 279
    const-string v14, "ISO8859_15"

    .line 280
    .line 281
    const/16 v15, 0xe

    .line 282
    .line 283
    move-object/from16 v34, v0

    .line 284
    .line 285
    const/16 v0, 0x11

    .line 286
    .line 287
    invoke-direct {v1, v14, v15, v0, v13}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    sput-object v1, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_15:Lcom/google/zxing/common/CharacterSetECI;

    .line 291
    .line 292
    new-instance v13, Lcom/google/zxing/common/CharacterSetECI;

    .line 293
    .line 294
    const-string v14, "ISO-8859-16"

    .line 295
    .line 296
    filled-new-array {v14}, [Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v14

    .line 300
    move/from16 v35, v15

    .line 301
    .line 302
    const-string v15, "ISO8859_16"

    .line 303
    .line 304
    const/16 v0, 0x12

    .line 305
    .line 306
    move-object/from16 v37, v1

    .line 307
    .line 308
    const/16 v1, 0xf

    .line 309
    .line 310
    invoke-direct {v13, v15, v1, v0, v14}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    sput-object v13, Lcom/google/zxing/common/CharacterSetECI;->ISO8859_16:Lcom/google/zxing/common/CharacterSetECI;

    .line 314
    .line 315
    new-instance v1, Lcom/google/zxing/common/CharacterSetECI;

    .line 316
    .line 317
    const-string v14, "Shift_JIS"

    .line 318
    .line 319
    filled-new-array {v14}, [Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v14

    .line 323
    const-string v15, "SJIS"

    .line 324
    .line 325
    const/16 v0, 0x14

    .line 326
    .line 327
    move-object/from16 v39, v2

    .line 328
    .line 329
    const/16 v2, 0x10

    .line 330
    .line 331
    invoke-direct {v1, v15, v2, v0, v14}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    sput-object v1, Lcom/google/zxing/common/CharacterSetECI;->SJIS:Lcom/google/zxing/common/CharacterSetECI;

    .line 335
    .line 336
    new-instance v2, Lcom/google/zxing/common/CharacterSetECI;

    .line 337
    .line 338
    const-string v14, "windows-1250"

    .line 339
    .line 340
    filled-new-array {v14}, [Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v14

    .line 344
    const-string v15, "Cp1250"

    .line 345
    .line 346
    const/16 v0, 0x15

    .line 347
    .line 348
    move-object/from16 v41, v1

    .line 349
    .line 350
    const/16 v1, 0x11

    .line 351
    .line 352
    invoke-direct {v2, v15, v1, v0, v14}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    sput-object v2, Lcom/google/zxing/common/CharacterSetECI;->Cp1250:Lcom/google/zxing/common/CharacterSetECI;

    .line 356
    .line 357
    new-instance v1, Lcom/google/zxing/common/CharacterSetECI;

    .line 358
    .line 359
    const-string v14, "windows-1251"

    .line 360
    .line 361
    filled-new-array {v14}, [Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v14

    .line 365
    const-string v15, "Cp1251"

    .line 366
    .line 367
    const/16 v0, 0x16

    .line 368
    .line 369
    move-object/from16 v43, v2

    .line 370
    .line 371
    const/16 v2, 0x12

    .line 372
    .line 373
    invoke-direct {v1, v15, v2, v0, v14}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    sput-object v1, Lcom/google/zxing/common/CharacterSetECI;->Cp1251:Lcom/google/zxing/common/CharacterSetECI;

    .line 377
    .line 378
    new-instance v2, Lcom/google/zxing/common/CharacterSetECI;

    .line 379
    .line 380
    const-string v14, "windows-1252"

    .line 381
    .line 382
    filled-new-array {v14}, [Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v14

    .line 386
    const-string v15, "Cp1252"

    .line 387
    .line 388
    const/16 v0, 0x13

    .line 389
    .line 390
    move-object/from16 v45, v1

    .line 391
    .line 392
    const/16 v1, 0x17

    .line 393
    .line 394
    invoke-direct {v2, v15, v0, v1, v14}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    sput-object v2, Lcom/google/zxing/common/CharacterSetECI;->Cp1252:Lcom/google/zxing/common/CharacterSetECI;

    .line 398
    .line 399
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    .line 400
    .line 401
    const-string v14, "windows-1256"

    .line 402
    .line 403
    filled-new-array {v14}, [Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v14

    .line 407
    const-string v15, "Cp1256"

    .line 408
    .line 409
    const/16 v1, 0x18

    .line 410
    .line 411
    move-object/from16 v47, v2

    .line 412
    .line 413
    const/16 v2, 0x14

    .line 414
    .line 415
    invoke-direct {v0, v15, v2, v1, v14}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->Cp1256:Lcom/google/zxing/common/CharacterSetECI;

    .line 419
    .line 420
    new-instance v2, Lcom/google/zxing/common/CharacterSetECI;

    .line 421
    .line 422
    const-string v14, "UTF-16BE"

    .line 423
    .line 424
    const-string v15, "UnicodeBig"

    .line 425
    .line 426
    filled-new-array {v14, v15}, [Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v14

    .line 430
    const-string v15, "UnicodeBigUnmarked"

    .line 431
    .line 432
    const/16 v1, 0x19

    .line 433
    .line 434
    move-object/from16 v48, v0

    .line 435
    .line 436
    const/16 v0, 0x15

    .line 437
    .line 438
    invoke-direct {v2, v15, v0, v1, v14}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    sput-object v2, Lcom/google/zxing/common/CharacterSetECI;->UnicodeBigUnmarked:Lcom/google/zxing/common/CharacterSetECI;

    .line 442
    .line 443
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    .line 444
    .line 445
    const-string v14, "UTF-8"

    .line 446
    .line 447
    filled-new-array {v14}, [Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v14

    .line 451
    const-string v15, "UTF8"

    .line 452
    .line 453
    const/16 v1, 0x1a

    .line 454
    .line 455
    move-object/from16 v49, v2

    .line 456
    .line 457
    const/16 v2, 0x16

    .line 458
    .line 459
    invoke-direct {v0, v15, v2, v1, v14}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->UTF8:Lcom/google/zxing/common/CharacterSetECI;

    .line 463
    .line 464
    new-instance v2, Lcom/google/zxing/common/CharacterSetECI;

    .line 465
    .line 466
    const/16 v14, 0x1b

    .line 467
    .line 468
    const/16 v15, 0xaa

    .line 469
    .line 470
    filled-new-array {v14, v15}, [I

    .line 471
    .line 472
    .line 473
    move-result-object v14

    .line 474
    const-string v15, "US-ASCII"

    .line 475
    .line 476
    filled-new-array {v15}, [Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v15

    .line 480
    const-string v1, "ASCII"

    .line 481
    .line 482
    move-object/from16 v50, v0

    .line 483
    .line 484
    const/16 v0, 0x17

    .line 485
    .line 486
    invoke-direct {v2, v1, v0, v14, v15}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    sput-object v2, Lcom/google/zxing/common/CharacterSetECI;->ASCII:Lcom/google/zxing/common/CharacterSetECI;

    .line 490
    .line 491
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    .line 492
    .line 493
    const/16 v1, 0x1c

    .line 494
    .line 495
    const-string v14, "Big5"

    .line 496
    .line 497
    const/16 v15, 0x18

    .line 498
    .line 499
    invoke-direct {v0, v14, v15, v1}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II)V

    .line 500
    .line 501
    .line 502
    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->Big5:Lcom/google/zxing/common/CharacterSetECI;

    .line 503
    .line 504
    new-instance v1, Lcom/google/zxing/common/CharacterSetECI;

    .line 505
    .line 506
    const-string v14, "EUC_CN"

    .line 507
    .line 508
    const-string v15, "GBK"

    .line 509
    .line 510
    move-object/from16 v46, v0

    .line 511
    .line 512
    const-string v0, "GB2312"

    .line 513
    .line 514
    filled-new-array {v0, v14, v15}, [Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v0

    .line 518
    const-string v14, "GB18030"

    .line 519
    .line 520
    const/16 v15, 0x1d

    .line 521
    .line 522
    move-object/from16 v51, v2

    .line 523
    .line 524
    const/16 v2, 0x19

    .line 525
    .line 526
    invoke-direct {v1, v14, v2, v15, v0}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 527
    .line 528
    .line 529
    sput-object v1, Lcom/google/zxing/common/CharacterSetECI;->GB18030:Lcom/google/zxing/common/CharacterSetECI;

    .line 530
    .line 531
    new-instance v0, Lcom/google/zxing/common/CharacterSetECI;

    .line 532
    .line 533
    const-string v2, "EUC-KR"

    .line 534
    .line 535
    filled-new-array {v2}, [Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v2

    .line 539
    const-string v14, "EUC_KR"

    .line 540
    .line 541
    const/16 v15, 0x1e

    .line 542
    .line 543
    move-object/from16 v52, v1

    .line 544
    .line 545
    const/16 v1, 0x1a

    .line 546
    .line 547
    invoke-direct {v0, v14, v1, v15, v2}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    .line 548
    .line 549
    .line 550
    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->EUC_KR:Lcom/google/zxing/common/CharacterSetECI;

    .line 551
    .line 552
    const/16 v1, 0x1b

    .line 553
    .line 554
    new-array v1, v1, [Lcom/google/zxing/common/CharacterSetECI;

    .line 555
    .line 556
    aput-object v30, v1, v16

    .line 557
    .line 558
    aput-object v3, v1, v18

    .line 559
    .line 560
    aput-object v6, v1, v17

    .line 561
    .line 562
    aput-object v7, v1, v19

    .line 563
    .line 564
    aput-object v8, v1, v20

    .line 565
    .line 566
    aput-object v10, v1, v21

    .line 567
    .line 568
    aput-object v12, v1, v23

    .line 569
    .line 570
    aput-object v32, v1, v25

    .line 571
    .line 572
    aput-object v4, v1, v22

    .line 573
    .line 574
    aput-object v9, v1, v24

    .line 575
    .line 576
    aput-object v39, v1, v26

    .line 577
    .line 578
    aput-object v5, v1, v28

    .line 579
    .line 580
    const/16 v27, 0xc

    .line 581
    .line 582
    aput-object v11, v1, v27

    .line 583
    .line 584
    const/16 v29, 0xd

    .line 585
    .line 586
    aput-object v34, v1, v29

    .line 587
    .line 588
    aput-object v37, v1, v35

    .line 589
    .line 590
    const/16 v31, 0xf

    .line 591
    .line 592
    aput-object v13, v1, v31

    .line 593
    .line 594
    const/16 v33, 0x10

    .line 595
    .line 596
    aput-object v41, v1, v33

    .line 597
    .line 598
    const/16 v36, 0x11

    .line 599
    .line 600
    aput-object v43, v1, v36

    .line 601
    .line 602
    const/16 v38, 0x12

    .line 603
    .line 604
    aput-object v45, v1, v38

    .line 605
    .line 606
    const/16 v2, 0x13

    .line 607
    .line 608
    aput-object v47, v1, v2

    .line 609
    .line 610
    const/16 v2, 0x14

    .line 611
    .line 612
    aput-object v48, v1, v2

    .line 613
    .line 614
    const/16 v2, 0x15

    .line 615
    .line 616
    aput-object v49, v1, v2

    .line 617
    .line 618
    const/16 v2, 0x16

    .line 619
    .line 620
    aput-object v50, v1, v2

    .line 621
    .line 622
    const/16 v2, 0x17

    .line 623
    .line 624
    aput-object v51, v1, v2

    .line 625
    .line 626
    const/16 v40, 0x18

    .line 627
    .line 628
    aput-object v46, v1, v40

    .line 629
    .line 630
    const/16 v42, 0x19

    .line 631
    .line 632
    aput-object v52, v1, v42

    .line 633
    .line 634
    const/16 v44, 0x1a

    .line 635
    .line 636
    aput-object v0, v1, v44

    .line 637
    .line 638
    sput-object v1, Lcom/google/zxing/common/CharacterSetECI;->$VALUES:[Lcom/google/zxing/common/CharacterSetECI;

    .line 639
    .line 640
    new-instance v0, Ljava/util/HashMap;

    .line 641
    .line 642
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 643
    .line 644
    .line 645
    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->VALUE_TO_ECI:Ljava/util/Map;

    .line 646
    .line 647
    new-instance v0, Ljava/util/HashMap;

    .line 648
    .line 649
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 650
    .line 651
    .line 652
    sput-object v0, Lcom/google/zxing/common/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Map;

    .line 653
    .line 654
    invoke-static {}, Lcom/google/zxing/common/CharacterSetECI;->values()[Lcom/google/zxing/common/CharacterSetECI;

    .line 655
    .line 656
    .line 657
    move-result-object v0

    .line 658
    array-length v1, v0

    .line 659
    move/from16 v2, v16

    .line 660
    .line 661
    :goto_0
    if-ge v2, v1, :cond_2

    .line 662
    .line 663
    aget-object v3, v0, v2

    .line 664
    .line 665
    iget-object v4, v3, Lcom/google/zxing/common/CharacterSetECI;->values:[I

    .line 666
    .line 667
    array-length v5, v4

    .line 668
    move/from16 v6, v16

    .line 669
    .line 670
    :goto_1
    if-ge v6, v5, :cond_0

    .line 671
    .line 672
    aget v7, v4, v6

    .line 673
    .line 674
    sget-object v8, Lcom/google/zxing/common/CharacterSetECI;->VALUE_TO_ECI:Ljava/util/Map;

    .line 675
    .line 676
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 677
    .line 678
    .line 679
    move-result-object v7

    .line 680
    invoke-interface {v8, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    .line 682
    .line 683
    add-int/lit8 v6, v6, 0x1

    .line 684
    .line 685
    goto :goto_1

    .line 686
    :cond_0
    sget-object v4, Lcom/google/zxing/common/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Map;

    .line 687
    .line 688
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 689
    .line 690
    .line 691
    move-result-object v5

    .line 692
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    .line 694
    .line 695
    iget-object v4, v3, Lcom/google/zxing/common/CharacterSetECI;->otherEncodingNames:[Ljava/lang/String;

    .line 696
    .line 697
    array-length v5, v4

    .line 698
    move/from16 v6, v16

    .line 699
    .line 700
    :goto_2
    if-ge v6, v5, :cond_1

    .line 701
    .line 702
    aget-object v7, v4, v6

    .line 703
    .line 704
    sget-object v8, Lcom/google/zxing/common/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Map;

    .line 705
    .line 706
    invoke-interface {v8, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    .line 708
    .line 709
    add-int/lit8 v6, v6, 0x1

    .line 710
    .line 711
    goto :goto_2

    .line 712
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 713
    .line 714
    goto :goto_0

    .line 715
    :cond_2
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    filled-new-array {p3}, [I

    move-result-object p3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/zxing/common/CharacterSetECI;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;II[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3
    filled-new-array {p3}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/google/zxing/common/CharacterSetECI;->values:[I

    .line 4
    iput-object p4, p0, Lcom/google/zxing/common/CharacterSetECI;->otherEncodingNames:[Ljava/lang/String;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[I[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 6
    iput-object p3, p0, Lcom/google/zxing/common/CharacterSetECI;->values:[I

    .line 7
    iput-object p4, p0, Lcom/google/zxing/common/CharacterSetECI;->otherEncodingNames:[Ljava/lang/String;

    return-void
.end method

.method public static getCharacterSetECIByName(Ljava/lang/String;)Lcom/google/zxing/common/CharacterSetECI;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/zxing/common/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/zxing/common/CharacterSetECI;

    .line 8
    .line 9
    return-object p0
.end method

.method public static getCharacterSetECIByValue(I)Lcom/google/zxing/common/CharacterSetECI;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 1
    if-ltz p0, :cond_0

    .line 2
    .line 3
    const/16 v0, 0x384

    .line 4
    .line 5
    if-ge p0, v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/google/zxing/common/CharacterSetECI;->VALUE_TO_ECI:Ljava/util/Map;

    .line 8
    .line 9
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lcom/google/zxing/common/CharacterSetECI;

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/common/CharacterSetECI;
    .locals 1

    .line 1
    const-class v0, Lcom/google/zxing/common/CharacterSetECI;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/zxing/common/CharacterSetECI;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/zxing/common/CharacterSetECI;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/zxing/common/CharacterSetECI;->$VALUES:[Lcom/google/zxing/common/CharacterSetECI;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/zxing/common/CharacterSetECI;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/zxing/common/CharacterSetECI;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/zxing/common/CharacterSetECI;->values:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget v0, v0, v1

    .line 5
    .line 6
    return v0
.end method
