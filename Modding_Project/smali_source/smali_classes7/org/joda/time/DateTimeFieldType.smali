.class public abstract Lorg/joda/time/DateTimeFieldType;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;
    }
.end annotation


# static fields
.field static final CENTURY_OF_ERA:B = 0x3t

.field static final CLOCKHOUR_OF_DAY:B = 0x10t

.field static final CLOCKHOUR_OF_HALFDAY:B = 0xft

.field static final DAY_OF_MONTH:B = 0x8t

.field static final DAY_OF_WEEK:B = 0xct

.field static final DAY_OF_YEAR:B = 0x6t

.field static final ERA:B = 0x1t

.field static final HALFDAY_OF_DAY:B = 0xdt

.field static final HOUR_OF_DAY:B = 0x11t

.field static final HOUR_OF_HALFDAY:B = 0xet

.field static final MILLIS_OF_DAY:B = 0x16t

.field static final MILLIS_OF_SECOND:B = 0x17t

.field static final MINUTE_OF_DAY:B = 0x12t

.field static final MINUTE_OF_HOUR:B = 0x13t

.field static final MONTH_OF_YEAR:B = 0x7t

.field static final SECOND_OF_DAY:B = 0x14t

.field static final SECOND_OF_MINUTE:B = 0x15t

.field static final WEEKYEAR:B = 0xat

.field static final WEEKYEAR_OF_CENTURY:B = 0x9t

.field static final WEEK_OF_WEEKYEAR:B = 0xbt

.field public static final Www:Lorg/joda/time/DateTimeFieldType;

.field public static final Wwww:Lorg/joda/time/DateTimeFieldType;

.field public static final Wwwww:Lorg/joda/time/DateTimeFieldType;

.field public static final Wwwwww:Lorg/joda/time/DateTimeFieldType;

.field public static final Wwwwwww:Lorg/joda/time/DateTimeFieldType;

.field public static final Wwwwwwww:Lorg/joda/time/DateTimeFieldType;

.field public static final Wwwwwwwww:Lorg/joda/time/DateTimeFieldType;

.field public static final Wwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

.field public static final Wwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

.field public static final Wwwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

.field public static final Wwwwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

.field public static final Wwwwwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

.field public static final Wwwwwwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

.field public static final Wwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

.field public static final Wwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

.field public static final Wwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

.field public static final Wwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

.field public static final Wwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

.field public static final Wwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

.field public static final Wwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

.field public static final Wwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

.field public static final Wwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

.field public static final Wwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

.field static final YEAR:B = 0x5t

.field static final YEAR_OF_CENTURY:B = 0x4t

.field static final YEAR_OF_ERA:B = 0x2t

.field private static final serialVersionUID:J = -0x26c224fb83e6L


