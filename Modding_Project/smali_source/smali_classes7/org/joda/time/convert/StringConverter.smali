.class Lorg/joda/time/convert/StringConverter;
.super Lorg/joda/time/convert/AbstractConverter;
.source "Proguard"

# interfaces
.implements Lorg/joda/time/convert/InstantConverter;
.implements Lorg/joda/time/convert/PartialConverter;
.implements Lorg/joda/time/convert/DurationConverter;
.implements Lorg/joda/time/convert/PeriodConverter;
.implements Lorg/joda/time/convert/IntervalConverter;


# static fields
.field static final INSTANCE:Lorg/joda/time/convert/StringConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/joda/time/convert/StringConverter;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/joda/time/convert/StringConverter;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/joda/time/convert/StringConverter;->INSTANCE:Lorg/joda/time/convert/StringConverter;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/joda/time/convert/AbstractConverter;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/ReadablePartial;Ljava/lang/Object;Lorg/joda/time/Chronology;Lorg/joda/time/format/DateTimeFormatter;)[I
    .locals 2

    .line 1
    invoke-virtual {p4}, Lorg/joda/time/format/DateTimeFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lorg/joda/time/DateTimeZone;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p4}, Lorg/joda/time/format/DateTimeFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lorg/joda/time/DateTimeZone;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p3, v0}, Lorg/joda/time/Chronology;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    :cond_0
    invoke-virtual {p4, p3}, Lorg/joda/time/format/DateTimeFormatter;->Wwwwwwwwwwwwww(Lorg/joda/time/Chronology;)Lorg/joda/time/format/DateTimeFormatter;

    .line 16
    .line 17
    .line 18
    move-result-object p4

    .line 19
    check-cast p2, Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p4, p2}, Lorg/joda/time/format/DateTimeFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    invoke-virtual {p3, p1, v0, v1}, Lorg/joda/time/Chronology;->get(Lorg/joda/time/ReadablePartial;J)[I

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/ReadWritablePeriod;Ljava/lang/Object;Lorg/joda/time/Chronology;)V
    .locals 2

    .line 1
    check-cast p2, Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {}, Lorg/joda/time/format/ISOPeriodFormat;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lorg/joda/time/format/PeriodFormatter;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    invoke-interface {p1}, Lorg/joda/time/ReadWritablePeriod;->clear()V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p3, p1, p2, v0}, Lorg/joda/time/format/PeriodFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/ReadWritablePeriod;Ljava/lang/String;I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-ge v0, v1, :cond_1

    .line 20
    .line 21
    if-gez v0, :cond_0

    .line 22
    .line 23
    invoke-interface {p1}, Lorg/joda/time/ReadablePeriod;->getPeriodType()Lorg/joda/time/PeriodType;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p3, p1}, Lorg/joda/time/format/PeriodFormatter;->Wwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/PeriodType;)Lorg/joda/time/format/PeriodFormatter;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1, p2}, Lorg/joda/time/format/PeriodFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lorg/joda/time/MutablePeriod;

    .line 32
    .line 33
    .line 34
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 35
    .line 36
    new-instance p3, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v0, "Invalid format: \""

    .line 42
    .line 43
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const/16 p2, 0x22

    .line 50
    .line 51
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1

    .line 62
    :cond_1
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;Lorg/joda/time/Chronology;)J
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Lorg/joda/time/format/DateTimeFormatter;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p2}, Lorg/joda/time/format/DateTimeFormatter;->Wwwwwwwwwwwwww(Lorg/joda/time/Chronology;)Lorg/joda/time/format/DateTimeFormatter;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {p2, p1}, Lorg/joda/time/format/DateTimeFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)J

    .line 12
    .line 13
    .line 14
    move-result-wide p1

    .line 15
    return-wide p1
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/ReadWritableInterval;Ljava/lang/Object;Lorg/joda/time/Chronology;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p2

    .line 8
    .line 9
    check-cast v3, Ljava/lang/String;

    .line 10
    .line 11
    const/16 v4, 0x2f

    .line 12
    .line 13
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-ltz v4, :cond_b

    .line 18
    .line 19
    const/4 v5, 0x0

    .line 20
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 25
    .line 26
    .line 27
    move-result v7

    .line 28
    const-string v8, "Format invalid: "

    .line 29
    .line 30
    if-lez v7, :cond_a

    .line 31
    .line 32
    const/4 v7, 0x1

    .line 33
    add-int/2addr v4, v7

    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 39
    .line 40
    .line 41
    move-result v9

    .line 42
    if-lez v9, :cond_9

    .line 43
    .line 44
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Lorg/joda/time/format/DateTimeFormatter;

    .line 45
    .line 46
    .line 47
    move-result-object v8

    .line 48
    invoke-virtual {v8, v2}, Lorg/joda/time/format/DateTimeFormatter;->Wwwwwwwwwwwwww(Lorg/joda/time/Chronology;)Lorg/joda/time/format/DateTimeFormatter;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    invoke-static {}, Lorg/joda/time/format/ISOPeriodFormat;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lorg/joda/time/format/PeriodFormatter;

    .line 53
    .line 54
    .line 55
    move-result-object v9

    .line 56
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    .line 57
    .line 58
    .line 59
    move-result v10

    .line 60
    const/16 v11, 0x70

    .line 61
    .line 62
    const/16 v12, 0x50

    .line 63
    .line 64
    const/4 v13, 0x0

    .line 65
    if-eq v10, v12, :cond_1

    .line 66
    .line 67
    if-ne v10, v11, :cond_0

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {v8, v6}, Lorg/joda/time/format/DateTimeFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lorg/joda/time/DateTime;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    invoke-virtual {v6}, Lorg/joda/time/base/BaseDateTime;->getMillis()J

    .line 75
    .line 76
    .line 77
    move-result-wide v14

    .line 78
    invoke-virtual {v6}, Lorg/joda/time/base/BaseDateTime;->getChronology()Lorg/joda/time/Chronology;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    move-object/from16 v16, v13

    .line 83
    .line 84
    move-object v13, v6

    .line 85
    move-object/from16 v6, v16

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    :goto_0
    invoke-virtual {v0, v6}, Lorg/joda/time/convert/AbstractConverter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)Lorg/joda/time/PeriodType;

    .line 89
    .line 90
    .line 91
    move-result-object v10

    .line 92
    invoke-virtual {v9, v10}, Lorg/joda/time/format/PeriodFormatter;->Wwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/PeriodType;)Lorg/joda/time/format/PeriodFormatter;

    .line 93
    .line 94
    .line 95
    move-result-object v10

    .line 96
    invoke-virtual {v10, v6}, Lorg/joda/time/format/PeriodFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lorg/joda/time/Period;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    const-wide/16 v14, 0x0

    .line 101
    .line 102
    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    if-eq v5, v12, :cond_5

    .line 107
    .line 108
    if-ne v5, v11, :cond_2

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_2
    invoke-virtual {v8, v4}, Lorg/joda/time/format/DateTimeFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lorg/joda/time/DateTime;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-virtual {v3}, Lorg/joda/time/base/BaseDateTime;->getMillis()J

    .line 116
    .line 117
    .line 118
    move-result-wide v4

    .line 119
    if-eqz v13, :cond_3

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_3
    invoke-virtual {v3}, Lorg/joda/time/base/BaseDateTime;->getChronology()Lorg/joda/time/Chronology;

    .line 123
    .line 124
    .line 125
    move-result-object v13

    .line 126
    :goto_2
    if-eqz v2, :cond_4

    .line 127
    .line 128
    move-object v13, v2

    .line 129
    :cond_4
    if-eqz v6, :cond_7

    .line 130
    .line 131
    const/4 v2, -0x1

    .line 132
    invoke-virtual {v13, v6, v4, v5, v2}, Lorg/joda/time/Chronology;->add(Lorg/joda/time/ReadablePeriod;JI)J

    .line 133
    .line 134
    .line 135
    move-result-wide v14

    .line 136
    goto :goto_4

    .line 137
    :cond_5
    :goto_3
    if-nez v6, :cond_8

    .line 138
    .line 139
    invoke-virtual {v0, v4}, Lorg/joda/time/convert/AbstractConverter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)Lorg/joda/time/PeriodType;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    invoke-virtual {v9, v3}, Lorg/joda/time/format/PeriodFormatter;->Wwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/PeriodType;)Lorg/joda/time/format/PeriodFormatter;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    invoke-virtual {v3, v4}, Lorg/joda/time/format/PeriodFormatter;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lorg/joda/time/Period;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    if-eqz v2, :cond_6

    .line 152
    .line 153
    move-object v13, v2

    .line 154
    :cond_6
    invoke-virtual {v13, v3, v14, v15, v7}, Lorg/joda/time/Chronology;->add(Lorg/joda/time/ReadablePeriod;JI)J

    .line 155
    .line 156
    .line 157
    move-result-wide v4

    .line 158
    :cond_7
    :goto_4
    invoke-interface {v1, v14, v15, v4, v5}, Lorg/joda/time/ReadWritableInterval;->setInterval(JJ)V

    .line 159
    .line 160
    .line 161
    invoke-interface {v1, v13}, Lorg/joda/time/ReadWritableInterval;->setChronology(Lorg/joda/time/Chronology;)V

    .line 162
    .line 163
    .line 164
    return-void

    .line 165
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 166
    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    .line 172
    const-string v4, "Interval composed of two durations: "

    .line 173
    .line 174
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    throw v1

    .line 188
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 189
    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    throw v1

    .line 209
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 210
    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    throw v1

    .line 230
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 231
    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    .line 233
    .line 234
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    .line 236
    .line 237
    const-string v4, "Format requires a \'/\' separator: "

    .line 238
    .line 239
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    throw v1
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)J
    .locals 11

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x4

    .line 8
    const/16 v2, 0x22

    .line 9
    .line 10
    const-string v3, "Invalid format: \""

    .line 11
    .line 12
    if-lt v0, v1, :cond_b

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    const/16 v5, 0x50

    .line 20
    .line 21
    if-eq v4, v5, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    const/16 v5, 0x70

    .line 28
    .line 29
    if-ne v4, v5, :cond_b

    .line 30
    .line 31
    :cond_0
    const/4 v4, 0x1

    .line 32
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    const/16 v6, 0x54

    .line 37
    .line 38
    if-eq v5, v6, :cond_1

    .line 39
    .line 40
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    const/16 v6, 0x74

    .line 45
    .line 46
    if-ne v5, v6, :cond_b

    .line 47
    .line 48
    :cond_1
    sub-int/2addr v0, v4

    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    const/16 v6, 0x53

    .line 54
    .line 55
    if-eq v5, v6, :cond_2

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    const/16 v6, 0x73

    .line 62
    .line 63
    if-ne v5, v6, :cond_b

    .line 64
    .line 65
    :cond_2
    const/4 v5, 0x2

    .line 66
    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const/4 v5, -0x1

    .line 71
    move v6, v1

    .line 72
    move v7, v6

    .line 73
    move v8, v5

    .line 74
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 75
    .line 76
    .line 77
    move-result v9

    .line 78
    if-ge v6, v9, :cond_6

    .line 79
    .line 80
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    .line 81
    .line 82
    .line 83
    move-result v9

    .line 84
    const/16 v10, 0x30

    .line 85
    .line 86
    if-lt v9, v10, :cond_3

    .line 87
    .line 88
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    .line 89
    .line 90
    .line 91
    move-result v9

    .line 92
    const/16 v10, 0x39

    .line 93
    .line 94
    if-gt v9, v10, :cond_3

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_3
    if-nez v6, :cond_4

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 100
    .line 101
    .line 102
    move-result v9

    .line 103
    const/16 v10, 0x2d

    .line 104
    .line 105
    if-ne v9, v10, :cond_4

    .line 106
    .line 107
    move v7, v4

    .line 108
    goto :goto_1

    .line 109
    :cond_4
    if-le v6, v7, :cond_5

    .line 110
    .line 111
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    .line 112
    .line 113
    .line 114
    move-result v9

    .line 115
    const/16 v10, 0x2e

    .line 116
    .line 117
    if-ne v9, v10, :cond_5

    .line 118
    .line 119
    if-ne v8, v5, :cond_5

    .line 120
    .line 121
    move v8, v6

    .line 122
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 126
    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw v0

    .line 149
    :cond_6
    if-lez v8, :cond_8

    .line 150
    .line 151
    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 156
    .line 157
    .line 158
    move-result-wide v2

    .line 159
    add-int/2addr v8, v4

    .line 160
    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    const/4 v4, 0x3

    .line 169
    if-eq v0, v4, :cond_7

    .line 170
    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string p1, "000"

    .line 180
    .line 181
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    :cond_7
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 193
    .line 194
    .line 195
    move-result p1

    .line 196
    int-to-long v0, p1

    .line 197
    goto :goto_3

    .line 198
    :cond_8
    const-wide/16 v1, 0x0

    .line 199
    .line 200
    if-eqz v7, :cond_9

    .line 201
    .line 202
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    invoke-virtual {v0, v7, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 211
    .line 212
    .line 213
    move-result-wide v3

    .line 214
    :goto_2
    move-wide v0, v1

    .line 215
    move-wide v2, v3

    .line 216
    goto :goto_3

    .line 217
    :cond_9
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 218
    .line 219
    .line 220
    move-result-wide v3

    .line 221
    goto :goto_2

    .line 222
    :goto_3
    const/16 p1, 0x3e8

    .line 223
    .line 224
    if-eqz v7, :cond_a

    .line 225
    .line 226
    neg-long v2, v2

    .line 227
    invoke-static {v2, v3, p1}, Lorg/joda/time/field/FieldUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwww(JI)J

    .line 228
    .line 229
    .line 230
    move-result-wide v2

    .line 231
    neg-long v0, v0

    .line 232
    invoke-static {v2, v3, v0, v1}, Lorg/joda/time/field/FieldUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JJ)J

    .line 233
    .line 234
    .line 235
    move-result-wide v0

    .line 236
    return-wide v0

    .line 237
    :cond_a
    invoke-static {v2, v3, p1}, Lorg/joda/time/field/FieldUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwww(JI)J

    .line 238
    .line 239
    .line 240
    move-result-wide v2

    .line 241
    invoke-static {v2, v3, v0, v1}, Lorg/joda/time/field/FieldUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JJ)J

    .line 242
    .line 243
    .line 244
    move-result-wide v0

    .line 245
    return-wide v0

    .line 246
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 247
    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    .line 249
    .line 250
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    throw v0
.end method
