.class Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lorg/joda/time/format/InternalPrinter;
.implements Lorg/joda/time/format/InternalParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeZoneOffset"
.end annotation


# instance fields
.field public final Wwwwwwwwwwwwwwwwwwwww:I

.field public final Wwwwwwwwwwwwwwwwwwwwww:I

.field public final Wwwwwwwwwwwwwwwwwwwwwww:Z

.field public final Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 7
    .line 8
    iput-boolean p3, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->Wwwwwwwwwwwwwwwwwwwwwww:Z

    .line 9
    .line 10
    if-lez p4, :cond_1

    .line 11
    .line 12
    if-lt p5, p4, :cond_1

    .line 13
    .line 14
    const/4 p1, 0x4

    .line 15
    if-le p4, p1, :cond_0

    .line 16
    .line 17
    move p4, p1

    .line 18
    move p5, p4

    .line 19
    :cond_0
    iput p4, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 20
    .line 21
    iput p5, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->Wwwwwwwwwwwwwwwwwwwww:I

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 27
    .line 28
    .line 29
    throw p1
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/CharSequence;II)I
    .locals 3

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sub-int/2addr v0, p2

    .line 6
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    .line 7
    .line 8
    .line 9
    move-result p3

    .line 10
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-lez p3, :cond_1

    .line 12
    .line 13
    add-int v1, p2, v0

    .line 14
    .line 15
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/16 v2, 0x30

    .line 20
    .line 21
    if-lt v1, v2, :cond_1

    .line 22
    .line 23
    const/16 v2, 0x39

    .line 24
    .line 25
    if-le v1, v2, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    add-int/lit8 p3, p3, -0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    :goto_1
    return v0
.end method

.method public estimateParsedLength()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->estimatePrintedLength()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public estimatePrintedLength()I
    .locals 3

    .line 1
    iget v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    shl-int/lit8 v1, v1, 0x1

    .line 6
    .line 7
    iget-boolean v2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->Wwwwwwwwwwwwwwwwwwwwwww:Z

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    add-int/lit8 v0, v0, -0x1

    .line 12
    .line 13
    add-int/2addr v1, v0

    .line 14
    :cond_0
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-le v0, v1, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    return v0

    .line 31
    :cond_1
    return v1
.end method

