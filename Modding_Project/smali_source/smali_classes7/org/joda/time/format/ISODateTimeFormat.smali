.class public Lorg/joda/time/format/ISODateTimeFormat;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/format/ISODateTimeFormat$Constants;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static Wwwwwwwwwwwwww()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .line 1
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->Wwwwwwwwwwwwwwwwwwwwwwwww()Lorg/joda/time/format/DateTimeFormatter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static Wwwwwwwwwwwwwww()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .line 1
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Lorg/joda/time/format/DateTimeFormatter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static Wwwwwwwwwwwwwwww()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .line 1
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Lorg/joda/time/format/DateTimeFormatter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static Wwwwwwwwwwwwwwwww()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .line 1
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->Wwwwwwwwwwwwwwwwwwwwwww()Lorg/joda/time/format/DateTimeFormatter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static Wwwwwwwwwwwwwwwwww(Lorg/joda/time/format/DateTimeFormatterBuilder;Ljava/util/Collection;ZZZZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/joda/time/format/DateTimeFormatterBuilder;",
            "Ljava/util/Collection<",
            "Lorg/joda/time/DateTimeFieldType;",
            ">;ZZZZ)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->hourOfDay()Lorg/joda/time/DateTimeFieldType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p1, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->minuteOfHour()Lorg/joda/time/DateTimeFieldType;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {p1, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->secondOfMinute()Lorg/joda/time/DateTimeFieldType;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-interface {p1, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->millisOfSecond()Lorg/joda/time/DateTimeFieldType;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-interface {p1, v3}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    if-nez v1, :cond_0

    .line 36
    .line 37
    if-nez v2, :cond_0

    .line 38
    .line 39
    if-nez v3, :cond_0

    .line 40
    .line 41
    goto/16 :goto_6

    .line 42
    .line 43
    :cond_0
    if-nez v0, :cond_1

    .line 44
    .line 45
    if-nez v1, :cond_1

    .line 46
    .line 47
    if-nez v2, :cond_1

    .line 48
    .line 49
    if-eqz v3, :cond_4

    .line 50
    .line 51
    :cond_1
    if-eqz p3, :cond_3

    .line 52
    .line 53
    if-nez p4, :cond_2

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 57
    .line 58
    new-instance p2, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string p3, "No valid ISO8601 format for fields because Date was reduced precision: "

    .line 64
    .line 65
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p0

    .line 79
    :cond_3
    :goto_0
    if-eqz p5, :cond_4

    .line 80
    .line 81
    const/16 p4, 0x54

    .line 82
    .line 83
    invoke-virtual {p0, p4}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Wwwwwwwwwww(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 84
    .line 85
    .line 86
    :cond_4
    if-eqz v0, :cond_5

    .line 87
    .line 88
    if-eqz v1, :cond_5

    .line 89
    .line 90
    if-nez v2, :cond_c

    .line 91
    .line 92
    :cond_5
    if-eqz v0, :cond_6

    .line 93
    .line 94
    if-nez v2, :cond_6

    .line 95
    .line 96
    if-nez v3, :cond_6

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_6
    if-eqz p3, :cond_8

    .line 100
    .line 101
    if-nez p5, :cond_7

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 105
    .line 106
    new-instance p2, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    const-string p3, "No valid ISO8601 format for fields because Time was truncated: "

    .line 112
    .line 113
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw p0

    .line 127
    :cond_8
    :goto_1
    if-nez v0, :cond_b

    .line 128
    .line 129
    if-eqz v1, :cond_9

    .line 130
    .line 131
    if-nez v2, :cond_c

    .line 132
    .line 133
    :cond_9
    if-eqz v1, :cond_a

    .line 134
    .line 135
    if-eqz v3, :cond_c

    .line 136
    .line 137
    :cond_a
    if-eqz v2, :cond_b

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_b
    if-nez p3, :cond_18

    .line 141
    .line 142
    :cond_c
    :goto_2
    const/16 p1, 0x2d

    .line 143
    .line 144
    const/4 p3, 0x2

    .line 145
    if-eqz v0, :cond_d

    .line 146
    .line 147
    invoke-virtual {p0, p3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Wwwwwwwwwwwww(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 148
    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_d
    if-nez v1, :cond_e

    .line 152
    .line 153
    if-nez v2, :cond_e

    .line 154
    .line 155
    if-eqz v3, :cond_f

    .line 156
    .line 157
    :cond_e
    invoke-virtual {p0, p1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Wwwwwwwwwww(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 158
    .line 159
    .line 160
    :cond_f
    :goto_3
    const/16 p4, 0x3a

    .line 161
    .line 162
    if-eqz p2, :cond_10

    .line 163
    .line 164
    if-eqz v0, :cond_10

    .line 165
    .line 166
    if-eqz v1, :cond_10

    .line 167
    .line 168
    invoke-virtual {p0, p4}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Wwwwwwwwwww(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 169
    .line 170
    .line 171
    :cond_10
    if-eqz v1, :cond_11

    .line 172
    .line 173
    invoke-virtual {p0, p3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Wwwwwwww(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 174
    .line 175
    .line 176
    goto :goto_4

    .line 177
    :cond_11
    if-nez v2, :cond_12

    .line 178
    .line 179
    if-eqz v3, :cond_13

    .line 180
    .line 181
    :cond_12
    invoke-virtual {p0, p1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Wwwwwwwwwww(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 182
    .line 183
    .line 184
    :cond_13
    :goto_4
    if-eqz p2, :cond_14

    .line 185
    .line 186
    if-eqz v1, :cond_14

    .line 187
    .line 188
    if-eqz v2, :cond_14

    .line 189
    .line 190
    invoke-virtual {p0, p4}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Wwwwwwwwwww(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 191
    .line 192
    .line 193
    :cond_14
    if-eqz v2, :cond_15

    .line 194
    .line 195
    invoke-virtual {p0, p3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Www(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 196
    .line 197
    .line 198
    goto :goto_5

    .line 199
    :cond_15
    if-eqz v3, :cond_16

    .line 200
    .line 201
    invoke-virtual {p0, p1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Wwwwwwwwwww(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 202
    .line 203
    .line 204
    :cond_16
    :goto_5
    if-eqz v3, :cond_17

    .line 205
    .line 206
    const/16 p1, 0x2e

    .line 207
    .line 208
    invoke-virtual {p0, p1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Wwwwwwwwwww(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 209
    .line 210
    .line 211
    const/4 p1, 0x3

    .line 212
    invoke-virtual {p0, p1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Wwwwwwwww(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 213
    .line 214
    .line 215
    :cond_17
    :goto_6
    return-void

    .line 216
    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 217
    .line 218
    new-instance p2, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    .line 222
    .line 223
    const-string p3, "No valid ISO8601 format for fields: "

    .line 224
    .line 225
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    throw p0
.end method

.method public static Wwwwwwwwwwwwwwwwwww()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .line 1
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lorg/joda/time/format/DateTimeFormatter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static Wwwwwwwwwwwwwwwwwwww()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .line 1
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lorg/joda/time/format/DateTimeFormatter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static Wwwwwwwwwwwwwwwwwwwww()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .line 1
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->Wwwwwwwwwwwwwwwwwwwwww()Lorg/joda/time/format/DateTimeFormatter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwww()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .line 1
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Lorg/joda/time/format/DateTimeFormatter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwww()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .line 1
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lorg/joda/time/format/DateTimeFormatter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwww()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .line 1
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->Wwwwwwwwwwwwwwwwwwwwwwww()Lorg/joda/time/format/DateTimeFormatter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/Collection;ZZ)Lorg/joda/time/format/DateTimeFormatter;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/joda/time/DateTimeFieldType;",
            ">;ZZ)",
            "Lorg/joda/time/format/DateTimeFormatter;"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_9

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 8
    .line 9
    new-instance v2, Ljava/util/HashSet;

    .line 10
    .line 11
    invoke-direct {v2, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v2}, Ljava/util/Set;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    new-instance v1, Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 19
    .line 20
    invoke-direct {v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->monthOfYear()Lorg/joda/time/DateTimeFieldType;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    const/4 v4, 0x0

    .line 32
    const/4 v5, 0x1

    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    invoke-static {v1, v2, p1, p2}, Lorg/joda/time/format/ISODateTimeFormat;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/format/DateTimeFormatterBuilder;Ljava/util/Collection;ZZ)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfYear()Lorg/joda/time/DateTimeFieldType;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_1

    .line 49
    .line 50
    invoke-static {v1, v2, p1, p2}, Lorg/joda/time/format/ISODateTimeFormat;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/format/DateTimeFormatterBuilder;Ljava/util/Collection;ZZ)Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->weekOfWeekyear()Lorg/joda/time/DateTimeFieldType;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_2

    .line 64
    .line 65
    invoke-static {v1, v2, p1, p2}, Lorg/joda/time/format/ISODateTimeFormat;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/format/DateTimeFormatterBuilder;Ljava/util/Collection;ZZ)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    goto :goto_1

    .line 70
    :cond_2
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfMonth()Lorg/joda/time/DateTimeFieldType;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-eqz v3, :cond_3

    .line 79
    .line 80
    invoke-static {v1, v2, p1, p2}, Lorg/joda/time/format/ISODateTimeFormat;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/format/DateTimeFormatterBuilder;Ljava/util/Collection;ZZ)Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    goto :goto_1

    .line 85
    :cond_3
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfWeek()Lorg/joda/time/DateTimeFieldType;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-eqz v3, :cond_4

    .line 94
    .line 95
    invoke-static {v1, v2, p1, p2}, Lorg/joda/time/format/ISODateTimeFormat;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/format/DateTimeFormatterBuilder;Ljava/util/Collection;ZZ)Z

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    goto :goto_1

    .line 100
    :cond_4
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->year()Lorg/joda/time/DateTimeFieldType;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    if-eqz v3, :cond_5

    .line 109
    .line 110
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lorg/joda/time/format/DateTimeFormatter;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-virtual {v1, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 115
    .line 116
    .line 117
    :goto_0
    move v3, v5

    .line 118
    goto :goto_1

    .line 119
    :cond_5
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->weekyear()Lorg/joda/time/DateTimeFieldType;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    if-eqz v3, :cond_6

    .line 128
    .line 129
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lorg/joda/time/format/DateTimeFormatter;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    invoke-virtual {v1, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 134
    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_6
    move v3, v4

    .line 138
    :goto_1
    invoke-interface {v2}, Ljava/util/Set;->size()I

    .line 139
    .line 140
    .line 141
    move-result v6

    .line 142
    if-ge v6, v0, :cond_7

    .line 143
    .line 144
    move v6, v5

    .line 145
    move v4, p2

    .line 146
    move v5, v3

    .line 147
    move v3, p1

    .line 148
    goto :goto_2

    .line 149
    :cond_7
    move v6, v4

    .line 150
    move v5, v3

    .line 151
    move v3, p1

    .line 152
    move v4, p2

    .line 153
    :goto_2
    invoke-static/range {v1 .. v6}, Lorg/joda/time/format/ISODateTimeFormat;->Wwwwwwwwwwwwwwwwww(Lorg/joda/time/format/DateTimeFormatterBuilder;Ljava/util/Collection;ZZZZ)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Kkkkkkkkkkk()Z

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    if-eqz p1, :cond_8

    .line 161
    .line 162
    :try_start_0
    invoke-interface {p0, v2}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .line 164
    .line 165
    :catch_0
    invoke-virtual {v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Kk()Lorg/joda/time/format/DateTimeFormatter;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    return-object p0

    .line 170
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 171
    .line 172
    new-instance p2, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .line 176
    .line 177
    const-string v0, "No valid format for fields: "

    .line 178
    .line 179
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    throw p1

    .line 193
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 194
    .line 195
    const-string p1, "The fields must not be null or empty"

    .line 196
    .line 197
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    throw p0
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwww()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .line 1
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->Wwwwwwwwwwwwwwwwwwwww()Lorg/joda/time/format/DateTimeFormatter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwww()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .line 1
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lorg/joda/time/format/DateTimeFormatter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .line 1
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->Wwwwwwwwwwwwwwwwwwww()Lorg/joda/time/format/DateTimeFormatter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/format/DateTimeFormatterBuilder;Ljava/util/Collection;ZZ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/joda/time/format/DateTimeFormatterBuilder;",
            "Ljava/util/Collection<",
            "Lorg/joda/time/DateTimeFieldType;",
            ">;ZZ)Z"
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->weekyear()Lorg/joda/time/DateTimeFieldType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p1, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x2

    .line 10
    const/16 v2, 0x2d

    .line 11
    .line 12
    const/16 v3, 0x57

    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    const/4 v5, 0x0

    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lorg/joda/time/format/DateTimeFormatter;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->weekOfWeekyear()Lorg/joda/time/DateTimeFieldType;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {p1, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-static {p0, p2}, Lorg/joda/time/format/ISODateTimeFormat;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/format/DateTimeFormatterBuilder;Z)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Wwwwwwwwwww(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Kkkkkkkkkkkkkkk(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfWeek()Lorg/joda/time/DateTimeFieldType;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    invoke-interface {p1, p3}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_0

    .line 53
    .line 54
    invoke-static {p0, p2}, Lorg/joda/time/format/ISODateTimeFormat;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/format/DateTimeFormatterBuilder;Z)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v4}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwww(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 58
    .line 59
    .line 60
    return v5

    .line 61
    :cond_0
    return v4

    .line 62
    :cond_1
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfWeek()Lorg/joda/time/DateTimeFieldType;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-interface {p1, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_2

    .line 71
    .line 72
    invoke-static {p1, p3}, Lorg/joda/time/format/ISODateTimeFormat;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/Collection;Z)V

    .line 73
    .line 74
    .line 75
    invoke-static {p0, p2}, Lorg/joda/time/format/ISODateTimeFormat;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/format/DateTimeFormatterBuilder;Z)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Wwwwwwwwwww(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Wwwwwwwwwww(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v4}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwww(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 85
    .line 86
    .line 87
    return v5

    .line 88
    :cond_2
    return v4

    .line 89
    :cond_3
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->weekOfWeekyear()Lorg/joda/time/DateTimeFieldType;

    .line 90
    .line 91
    .line 92
    move-result-object p3

    .line 93
    invoke-interface {p1, p3}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result p3

    .line 97
    if-eqz p3, :cond_5

    .line 98
    .line 99
    invoke-virtual {p0, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Wwwwwwwwwww(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Wwwwwwwwwww(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Kkkkkkkkkkkkkkk(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 106
    .line 107
    .line 108
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfWeek()Lorg/joda/time/DateTimeFieldType;

    .line 109
    .line 110
    .line 111
    move-result-object p3

    .line 112
    invoke-interface {p1, p3}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-eqz p1, :cond_4

    .line 117
    .line 118
    invoke-static {p0, p2}, Lorg/joda/time/format/ISODateTimeFormat;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/format/DateTimeFormatterBuilder;Z)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, v4}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwww(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 122
    .line 123
    .line 124
    return v5

    .line 125
    :cond_4
    return v4

    .line 126
    :cond_5
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfWeek()Lorg/joda/time/DateTimeFieldType;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    invoke-interface {p1, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    if-eqz p1, :cond_6

    .line 135
    .line 136
    invoke-virtual {p0, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Wwwwwwwwwww(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Wwwwwwwwwww(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Wwwwwwwwwww(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, v4}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwww(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 146
    .line 147
    .line 148
    :cond_6
    return v5
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/format/DateTimeFormatterBuilder;Ljava/util/Collection;ZZ)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/joda/time/format/DateTimeFormatterBuilder;",
            "Ljava/util/Collection<",
            "Lorg/joda/time/DateTimeFieldType;",
            ">;ZZ)Z"
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->year()Lorg/joda/time/DateTimeFieldType;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    invoke-interface {p1, p3}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p3

    .line 9
    const/4 v0, 0x3

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz p3, :cond_1

    .line 12
    .line 13
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lorg/joda/time/format/DateTimeFormatter;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    invoke-virtual {p0, p3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfYear()Lorg/joda/time/DateTimeFieldType;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    invoke-interface {p1, p3}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    invoke-static {p0, p2}, Lorg/joda/time/format/ISODateTimeFormat;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/format/DateTimeFormatterBuilder;Z)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwww(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 34
    .line 35
    .line 36
    return v1

    .line 37
    :cond_0
    const/4 p0, 0x1

    .line 38
    return p0

    .line 39
    :cond_1
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfYear()Lorg/joda/time/DateTimeFieldType;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-interface {p1, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    const/16 p1, 0x2d

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Wwwwwwwwwww(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwww(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 55
    .line 56
    .line 57
    :cond_2
    return v1
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/format/DateTimeFormatterBuilder;Ljava/util/Collection;ZZ)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/joda/time/format/DateTimeFormatterBuilder;",
            "Ljava/util/Collection<",
            "Lorg/joda/time/DateTimeFieldType;",
            ">;ZZ)Z"
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->year()Lorg/joda/time/DateTimeFieldType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p1, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x2

    .line 11
    const/16 v3, 0x2d

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    if-eqz v0, :cond_3

    .line 15
    .line 16
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lorg/joda/time/format/DateTimeFormatter;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->monthOfYear()Lorg/joda/time/DateTimeFieldType;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {p1, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfMonth()Lorg/joda/time/DateTimeFieldType;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    invoke-interface {p1, p3}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    invoke-static {p0, p2}, Lorg/joda/time/format/ISODateTimeFormat;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/format/DateTimeFormatterBuilder;Z)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Wwwwwww(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 47
    .line 48
    .line 49
    invoke-static {p0, p2}, Lorg/joda/time/format/ISODateTimeFormat;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/format/DateTimeFormatterBuilder;Z)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwww(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 53
    .line 54
    .line 55
    return v4

    .line 56
    :cond_0
    invoke-virtual {p0, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Wwwwwwwwwww(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Wwwwwww(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 60
    .line 61
    .line 62
    return v1

    .line 63
    :cond_1
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfMonth()Lorg/joda/time/DateTimeFieldType;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-interface {p1, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    if-eqz p2, :cond_2

    .line 72
    .line 73
    invoke-static {p1, p3}, Lorg/joda/time/format/ISODateTimeFormat;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/Collection;Z)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Wwwwwwwwwww(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Wwwwwwwwwww(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwww(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 83
    .line 84
    .line 85
    return v4

    .line 86
    :cond_2
    return v1

    .line 87
    :cond_3
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->monthOfYear()Lorg/joda/time/DateTimeFieldType;

    .line 88
    .line 89
    .line 90
    move-result-object p3

    .line 91
    invoke-interface {p1, p3}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result p3

    .line 95
    if-eqz p3, :cond_5

    .line 96
    .line 97
    invoke-virtual {p0, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Wwwwwwwwwww(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Wwwwwwwwwww(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Wwwwwww(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 104
    .line 105
    .line 106
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfMonth()Lorg/joda/time/DateTimeFieldType;

    .line 107
    .line 108
    .line 109
    move-result-object p3

    .line 110
    invoke-interface {p1, p3}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-eqz p1, :cond_4

    .line 115
    .line 116
    invoke-static {p0, p2}, Lorg/joda/time/format/ISODateTimeFormat;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/format/DateTimeFormatterBuilder;Z)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwww(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 120
    .line 121
    .line 122
    return v4

    .line 123
    :cond_4
    return v1

    .line 124
    :cond_5
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfMonth()Lorg/joda/time/DateTimeFieldType;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    invoke-interface {p1, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    if-eqz p1, :cond_6

    .line 133
    .line 134
    invoke-virtual {p0, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Wwwwwwwwwww(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Wwwwwwwwwww(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Wwwwwwwwwww(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwww(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 144
    .line 145
    .line 146
    :cond_6
    return v4
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .line 1
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->Wwwwwwwwwwwwww()Lorg/joda/time/format/DateTimeFormatter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/Collection;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/joda/time/DateTimeFieldType;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "No valid ISO8601 format for fields: "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/format/DateTimeFormatterBuilder;Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/16 p1, 0x2d

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->Wwwwwwwwwww(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
