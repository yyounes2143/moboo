.class Landroidx/core/text/util/FindAddress;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/text/util/FindAddress$ZipRange;
    }
.end annotation


# static fields
.field private static final HOUSE_COMPONENT:Ljava/lang/String; = "(?:one|[0-9]+([a-z](?=[^a-z]|$)|st|nd|rd|th)?)"

.field private static final HOUSE_END:Ljava/lang/String; = "(?=[,\"\'\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029]|$)"

.field private static final HOUSE_POST_DELIM:Ljava/lang/String; = ",\"\'\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029"

.field private static final HOUSE_PRE_DELIM:Ljava/lang/String; = ":,\"\'\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029"

.field private static final MAX_ADDRESS_LINES:I = 0x5

.field private static final MAX_ADDRESS_WORDS:I = 0xe

.field private static final MAX_LOCATION_NAME_DISTANCE:I = 0x5

.field private static final MIN_ADDRESS_WORDS:I = 0x4

.field private static final NL:Ljava/lang/String; = "\n\u000b\u000c\r\u0085\u2028\u2029"

.field private static final SP:Ljava/lang/String; = "\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000"

.field private static final WORD_DELIM:Ljava/lang/String; = ",*\u2022\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029"

.field private static final WORD_END:Ljava/lang/String; = "(?=[,*\u2022\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029]|$)"

.field private static final WS:Ljava/lang/String; = "\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029"

.field private static final kMaxAddressNameWordLength:I = 0x19

.field private static final sHouseNumberRe:Ljava/util/regex/Pattern;

.field private static final sLocationNameRe:Ljava/util/regex/Pattern;

.field private static final sStateRe:Ljava/util/regex/Pattern;