# instance fields
.field private final iName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    .line 2
    .line 3
    invoke-static {}, Lorg/joda/time/DurationFieldType;->eras()Lorg/joda/time/DurationFieldType;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "era"

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    const/4 v4, 0x0

    .line 11
    invoke-direct {v0, v2, v3, v1, v4}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lorg/joda/time/DateTimeFieldType;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

    .line 15
    .line 16
    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    .line 17
    .line 18
    invoke-static {}, Lorg/joda/time/DurationFieldType;->years()Lorg/joda/time/DurationFieldType;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {}, Lorg/joda/time/DurationFieldType;->eras()Lorg/joda/time/DurationFieldType;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const-string v3, "yearOfEra"

    .line 27
    .line 28
    const/4 v5, 0x2

    .line 29
    invoke-direct {v0, v3, v5, v1, v2}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Lorg/joda/time/DateTimeFieldType;->Wwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

    .line 33
    .line 34
    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    .line 35
    .line 36
    invoke-static {}, Lorg/joda/time/DurationFieldType;->centuries()Lorg/joda/time/DurationFieldType;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {}, Lorg/joda/time/DurationFieldType;->eras()Lorg/joda/time/DurationFieldType;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const-string v3, "centuryOfEra"

    .line 45
    .line 46
    const/4 v5, 0x3

    .line 47
    invoke-direct {v0, v3, v5, v1, v2}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    .line 48
    .line 49
    .line 50
    sput-object v0, Lorg/joda/time/DateTimeFieldType;->Wwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

    .line 51
    .line 52
    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    .line 53
    .line 54
    invoke-static {}, Lorg/joda/time/DurationFieldType;->years()Lorg/joda/time/DurationFieldType;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {}, Lorg/joda/time/DurationFieldType;->centuries()Lorg/joda/time/DurationFieldType;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    const-string v3, "yearOfCentury"

    .line 63
    .line 64
    const/4 v5, 0x4

    .line 65
    invoke-direct {v0, v3, v5, v1, v2}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    .line 66
    .line 67
    .line 68
    sput-object v0, Lorg/joda/time/DateTimeFieldType;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

    .line 69
    .line 70
    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    .line 71
    .line 72
    const/4 v1, 0x5

    .line 73
    invoke-static {}, Lorg/joda/time/DurationFieldType;->years()Lorg/joda/time/DurationFieldType;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    const-string v3, "year"

    .line 78
    .line 79
    invoke-direct {v0, v3, v1, v2, v4}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    .line 80
    .line 81
    .line 82
    sput-object v0, Lorg/joda/time/DateTimeFieldType;->Wwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

    .line 83
    .line 84
    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    .line 85
    .line 86
    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-static {}, Lorg/joda/time/DurationFieldType;->years()Lorg/joda/time/DurationFieldType;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    const-string v3, "dayOfYear"

    .line 95
    .line 96
    const/4 v5, 0x6

    .line 97
    invoke-direct {v0, v3, v5, v1, v2}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    .line 98
    .line 99
    .line 100
    sput-object v0, Lorg/joda/time/DateTimeFieldType;->Wwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

    .line 101
    .line 102
    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    .line 103
    .line 104
    invoke-static {}, Lorg/joda/time/DurationFieldType;->months()Lorg/joda/time/DurationFieldType;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-static {}, Lorg/joda/time/DurationFieldType;->years()Lorg/joda/time/DurationFieldType;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    const-string v3, "monthOfYear"

    .line 113
    .line 114
    const/4 v5, 0x7

    .line 115
    invoke-direct {v0, v3, v5, v1, v2}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    .line 116
    .line 117
    .line 118
    sput-object v0, Lorg/joda/time/DateTimeFieldType;->Wwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

    .line 119
    .line 120
    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    .line 121
    .line 122
    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-static {}, Lorg/joda/time/DurationFieldType;->months()Lorg/joda/time/DurationFieldType;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    const-string v3, "dayOfMonth"

    .line 131
    .line 132
    const/16 v5, 0x8

    .line 133
    .line 134
    invoke-direct {v0, v3, v5, v1, v2}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    .line 135
    .line 136
    .line 137
    sput-object v0, Lorg/joda/time/DateTimeFieldType;->Wwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

    .line 138
    .line 139
    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    .line 140
    .line 141
    invoke-static {}, Lorg/joda/time/DurationFieldType;->weekyears()Lorg/joda/time/DurationFieldType;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-static {}, Lorg/joda/time/DurationFieldType;->centuries()Lorg/joda/time/DurationFieldType;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    const-string v3, "weekyearOfCentury"

    .line 150
    .line 151
    const/16 v5, 0x9

    .line 152
    .line 153
    invoke-direct {v0, v3, v5, v1, v2}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    .line 154
    .line 155
    .line 156
    sput-object v0, Lorg/joda/time/DateTimeFieldType;->Wwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

    .line 157
    .line 158
    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    .line 159
    .line 160
    const/16 v1, 0xa

    .line 161
    .line 162
    invoke-static {}, Lorg/joda/time/DurationFieldType;->weekyears()Lorg/joda/time/DurationFieldType;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    const-string v3, "weekyear"

    .line 167
    .line 168
    invoke-direct {v0, v3, v1, v2, v4}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    .line 169
    .line 170
    .line 171
    sput-object v0, Lorg/joda/time/DateTimeFieldType;->Wwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

    .line 172
    .line 173
    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    .line 174
    .line 175
    invoke-static {}, Lorg/joda/time/DurationFieldType;->weeks()Lorg/joda/time/DurationFieldType;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-static {}, Lorg/joda/time/DurationFieldType;->weekyears()Lorg/joda/time/DurationFieldType;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    const-string v3, "weekOfWeekyear"

    .line 184
    .line 185
    const/16 v4, 0xb

    .line 186
    .line 187
    invoke-direct {v0, v3, v4, v1, v2}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    .line 188
    .line 189
    .line 190
    sput-object v0, Lorg/joda/time/DateTimeFieldType;->Wwwwwwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

    .line 191
    .line 192
    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    .line 193
    .line 194
    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-static {}, Lorg/joda/time/DurationFieldType;->weeks()Lorg/joda/time/DurationFieldType;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    const-string v3, "dayOfWeek"

    .line 203
    .line 204
    const/16 v4, 0xc

    .line 205
    .line 206
    invoke-direct {v0, v3, v4, v1, v2}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    .line 207
    .line 208
    .line 209
    sput-object v0, Lorg/joda/time/DateTimeFieldType;->Wwwwwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

    .line 210
    .line 211
    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    .line 212
    .line 213
    invoke-static {}, Lorg/joda/time/DurationFieldType;->halfdays()Lorg/joda/time/DurationFieldType;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    const-string v3, "halfdayOfDay"

    .line 222
    .line 223
    const/16 v4, 0xd

    .line 224
    .line 225
    invoke-direct {v0, v3, v4, v1, v2}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    .line 226
    .line 227
    .line 228
    sput-object v0, Lorg/joda/time/DateTimeFieldType;->Wwwwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

    .line 229
    .line 230
    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    .line 231
    .line 232
    invoke-static {}, Lorg/joda/time/DurationFieldType;->hours()Lorg/joda/time/DurationFieldType;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    invoke-static {}, Lorg/joda/time/DurationFieldType;->halfdays()Lorg/joda/time/DurationFieldType;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    const-string v3, "hourOfHalfday"

    .line 241
    .line 242
    const/16 v4, 0xe

    .line 243
    .line 244
    invoke-direct {v0, v3, v4, v1, v2}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    .line 245
    .line 246
    .line 247
    sput-object v0, Lorg/joda/time/DateTimeFieldType;->Wwwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

    .line 248
    .line 249
    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    .line 250
    .line 251
    invoke-static {}, Lorg/joda/time/DurationFieldType;->hours()Lorg/joda/time/DurationFieldType;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    invoke-static {}, Lorg/joda/time/DurationFieldType;->halfdays()Lorg/joda/time/DurationFieldType;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    const-string v3, "clockhourOfHalfday"

    .line 260
    .line 261
    const/16 v4, 0xf

    .line 262
    .line 263
    invoke-direct {v0, v3, v4, v1, v2}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    .line 264
    .line 265
    .line 266
    sput-object v0, Lorg/joda/time/DateTimeFieldType;->Wwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

    .line 267
    .line 268
    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    .line 269
    .line 270
    invoke-static {}, Lorg/joda/time/DurationFieldType;->hours()Lorg/joda/time/DurationFieldType;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    const-string v3, "clockhourOfDay"

    .line 279
    .line 280
    const/16 v4, 0x10

    .line 281
    .line 282
    invoke-direct {v0, v3, v4, v1, v2}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    .line 283
    .line 284
    .line 285
    sput-object v0, Lorg/joda/time/DateTimeFieldType;->Wwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

    .line 286
    .line 287
    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    .line 288
    .line 289
    invoke-static {}, Lorg/joda/time/DurationFieldType;->hours()Lorg/joda/time/DurationFieldType;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    const-string v3, "hourOfDay"

    .line 298
    .line 299
    const/16 v4, 0x11

    .line 300
    .line 301
    invoke-direct {v0, v3, v4, v1, v2}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    .line 302
    .line 303
    .line 304
    sput-object v0, Lorg/joda/time/DateTimeFieldType;->Wwwwwwwww:Lorg/joda/time/DateTimeFieldType;

    .line 305
    .line 306
    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    .line 307
    .line 308
    invoke-static {}, Lorg/joda/time/DurationFieldType;->minutes()Lorg/joda/time/DurationFieldType;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    .line 313
    .line 314
    .line 315
    move-result-object v2

    .line 316
    const-string v3, "minuteOfDay"

    .line 317
    .line 318
    const/16 v4, 0x12

    .line 319
    .line 320
    invoke-direct {v0, v3, v4, v1, v2}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    .line 321
    .line 322
    .line 323
    sput-object v0, Lorg/joda/time/DateTimeFieldType;->Wwwwwwww:Lorg/joda/time/DateTimeFieldType;

    .line 324
    .line 325
    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    .line 326
    .line 327
    invoke-static {}, Lorg/joda/time/DurationFieldType;->minutes()Lorg/joda/time/DurationFieldType;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    invoke-static {}, Lorg/joda/time/DurationFieldType;->hours()Lorg/joda/time/DurationFieldType;

    .line 332
    .line 333
    .line 334
    move-result-object v2

    .line 335
    const-string v3, "minuteOfHour"

    .line 336
    .line 337
    const/16 v4, 0x13

    .line 338
    .line 339
    invoke-direct {v0, v3, v4, v1, v2}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    .line 340
    .line 341
    .line 342
    sput-object v0, Lorg/joda/time/DateTimeFieldType;->Wwwwwww:Lorg/joda/time/DateTimeFieldType;

    .line 343
    .line 344
    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    .line 345
    .line 346
    invoke-static {}, Lorg/joda/time/DurationFieldType;->seconds()Lorg/joda/time/DurationFieldType;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    .line 351
    .line 352
    .line 353
    move-result-object v2

    .line 354
    const-string v3, "secondOfDay"

    .line 355
    .line 356
    const/16 v4, 0x14

    .line 357
    .line 358
    invoke-direct {v0, v3, v4, v1, v2}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    .line 359
    .line 360
    .line 361
    sput-object v0, Lorg/joda/time/DateTimeFieldType;->Wwwwww:Lorg/joda/time/DateTimeFieldType;

    .line 362
    .line 363
    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    .line 364
    .line 365
    invoke-static {}, Lorg/joda/time/DurationFieldType;->seconds()Lorg/joda/time/DurationFieldType;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    invoke-static {}, Lorg/joda/time/DurationFieldType;->minutes()Lorg/joda/time/DurationFieldType;

    .line 370
    .line 371
    .line 372
    move-result-object v2

    .line 373
    const-string v3, "secondOfMinute"

    .line 374
    .line 375
    const/16 v4, 0x15

    .line 376
    .line 377
    invoke-direct {v0, v3, v4, v1, v2}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    .line 378
    .line 379
    .line 380
    sput-object v0, Lorg/joda/time/DateTimeFieldType;->Wwwww:Lorg/joda/time/DateTimeFieldType;

    .line 381
    .line 382
    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    .line 383
    .line 384
    invoke-static {}, Lorg/joda/time/DurationFieldType;->millis()Lorg/joda/time/DurationFieldType;

    .line 385
    .line 386
    .line 387
    move-result-object v1

    .line 388
    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    .line 389
    .line 390
    .line 391
    move-result-object v2

    .line 392
    const-string v3, "millisOfDay"

    .line 393
    .line 394
    const/16 v4, 0x16

    .line 395
    .line 396
    invoke-direct {v0, v3, v4, v1, v2}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    .line 397
    .line 398
    .line 399
    sput-object v0, Lorg/joda/time/DateTimeFieldType;->Wwww:Lorg/joda/time/DateTimeFieldType;

    .line 400
    .line 401
    new-instance v0, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;

    .line 402
    .line 403
    invoke-static {}, Lorg/joda/time/DurationFieldType;->millis()Lorg/joda/time/DurationFieldType;

    .line 404
    .line 405
    .line 406
    move-result-object v1

    .line 407
    invoke-static {}, Lorg/joda/time/DurationFieldType;->seconds()Lorg/joda/time/DurationFieldType;

    .line 408
    .line 409
    .line 410
    move-result-object v2

    .line 411
    const-string v3, "millisOfSecond"

    .line 412
    .line 413
    const/16 v4, 0x17

    .line 414
    .line 415
    invoke-direct {v0, v3, v4, v1, v2}, Lorg/joda/time/DateTimeFieldType$StandardDateTimeFieldType;-><init>(Ljava/lang/String;BLorg/joda/time/DurationFieldType;Lorg/joda/time/DurationFieldType;)V

    .line 416
    .line 417
    .line 418
    sput-object v0, Lorg/joda/time/DateTimeFieldType;->Www:Lorg/joda/time/DateTimeFieldType;

    .line 419
    .line 420
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/joda/time/DateTimeFieldType;->iName:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static synthetic access$000()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$100()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->Wwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$1000()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->Wwwwwwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$1100()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->Wwwwwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$1200()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->Wwwwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$1300()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->Wwwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$1400()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->Wwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$1500()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->Wwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$1600()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->Wwwwwwwww:Lorg/joda/time/DateTimeFieldType;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$1700()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->Wwwwwwww:Lorg/joda/time/DateTimeFieldType;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$1800()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->Wwwwwww:Lorg/joda/time/DateTimeFieldType;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$1900()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->Wwwwww:Lorg/joda/time/DateTimeFieldType;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$200()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->Wwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$2000()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->Wwwww:Lorg/joda/time/DateTimeFieldType;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$2100()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->Wwww:Lorg/joda/time/DateTimeFieldType;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$2200()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->Www:Lorg/joda/time/DateTimeFieldType;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$300()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$400()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->Wwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$500()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->Wwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$600()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->Wwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$700()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->Wwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$800()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->Wwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$900()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->Wwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

    .line 2
    .line 3
    return-object v0
