.class public Lorg/joda/time/format/DateTimeFormat;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/format/DateTimeFormat$StyleFormatterCacheKey;,
        Lorg/joda/time/format/DateTimeFormat$StyleFormatter;
    }
.end annotation


# static fields
.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Lorg/joda/time/format/DateTimeFormatter;",
            ">;"
        }
    .end annotation
.end field

.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lorg/joda/time/format/DateTimeFormatter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/joda/time/format/DateTimeFormat;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lj$/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 9
    .line 10
    const/16 v1, 0x19

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lorg/joda/time/format/DateTimeFormat;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;[I)Ljava/lang/String;
    .locals 13

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    aget v2, p1, v1

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    const/16 v5, 0x5a

    .line 18
    .line 19
    const/16 v6, 0x41

    .line 20
    .line 21
    if-lt v4, v6, :cond_0

    .line 22
    .line 23
    if-le v4, v5, :cond_1

    .line 24
    .line 25
    :cond_0
    const/16 v7, 0x7a

    .line 26
    .line 27
    const/16 v8, 0x61

    .line 28
    .line 29
    if-lt v4, v8, :cond_2

    .line 30
    .line 31
    if-gt v4, v7, :cond_2

    .line 32
    .line 33
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    :goto_0
    add-int/lit8 v5, v2, 0x1

    .line 37
    .line 38
    if-ge v5, v3, :cond_8

    .line 39
    .line 40
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    if-ne v6, v4, :cond_8

    .line 45
    .line 46
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    move v2, v5

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const/16 v4, 0x27

    .line 52
    .line 53
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    move v9, v1

    .line 57
    :goto_1
    if-ge v2, v3, :cond_8

    .line 58
    .line 59
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 60
    .line 61
    .line 62
    move-result v10

    .line 63
    if-ne v10, v4, :cond_4

    .line 64
    .line 65
    add-int/lit8 v11, v2, 0x1

    .line 66
    .line 67
    if-ge v11, v3, :cond_3

    .line 68
    .line 69
    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    .line 70
    .line 71
    .line 72
    move-result v12

    .line 73
    if-ne v12, v4, :cond_3

    .line 74
    .line 75
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    move v2, v11

    .line 79
    goto :goto_2

    .line 80
    :cond_3
    xor-int/lit8 v9, v9, 0x1

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_4
    if-nez v9, :cond_7

    .line 84
    .line 85
    if-lt v10, v6, :cond_5

    .line 86
    .line 87
    if-le v10, v5, :cond_6

    .line 88
    .line 89
    :cond_5
    if-lt v10, v8, :cond_7

    .line 90
    .line 91
    if-gt v10, v7, :cond_7

    .line 92
    .line 93
    :cond_6
    add-int/lit8 v2, v2, -0x1

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_7
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_8
    :goto_3
    aput v2, p1, v1

    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    return-object p0
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/format/DateTimeFormatterBuilder;Ljava/lang/String;)V
    .locals 13

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v6

    .line 5
    const/4 v7, 0x1

    .line 6
    new-array v8, v7, [I

    .line 7
    .line 8
    const/4 v9, 0x0

    .line 9
    move v1, v9

    .line 10
    :goto_0
    if-ge v1, v6, :cond_1f

    .line 11
    .line 12
    aput v1, v8, v9

    .line 13
    .line 14
    invoke-static {p1, v8}, Lorg/joda/time/format/DateTimeFormat;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;[I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    aget v10, v8, v9

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    goto/16 :goto_3

    .line 27
    .line 28
    :cond_0
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    const/16 v4, 0x27

    .line 33
    .line 34
    if-eq v3, v4, :cond_1d

    .line 35
    .line 36
    const/16 v4, 0x4b

    .line 37
    .line 38
    if-eq v3, v4, :cond_1c

    .line 39
    .line 40
    const/16 v4, 0x4d

    .line 41
    .line 42
    const/4 v5, 0x4

    .line 43
    if-eq v3, v4, :cond_19

    .line 44
    .line 45
    const/16 v4, 0x53

    .line 46
    .line 47
    if-eq v3, v4, :cond_18

    .line 48
    .line 49
    const/16 v4, 0x61

    .line 50
    .line 51
    if-eq v3, v4, :cond_17

    .line 52
    .line 53
    const/16 v4, 0x68

    .line 54
    .line 55
    if-eq v3, v4, :cond_16

    .line 56
    .line 57
    const/16 v4, 0x6b

    .line 58
    .line 59
    if-eq v3, v4, :cond_15

    .line 60
    .line 61
    const/16 v4, 0x6d

    .line 62
    .line 63
    if-eq v3, v4, :cond_14

    .line 64
    .line 65
    const/16 v4, 0x73

    .line 66
    .line 67
    if-eq v3, v4, :cond_13

    .line 68
    .line 69
    const/16 v4, 0x47

    .line 70
    .line 71
    if-eq v3, v4, :cond_12

    .line 72
    .line 73
    const/16 v4, 0x48

    .line 74
    .line 75
    if-eq v3, v4, :cond_11

    .line 76
    .line 77
    const/4 v4, 0x2

    .line 78
    const/16 v11, 0x59

    .line 79
    .line 80
    if-eq v3, v11, :cond_8

    .line 81
    .line 82
    const/16 v12, 0x5a

    .line 83
    .line 84
    if-eq v3, v12, :cond_5

    .line 85
    .line 86
    const/16 v12, 0x64

    .line 87
    .line 88
    if-eq v3, v12, :cond_4

    .line 89
    .line 90
    const/16 v12, 0x65

    .line 91
    .line 92
    if-eq v3, v12, :cond_3

    .line 93
    .line 94
    packed-switch v3, :pswitch_data_0

    .line 95
    .line 96
    .line 97
    packed-switch v3, :pswitch_data_1

    .line 98
    .line 99
    .line 100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 101
    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    const-string v3, "Illegal pattern component: "

    .line 108
    .line 109
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw v0

    .line 123
    :pswitch_0
    if-lt v2, v5, :cond_1

    .line 124
    .line 125
    invoke-virtual {p0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Kkkkkkkkkkkkkkkkkkkkkk()Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 126
    .line 127
    .line 128
    goto/16 :goto_2

    .line 129
    .line 130
    :cond_1
    const/4 v1, 0x0

    .line 131
    invoke-virtual {p0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Kkkkkkkkkkkkkkkkkkk(Ljava/util/Map;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 132
    .line 133
    .line 134
    goto/16 :goto_2

    .line 135
    .line 136
    :pswitch_1
    invoke-virtual {p0, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Kkkkkkkkkkkkkkk(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 137
    .line 138
    .line 139
    goto/16 :goto_2

    .line 140
    .line 141
    :pswitch_2
    if-lt v2, v5, :cond_2

    .line 142
    .line 143
    invoke-virtual {p0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwww()Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 144
    .line 145
    .line 146
    goto/16 :goto_2

    .line 147
    .line 148
    :cond_2
    invoke-virtual {p0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwww()Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 149
    .line 150
    .line 151
    goto/16 :goto_2

    .line 152
    .line 153
    :pswitch_3
    invoke-virtual {p0, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwww(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 154
    .line 155
    .line 156
    goto/16 :goto_2

    .line 157
    .line 158
    :pswitch_4
    invoke-virtual {p0, v2, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 159
    .line 160
    .line 161
    goto/16 :goto_2

    .line 162
    .line 163
    :cond_3
    invoke-virtual {p0, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwww(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 164
    .line 165
    .line 166
    goto/16 :goto_2

    .line 167
    .line 168
    :cond_4
    invoke-virtual {p0, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwww(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 169
    .line 170
    .line 171
    goto/16 :goto_2

    .line 172
    .line 173
    :cond_5
    if-ne v2, v7, :cond_6

    .line 174
    .line 175
    const/4 v4, 0x2

    .line 176
    const/4 v5, 0x2

    .line 177
    const/4 v1, 0x0

    .line 178
    const-string v2, "Z"

    .line 179
    .line 180
    const/4 v3, 0x0

    .line 181
    move-object v0, p0

    .line 182
    invoke-virtual/range {v0 .. v5}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Kkkkkkkkkkkkkkkkkkkkk(Ljava/lang/String;Ljava/lang/String;ZII)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 183
    .line 184
    .line 185
    goto/16 :goto_2

    .line 186
    .line 187
    :cond_6
    if-ne v2, v4, :cond_7

    .line 188
    .line 189
    const/4 v4, 0x2

    .line 190
    const/4 v5, 0x2

    .line 191
    const/4 v1, 0x0

    .line 192
    const-string v2, "Z"

    .line 193
    .line 194
    const/4 v3, 0x1

    .line 195
    move-object v0, p0

    .line 196
    invoke-virtual/range {v0 .. v5}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Kkkkkkkkkkkkkkkkkkkkk(Ljava/lang/String;Ljava/lang/String;ZII)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 197
    .line 198
    .line 199
    goto/16 :goto_2

    .line 200
    .line 201
    :cond_7
    invoke-virtual {p0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Kkkkkkkkkkkkkkkkkkkkkkk()Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 202
    .line 203
    .line 204
    goto/16 :goto_2

    .line 205
    .line 206
    :cond_8
    :pswitch_5
    const/16 v1, 0x78

    .line 207
    .line 208
    if-ne v2, v4, :cond_b

    .line 209
    .line 210
    add-int/lit8 v2, v10, 0x1

    .line 211
    .line 212
    if-ge v2, v6, :cond_9

    .line 213
    .line 214
    aget v2, v8, v9

    .line 215
    .line 216
    add-int/2addr v2, v7

    .line 217
    aput v2, v8, v9

    .line 218
    .line 219
    invoke-static {p1, v8}, Lorg/joda/time/format/DateTimeFormat;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;[I)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    invoke-static {v2}, Lorg/joda/time/format/DateTimeFormat;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Z

    .line 224
    .line 225
    .line 226
    move-result v2

    .line 227
    xor-int/2addr v2, v7

    .line 228
    aget v4, v8, v9

    .line 229
    .line 230
    sub-int/2addr v4, v7

    .line 231
    aput v4, v8, v9

    .line 232
    .line 233
    goto :goto_1

    .line 234
    :cond_9
    move v2, v7

    .line 235
    :goto_1
    if-eq v3, v1, :cond_a

    .line 236
    .line 237
    new-instance v1, Lorg/joda/time/DateTime;

    .line 238
    .line 239
    invoke-direct {v1}, Lorg/joda/time/DateTime;-><init>()V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v1}, Lorg/joda/time/base/AbstractDateTime;->getYear()I

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    add-int/lit8 v1, v1, -0x1e

    .line 247
    .line 248
    invoke-virtual {p0, v1, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Kkkkkkkkkkkkkkkkk(IZ)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 249
    .line 250
    .line 251
    goto/16 :goto_2

    .line 252
    .line 253
    :cond_a
    new-instance v1, Lorg/joda/time/DateTime;

    .line 254
    .line 255
    invoke-direct {v1}, Lorg/joda/time/DateTime;-><init>()V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v1}, Lorg/joda/time/base/AbstractDateTime;->getWeekyear()I

    .line 259
    .line 260
    .line 261
    move-result v1

    .line 262
    add-int/lit8 v1, v1, -0x1e

    .line 263
    .line 264
    invoke-virtual {p0, v1, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Kkkkkkkkkkkkkkkkkk(IZ)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 265
    .line 266
    .line 267
    goto/16 :goto_2

    .line 268
    .line 269
    :cond_b
    add-int/lit8 v4, v10, 0x1

    .line 270
    .line 271
    const/16 v5, 0x9

    .line 272
    .line 273
    if-ge v4, v6, :cond_d

    .line 274
    .line 275
    aget v4, v8, v9

    .line 276
    .line 277
    add-int/2addr v4, v7

    .line 278
    aput v4, v8, v9

    .line 279
    .line 280
    invoke-static {p1, v8}, Lorg/joda/time/format/DateTimeFormat;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;[I)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v4

    .line 284
    invoke-static {v4}, Lorg/joda/time/format/DateTimeFormat;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Z

    .line 285
    .line 286
    .line 287
    move-result v4

    .line 288
    if-eqz v4, :cond_c

    .line 289
    .line 290
    move v5, v2

    .line 291
    :cond_c
    aget v4, v8, v9

    .line 292
    .line 293
    sub-int/2addr v4, v7

    .line 294
    aput v4, v8, v9

    .line 295
    .line 296
    :cond_d
    if-eq v3, v11, :cond_10

    .line 297
    .line 298
    if-eq v3, v1, :cond_f

    .line 299
    .line 300
    const/16 v1, 0x79

    .line 301
    .line 302
    if-eq v3, v1, :cond_e

    .line 303
    .line 304
    goto/16 :goto_2

    .line 305
    .line 306
    :cond_e
    invoke-virtual {p0, v2, v5}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Kkkkkkkkkkkkk(II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 307
    .line 308
    .line 309
    goto :goto_2

    .line 310
    :cond_f
    invoke-virtual {p0, v2, v5}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Kkkkkkkkkkkkkk(II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 311
    .line 312
    .line 313
    goto :goto_2

    .line 314
    :cond_10
    invoke-virtual {p0, v2, v5}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Kkkkkkkkkkkk(II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 315
    .line 316
    .line 317
    goto :goto_2

    .line 318
    :cond_11
    invoke-virtual {p0, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Wwwwwwwwwwwww(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 319
    .line 320
    .line 321
    goto :goto_2

    .line 322
    :cond_12
    invoke-virtual {p0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Wwwwwwwwwwwwwwwwwwww()Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 323
    .line 324
    .line 325
    goto :goto_2

    .line 326
    :cond_13
    invoke-virtual {p0, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Www(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 327
    .line 328
    .line 329
    goto :goto_2

    .line 330
    :cond_14
    invoke-virtual {p0, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Wwwwwwww(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 331
    .line 332
    .line 333
    goto :goto_2

    .line 334
    :cond_15
    invoke-virtual {p0, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 335
    .line 336
    .line 337
    goto :goto_2

    .line 338
    :cond_16
    invoke-virtual {p0, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 339
    .line 340
    .line 341
    goto :goto_2

    .line 342
    :cond_17
    invoke-virtual {p0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Wwwwwwwwwwwwww()Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 343
    .line 344
    .line 345
    goto :goto_2

    .line 346
    :cond_18
    invoke-virtual {p0, v2, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Wwwwwwwwwwwwwww(II)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 347
    .line 348
    .line 349
    goto :goto_2

    .line 350
    :cond_19
    const/4 v1, 0x3

    .line 351
    if-lt v2, v1, :cond_1b

    .line 352
    .line 353
    if-lt v2, v5, :cond_1a

    .line 354
    .line 355
    invoke-virtual {p0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Wwwww()Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 356
    .line 357
    .line 358
    goto :goto_2

    .line 359
    :cond_1a
    invoke-virtual {p0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Wwwwww()Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 360
    .line 361
    .line 362
    goto :goto_2

    .line 363
    :cond_1b
    invoke-virtual {p0, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Wwwwwww(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 364
    .line 365
    .line 366
    goto :goto_2

    .line 367
    :cond_1c
    invoke-virtual {p0, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Wwwwwwwwwwww(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 368
    .line 369
    .line 370
    goto :goto_2

    .line 371
    :cond_1d
    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 376
    .line 377
    .line 378
    move-result v2

    .line 379
    if-ne v2, v7, :cond_1e

    .line 380
    .line 381
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    .line 382
    .line 383
    .line 384
    move-result v1

    .line 385
    invoke-virtual {p0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Wwwwwwwwwww(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 386
    .line 387
    .line 388
    goto :goto_2

    .line 389
    :cond_1e
    new-instance v2, Ljava/lang/String;

    .line 390
    .line 391
    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {p0, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Wwwwwwwwww(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 395
    .line 396
    .line 397
    :goto_2
    add-int/lit8 v1, v10, 0x1

    .line 398
    .line 399
    goto/16 :goto_0

    .line 400
    .line 401
    :cond_1f
    :goto_3
    return-void

    .line 402
    nop

    .line 403
    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    :pswitch_data_1
    .packed-switch 0x77
        :pswitch_1
        :pswitch_5
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    const/4 v2, 0x1

    .line 13
    sparse-switch p0, :sswitch_data_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :sswitch_0
    const/4 p0, 0x2

    .line 18
    if-gt v0, p0, :cond_0

    .line 19
    .line 20
    :sswitch_1
    return v2

    .line 21
    :cond_0
    :goto_0
    return v1

    .line 22
    nop

    .line 23
    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_1
        0x44 -> :sswitch_1
        0x46 -> :sswitch_1
        0x48 -> :sswitch_1
        0x4b -> :sswitch_1
        0x4d -> :sswitch_0
        0x53 -> :sswitch_1
        0x57 -> :sswitch_1
        0x59 -> :sswitch_1
        0x63 -> :sswitch_1
        0x64 -> :sswitch_1
        0x65 -> :sswitch_1
        0x68 -> :sswitch_1
        0x6b -> :sswitch_1
        0x6d -> :sswitch_1
        0x73 -> :sswitch_1
        0x77 -> :sswitch_1
        0x78 -> :sswitch_1
        0x79 -> :sswitch_1
    .end sparse-switch
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/joda/time/format/DateTimeFormat;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;
    .locals 4

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    sget-object v0, Lorg/joda/time/format/DateTimeFormat;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lj$/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lorg/joda/time/format/DateTimeFormatter;

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    new-instance v1, Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {v1, p0}, Lorg/joda/time/format/DateTimeFormat;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/format/DateTimeFormatterBuilder;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Kk()Lorg/joda/time/format/DateTimeFormatter;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->size()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    const/16 v3, 0x1f4

    .line 36
    .line 37
    if-ge v2, v3, :cond_0

    .line 38
    .line 39
    invoke-virtual {v0, p0, v1}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    check-cast p0, Lorg/joda/time/format/DateTimeFormatter;

    .line 44
    .line 45
    if-eqz p0, :cond_0

    .line 46
    .line 47
    return-object p0

    .line 48
    :cond_0
    return-object v1

    .line 49
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 50
    .line 51
    const-string v0, "Invalid pattern specification"

    .line 52
    .line 53
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p0
.end method