.method public parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/CharSequence;I)I
    .locals 11

    .line 1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sub-int/2addr v0, p3

    .line 6
    iget-object v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 7
    .line 8
    const/16 v2, 0x2b

    .line 9
    .line 10
    const/16 v3, 0x2d

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    if-lez v0, :cond_0

    .line 26
    .line 27
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eq v1, v3, :cond_2

    .line 32
    .line 33
    if-ne v1, v2, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p1, v5}, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwww(Ljava/lang/Integer;)V

    .line 37
    .line 38
    .line 39
    return p3

    .line 40
    :cond_1
    iget-object v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {p2, p3, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Kkkkkkk(Ljava/lang/CharSequence;ILjava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    invoke-virtual {p1, v5}, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwww(Ljava/lang/Integer;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    add-int/2addr p3, p1

    .line 58
    return p3

    .line 59
    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 60
    if-gt v0, v1, :cond_3

    .line 61
    .line 62
    not-int p1, p3

    .line 63
    return p1

    .line 64
    :cond_3
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-ne v5, v3, :cond_4

    .line 69
    .line 70
    move v2, v1

    .line 71
    goto :goto_1

    .line 72
    :cond_4
    if-ne v5, v2, :cond_1b

    .line 73
    .line 74
    move v2, v4

    .line 75
    :goto_1
    add-int/lit8 v3, p3, 0x1

    .line 76
    .line 77
    const/4 v5, 0x2

    .line 78
    invoke-virtual {p0, p2, v3, v5}, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/CharSequence;II)I

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    if-ge v6, v5, :cond_5

    .line 83
    .line 84
    not-int p1, v3

    .line 85
    return p1

    .line 86
    :cond_5
    invoke-static {p2, v3}, Lorg/joda/time/format/FormatUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/CharSequence;I)I

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    const/16 v7, 0x17

    .line 91
    .line 92
    if-le v6, v7, :cond_6

    .line 93
    .line 94
    not-int p1, v3

    .line 95
    return p1

    .line 96
    :cond_6
    const v3, 0x36ee80

    .line 97
    .line 98
    .line 99
    mul-int/2addr v6, v3

    .line 100
    add-int/lit8 v3, v0, -0x3

    .line 101
    .line 102
    add-int/lit8 v7, p3, 0x3

    .line 103
    .line 104
    if-gtz v3, :cond_7

    .line 105
    .line 106
    goto/16 :goto_7

    .line 107
    .line 108
    :cond_7
    invoke-interface {p2, v7}, Ljava/lang/CharSequence;->charAt(I)C

    .line 109
    .line 110
    .line 111
    move-result v8

    .line 112
    const/16 v9, 0x3a

    .line 113
    .line 114
    const/16 v10, 0x30

    .line 115
    .line 116
    if-ne v8, v9, :cond_8

    .line 117
    .line 118
    add-int/lit8 v3, v0, -0x4

    .line 119
    .line 120
    add-int/lit8 v7, p3, 0x4

    .line 121
    .line 122
    move v4, v1

    .line 123
    goto :goto_2

    .line 124
    :cond_8
    if-lt v8, v10, :cond_19

    .line 125
    .line 126
    const/16 p3, 0x39

    .line 127
    .line 128
    if-gt v8, p3, :cond_19

    .line 129
    .line 130
    :goto_2
    invoke-virtual {p0, p2, v7, v5}, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/CharSequence;II)I

    .line 131
    .line 132
    .line 133
    move-result p3

    .line 134
    if-nez p3, :cond_9

    .line 135
    .line 136
    if-nez v4, :cond_9

    .line 137
    .line 138
    goto/16 :goto_7

    .line 139
    .line 140
    :cond_9
    if-ge p3, v5, :cond_a

    .line 141
    .line 142
    not-int p1, v7

    .line 143
    return p1

    .line 144
    :cond_a
    invoke-static {p2, v7}, Lorg/joda/time/format/FormatUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/CharSequence;I)I

    .line 145
    .line 146
    .line 147
    move-result p3

    .line 148
    const/16 v0, 0x3b

    .line 149
    .line 150
    if-le p3, v0, :cond_b

    .line 151
    .line 152
    not-int p1, v7

    .line 153
    return p1

    .line 154
    :cond_b
    const v8, 0xea60

    .line 155
    .line 156
    .line 157
    mul-int/2addr p3, v8

    .line 158
    add-int/2addr v6, p3

    .line 159
    add-int/lit8 p3, v3, -0x2

    .line 160
    .line 161
    add-int/lit8 v8, v7, 0x2

    .line 162
    .line 163
    if-gtz p3, :cond_c

    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_c
    if-eqz v4, :cond_e

    .line 167
    .line 168
    invoke-interface {p2, v8}, Ljava/lang/CharSequence;->charAt(I)C

    .line 169
    .line 170
    .line 171
    move-result p3

    .line 172
    if-eq p3, v9, :cond_d

    .line 173
    .line 174
    :goto_3
    move v7, v8

    .line 175
    goto/16 :goto_7

    .line 176
    .line 177
    :cond_d
    add-int/lit8 p3, v3, -0x3

    .line 178
    .line 179
    add-int/lit8 v7, v7, 0x3

    .line 180
    .line 181
    goto :goto_4

    .line 182
    :cond_e
    move v7, v8

    .line 183
    :goto_4
    invoke-virtual {p0, p2, v7, v5}, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/CharSequence;II)I

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    if-nez v3, :cond_f

    .line 188
    .line 189
    if-nez v4, :cond_f

    .line 190
    .line 191
    goto :goto_7

    .line 192
    :cond_f
    if-ge v3, v5, :cond_10

    .line 193
    .line 194
    not-int p1, v7

    .line 195
    return p1

    .line 196
    :cond_10
    invoke-static {p2, v7}, Lorg/joda/time/format/FormatUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/CharSequence;I)I

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    if-le v3, v0, :cond_11

    .line 201
    .line 202
    not-int p1, v7

    .line 203
    return p1

    .line 204
    :cond_11
    mul-int/lit16 v3, v3, 0x3e8

    .line 205
    .line 206
    add-int/2addr v6, v3

    .line 207
    add-int/lit8 p3, p3, -0x2

    .line 208
    .line 209
    add-int/lit8 v0, v7, 0x2

    .line 210
    .line 211
    if-gtz p3, :cond_12

    .line 212
    .line 213
    goto :goto_5

    .line 214
    :cond_12
    if-eqz v4, :cond_15

    .line 215
    .line 216
    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 217
    .line 218
    .line 219
    move-result p3

    .line 220
    const/16 v3, 0x2e

    .line 221
    .line 222
    if-eq p3, v3, :cond_14

    .line 223
    .line 224
    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 225
    .line 226
    .line 227
    move-result p3

    .line 228
    const/16 v3, 0x2c

    .line 229
    .line 230
    if-eq p3, v3, :cond_14

    .line 231
    .line 232
    :cond_13
    :goto_5
    move v7, v0

    .line 233
    goto :goto_7

    .line 234
    :cond_14
    add-int/lit8 v7, v7, 0x3

    .line 235
    .line 236
    goto :goto_6

    .line 237
    :cond_15
    move v7, v0

    .line 238
    :goto_6
    const/4 p3, 0x3

    .line 239
    invoke-virtual {p0, p2, v7, p3}, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/CharSequence;II)I

    .line 240
    .line 241
    .line 242
    move-result p3

    .line 243
    if-nez p3, :cond_16

    .line 244
    .line 245
    if-nez v4, :cond_16

    .line 246
    .line 247
    goto :goto_7

    .line 248
    :cond_16
    if-ge p3, v1, :cond_17

    .line 249
    .line 250
    not-int p1, v7

    .line 251
    return p1

    .line 252
    :cond_17
    add-int/lit8 v0, v7, 0x1

    .line 253
    .line 254
    invoke-interface {p2, v7}, Ljava/lang/CharSequence;->charAt(I)C

    .line 255
    .line 256
    .line 257
    move-result v3

    .line 258
    sub-int/2addr v3, v10

    .line 259
    mul-int/lit8 v3, v3, 0x64

    .line 260
    .line 261
    add-int/2addr v6, v3

    .line 262
    if-le p3, v1, :cond_13

    .line 263
    .line 264
    add-int/lit8 v1, v7, 0x2

    .line 265
    .line 266
    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    sub-int/2addr v0, v10

    .line 271
    mul-int/lit8 v0, v0, 0xa

    .line 272
    .line 273
    add-int/2addr v6, v0

    .line 274
    if-le p3, v5, :cond_18

    .line 275
    .line 276
    add-int/lit8 v7, v7, 0x3

    .line 277
    .line 278
    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 279
    .line 280
    .line 281
    move-result p2

    .line 282
    sub-int/2addr p2, v10

    .line 283
    add-int/2addr v6, p2

    .line 284
    goto :goto_7

    .line 285
    :cond_18
    move v7, v1

    .line 286
    :cond_19
    :goto_7
    if-eqz v2, :cond_1a

    .line 287
    .line 288
    neg-int v6, v6

    .line 289
    :cond_1a
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 290
    .line 291
    .line 292
    move-result-object p2

    .line 293
    invoke-virtual {p1, p2}, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwww(Ljava/lang/Integer;)V

    .line 294
    .line 295
    .line 296
    return v7

    .line 297
    :cond_1b
    not-int p1, p3

    .line 298
    return p1