.end method

.method public static centuryOfEra()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->Wwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

    .line 2
    .line 3
    return-object v0
.end method

.method public static clockhourOfDay()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->Wwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

    .line 2
    .line 3
    return-object v0
.end method

.method public static clockhourOfHalfday()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->Wwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

    .line 2
    .line 3
    return-object v0
.end method

.method public static dayOfMonth()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->Wwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

    .line 2
    .line 3
    return-object v0
.end method

.method public static dayOfWeek()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->Wwwwwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

    .line 2
    .line 3
    return-object v0
.end method

.method public static dayOfYear()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->Wwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

    .line 2
    .line 3
    return-object v0
.end method

.method public static era()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

    .line 2
    .line 3
    return-object v0
.end method

.method public static halfdayOfDay()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->Wwwwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

    .line 2
    .line 3
    return-object v0
.end method

.method public static hourOfDay()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->Wwwwwwwww:Lorg/joda/time/DateTimeFieldType;

    .line 2
    .line 3
    return-object v0
.end method

.method public static hourOfHalfday()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->Wwwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

    .line 2
    .line 3
    return-object v0
.end method

.method public static millisOfDay()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->Wwww:Lorg/joda/time/DateTimeFieldType;

    .line 2
    .line 3
    return-object v0
.end method

.method public static millisOfSecond()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->Www:Lorg/joda/time/DateTimeFieldType;

    .line 2
    .line 3
    return-object v0