.field private static final sStateZipCodeRanges:[Landroidx/core/text/util/FindAddress$ZipRange;

.field private static final sSuffixedNumberRe:Ljava/util/regex/Pattern;

.field private static final sWordRe:Ljava/util/regex/Pattern;

.field private static final sZipCodeRe:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 84

    .line 1
    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    .line 2
    .line 3
    const/16 v1, 0x63

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    invoke-direct {v0, v1, v1, v2, v2}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    .line 7
    .line 8
    .line 9
    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    .line 10
    .line 11
    const/16 v4, 0x23

    .line 12
    .line 13
    const/16 v5, 0x24

    .line 14
    .line 15
    invoke-direct {v3, v4, v5, v2, v2}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    .line 16
    .line 17
    .line 18
    new-instance v6, Landroidx/core/text/util/FindAddress$ZipRange;

    .line 19
    .line 20
    const/16 v7, 0x48

    .line 21
    .line 22
    const/16 v8, 0x47

    .line 23
    .line 24
    invoke-direct {v6, v8, v7, v2, v2}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    .line 25
    .line 26
    .line 27
    new-instance v7, Landroidx/core/text/util/FindAddress$ZipRange;

    .line 28
    .line 29
    const/16 v9, 0x60

    .line 30
    .line 31
    invoke-direct {v7, v9, v9, v2, v2}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    .line 32
    .line 33
    .line 34
    new-instance v10, Landroidx/core/text/util/FindAddress$ZipRange;

    .line 35
    .line 36
    const/16 v11, 0x55

    .line 37
    .line 38
    const/16 v12, 0x56

    .line 39
    .line 40
    invoke-direct {v10, v11, v12, v2, v2}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    .line 41
    .line 42
    .line 43
    new-instance v11, Landroidx/core/text/util/FindAddress$ZipRange;

    .line 44
    .line 45
    const/16 v13, 0x5a

    .line 46
    .line 47
    invoke-direct {v11, v13, v9, v2, v2}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    .line 48
    .line 49
    .line 50
    new-instance v13, Landroidx/core/text/util/FindAddress$ZipRange;

    .line 51
    .line 52
    const/16 v14, 0x50

    .line 53
    .line 54
    const/16 v15, 0x51

    .line 55
    .line 56
    invoke-direct {v13, v14, v15, v2, v2}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    .line 57
    .line 58
    .line 59
    new-instance v14, Landroidx/core/text/util/FindAddress$ZipRange;

    .line 60
    .line 61
    const/4 v15, 0x6

    .line 62
    invoke-direct {v14, v15, v15, v2, v2}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    .line 63
    .line 64
    .line 65
    move/from16 v16, v4

    .line 66
    .line 67
    new-instance v4, Landroidx/core/text/util/FindAddress$ZipRange;

    .line 68
    .line 69
    move/from16 v17, v5

    .line 70
    .line 71
    const/16 v5, 0x14

    .line 72
    .line 73
    invoke-direct {v4, v5, v5, v2, v2}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    .line 74
    .line 75
    .line 76
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    .line 77
    .line 78
    const/16 v15, 0x13

    .line 79
    .line 80
    invoke-direct {v1, v15, v15, v2, v2}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    .line 81
    .line 82
    .line 83
    new-instance v15, Landroidx/core/text/util/FindAddress$ZipRange;

    .line 84
    .line 85
    const/16 v12, 0x20

    .line 86
    .line 87
    const/16 v5, 0x22

    .line 88
    .line 89
    invoke-direct {v15, v12, v5, v2, v2}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    .line 90
    .line 91
    .line 92
    move/from16 v23, v5

    .line 93
    .line 94
    new-instance v5, Landroidx/core/text/util/FindAddress$ZipRange;

    .line 95
    .line 96
    invoke-direct {v5, v9, v9, v2, v2}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    .line 97
    .line 98
    .line 99
    move/from16 v24, v12

    .line 100
    .line 101
    new-instance v12, Landroidx/core/text/util/FindAddress$ZipRange;

    .line 102
    .line 103
    const/16 v8, 0x1e

    .line 104
    .line 105
    const/16 v9, 0x1f

    .line 106
    .line 107
    invoke-direct {v12, v8, v9, v2, v2}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    .line 108
    .line 109
    .line 110
    move/from16 v27, v8

    .line 111
    .line 112
    new-instance v8, Landroidx/core/text/util/FindAddress$ZipRange;

    .line 113
    .line 114
    move/from16 v28, v9

    .line 115
    .line 116
    const/16 v9, 0x60

    .line 117
    .line 118
    invoke-direct {v8, v9, v9, v2, v2}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    .line 119
    .line 120
    .line 121
    move-object/from16 v29, v0

    .line 122
    .line 123
    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    .line 124
    .line 125
    invoke-direct {v0, v9, v9, v2, v2}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    .line 126
    .line 127
    .line 128
    new-instance v9, Landroidx/core/text/util/FindAddress$ZipRange;

    .line 129
    .line 130
    move-object/from16 v30, v0

    .line 131
    .line 132
    const/16 v0, 0x32

    .line 133
    .line 134
    move-object/from16 v31, v1

    .line 135
    .line 136
    const/16 v1, 0x34

    .line 137
    .line 138
    invoke-direct {v9, v0, v1, v2, v2}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    .line 139
    .line 140
    .line 141
    move/from16 v32, v0

    .line 142
    .line 143
    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    .line 144
    .line 145
    move/from16 v33, v1

    .line 146
    .line 147
    const/16 v1, 0x53

    .line 148
    .line 149
    invoke-direct {v0, v1, v1, v2, v2}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    .line 150
    .line 151
    .line 152
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    .line 153
    .line 154
    move-object/from16 v34, v0

    .line 155
    .line 156
    const/16 v0, 0x3c

    .line 157
    .line 158
    move-object/from16 v35, v3

    .line 159
    .line 160
    const/16 v3, 0x3e

    .line 161
    .line 162
    invoke-direct {v1, v0, v3, v2, v2}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    .line 163
    .line 164
    .line 165
    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    .line 166
    .line 167
    const/16 v3, 0x2e

    .line 168
    .line 169
    move-object/from16 v36, v1

    .line 170
    .line 171
    const/16 v1, 0x2f

    .line 172
    .line 173
    invoke-direct {v0, v3, v1, v2, v2}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    .line 174
    .line 175
    .line 176
    move/from16 v37, v1

    .line 177
    .line 178
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    .line 179
    .line 180
    move/from16 v38, v3

    .line 181
    .line 182
    const/16 v3, 0x42

    .line 183
    .line 184
    move-object/from16 v39, v0

    .line 185
    .line 186
    const/16 v0, 0x43

    .line 187
    .line 188
    move-object/from16 v40, v4

    .line 189
    .line 190
    const/16 v4, 0x49

    .line 191
    .line 192
    invoke-direct {v1, v3, v0, v4, v2}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    .line 193
    .line 194
    .line 195
    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    .line 196
    .line 197
    const/16 v3, 0x28

    .line 198
    .line 199
    const/16 v4, 0x2a

    .line 200
    .line 201
    invoke-direct {v0, v3, v4, v2, v2}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    .line 202
    .line 203
    .line 204
    move/from16 v42, v3

    .line 205
    .line 206
    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    .line 207
    .line 208
    move/from16 v43, v4

    .line 209
    .line 210
    const/16 v4, 0x46

    .line 211
    .line 212
    move-object/from16 v44, v0

    .line 213
    .line 214
    const/16 v0, 0x47

    .line 215
    .line 216
    invoke-direct {v3, v4, v0, v2, v2}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    .line 217
    .line 218
    .line 219
    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    .line 220
    .line 221
    const/4 v4, 0x1

    .line 222
    move-object/from16 v25, v1

    .line 223
    .line 224
    const/4 v1, 0x2

    .line 225
    invoke-direct {v0, v4, v1, v2, v2}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    .line 226
    .line 227
    .line 228
    move/from16 v45, v4

    .line 229
    .line 230
    new-instance v4, Landroidx/core/text/util/FindAddress$ZipRange;

    .line 231
    .line 232
    const/16 v1, 0x15

    .line 233
    .line 234
    move-object/from16 v47, v0

    .line 235
    .line 236
    const/16 v0, 0x14

    .line 237
    .line 238
    invoke-direct {v4, v0, v1, v2, v2}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    .line 239
    .line 240
    .line 241
    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    .line 242
    .line 243
    move/from16 v48, v1

    .line 244
    .line 245
    const/4 v1, 0x3

    .line 246
    move-object/from16 v49, v3

    .line 247
    .line 248
    const/4 v3, 0x4

    .line 249
    invoke-direct {v0, v1, v3, v2, v2}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    .line 250
    .line 251
    .line 252
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    .line 253
    .line 254
    const/16 v3, 0x60

    .line 255
    .line 256
    invoke-direct {v1, v3, v3, v2, v2}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    .line 257
    .line 258
    .line 259
    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    .line 260
    .line 261
    move-object/from16 v52, v0

    .line 262
    .line 263
    const/16 v0, 0x30

    .line 264
    .line 265
    move-object/from16 v53, v1

    .line 266
    .line 267
    const/16 v1, 0x31

    .line 268
    .line 269
    invoke-direct {v3, v0, v1, v2, v2}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    .line 270
    .line 271
    .line 272
    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    .line 273
    .line 274
    const/16 v1, 0x37

    .line 275
    .line 276
    move-object/from16 v54, v3

    .line 277
    .line 278
    const/16 v3, 0x38

    .line 279
    .line 280
    invoke-direct {v0, v1, v3, v2, v2}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    .line 281
    .line 282
    .line 283
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    .line 284
    .line 285
    const/16 v3, 0x3f

    .line 286
    .line 287
    move-object/from16 v57, v0

    .line 288
    .line 289
    const/16 v0, 0x41

    .line 290
    .line 291
    invoke-direct {v1, v3, v0, v2, v2}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    .line 292
    .line 293
    .line 294
    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    .line 295
    .line 296
    const/16 v3, 0x60

    .line 297
    .line 298
    invoke-direct {v0, v3, v3, v2, v2}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    .line 299
    .line 300
    .line 301
    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    .line 302
    .line 303
    move-object/from16 v58, v0

    .line 304
    .line 305
    const/16 v0, 0x27

    .line 306
    .line 307
    move-object/from16 v59, v1

    .line 308
    .line 309
    const/16 v1, 0x26

    .line 310
    .line 311
    invoke-direct {v3, v1, v0, v2, v2}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    .line 312
    .line 313
    .line 314
    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    .line 315
    .line 316
    move-object/from16 v55, v3

    .line 317
    .line 318
    const/16 v1, 0x37

    .line 319
    .line 320
    const/16 v3, 0x38

    .line 321
    .line 322
    invoke-direct {v0, v1, v3, v2, v2}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    .line 323
    .line 324
    .line 325
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    .line 326
    .line 327
    const/16 v3, 0x1b

    .line 328
    .line 329
    move-object/from16 v56, v0

    .line 330
    .line 331
    const/16 v0, 0x1c

    .line 332
    .line 333
    invoke-direct {v1, v3, v0, v2, v2}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    .line 334
    .line 335
    .line 336
    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    .line 337
    .line 338
    const/16 v3, 0x3a

    .line 339
    .line 340
    invoke-direct {v0, v3, v3, v2, v2}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    .line 341
    .line 342
    .line 343
    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    .line 344
    .line 345
    move-object/from16 v61, v0

    .line 346
    .line 347
    const/16 v0, 0x44

    .line 348
    .line 349
    move-object/from16 v62, v1

    .line 350
    .line 351
    const/16 v1, 0x45

    .line 352
    .line 353
    invoke-direct {v3, v0, v1, v2, v2}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    .line 354
    .line 355
    .line 356
    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    .line 357
    .line 358
    move-object/from16 v50, v3

    .line 359
    .line 360
    const/4 v1, 0x3

    .line 361
    const/4 v3, 0x4

    .line 362
    invoke-direct {v0, v1, v3, v2, v2}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    .line 363
    .line 364
    .line 365
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    .line 366
    .line 367
    const/4 v3, 0x7

    .line 368
    move-object/from16 v51, v0

    .line 369
    .line 370
    const/16 v0, 0x8

    .line 371
    .line 372
    invoke-direct {v1, v3, v0, v2, v2}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    .line 373
    .line 374
    .line 375
    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    .line 376
    .line 377
    const/16 v3, 0x57

    .line 378
    .line 379
    move-object/from16 v63, v1

    .line 380
    .line 381
    const/16 v1, 0x58

    .line 382
    .line 383
    move-object/from16 v64, v4

    .line 384
    .line 385
    const/16 v4, 0x56

    .line 386
    .line 387
    invoke-direct {v0, v3, v1, v4, v2}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    .line 388
    .line 389
    .line 390
    new-instance v4, Landroidx/core/text/util/FindAddress$ZipRange;

    .line 391
    .line 392
    const/16 v3, 0x59

    .line 393
    .line 394
    move-object/from16 v65, v0

    .line 395
    .line 396
    const/16 v0, 0x60

    .line 397
    .line 398
    invoke-direct {v4, v1, v3, v0, v2}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    .line 399
    .line 400
    .line 401
    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    .line 402
    .line 403
    const/16 v3, 0xa

    .line 404
    .line 405
    const/16 v1, 0xe

    .line 406
    .line 407
    const/4 v2, 0x0

    .line 408
    move-object/from16 v68, v4

    .line 409
    .line 410
    const/4 v4, 0x6

    .line 411
    invoke-direct {v0, v3, v1, v2, v4}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    .line 412
    .line 413
    .line 414
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    .line 415
    .line 416
    const/16 v3, 0x2b

    .line 417
    .line 418
    const/16 v4, 0x2d

    .line 419
    .line 420
    const/4 v2, -0x1

    .line 421
    invoke-direct {v1, v3, v4, v2, v2}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    .line 422
    .line 423
    .line 424
    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    .line 425
    .line 426
    const/16 v4, 0x4a

    .line 427
    .line 428
    move-object/from16 v67, v0

    .line 429
    .line 430
    const/16 v0, 0x49

    .line 431
    .line 432
    invoke-direct {v3, v0, v4, v2, v2}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    .line 433
    .line 434
    .line 435
    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    .line 436
    .line 437
    const/16 v4, 0x61

    .line 438
    .line 439
    invoke-direct {v0, v4, v4, v2, v2}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    .line 440
    .line 441
    .line 442
    new-instance v4, Landroidx/core/text/util/FindAddress$ZipRange;

    .line 443
    .line 444
    move-object/from16 v41, v0

    .line 445
    .line 446
    const/16 v0, 0xf

    .line 447
    .line 448
    move-object/from16 v70, v1

    .line 449
    .line 450
    const/16 v1, 0x13

    .line 451
    .line 452
    invoke-direct {v4, v0, v1, v2, v2}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    .line 453
    .line 454
    .line 455
    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    .line 456
    .line 457
    const/16 v1, 0x9

    .line 458
    .line 459
    move-object/from16 v69, v3

    .line 460
    .line 461
    const/4 v2, 0x6

    .line 462
    const/4 v3, 0x0

    .line 463
    invoke-direct {v0, v2, v2, v3, v1}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    .line 464
    .line 465
    .line 466
    new-instance v2, Landroidx/core/text/util/FindAddress$ZipRange;

    .line 467
    .line 468
    const/16 v1, 0x60

    .line 469
    .line 470
    const/4 v3, -0x1

    .line 471
    invoke-direct {v2, v1, v1, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    .line 472
    .line 473
    .line 474
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    .line 475
    .line 476
    move-object/from16 v71, v0

    .line 477
    .line 478
    const/4 v0, 0x2

    .line 479
    invoke-direct {v1, v0, v0, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    .line 480
    .line 481
    .line 482
    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    .line 483
    .line 484
    move-object/from16 v72, v1

    .line 485
    .line 486
    const/16 v1, 0x1d

    .line 487
    .line 488
    invoke-direct {v0, v1, v1, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    .line 489
    .line 490
    .line 491
    move/from16 v73, v1

    .line 492
    .line 493
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    .line 494
    .line 495
    move-object/from16 v74, v0

    .line 496
    .line 497
    const/16 v0, 0x39

    .line 498
    .line 499
    invoke-direct {v1, v0, v0, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    .line 500
    .line 501
    .line 502
    move/from16 v75, v0

    .line 503
    .line 504
    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    .line 505
    .line 506
    move-object/from16 v76, v1

    .line 507
    .line 508
    const/16 v1, 0x25

    .line 509
    .line 510
    move-object/from16 v77, v2

    .line 511
    .line 512
    const/16 v2, 0x26

    .line 513
    .line 514
    invoke-direct {v0, v1, v2, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    .line 515
    .line 516
    .line 517
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    .line 518
    .line 519
    const/16 v2, 0x4b

    .line 520
    .line 521
    const/16 v3, 0x4f

    .line 522
    .line 523
    move-object/from16 v78, v0

    .line 524
    .line 525
    move-object/from16 v21, v4

    .line 526
    .line 527
    const/16 v0, 0x57

    .line 528
    .line 529
    const/16 v4, 0x58

    .line 530
    .line 531
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    .line 532
    .line 533
    .line 534
    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    .line 535
    .line 536
    const/16 v2, 0x54

    .line 537
    .line 538
    const/16 v3, 0x54

    .line 539
    .line 540
    const/4 v4, -0x1

    .line 541
    invoke-direct {v0, v2, v3, v4, v4}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    .line 542
    .line 543
    .line 544
    new-instance v2, Landroidx/core/text/util/FindAddress$ZipRange;

    .line 545
    .line 546
    const/16 v3, 0x16

    .line 547
    .line 548
    move-object/from16 v60, v0

    .line 549
    .line 550
    const/16 v0, 0x18

    .line 551
    .line 552
    move-object/from16 v66, v1

    .line 553
    .line 554
    const/16 v1, 0x14

    .line 555
    .line 556
    invoke-direct {v2, v3, v0, v1, v4}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    .line 557
    .line 558
    .line 559
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    .line 560
    .line 561
    const/16 v0, 0x9

    .line 562
    .line 563
    const/4 v3, 0x6

    .line 564
    invoke-direct {v1, v3, v0, v4, v4}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    .line 565
    .line 566
    .line 567
    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    .line 568
    .line 569
    const/4 v3, 0x5

    .line 570
    invoke-direct {v0, v3, v3, v4, v4}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    .line 571
    .line 572
    .line 573
    move/from16 v79, v3

    .line 574
    .line 575
    new-instance v3, Landroidx/core/text/util/FindAddress$ZipRange;

    .line 576
    .line 577
    move-object/from16 v80, v0

    .line 578
    .line 579
    const/16 v0, 0x62

    .line 580
    .line 581
    move-object/from16 v81, v1

    .line 582
    .line 583
    const/16 v1, 0x63

    .line 584
    .line 585
    invoke-direct {v3, v0, v1, v4, v4}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    .line 586
    .line 587
    .line 588
    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    .line 589
    .line 590
    const/16 v1, 0x35

    .line 591
    .line 592
    move-object/from16 v18, v2

    .line 593
    .line 594
    const/16 v2, 0x36

    .line 595
    .line 596
    invoke-direct {v0, v1, v2, v4, v4}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    .line 597
    .line 598
    .line 599
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    .line 600
    .line 601
    const/16 v2, 0x1a

    .line 602
    .line 603
    move-object/from16 v82, v0

    .line 604
    .line 605
    const/16 v0, 0x18

    .line 606
    .line 607
    invoke-direct {v1, v0, v2, v4, v4}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    .line 608
    .line 609
    .line 610
    new-instance v0, Landroidx/core/text/util/FindAddress$ZipRange;

    .line 611
    .line 612
    const/16 v2, 0x52

    .line 613
    .line 614
    move-object/from16 v83, v1

    .line 615
    .line 616
    const/16 v1, 0x53

    .line 617
    .line 618
    invoke-direct {v0, v2, v1, v4, v4}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    .line 619
    .line 620
    .line 621
    const/16 v1, 0x3b

    .line 622
    .line 623
    new-array v1, v1, [Landroidx/core/text/util/FindAddress$ZipRange;

    .line 624
    .line 625
    const/4 v2, 0x0

    .line 626
    aput-object v29, v1, v2

    .line 627
    .line 628
    aput-object v35, v1, v45

    .line 629
    .line 630
    const/16 v46, 0x2

    .line 631
    .line 632
    aput-object v6, v1, v46

    .line 633
    .line 634
    const/4 v2, 0x3

    .line 635
    aput-object v7, v1, v2

    .line 636
    .line 637
    const/4 v2, 0x4

    .line 638
    aput-object v10, v1, v2

    .line 639
    .line 640
    aput-object v11, v1, v79

    .line 641
    .line 642
    const/16 v19, 0x6

    .line 643
    .line 644
    aput-object v13, v1, v19

    .line 645
    .line 646
    const/4 v2, 0x7

    .line 647
    aput-object v14, v1, v2

    .line 648
    .line 649
    const/16 v2, 0x8

    .line 650
    .line 651
    aput-object v40, v1, v2

    .line 652
    .line 653
    const/16 v2, 0x9

    .line 654
    .line 655
    aput-object v31, v1, v2

    .line 656
    .line 657
    const/16 v2, 0xa

    .line 658
    .line 659
    aput-object v15, v1, v2

    .line 660
    .line 661
    const/16 v2, 0xb

    .line 662
    .line 663
    aput-object v5, v1, v2

    .line 664
    .line 665
    const/16 v2, 0xc

    .line 666
    .line 667
    aput-object v12, v1, v2

    .line 668
    .line 669
    const/16 v2, 0xd

    .line 670
    .line 671
    aput-object v8, v1, v2

    .line 672
    .line 673
    const/16 v2, 0xe

    .line 674
    .line 675
    aput-object v30, v1, v2

    .line 676
    .line 677
    const/16 v2, 0xf

    .line 678
    .line 679
    aput-object v9, v1, v2

    .line 680
    .line 681
    const/16 v2, 0x10

    .line 682
    .line 683
    aput-object v34, v1, v2

    .line 684
    .line 685
    const/16 v2, 0x11

    .line 686
    .line 687
    aput-object v36, v1, v2

    .line 688
    .line 689
    const/16 v2, 0x12

    .line 690
    .line 691
    aput-object v39, v1, v2

    .line 692
    .line 693
    const/16 v20, 0x13

    .line 694
    .line 695
    aput-object v25, v1, v20

    .line 696
    .line 697
    const/16 v22, 0x14

    .line 698
    .line 699
    aput-object v44, v1, v22

    .line 700
    .line 701
    aput-object v49, v1, v48

    .line 702
    .line 703
    const/16 v2, 0x16

    .line 704
    .line 705
    aput-object v47, v1, v2

    .line 706
    .line 707
    const/16 v2, 0x17

    .line 708
    .line 709
    aput-object v64, v1, v2

    .line 710
    .line 711
    const/16 v26, 0x18

    .line 712
    .line 713
    aput-object v52, v1, v26

    .line 714
    .line 715
    const/16 v2, 0x19

    .line 716
    .line 717
    aput-object v53, v1, v2

    .line 718
    .line 719
    const/16 v2, 0x1a

    .line 720
    .line 721
    aput-object v54, v1, v2

    .line 722
    .line 723
    const/16 v2, 0x1b

    .line 724
    .line 725
    aput-object v57, v1, v2

    .line 726
    .line 727
    const/16 v2, 0x1c

    .line 728
    .line 729
    aput-object v59, v1, v2

    .line 730
    .line 731
    aput-object v58, v1, v73

    .line 732
    .line 733
    aput-object v55, v1, v27

    .line 734
    .line 735
    aput-object v56, v1, v28

    .line 736
    .line 737
    aput-object v62, v1, v24

    .line 738
    .line 739
    const/16 v2, 0x21

    .line 740
    .line 741
    aput-object v61, v1, v2

    .line 742
    .line 743
    aput-object v50, v1, v23

    .line 744
    .line 745
    aput-object v51, v1, v16

    .line 746
    .line 747
    aput-object v63, v1, v17

    .line 748
    .line 749
    const/16 v2, 0x25

    .line 750
    .line 751
    aput-object v65, v1, v2

    .line 752
    .line 753
    const/16 v2, 0x26

    .line 754
    .line 755
    aput-object v68, v1, v2

    .line 756
    .line 757
    const/16 v2, 0x27

    .line 758
    .line 759
    aput-object v67, v1, v2

    .line 760
    .line 761
    aput-object v70, v1, v42

    .line 762
    .line 763
    const/16 v2, 0x29

    .line 764
    .line 765
    aput-object v69, v1, v2

    .line 766
    .line 767
    aput-object v41, v1, v43

    .line 768
    .line 769
    const/16 v2, 0x2b

    .line 770
    .line 771
    aput-object v21, v1, v2

    .line 772
    .line 773
    const/16 v2, 0x2c

    .line 774
    .line 775
    aput-object v71, v1, v2

    .line 776
    .line 777
    const/16 v2, 0x2d

    .line 778
    .line 779
    aput-object v77, v1, v2

    .line 780
    .line 781
    aput-object v72, v1, v38

    .line 782
    .line 783
    aput-object v74, v1, v37

    .line 784
    .line 785
    const/16 v2, 0x30

    .line 786
    .line 787
    aput-object v76, v1, v2

    .line 788
    .line 789
    const/16 v2, 0x31

    .line 790
    .line 791
    aput-object v78, v1, v2

    .line 792
    .line 793
    aput-object v66, v1, v32

    .line 794
    .line 795
    const/16 v2, 0x33

    .line 796
    .line 797
    aput-object v60, v1, v2

    .line 798
    .line 799
    aput-object v18, v1, v33

    .line 800
    .line 801
    const/16 v2, 0x35

    .line 802
    .line 803
    aput-object v81, v1, v2

    .line 804
    .line 805
    const/16 v2, 0x36

    .line 806
    .line 807
    aput-object v80, v1, v2

    .line 808
    .line 809
    const/16 v2, 0x37

    .line 810
    .line 811
    aput-object v3, v1, v2

    .line 812
    .line 813
    const/16 v2, 0x38

    .line 814
    .line 815
    aput-object v82, v1, v2

    .line 816
    .line 817
    aput-object v83, v1, v75

    .line 818
    .line 819
    const/16 v2, 0x3a

    .line 820
    .line 821
    aput-object v0, v1, v2

    .line 822
    .line 823
    sput-object v1, Landroidx/core/text/util/FindAddress;->sStateZipCodeRanges:[Landroidx/core/text/util/FindAddress$ZipRange;

    .line 824
    .line 825
    const-string v0, "[^,*\u2022\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029]+(?=[,*\u2022\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029]|$)"

    .line 826
    .line 827
    const/4 v1, 0x2

    .line 828
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 829
    .line 830
    .line 831
    move-result-object v0

    .line 832
    sput-object v0, Landroidx/core/text/util/FindAddress;->sWordRe:Ljava/util/regex/Pattern;

    .line 833
    .line 834
    const-string v0, "(?:one|[0-9]+([a-z](?=[^a-z]|$)|st|nd|rd|th)?)(?:-(?:one|[0-9]+([a-z](?=[^a-z]|$)|st|nd|rd|th)?))*(?=[,\"\'\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029]|$)"

    .line 835
    .line 836
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 837
    .line 838
    .line 839
    move-result-object v0

    .line 840
    sput-object v0, Landroidx/core/text/util/FindAddress;->sHouseNumberRe:Ljava/util/regex/Pattern;

    .line 841
    .line 842
    const-string v0, "(?:(ak|alaska)|(al|alabama)|(ar|arkansas)|(as|american[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+samoa)|(az|arizona)|(ca|california)|(co|colorado)|(ct|connecticut)|(dc|district[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+of[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+columbia)|(de|delaware)|(fl|florida)|(fm|federated[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+states[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+of[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+micronesia)|(ga|georgia)|(gu|guam)|(hi|hawaii)|(ia|iowa)|(id|idaho)|(il|illinois)|(in|indiana)|(ks|kansas)|(ky|kentucky)|(la|louisiana)|(ma|massachusetts)|(md|maryland)|(me|maine)|(mh|marshall[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+islands)|(mi|michigan)|(mn|minnesota)|(mo|missouri)|(mp|northern[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+mariana[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+islands)|(ms|mississippi)|(mt|montana)|(nc|north[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+carolina)|(nd|north[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+dakota)|(ne|nebraska)|(nh|new[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+hampshire)|(nj|new[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+jersey)|(nm|new[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+mexico)|(nv|nevada)|(ny|new[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+york)|(oh|ohio)|(ok|oklahoma)|(or|oregon)|(pa|pennsylvania)|(pr|puerto[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+rico)|(pw|palau)|(ri|rhode[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+island)|(sc|south[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+carolina)|(sd|south[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+dakota)|(tn|tennessee)|(tx|texas)|(ut|utah)|(va|virginia)|(vi|virgin[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+islands)|(vt|vermont)|(wa|washington)|(wi|wisconsin)|(wv|west[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+virginia)|(wy|wyoming))(?=[,*\u2022\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029]|$)"

    .line 843
    .line 844
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 845
    .line 846
    .line 847
    move-result-object v0

    .line 848
    sput-object v0, Landroidx/core/text/util/FindAddress;->sStateRe:Ljava/util/regex/Pattern;

    .line 849
    .line 850
    const-string v0, "(?:alley|annex|arcade|ave[.]?|avenue|alameda|bayou|beach|bend|bluffs?|bottom|boulevard|branch|bridge|brooks?|burgs?|bypass|broadway|camino|camp|canyon|cape|causeway|centers?|circles?|cliffs?|club|common|corners?|course|courts?|coves?|creek|crescent|crest|crossing|crossroad|curve|circulo|dale|dam|divide|drives?|estates?|expressway|extensions?|falls?|ferry|fields?|flats?|fords?|forest|forges?|forks?|fort|freeway|gardens?|gateway|glens?|greens?|groves?|harbors?|haven|heights|highway|hills?|hollow|inlet|islands?|isle|junctions?|keys?|knolls?|lakes?|land|landing|lane|lights?|loaf|locks?|lodge|loop|mall|manors?|meadows?|mews|mills?|mission|motorway|mount|mountains?|neck|orchard|oval|overpass|parks?|parkways?|pass|passage|path|pike|pines?|plains?|plaza|points?|ports?|prairie|privada|radial|ramp|ranch|rapids?|rd[.]?|rest|ridges?|river|roads?|route|row|rue|run|shoals?|shores?|skyway|springs?|spurs?|squares?|station|stravenue|stream|st[.]?|streets?|summit|speedway|terrace|throughway|trace|track|trafficway|trail|tunnel|turnpike|underpass|unions?|valleys?|viaduct|views?|villages?|ville|vista|walks?|wall|ways?|wells?|xing|xrd)(?=[,*\u2022\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029]|$)"

    .line 851
    .line 852
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 853
    .line 854
    .line 855
    move-result-object v0

    .line 856
    sput-object v0, Landroidx/core/text/util/FindAddress;->sLocationNameRe:Ljava/util/regex/Pattern;

    .line 857
    .line 858
    const-string v0, "([0-9]+)(st|nd|rd|th)"

    .line 859
    .line 860
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 861
    .line 862
    .line 863
    move-result-object v0

    .line 864
    sput-object v0, Landroidx/core/text/util/FindAddress;->sSuffixedNumberRe:Ljava/util/regex/Pattern;

    .line 865
    .line 866
    const-string v0, "(?:[0-9]{5}(?:-[0-9]{4})?)(?=[,*\u2022\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029]|$)"

    .line 867
    .line 868
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 869
    .line 870
    .line 871
    move-result-object v0

    .line 872
    sput-object v0, Landroidx/core/text/util/FindAddress;->sZipCodeRe:Ljava/util/regex/Pattern;

    .line 873
    .line 874
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static attemptMatch(Ljava/lang/String;Ljava/util/regex/MatchResult;)I
    .locals 13

    .line 1
    invoke-interface {p1}, Ljava/util/regex/MatchResult;->end()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    sget-object v0, Landroidx/core/text/util/FindAddress;->sWordRe:Ljava/util/regex/Pattern;

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, -0x1

    .line 12
    const/4 v2, 0x1

    .line 13
    const/4 v3, 0x0

    .line 14
    const-string v4, ""

    .line 15
    .line 16
    move v9, v1

    .line 17
    move v10, v9

    .line 18
    move v5, v2

    .line 19
    move v6, v5

    .line 20
    move v7, v6

    .line 21
    move v8, v3

    .line 22
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v11

    .line 26
    if-ge p1, v11, :cond_e

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->find(I)Z

    .line 29
    .line 30
    .line 31
    move-result v11

    .line 32
    if-nez v11, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    :goto_1
    neg-int p0, p0

    .line 39
    return p0

    .line 40
    :cond_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    .line 41
    .line 42
    .line 43
    move-result v11

    .line 44
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    .line 45
    .line 46
    .line 47
    move-result v12

    .line 48
    sub-int/2addr v11, v12

    .line 49
    const/16 v12, 0x19

    .line 50
    .line 51
    if-le v11, v12, :cond_1

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    :goto_2
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    .line 59
    .line 60
    .line 61
    move-result v11

    .line 62
    if-ge p1, v11, :cond_3

    .line 63
    .line 64
    add-int/lit8 v11, p1, 0x1

    .line 65
    .line 66
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    const-string v12, "\n\u000b\u000c\r\u0085\u2028\u2029"

    .line 71
    .line 72
    invoke-virtual {v12, p1}, Ljava/lang/String;->indexOf(I)I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-eq p1, v1, :cond_2

    .line 77
    .line 78
    add-int/lit8 v5, v5, 0x1

    .line 79
    .line 80
    :cond_2
    move p1, v11

    .line 81
    goto :goto_2

    .line 82
    :cond_3
    const/4 v11, 0x5

    .line 83
    if-le v5, v11, :cond_4

    .line 84
    .line 85
    goto/16 :goto_5

    .line 86
    .line 87
    :cond_4
    add-int/2addr v6, v2

    .line 88
    const/16 v12, 0xe

    .line 89
    .line 90
    if-le v6, v12, :cond_5

    .line 91
    .line 92
    goto/16 :goto_5

    .line 93
    .line 94
    :cond_5
    invoke-static {p0, p1}, Landroidx/core/text/util/FindAddress;->matchHouseNumber(Ljava/lang/String;I)Ljava/util/regex/MatchResult;

    .line 95
    .line 96
    .line 97
    move-result-object v12

    .line 98
    if-eqz v12, :cond_7

    .line 99
    .line 100
    if-eqz v7, :cond_6

    .line 101
    .line 102
    if-le v5, v2, :cond_6

    .line 103
    .line 104
    neg-int p0, p1

    .line 105
    return p0

    .line 106
    :cond_6
    if-ne v9, v1, :cond_d

    .line 107
    .line 108
    move v9, p1

    .line 109
    goto :goto_4

    .line 110
    :cond_7
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    invoke-static {v7}, Landroidx/core/text/util/FindAddress;->isValidLocationName(Ljava/lang/String;)Z

    .line 115
    .line 116
    .line 117
    move-result v7

    .line 118
    if-eqz v7, :cond_9

    .line 119
    .line 120
    move v8, v2

    .line 121
    :cond_8
    :goto_3
    move v7, v3

    .line 122
    goto :goto_4

    .line 123
    :cond_9
    if-ne v6, v11, :cond_a

    .line 124
    .line 125
    if-nez v8, :cond_a

    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    goto :goto_5

    .line 132
    :cond_a
    if-eqz v8, :cond_8

    .line 133
    .line 134
    const/4 v7, 0x4

    .line 135
    if-le v6, v7, :cond_8

    .line 136
    .line 137
    invoke-static {p0, p1}, Landroidx/core/text/util/FindAddress;->matchState(Ljava/lang/String;I)Ljava/util/regex/MatchResult;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    if-eqz p1, :cond_8

    .line 142
    .line 143
    const-string v7, "et"

    .line 144
    .line 145
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    if-eqz v4, :cond_b

    .line 150
    .line 151
    invoke-interface {p1, v3}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    const-string v7, "al"

    .line 156
    .line 157
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    if-eqz v4, :cond_b

    .line 162
    .line 163
    invoke-interface {p1}, Ljava/util/regex/MatchResult;->end()I

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    goto :goto_5

    .line 168
    :cond_b
    sget-object v4, Landroidx/core/text/util/FindAddress;->sWordRe:Ljava/util/regex/Pattern;

    .line 169
    .line 170
    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    invoke-interface {p1}, Ljava/util/regex/MatchResult;->end()I

    .line 175
    .line 176
    .line 177
    move-result v7

    .line 178
    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->find(I)Z

    .line 179
    .line 180
    .line 181
    move-result v7

    .line 182
    if-eqz v7, :cond_c

    .line 183
    .line 184
    invoke-virtual {v4, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v7

    .line 188
    invoke-static {v7, p1}, Landroidx/core/text/util/FindAddress;->isValidZipCode(Ljava/lang/String;Ljava/util/regex/MatchResult;)Z

    .line 189
    .line 190
    .line 191
    move-result p1

    .line 192
    if-eqz p1, :cond_8

    .line 193
    .line 194
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    .line 195
    .line 196
    .line 197
    move-result p0

    .line 198
    return p0

    .line 199
    :cond_c
    invoke-interface {p1}, Ljava/util/regex/MatchResult;->end()I

    .line 200
    .line 201
    .line 202
    move-result v10

    .line 203
    goto :goto_3

    .line 204
    :cond_d
    :goto_4
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v4

    .line 208
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    .line 209
    .line 210
    .line 211
    move-result p1

    .line 212
    goto/16 :goto_0

    .line 213
    .line 214
    :cond_e
    :goto_5
    if-lez v10, :cond_f

    .line 215
    .line 216
    return v10

    .line 217
    :cond_f
    if-lez v9, :cond_10

    .line 218
    .line 219
    goto :goto_6

    .line 220
    :cond_10
    move v9, p1

    .line 221
    :goto_6
    neg-int p0, v9

    .line 222
    return p0
.end method

.method private static checkHouseNumber(Ljava/lang/String;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 5
    .line 6
    .line 7
    move-result v3

    .line 8
    if-ge v1, v3, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v1, 0x5

    .line 26
    if-le v2, v1, :cond_2

    .line 27
    .line 28
    return v0

    .line 29
    :cond_2
    sget-object v1, Landroidx/core/text/util/FindAddress;->sSuffixedNumberRe:Ljava/util/regex/Pattern;

    .line 30
    .line 31
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const/4 v2, 0x1

    .line 40
    if-eqz v1, :cond_a

    .line 41
    .line 42
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_3

    .line 51
    .line 52
    return v0

    .line 53
    :cond_3
    const/4 v0, 0x2

    .line 54
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {p0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    rem-int/lit8 v3, v1, 0xa

    .line 67
    .line 68
    const-string v4, "th"

    .line 69
    .line 70
    if-eq v3, v2, :cond_8

    .line 71
    .line 72
    if-eq v3, v0, :cond_6

    .line 73
    .line 74
    const/4 v0, 0x3

    .line 75
    if-eq v3, v0, :cond_4

    .line 76
    .line 77
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    return p0

    .line 82
    :cond_4
    rem-int/lit8 v1, v1, 0x64

    .line 83
    .line 84
    const/16 v0, 0xd

    .line 85
    .line 86
    if-ne v1, v0, :cond_5

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_5
    const-string v4, "rd"

    .line 90
    .line 91
    :goto_1
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    return p0

    .line 96
    :cond_6
    rem-int/lit8 v1, v1, 0x64

    .line 97
    .line 98
    const/16 v0, 0xc

    .line 99
    .line 100
    if-ne v1, v0, :cond_7

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_7
    const-string v4, "nd"

    .line 104
    .line 105
    :goto_2
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result p0

    .line 109
    return p0

    .line 110
    :cond_8
    rem-int/lit8 v1, v1, 0x64

    .line 111
    .line 112
    const/16 v0, 0xb

    .line 113
    .line 114
    if-ne v1, v0, :cond_9

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_9
    const-string v4, "st"

    .line 118
    .line 119
    :goto_3
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result p0

    .line 123
    return p0

    .line 124
    :cond_a
    return v2
.end method

.method public static findAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Landroidx/core/text/util/FindAddress;->sHouseNumberRe:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->find(I)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_2

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {v2}, Landroidx/core/text/util/FindAddress;->checkHouseNumber(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-static {p0, v0}, Landroidx/core/text/util/FindAddress;->attemptMatch(Ljava/lang/String;Ljava/util/regex/MatchResult;)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-lez v3, :cond_0

    .line 34
    .line 35
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :cond_0
    neg-int v2, v3

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const/4 p0, 0x0

    .line 48
    return-object p0
.end method

.method public static isValidLocationName(Ljava/lang/String;)Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    sget-object v0, Landroidx/core/text/util/FindAddress;->sLocationNameRe:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public static isValidZipCode(Ljava/lang/String;)Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 6
    sget-object v0, Landroidx/core/text/util/FindAddress;->sZipCodeRe:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static isValidZipCode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 5
    invoke-static {p1, v0}, Landroidx/core/text/util/FindAddress;->matchState(Ljava/lang/String;I)Ljava/util/regex/MatchResult;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/core/text/util/FindAddress;->isValidZipCode(Ljava/lang/String;Ljava/util/regex/MatchResult;)Z

    move-result p0

    return p0
.end method

.method private static isValidZipCode(Ljava/lang/String;Ljava/util/regex/MatchResult;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-interface {p1}, Ljava/util/regex/MatchResult;->groupCount()I

    move-result v1

    :goto_0
    if-lez v1, :cond_2

    add-int/lit8 v2, v1, -0x1

    .line 2
    invoke-interface {p1, v1}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_0

    .line 3
    :cond_2
    :goto_1
    sget-object p1, Landroidx/core/text/util/FindAddress;->sZipCodeRe:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Landroidx/core/text/util/FindAddress;->sStateZipCodeRanges:[Landroidx/core/text/util/FindAddress$ZipRange;

    aget-object p1, p1, v1

    .line 4
    invoke-virtual {p1, p0}, Landroidx/core/text/util/FindAddress$ZipRange;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    return v0
.end method

.method public static matchHouseNumber(Ljava/lang/String;I)Ljava/util/regex/MatchResult;
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-lez p1, :cond_0

    .line 3
    .line 4
    add-int/lit8 v1, p1, -0x1

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const-string v2, ":,\"\'\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029"

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, -0x1

    .line 17
    if-ne v1, v2, :cond_0

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_0
    sget-object v1, Landroidx/core/text/util/FindAddress;->sHouseNumberRe:Ljava/util/regex/Pattern;

    .line 21
    .line 22
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    invoke-virtual {v1, p1, p0}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->lookingAt()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const/4 p1, 0x0

    .line 45
    invoke-interface {p0, p1}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {p1}, Landroidx/core/text/util/FindAddress;->checkHouseNumber(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_1

    .line 54
    .line 55
    return-object p0

    .line 56
    :cond_1
    return-object v0
.end method

.method public static matchState(Ljava/lang/String;I)Ljava/util/regex/MatchResult;
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-lez p1, :cond_0

    .line 3
    .line 4
    add-int/lit8 v1, p1, -0x1

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const-string v2, ",*\u2022\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029"

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, -0x1

    .line 17
    if-ne v1, v2, :cond_0

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_0
    sget-object v1, Landroidx/core/text/util/FindAddress;->sStateRe:Ljava/util/regex/Pattern;

    .line 21
    .line 22
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    invoke-virtual {v1, p1, p0}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->lookingAt()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :cond_1
    return-object v0
.end method
