.class Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;
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
    name = "TwoDigitYear"
.end annotation


# instance fields
.field public final Wwwwwwwwwwwwwwwwwwwwwww:Z

.field public final Wwwwwwwwwwwwwwwwwwwwwwww:I

.field public final Wwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;


# direct methods
.method public constructor <init>(Lorg/joda/time/DateTimeFieldType;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

    .line 5
    .line 6
    iput p2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->Wwwwwwwwwwwwwwwwwwwwwwww:I

    .line 7
    .line 8
    iput-boolean p3, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->Wwwwwwwwwwwwwwwwwwwwwww:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/ReadablePartial;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lorg/joda/time/ReadablePartial;->isSupported(Lorg/joda/time/DateTimeFieldType;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    :try_start_0
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

    .line 10
    .line 11
    invoke-interface {p1, v0}, Lorg/joda/time/ReadablePartial;->get(Lorg/joda/time/DateTimeFieldType;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-gez p1, :cond_0

    .line 16
    .line 17
    neg-int p1, p1

    .line 18
    :cond_0
    rem-int/lit8 p1, p1, 0x64
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    return p1

    .line 21
    :catch_0
    :cond_1
    const/4 p1, -0x1

    .line 22
    return p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JLorg/joda/time/Chronology;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

    .line 2
    .line 3
    invoke-virtual {v0, p3}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    invoke-virtual {p3, p1, p2}, Lorg/joda/time/DateTimeField;->get(J)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-gez p1, :cond_0

    .line 12
    .line 13
    neg-int p1, p1

    .line 14
    :cond_0
    rem-int/lit8 p1, p1, 0x64
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    return p1

    .line 17
    :catch_0
    const/4 p1, -0x1

    .line 18
    return p1
.end method

.method public estimateParsedLength()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->Wwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x4

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x2

    .line 8
    return v0
.end method

.method public estimatePrintedLength()I
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    return v0
.end method

.method public parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/CharSequence;I)I
    .locals 12

    .line 1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sub-int/2addr v0, p3

    .line 6
    iget-boolean v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->Wwwwwwwwwwwwwwwwwwwwwww:Z

    .line 7
    .line 8
    const/16 v2, 0x39

    .line 9
    .line 10
    const/4 v3, 0x2

    .line 11
    const/4 v4, 0x0

    .line 12
    const/16 v5, 0x30

    .line 13
    .line 14
    const/4 v6, 0x1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-ge v0, v3, :cond_8

    .line 22
    .line 23
    not-int p1, p3

    .line 24
    return p1

    .line 25
    :cond_0
    move v1, v4

    .line 26
    move v7, v1

    .line 27
    move v8, v7

    .line 28
    :goto_0
    if-ge v1, v0, :cond_6

    .line 29
    .line 30
    add-int v9, p3, v1

    .line 31
    .line 32
    invoke-interface {p2, v9}, Ljava/lang/CharSequence;->charAt(I)C

    .line 33
    .line 34
    .line 35
    move-result v9

    .line 36
    if-nez v1, :cond_4

    .line 37
    .line 38
    const/16 v10, 0x2d

    .line 39
    .line 40
    if-eq v9, v10, :cond_1

    .line 41
    .line 42
    const/16 v11, 0x2b

    .line 43
    .line 44
    if-ne v9, v11, :cond_4

    .line 45
    .line 46
    :cond_1
    if-ne v9, v10, :cond_2

    .line 47
    .line 48
    move v8, v6

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    move v8, v4

    .line 51
    :goto_1
    if-eqz v8, :cond_3

    .line 52
    .line 53
    add-int/lit8 v1, v1, 0x1

    .line 54
    .line 55
    :goto_2
    move v7, v6

    .line 56
    goto :goto_0

    .line 57
    :cond_3
    add-int/lit8 p3, p3, 0x1

    .line 58
    .line 59
    add-int/lit8 v0, v0, -0x1

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_4
    if-lt v9, v5, :cond_6

    .line 63
    .line 64
    if-le v9, v2, :cond_5

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_6
    :goto_3
    if-nez v1, :cond_7

    .line 71
    .line 72
    not-int p1, p3

    .line 73
    return p1

    .line 74
    :cond_7
    if-nez v7, :cond_10

    .line 75
    .line 76
    if-eq v1, v3, :cond_8

    .line 77
    .line 78
    goto :goto_7

    .line 79
    :cond_8
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-lt v0, v5, :cond_f

    .line 84
    .line 85
    if-le v0, v2, :cond_9

    .line 86
    .line 87
    goto :goto_6

    .line 88
    :cond_9
    sub-int/2addr v0, v5

    .line 89
    add-int/lit8 v1, p3, 0x1

    .line 90
    .line 91
    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    if-lt p2, v5, :cond_e

    .line 96
    .line 97
    if-le p2, v2, :cond_a

    .line 98
    .line 99
    goto :goto_5

    .line 100
    :cond_a
    shl-int/lit8 v1, v0, 0x3

    .line 101
    .line 102
    shl-int/2addr v0, v6

    .line 103
    add-int/2addr v1, v0

    .line 104
    add-int/2addr v1, p2

    .line 105
    sub-int/2addr v1, v5

    .line 106
    iget p2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->Wwwwwwwwwwwwwwwwwwwwwwww:I

    .line 107
    .line 108
    invoke-virtual {p1}, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwww()Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    if-eqz v0, :cond_b

    .line 113
    .line 114
    invoke-virtual {p1}, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwww()Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 119
    .line 120
    .line 121
    move-result p2

    .line 122
    :cond_b
    add-int/lit8 v0, p2, -0x32

    .line 123
    .line 124
    const/16 v2, 0x64

    .line 125
    .line 126
    if-ltz v0, :cond_c

    .line 127
    .line 128
    rem-int/lit8 p2, v0, 0x64

    .line 129
    .line 130
    goto :goto_4

    .line 131
    :cond_c
    add-int/lit8 p2, p2, -0x31

    .line 132
    .line 133
    rem-int/2addr p2, v2

    .line 134
    add-int/lit8 p2, p2, 0x63

    .line 135
    .line 136
    :goto_4
    if-ge v1, p2, :cond_d

    .line 137
    .line 138
    move v4, v2

    .line 139
    :cond_d
    add-int/2addr v0, v4

    .line 140
    sub-int/2addr v0, p2

    .line 141
    add-int/2addr v1, v0

    .line 142
    iget-object p2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

    .line 143
    .line 144
    invoke-virtual {p1, p2, v1}, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwww(Lorg/joda/time/DateTimeFieldType;I)V

    .line 145
    .line 146
    .line 147
    add-int/2addr p3, v3

    .line 148
    return p3

    .line 149
    :cond_e
    :goto_5
    not-int p1, p3

    .line 150
    return p1

    .line 151
    :cond_f
    :goto_6
    not-int p1, p3

    .line 152
    return p1

    .line 153
    :cond_10
    :goto_7
    const/16 v0, 0x9

    .line 154
    .line 155
    if-lt v1, v0, :cond_11

    .line 156
    .line 157
    add-int/2addr v1, p3

    .line 158
    invoke-interface {p2, p3, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    move-result p2

    .line 170
    goto :goto_a

    .line 171
    :cond_11
    if-eqz v8, :cond_12

    .line 172
    .line 173
    add-int/lit8 v0, p3, 0x1

    .line 174
    .line 175
    goto :goto_8

    .line 176
    :cond_12
    move v0, p3

    .line 177
    :goto_8
    add-int/lit8 v2, v0, 0x1

    .line 178
    .line 179
    :try_start_0
    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 180
    .line 181
    .line 182
    move-result v0
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    sub-int/2addr v0, v5

    .line 184
    add-int/2addr v1, p3

    .line 185
    :goto_9
    if-ge v2, v1, :cond_13

    .line 186
    .line 187
    shl-int/lit8 p3, v0, 0x3

    .line 188
    .line 189
    shl-int/lit8 v0, v0, 0x1

    .line 190
    .line 191
    add-int/2addr p3, v0

    .line 192
    add-int/lit8 v0, v2, 0x1

    .line 193
    .line 194
    invoke-interface {p2, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    add-int/2addr p3, v2

    .line 199
    sub-int/2addr p3, v5

    .line 200
    move v2, v0

    .line 201
    move v0, p3

    .line 202
    goto :goto_9

    .line 203
    :cond_13
    if-eqz v8, :cond_14

    .line 204
    .line 205
    neg-int p2, v0

    .line 206
    goto :goto_a

    .line 207
    :cond_14
    move p2, v0

    .line 208
    :goto_a
    iget-object p3, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

    .line 209
    .line 210
    invoke-virtual {p1, p3, p2}, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwww(Lorg/joda/time/DateTimeFieldType;I)V

    .line 211
    .line 212
    .line 213
    return v1

    .line 214
    :catch_0
    not-int p1, p3

    .line 215
    return p1
.end method

.method public printTo(Ljava/lang/Appendable;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2, p3, p4}, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JLorg/joda/time/Chronology;)I

    move-result p2

    if-gez p2, :cond_0

    const p2, 0xfffd

    .line 2
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 3
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void

    :cond_0
    const/4 p3, 0x2

    .line 4
    invoke-static {p1, p2, p3}, Lorg/joda/time/format/FormatUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Appendable;II)V

    return-void
.end method

.method public printTo(Ljava/lang/Appendable;Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p2}, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/ReadablePartial;)I

    move-result p2

    if-gez p2, :cond_0

    const p2, 0xfffd

    .line 6
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 7
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void

    :cond_0
    const/4 p3, 0x2

    .line 8
    invoke-static {p1, p2, p3}, Lorg/joda/time/format/FormatUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Appendable;II)V

    return-void
.end method