.end method

.method public static minuteOfDay()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->Wwwwwwww:Lorg/joda/time/DateTimeFieldType;

    .line 2
    .line 3
    return-object v0
.end method

.method public static minuteOfHour()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->Wwwwwww:Lorg/joda/time/DateTimeFieldType;

    .line 2
    .line 3
    return-object v0
.end method

.method public static monthOfYear()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->Wwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

    .line 2
    .line 3
    return-object v0
.end method

.method public static secondOfDay()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->Wwwwww:Lorg/joda/time/DateTimeFieldType;

    .line 2
    .line 3
    return-object v0
.end method

.method public static secondOfMinute()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->Wwwww:Lorg/joda/time/DateTimeFieldType;

    .line 2
    .line 3
    return-object v0
.end method

.method public static weekOfWeekyear()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->Wwwwwwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

    .line 2
    .line 3
    return-object v0
.end method

.method public static weekyear()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->Wwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

    .line 2
    .line 3
    return-object v0
.end method

.method public static weekyearOfCentury()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->Wwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

    .line 2
    .line 3
    return-object v0
.end method

.method public static year()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->Wwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

    .line 2
    .line 3
    return-object v0
.end method

.method public static yearOfCentury()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

    .line 2
    .line 3
    return-object v0
.end method

.method public static yearOfEra()Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/DateTimeFieldType;->Wwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeFieldType;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public abstract getDurationType()Lorg/joda/time/DurationFieldType;
.end method

.method public abstract getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/DateTimeFieldType;->iName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract getRangeDurationType()Lorg/joda/time/DurationFieldType;
.end method

.method public isSupported(Lorg/joda/time/Chronology;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lorg/joda/time/DateTimeField;->isSupported()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/DateTimeFieldType;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