.end method

.method public printTo(Ljava/lang/Appendable;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p6, :cond_0

    goto/16 :goto_1

    :cond_0
    if-nez p5, :cond_1

    .line 2
    iget-object p2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 3
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void

    :cond_1
    if-ltz p5, :cond_2

    const/16 p2, 0x2b

    .line 4
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_0

    :cond_2
    const/16 p2, 0x2d

    .line 5
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    neg-int p5, p5

    :goto_0
    const p2, 0x36ee80

    .line 6
    div-int p3, p5, p2

    const/4 p4, 0x2

    .line 7
    invoke-static {p1, p3, p4}, Lorg/joda/time/format/FormatUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Appendable;II)V

    .line 8
    iget p6, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->Wwwwwwwwwwwwwwwwwwwww:I

    const/4 p7, 0x1

    if-ne p6, p7, :cond_3

    goto :goto_1

    :cond_3
    mul-int/2addr p3, p2

    sub-int/2addr p5, p3

    if-nez p5, :cond_4

    .line 9
    iget p2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->Wwwwwwwwwwwwwwwwwwwwww:I

    if-gt p2, p7, :cond_4

    goto :goto_1

    :cond_4
    const p2, 0xea60

    .line 10
    div-int p3, p5, p2

    .line 11
    iget-boolean p6, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->Wwwwwwwwwwwwwwwwwwwwwww:Z

    const/16 p7, 0x3a

    if-eqz p6, :cond_5

    .line 12
    invoke-interface {p1, p7}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 13
    :cond_5
    invoke-static {p1, p3, p4}, Lorg/joda/time/format/FormatUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Appendable;II)V

    .line 14
    iget p6, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->Wwwwwwwwwwwwwwwwwwwww:I

    if-ne p6, p4, :cond_6

    goto :goto_1

    :cond_6
    mul-int/2addr p3, p2

    sub-int/2addr p5, p3

    if-nez p5, :cond_7

    .line 15
    iget p2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->Wwwwwwwwwwwwwwwwwwwwww:I

    if-gt p2, p4, :cond_7

    goto :goto_1

    .line 16
    :cond_7
    div-int/lit16 p2, p5, 0x3e8

    .line 17
    iget-boolean p3, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->Wwwwwwwwwwwwwwwwwwwwwww:Z

    if-eqz p3, :cond_8

    .line 18
    invoke-interface {p1, p7}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 19
    :cond_8
    invoke-static {p1, p2, p4}, Lorg/joda/time/format/FormatUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Appendable;II)V

    .line 20
    iget p3, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->Wwwwwwwwwwwwwwwwwwwww:I

    const/4 p4, 0x3

    if-ne p3, p4, :cond_9

    goto :goto_1

    :cond_9
    mul-int/lit16 p2, p2, 0x3e8

    sub-int/2addr p5, p2

    if-nez p5, :cond_a

    .line 21
    iget p2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->Wwwwwwwwwwwwwwwwwwwwww:I

    if-gt p2, p4, :cond_a

    :goto_1
    return-void

    .line 22
    :cond_a
    iget-boolean p2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->Wwwwwwwwwwwwwwwwwwwwwww:Z

    if-eqz p2, :cond_b

    const/16 p2, 0x2e

    .line 23
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 24
    :cond_b
    invoke-static {p1, p5, p4}, Lorg/joda/time/format/FormatUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Appendable;II)V

    return-void
.end method

.method public printTo(Ljava/lang/Appendable;Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    return-void
.end method
