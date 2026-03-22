.class public Lorg/joda/time/PeriodType;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static DAY_INDEX:I = 0x0

.field static HOUR_INDEX:I = 0x0

.field static MILLI_INDEX:I = 0x0

.field static MINUTE_INDEX:I = 0x0

.field static MONTH_INDEX:I = 0x0

.field static SECOND_INDEX:I = 0x0

.field static WEEK_INDEX:I = 0x0

.field public static Wwwwwwww:Lorg/joda/time/PeriodType; = null

.field public static Wwwwwwwww:Lorg/joda/time/PeriodType; = null

.field public static Wwwwwwwwww:Lorg/joda/time/PeriodType; = null

.field public static Wwwwwwwwwww:Lorg/joda/time/PeriodType; = null

.field public static Wwwwwwwwwwww:Lorg/joda/time/PeriodType; = null

.field public static Wwwwwwwwwwwww:Lorg/joda/time/PeriodType; = null

.field public static Wwwwwwwwwwwwww:Lorg/joda/time/PeriodType; = null

.field public static Wwwwwwwwwwwwwww:Lorg/joda/time/PeriodType; = null

.field public static Wwwwwwwwwwwwwwww:Lorg/joda/time/PeriodType; = null

.field public static Wwwwwwwwwwwwwwwww:Lorg/joda/time/PeriodType; = null

.field public static Wwwwwwwwwwwwwwwwww:Lorg/joda/time/PeriodType; = null

.field public static Wwwwwwwwwwwwwwwwwww:Lorg/joda/time/PeriodType; = null

.field public static Wwwwwwwwwwwwwwwwwwww:Lorg/joda/time/PeriodType; = null

.field public static Wwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/PeriodType; = null

.field public static Wwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/PeriodType; = null

.field public static Wwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/PeriodType; = null

.field public static Wwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/PeriodType; = null

.field public static final Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/joda/time/PeriodType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static YEAR_INDEX:I = 0x0

.field private static final serialVersionUID:J = 0x1f900670aab2350eL


# instance fields
.field private final iIndices:[I

.field private final iName:Ljava/lang/String;

.field private final iTypes:[Lorg/joda/time/DurationFieldType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    const/16 v1, 0x20

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lorg/joda/time/PeriodType;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    sput v0, Lorg/joda/time/PeriodType;->YEAR_INDEX:I

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    sput v0, Lorg/joda/time/PeriodType;->MONTH_INDEX:I

    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    sput v0, Lorg/joda/time/PeriodType;->WEEK_INDEX:I

    .line 18
    .line 19
    const/4 v0, 0x3

    .line 20
    sput v0, Lorg/joda/time/PeriodType;->DAY_INDEX:I

    .line 21
    .line 22
    const/4 v0, 0x4

    .line 23
    sput v0, Lorg/joda/time/PeriodType;->HOUR_INDEX:I

    .line 24
    .line 25
    const/4 v0, 0x5

    .line 26
    sput v0, Lorg/joda/time/PeriodType;->MINUTE_INDEX:I

    .line 27
    .line 28
    const/4 v0, 0x6

    .line 29
    sput v0, Lorg/joda/time/PeriodType;->SECOND_INDEX:I

    .line 30
    .line 31
    const/4 v0, 0x7

    .line 32
    sput v0, Lorg/joda/time/PeriodType;->MILLI_INDEX:I

    .line 33
    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Lorg/joda/time/DurationFieldType;[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/joda/time/PeriodType;->iName:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/joda/time/PeriodType;->iTypes:[Lorg/joda/time/DurationFieldType;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/joda/time/PeriodType;->iIndices:[I

    .line 9
    .line 10
    return-void
.end method

.method public static dayTime()Lorg/joda/time/PeriodType;
    .locals 12

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x2

    .line 4
    const/4 v3, 0x1

    .line 5
    const/4 v4, 0x0

    .line 6
    sget-object v5, Lorg/joda/time/PeriodType;->Wwwwwwwwwwwwwwwww:Lorg/joda/time/PeriodType;

    .line 7
    .line 8
    if-nez v5, :cond_0

    .line 9
    .line 10
    new-instance v5, Lorg/joda/time/PeriodType;

    .line 11
    .line 12
    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    .line 13
    .line 14
    .line 15
    move-result-object v6

    .line 16
    invoke-static {}, Lorg/joda/time/DurationFieldType;->hours()Lorg/joda/time/DurationFieldType;

    .line 17
    .line 18
    .line 19
    move-result-object v7

    .line 20
    invoke-static {}, Lorg/joda/time/DurationFieldType;->minutes()Lorg/joda/time/DurationFieldType;

    .line 21
    .line 22
    .line 23
    move-result-object v8

    .line 24
    invoke-static {}, Lorg/joda/time/DurationFieldType;->seconds()Lorg/joda/time/DurationFieldType;

    .line 25
    .line 26
    .line 27
    move-result-object v9

    .line 28
    invoke-static {}, Lorg/joda/time/DurationFieldType;->millis()Lorg/joda/time/DurationFieldType;

    .line 29
    .line 30
    .line 31
    move-result-object v10

    .line 32
    const/4 v11, 0x5

    .line 33
    new-array v11, v11, [Lorg/joda/time/DurationFieldType;

    .line 34
    .line 35
    aput-object v6, v11, v4

    .line 36
    .line 37
    aput-object v7, v11, v3

    .line 38
    .line 39
    aput-object v8, v11, v2

    .line 40
    .line 41
    aput-object v9, v11, v1

    .line 42
    .line 43
    aput-object v10, v11, v0

    .line 44
    .line 45
    const/16 v0, 0x8

    .line 46
    .line 47
    new-array v0, v0, [I

    .line 48
    .line 49
    fill-array-data v0, :array_0

    .line 50
    .line 51
    .line 52
    const-string v1, "DayTime"

    .line 53
    .line 54
    invoke-direct {v5, v1, v11, v0}, Lorg/joda/time/PeriodType;-><init>(Ljava/lang/String;[Lorg/joda/time/DurationFieldType;[I)V

    .line 55
    .line 56
    .line 57
    sput-object v5, Lorg/joda/time/PeriodType;->Wwwwwwwwwwwwwwwww:Lorg/joda/time/PeriodType;

    .line 58
    .line 59
    :cond_0
    return-object v5

    .line 60
    nop

    .line 61
    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        0x0
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method public static days()Lorg/joda/time/PeriodType;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    sget-object v1, Lorg/joda/time/PeriodType;->Wwwwwwwwwwww:Lorg/joda/time/PeriodType;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    new-instance v1, Lorg/joda/time/PeriodType;

    .line 7
    .line 8
    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x1

    .line 13
    new-array v3, v3, [Lorg/joda/time/DurationFieldType;

    .line 14
    .line 15
    aput-object v2, v3, v0

    .line 16
    .line 17
    const/16 v0, 0x8

    .line 18
    .line 19
    new-array v0, v0, [I

    .line 20
    .line 21
    fill-array-data v0, :array_0

    .line 22
    .line 23
    .line 24
    const-string v2, "Days"

    .line 25
    .line 26
    invoke-direct {v1, v2, v3, v0}, Lorg/joda/time/PeriodType;-><init>(Ljava/lang/String;[Lorg/joda/time/DurationFieldType;[I)V

    .line 27
    .line 28
    .line 29
    sput-object v1, Lorg/joda/time/PeriodType;->Wwwwwwwwwwww:Lorg/joda/time/PeriodType;

    .line 30
    .line 31
    :cond_0
    return-object v1

    .line 32
    nop

    .line 33
    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public static declared-synchronized forFields([Lorg/joda/time/DurationFieldType;)Lorg/joda/time/PeriodType;
    .locals 6

    .line 1
    const-class v0, Lorg/joda/time/PeriodType;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-eqz p0, :cond_f

    .line 5
    .line 6
    :try_start_0
    array-length v1, p0

    .line 7
    if-eqz v1, :cond_f

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    array-length v2, p0

    .line 11
    if-ge v1, v2, :cond_1

    .line 12
    .line 13
    aget-object v2, p0, v1

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    const-string v1, "Types array must not contain null"

    .line 23
    .line 24
    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto/16 :goto_1

    .line 30
    .line 31
    :cond_1
    sget-object v1, Lorg/joda/time/PeriodType;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    invoke-static {}, Lorg/joda/time/PeriodType;->standard()Lorg/joda/time/PeriodType;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-static {}, Lorg/joda/time/PeriodType;->standard()Lorg/joda/time/PeriodType;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    invoke-static {}, Lorg/joda/time/PeriodType;->yearMonthDayTime()Lorg/joda/time/PeriodType;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-static {}, Lorg/joda/time/PeriodType;->yearMonthDayTime()Lorg/joda/time/PeriodType;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    invoke-static {}, Lorg/joda/time/PeriodType;->yearMonthDay()Lorg/joda/time/PeriodType;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-static {}, Lorg/joda/time/PeriodType;->yearMonthDay()Lorg/joda/time/PeriodType;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    invoke-static {}, Lorg/joda/time/PeriodType;->yearWeekDayTime()Lorg/joda/time/PeriodType;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-static {}, Lorg/joda/time/PeriodType;->yearWeekDayTime()Lorg/joda/time/PeriodType;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    invoke-static {}, Lorg/joda/time/PeriodType;->yearWeekDay()Lorg/joda/time/PeriodType;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-static {}, Lorg/joda/time/PeriodType;->yearWeekDay()Lorg/joda/time/PeriodType;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    invoke-static {}, Lorg/joda/time/PeriodType;->yearDayTime()Lorg/joda/time/PeriodType;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-static {}, Lorg/joda/time/PeriodType;->yearDayTime()Lorg/joda/time/PeriodType;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    invoke-static {}, Lorg/joda/time/PeriodType;->yearDay()Lorg/joda/time/PeriodType;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-static {}, Lorg/joda/time/PeriodType;->yearDay()Lorg/joda/time/PeriodType;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    invoke-static {}, Lorg/joda/time/PeriodType;->dayTime()Lorg/joda/time/PeriodType;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-static {}, Lorg/joda/time/PeriodType;->dayTime()Lorg/joda/time/PeriodType;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    invoke-static {}, Lorg/joda/time/PeriodType;->time()Lorg/joda/time/PeriodType;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-static {}, Lorg/joda/time/PeriodType;->time()Lorg/joda/time/PeriodType;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    invoke-static {}, Lorg/joda/time/PeriodType;->years()Lorg/joda/time/PeriodType;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-static {}, Lorg/joda/time/PeriodType;->years()Lorg/joda/time/PeriodType;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    invoke-static {}, Lorg/joda/time/PeriodType;->months()Lorg/joda/time/PeriodType;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-static {}, Lorg/joda/time/PeriodType;->months()Lorg/joda/time/PeriodType;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    invoke-static {}, Lorg/joda/time/PeriodType;->weeks()Lorg/joda/time/PeriodType;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    invoke-static {}, Lorg/joda/time/PeriodType;->weeks()Lorg/joda/time/PeriodType;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    invoke-static {}, Lorg/joda/time/PeriodType;->days()Lorg/joda/time/PeriodType;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    invoke-static {}, Lorg/joda/time/PeriodType;->days()Lorg/joda/time/PeriodType;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    invoke-static {}, Lorg/joda/time/PeriodType;->hours()Lorg/joda/time/PeriodType;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-static {}, Lorg/joda/time/PeriodType;->hours()Lorg/joda/time/PeriodType;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    invoke-static {}, Lorg/joda/time/PeriodType;->minutes()Lorg/joda/time/PeriodType;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    invoke-static {}, Lorg/joda/time/PeriodType;->minutes()Lorg/joda/time/PeriodType;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    invoke-static {}, Lorg/joda/time/PeriodType;->seconds()Lorg/joda/time/PeriodType;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    invoke-static {}, Lorg/joda/time/PeriodType;->seconds()Lorg/joda/time/PeriodType;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    invoke-static {}, Lorg/joda/time/PeriodType;->millis()Lorg/joda/time/PeriodType;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    invoke-static {}, Lorg/joda/time/PeriodType;->millis()Lorg/joda/time/PeriodType;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    :cond_2
    new-instance v2, Lorg/joda/time/PeriodType;

    .line 227
    .line 228
    const/4 v3, 0x0

    .line 229
    invoke-direct {v2, v3, p0, v3}, Lorg/joda/time/PeriodType;-><init>(Ljava/lang/String;[Lorg/joda/time/DurationFieldType;[I)V

    .line 230
    .line 231
    .line 232
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v4

    .line 236
    instance-of v5, v4, Lorg/joda/time/PeriodType;

    .line 237
    .line 238
    if-eqz v5, :cond_3

    .line 239
    .line 240
    check-cast v4, Lorg/joda/time/PeriodType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    .line 242
    monitor-exit v0

    .line 243
    return-object v4

    .line 244
    :cond_3
    if-nez v4, :cond_e

    .line 245
    .line 246
    :try_start_1
    invoke-static {}, Lorg/joda/time/PeriodType;->standard()Lorg/joda/time/PeriodType;

    .line 247
    .line 248
    .line 249
    move-result-object v4

    .line 250
    new-instance v5, Ljava/util/ArrayList;

    .line 251
    .line 252
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 253
    .line 254
    .line 255
    move-result-object p0

    .line 256
    invoke-direct {v5, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 257
    .line 258
    .line 259
    invoke-static {}, Lorg/joda/time/DurationFieldType;->years()Lorg/joda/time/DurationFieldType;

    .line 260
    .line 261
    .line 262
    move-result-object p0

    .line 263
    invoke-interface {v5, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result p0

    .line 267
    if-nez p0, :cond_4

    .line 268
    .line 269
    invoke-virtual {v4}, Lorg/joda/time/PeriodType;->withYearsRemoved()Lorg/joda/time/PeriodType;

    .line 270
    .line 271
    .line 272
    move-result-object v4

    .line 273
    :cond_4
    invoke-static {}, Lorg/joda/time/DurationFieldType;->months()Lorg/joda/time/DurationFieldType;

    .line 274
    .line 275
    .line 276
    move-result-object p0

    .line 277
    invoke-interface {v5, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move-result p0

    .line 281
    if-nez p0, :cond_5

    .line 282
    .line 283
    invoke-virtual {v4}, Lorg/joda/time/PeriodType;->withMonthsRemoved()Lorg/joda/time/PeriodType;

    .line 284
    .line 285
    .line 286
    move-result-object v4

    .line 287
    :cond_5
    invoke-static {}, Lorg/joda/time/DurationFieldType;->weeks()Lorg/joda/time/DurationFieldType;

    .line 288
    .line 289
    .line 290
    move-result-object p0

    .line 291
    invoke-interface {v5, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    move-result p0

    .line 295
    if-nez p0, :cond_6

    .line 296
    .line 297
    invoke-virtual {v4}, Lorg/joda/time/PeriodType;->withWeeksRemoved()Lorg/joda/time/PeriodType;

    .line 298
    .line 299
    .line 300
    move-result-object v4

    .line 301
    :cond_6
    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    .line 302
    .line 303
    .line 304
    move-result-object p0

    .line 305
    invoke-interface {v5, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result p0

    .line 309
    if-nez p0, :cond_7

    .line 310
    .line 311
    invoke-virtual {v4}, Lorg/joda/time/PeriodType;->withDaysRemoved()Lorg/joda/time/PeriodType;

    .line 312
    .line 313
    .line 314
    move-result-object v4

    .line 315
    :cond_7
    invoke-static {}, Lorg/joda/time/DurationFieldType;->hours()Lorg/joda/time/DurationFieldType;

    .line 316
    .line 317
    .line 318
    move-result-object p0

    .line 319
    invoke-interface {v5, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 320
    .line 321
    .line 322
    move-result p0

    .line 323
    if-nez p0, :cond_8

    .line 324
    .line 325
    invoke-virtual {v4}, Lorg/joda/time/PeriodType;->withHoursRemoved()Lorg/joda/time/PeriodType;

    .line 326
    .line 327
    .line 328
    move-result-object v4

    .line 329
    :cond_8
    invoke-static {}, Lorg/joda/time/DurationFieldType;->minutes()Lorg/joda/time/DurationFieldType;

    .line 330
    .line 331
    .line 332
    move-result-object p0

    .line 333
    invoke-interface {v5, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    move-result p0

    .line 337
    if-nez p0, :cond_9

    .line 338
    .line 339
    invoke-virtual {v4}, Lorg/joda/time/PeriodType;->withMinutesRemoved()Lorg/joda/time/PeriodType;

    .line 340
    .line 341
    .line 342
    move-result-object v4

    .line 343
    :cond_9
    invoke-static {}, Lorg/joda/time/DurationFieldType;->seconds()Lorg/joda/time/DurationFieldType;

    .line 344
    .line 345
    .line 346
    move-result-object p0

    .line 347
    invoke-interface {v5, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    move-result p0

    .line 351
    if-nez p0, :cond_a

    .line 352
    .line 353
    invoke-virtual {v4}, Lorg/joda/time/PeriodType;->withSecondsRemoved()Lorg/joda/time/PeriodType;

    .line 354
    .line 355
    .line 356
    move-result-object v4

    .line 357
    :cond_a
    invoke-static {}, Lorg/joda/time/DurationFieldType;->millis()Lorg/joda/time/DurationFieldType;

    .line 358
    .line 359
    .line 360
    move-result-object p0

    .line 361
    invoke-interface {v5, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 362
    .line 363
    .line 364
    move-result p0

    .line 365
    if-nez p0, :cond_b

    .line 366
    .line 367
    invoke-virtual {v4}, Lorg/joda/time/PeriodType;->withMillisRemoved()Lorg/joda/time/PeriodType;

    .line 368
    .line 369
    .line 370
    move-result-object v4

    .line 371
    :cond_b
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 372
    .line 373
    .line 374
    move-result p0

    .line 375
    if-gtz p0, :cond_d

    .line 376
    .line 377
    new-instance p0, Lorg/joda/time/PeriodType;

    .line 378
    .line 379
    iget-object v2, v4, Lorg/joda/time/PeriodType;->iTypes:[Lorg/joda/time/DurationFieldType;

    .line 380
    .line 381
    invoke-direct {p0, v3, v2, v3}, Lorg/joda/time/PeriodType;-><init>(Ljava/lang/String;[Lorg/joda/time/DurationFieldType;[I)V

    .line 382
    .line 383
    .line 384
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v2

    .line 388
    check-cast v2, Lorg/joda/time/PeriodType;

    .line 389
    .line 390
    if-eqz v2, :cond_c

    .line 391
    .line 392
    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 393
    .line 394
    .line 395
    monitor-exit v0

    .line 396
    return-object v2

    .line 397
    :cond_c
    :try_start_2
    invoke-interface {v1, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 398
    .line 399
    .line 400
    monitor-exit v0

    .line 401
    return-object v4

    .line 402
    :cond_d
    :try_start_3
    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 406
    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    .line 408
    .line 409
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 410
    .line 411
    .line 412
    const-string v2, "PeriodType does not support fields: "

    .line 413
    .line 414
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v1

    .line 424
    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    throw p0

    .line 428
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 429
    .line 430
    new-instance v1, Ljava/lang/StringBuilder;

    .line 431
    .line 432
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 433
    .line 434
    .line 435
    const-string v2, "PeriodType does not support fields: "

    .line 436
    .line 437
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v1

    .line 447
    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    throw p0

    .line 451
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 452
    .line 453
    const-string v1, "Types array must not be null or empty"

    .line 454
    .line 455
    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    throw p0

    .line 459
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 460
    throw p0
.end method

.method public static hours()Lorg/joda/time/PeriodType;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    sget-object v1, Lorg/joda/time/PeriodType;->Wwwwwwwwwww:Lorg/joda/time/PeriodType;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    new-instance v1, Lorg/joda/time/PeriodType;

    .line 7
    .line 8
    invoke-static {}, Lorg/joda/time/DurationFieldType;->hours()Lorg/joda/time/DurationFieldType;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x1

    .line 13
    new-array v3, v3, [Lorg/joda/time/DurationFieldType;

    .line 14
    .line 15
    aput-object v2, v3, v0

    .line 16
    .line 17
    const/16 v0, 0x8

    .line 18
    .line 19
    new-array v0, v0, [I

    .line 20
    .line 21
    fill-array-data v0, :array_0

    .line 22
    .line 23
    .line 24
    const-string v2, "Hours"

    .line 25
    .line 26
    invoke-direct {v1, v2, v3, v0}, Lorg/joda/time/PeriodType;-><init>(Ljava/lang/String;[Lorg/joda/time/DurationFieldType;[I)V

    .line 27
    .line 28
    .line 29
    sput-object v1, Lorg/joda/time/PeriodType;->Wwwwwwwwwww:Lorg/joda/time/PeriodType;

    .line 30
    .line 31
    :cond_0
    return-object v1

    .line 32
    nop

    .line 33
    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        0x0
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public static millis()Lorg/joda/time/PeriodType;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    sget-object v1, Lorg/joda/time/PeriodType;->Wwwwwwww:Lorg/joda/time/PeriodType;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    new-instance v1, Lorg/joda/time/PeriodType;

    .line 7
    .line 8
    invoke-static {}, Lorg/joda/time/DurationFieldType;->millis()Lorg/joda/time/DurationFieldType;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x1

    .line 13
    new-array v3, v3, [Lorg/joda/time/DurationFieldType;

    .line 14
    .line 15
    aput-object v2, v3, v0

    .line 16
    .line 17
    const/16 v0, 0x8

    .line 18
    .line 19
    new-array v0, v0, [I

    .line 20
    .line 21
    fill-array-data v0, :array_0

    .line 22
    .line 23
    .line 24
    const-string v2, "Millis"

    .line 25
    .line 26
    invoke-direct {v1, v2, v3, v0}, Lorg/joda/time/PeriodType;-><init>(Ljava/lang/String;[Lorg/joda/time/DurationFieldType;[I)V

    .line 27
    .line 28
    .line 29
    sput-object v1, Lorg/joda/time/PeriodType;->Wwwwwwww:Lorg/joda/time/PeriodType;

    .line 30
    .line 31
    :cond_0
    return-object v1

    .line 32
    nop

    .line 33
    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x0
    .end array-data
.end method

.method public static minutes()Lorg/joda/time/PeriodType;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    sget-object v1, Lorg/joda/time/PeriodType;->Wwwwwwwwww:Lorg/joda/time/PeriodType;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    new-instance v1, Lorg/joda/time/PeriodType;

    .line 7
    .line 8
    invoke-static {}, Lorg/joda/time/DurationFieldType;->minutes()Lorg/joda/time/DurationFieldType;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x1

    .line 13
    new-array v3, v3, [Lorg/joda/time/DurationFieldType;

    .line 14
    .line 15
    aput-object v2, v3, v0

    .line 16
    .line 17
    const/16 v0, 0x8

    .line 18
    .line 19
    new-array v0, v0, [I

    .line 20
    .line 21
    fill-array-data v0, :array_0

    .line 22
    .line 23
    .line 24
    const-string v2, "Minutes"

    .line 25
    .line 26
    invoke-direct {v1, v2, v3, v0}, Lorg/joda/time/PeriodType;-><init>(Ljava/lang/String;[Lorg/joda/time/DurationFieldType;[I)V

    .line 27
    .line 28
    .line 29
    sput-object v1, Lorg/joda/time/PeriodType;->Wwwwwwwwww:Lorg/joda/time/PeriodType;

    .line 30
    .line 31
    :cond_0
    return-object v1

    .line 32
    nop

    .line 33
    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x0
        -0x1
        -0x1
    .end array-data
.end method

.method public static months()Lorg/joda/time/PeriodType;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    sget-object v1, Lorg/joda/time/PeriodType;->Wwwwwwwwwwwwww:Lorg/joda/time/PeriodType;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    new-instance v1, Lorg/joda/time/PeriodType;

    .line 7
    .line 8
    invoke-static {}, Lorg/joda/time/DurationFieldType;->months()Lorg/joda/time/DurationFieldType;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x1

    .line 13
    new-array v3, v3, [Lorg/joda/time/DurationFieldType;

    .line 14
    .line 15
    aput-object v2, v3, v0

    .line 16
    .line 17
    const/16 v0, 0x8

    .line 18
    .line 19
    new-array v0, v0, [I

    .line 20
    .line 21
    fill-array-data v0, :array_0

    .line 22
    .line 23
    .line 24
    const-string v2, "Months"

    .line 25
    .line 26
    invoke-direct {v1, v2, v3, v0}, Lorg/joda/time/PeriodType;-><init>(Ljava/lang/String;[Lorg/joda/time/DurationFieldType;[I)V

    .line 27
    .line 28
    .line 29
    sput-object v1, Lorg/joda/time/PeriodType;->Wwwwwwwwwwwwww:Lorg/joda/time/PeriodType;

    .line 30
    .line 31
    :cond_0
    return-object v1

    .line 32
    nop

    .line 33
    :array_0
    .array-data 4
        -0x1
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public static seconds()Lorg/joda/time/PeriodType;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    sget-object v1, Lorg/joda/time/PeriodType;->Wwwwwwwww:Lorg/joda/time/PeriodType;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    new-instance v1, Lorg/joda/time/PeriodType;

    .line 7
    .line 8
    invoke-static {}, Lorg/joda/time/DurationFieldType;->seconds()Lorg/joda/time/DurationFieldType;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x1

    .line 13
    new-array v3, v3, [Lorg/joda/time/DurationFieldType;

    .line 14
    .line 15
    aput-object v2, v3, v0

    .line 16
    .line 17
    const/16 v0, 0x8

    .line 18
    .line 19
    new-array v0, v0, [I

    .line 20
    .line 21
    fill-array-data v0, :array_0

    .line 22
    .line 23
    .line 24
    const-string v2, "Seconds"

    .line 25
    .line 26
    invoke-direct {v1, v2, v3, v0}, Lorg/joda/time/PeriodType;-><init>(Ljava/lang/String;[Lorg/joda/time/DurationFieldType;[I)V

    .line 27
    .line 28
    .line 29
    sput-object v1, Lorg/joda/time/PeriodType;->Wwwwwwwww:Lorg/joda/time/PeriodType;

    .line 30
    .line 31
    :cond_0
    return-object v1

    .line 32
    nop

    .line 33
    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x0
        -0x1
    .end array-data
.end method

.method public static standard()Lorg/joda/time/PeriodType;
    .locals 19

    .line 1
    const/4 v1, 0x6

    .line 2
    const/4 v2, 0x5

    .line 3
    const/4 v3, 0x4

    .line 4
    const/4 v4, 0x3

    .line 5
    const/4 v5, 0x2

    .line 6
    const/4 v6, 0x1

    .line 7
    const/4 v7, 0x0

    .line 8
    const/16 v8, 0x8

    .line 9
    .line 10
    sget-object v9, Lorg/joda/time/PeriodType;->Wwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/PeriodType;

    .line 11
    .line 12
    if-nez v9, :cond_0

    .line 13
    .line 14
    new-instance v9, Lorg/joda/time/PeriodType;

    .line 15
    .line 16
    invoke-static {}, Lorg/joda/time/DurationFieldType;->years()Lorg/joda/time/DurationFieldType;

    .line 17
    .line 18
    .line 19
    move-result-object v10

    .line 20
    invoke-static {}, Lorg/joda/time/DurationFieldType;->months()Lorg/joda/time/DurationFieldType;

    .line 21
    .line 22
    .line 23
    move-result-object v11

    .line 24
    invoke-static {}, Lorg/joda/time/DurationFieldType;->weeks()Lorg/joda/time/DurationFieldType;

    .line 25
    .line 26
    .line 27
    move-result-object v12

    .line 28
    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    .line 29
    .line 30
    .line 31
    move-result-object v13

    .line 32
    invoke-static {}, Lorg/joda/time/DurationFieldType;->hours()Lorg/joda/time/DurationFieldType;

    .line 33
    .line 34
    .line 35
    move-result-object v14

    .line 36
    invoke-static {}, Lorg/joda/time/DurationFieldType;->minutes()Lorg/joda/time/DurationFieldType;

    .line 37
    .line 38
    .line 39
    move-result-object v15

    .line 40
    invoke-static {}, Lorg/joda/time/DurationFieldType;->seconds()Lorg/joda/time/DurationFieldType;

    .line 41
    .line 42
    .line 43
    move-result-object v16

    .line 44
    invoke-static {}, Lorg/joda/time/DurationFieldType;->millis()Lorg/joda/time/DurationFieldType;

    .line 45
    .line 46
    .line 47
    move-result-object v17

    .line 48
    const/16 v18, 0x7

    .line 49
    .line 50
    new-array v0, v8, [Lorg/joda/time/DurationFieldType;

    .line 51
    .line 52
    aput-object v10, v0, v7

    .line 53
    .line 54
    aput-object v11, v0, v6

    .line 55
    .line 56
    aput-object v12, v0, v5

    .line 57
    .line 58
    aput-object v13, v0, v4

    .line 59
    .line 60
    aput-object v14, v0, v3

    .line 61
    .line 62
    aput-object v15, v0, v2

    .line 63
    .line 64
    aput-object v16, v0, v1

    .line 65
    .line 66
    aput-object v17, v0, v18

    .line 67
    .line 68
    new-array v1, v8, [I

    .line 69
    .line 70
    fill-array-data v1, :array_0

    .line 71
    .line 72
    .line 73
    const-string v2, "Standard"

    .line 74
    .line 75
    invoke-direct {v9, v2, v0, v1}, Lorg/joda/time/PeriodType;-><init>(Ljava/lang/String;[Lorg/joda/time/DurationFieldType;[I)V

    .line 76
    .line 77
    .line 78
    sput-object v9, Lorg/joda/time/PeriodType;->Wwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/PeriodType;

    .line 79
    .line 80
    :cond_0
    return-object v9

    .line 81
    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method public static time()Lorg/joda/time/PeriodType;
    .locals 10

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x1

    .line 4
    const/4 v3, 0x0

    .line 5
    sget-object v4, Lorg/joda/time/PeriodType;->Wwwwwwwwwwwwwwww:Lorg/joda/time/PeriodType;

    .line 6
    .line 7
    if-nez v4, :cond_0

    .line 8
    .line 9
    new-instance v4, Lorg/joda/time/PeriodType;

    .line 10
    .line 11
    invoke-static {}, Lorg/joda/time/DurationFieldType;->hours()Lorg/joda/time/DurationFieldType;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    invoke-static {}, Lorg/joda/time/DurationFieldType;->minutes()Lorg/joda/time/DurationFieldType;

    .line 16
    .line 17
    .line 18
    move-result-object v6

    .line 19
    invoke-static {}, Lorg/joda/time/DurationFieldType;->seconds()Lorg/joda/time/DurationFieldType;

    .line 20
    .line 21
    .line 22
    move-result-object v7

    .line 23
    invoke-static {}, Lorg/joda/time/DurationFieldType;->millis()Lorg/joda/time/DurationFieldType;

    .line 24
    .line 25
    .line 26
    move-result-object v8

    .line 27
    const/4 v9, 0x4

    .line 28
    new-array v9, v9, [Lorg/joda/time/DurationFieldType;

    .line 29
    .line 30
    aput-object v5, v9, v3

    .line 31
    .line 32
    aput-object v6, v9, v2

    .line 33
    .line 34
    aput-object v7, v9, v1

    .line 35
    .line 36
    aput-object v8, v9, v0

    .line 37
    .line 38
    const/16 v0, 0x8

    .line 39
    .line 40
    new-array v0, v0, [I

    .line 41
    .line 42
    fill-array-data v0, :array_0

    .line 43
    .line 44
    .line 45
    const-string v1, "Time"

    .line 46
    .line 47
    invoke-direct {v4, v1, v9, v0}, Lorg/joda/time/PeriodType;-><init>(Ljava/lang/String;[Lorg/joda/time/DurationFieldType;[I)V

    .line 48
    .line 49
    .line 50
    sput-object v4, Lorg/joda/time/PeriodType;->Wwwwwwwwwwwwwwww:Lorg/joda/time/PeriodType;

    .line 51
    .line 52
    :cond_0
    return-object v4

    .line 53
    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        0x0
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public static weeks()Lorg/joda/time/PeriodType;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    sget-object v1, Lorg/joda/time/PeriodType;->Wwwwwwwwwwwww:Lorg/joda/time/PeriodType;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    new-instance v1, Lorg/joda/time/PeriodType;

    .line 7
    .line 8
    invoke-static {}, Lorg/joda/time/DurationFieldType;->weeks()Lorg/joda/time/DurationFieldType;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x1

    .line 13
    new-array v3, v3, [Lorg/joda/time/DurationFieldType;

    .line 14
    .line 15
    aput-object v2, v3, v0

    .line 16
    .line 17
    const/16 v0, 0x8

    .line 18
    .line 19
    new-array v0, v0, [I

    .line 20
    .line 21
    fill-array-data v0, :array_0

    .line 22
    .line 23
    .line 24
    const-string v2, "Weeks"

    .line 25
    .line 26
    invoke-direct {v1, v2, v3, v0}, Lorg/joda/time/PeriodType;-><init>(Ljava/lang/String;[Lorg/joda/time/DurationFieldType;[I)V

    .line 27
    .line 28
    .line 29
    sput-object v1, Lorg/joda/time/PeriodType;->Wwwwwwwwwwwww:Lorg/joda/time/PeriodType;

    .line 30
    .line 31
    :cond_0
    return-object v1

    .line 32
    nop

    .line 33
    :array_0
    .array-data 4
        -0x1
        -0x1
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public static yearDay()Lorg/joda/time/PeriodType;
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    sget-object v2, Lorg/joda/time/PeriodType;->Wwwwwwwwwwwwwwwwww:Lorg/joda/time/PeriodType;

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    new-instance v2, Lorg/joda/time/PeriodType;

    .line 8
    .line 9
    invoke-static {}, Lorg/joda/time/DurationFieldType;->years()Lorg/joda/time/DurationFieldType;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    const/4 v5, 0x2

    .line 18
    new-array v5, v5, [Lorg/joda/time/DurationFieldType;

    .line 19
    .line 20
    aput-object v3, v5, v1

    .line 21
    .line 22
    aput-object v4, v5, v0

    .line 23
    .line 24
    const/16 v0, 0x8

    .line 25
    .line 26
    new-array v0, v0, [I

    .line 27
    .line 28
    fill-array-data v0, :array_0

    .line 29
    .line 30
    .line 31
    const-string v1, "YearDay"

    .line 32
    .line 33
    invoke-direct {v2, v1, v5, v0}, Lorg/joda/time/PeriodType;-><init>(Ljava/lang/String;[Lorg/joda/time/DurationFieldType;[I)V

    .line 34
    .line 35
    .line 36
    sput-object v2, Lorg/joda/time/PeriodType;->Wwwwwwwwwwwwwwwwww:Lorg/joda/time/PeriodType;

    .line 37
    .line 38
    :cond_0
    return-object v2

    .line 39
    :array_0
    .array-data 4
        0x0
        -0x1
        -0x1
        0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public static yearDayTime()Lorg/joda/time/PeriodType;
    .locals 14

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x4

    .line 3
    const/4 v2, 0x3

    .line 4
    const/4 v3, 0x2

    .line 5
    const/4 v4, 0x1

    .line 6
    const/4 v5, 0x0

    .line 7
    sget-object v6, Lorg/joda/time/PeriodType;->Wwwwwwwwwwwwwwwwwww:Lorg/joda/time/PeriodType;

    .line 8
    .line 9
    if-nez v6, :cond_0

    .line 10
    .line 11
    new-instance v6, Lorg/joda/time/PeriodType;

    .line 12
    .line 13
    invoke-static {}, Lorg/joda/time/DurationFieldType;->years()Lorg/joda/time/DurationFieldType;

    .line 14
    .line 15
    .line 16
    move-result-object v7

    .line 17
    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    .line 18
    .line 19
    .line 20
    move-result-object v8

    .line 21
    invoke-static {}, Lorg/joda/time/DurationFieldType;->hours()Lorg/joda/time/DurationFieldType;

    .line 22
    .line 23
    .line 24
    move-result-object v9

    .line 25
    invoke-static {}, Lorg/joda/time/DurationFieldType;->minutes()Lorg/joda/time/DurationFieldType;

    .line 26
    .line 27
    .line 28
    move-result-object v10

    .line 29
    invoke-static {}, Lorg/joda/time/DurationFieldType;->seconds()Lorg/joda/time/DurationFieldType;

    .line 30
    .line 31
    .line 32
    move-result-object v11

    .line 33
    invoke-static {}, Lorg/joda/time/DurationFieldType;->millis()Lorg/joda/time/DurationFieldType;

    .line 34
    .line 35
    .line 36
    move-result-object v12

    .line 37
    const/4 v13, 0x6

    .line 38
    new-array v13, v13, [Lorg/joda/time/DurationFieldType;

    .line 39
    .line 40
    aput-object v7, v13, v5

    .line 41
    .line 42
    aput-object v8, v13, v4

    .line 43
    .line 44
    aput-object v9, v13, v3

    .line 45
    .line 46
    aput-object v10, v13, v2

    .line 47
    .line 48
    aput-object v11, v13, v1

    .line 49
    .line 50
    aput-object v12, v13, v0

    .line 51
    .line 52
    const/16 v0, 0x8

    .line 53
    .line 54
    new-array v0, v0, [I

    .line 55
    .line 56
    fill-array-data v0, :array_0

    .line 57
    .line 58
    .line 59
    const-string v1, "YearDayTime"

    .line 60
    .line 61
    invoke-direct {v6, v1, v13, v0}, Lorg/joda/time/PeriodType;-><init>(Ljava/lang/String;[Lorg/joda/time/DurationFieldType;[I)V

    .line 62
    .line 63
    .line 64
    sput-object v6, Lorg/joda/time/PeriodType;->Wwwwwwwwwwwwwwwwwww:Lorg/joda/time/PeriodType;

    .line 65
    .line 66
    :cond_0
    return-object v6

    .line 67
    :array_0
    .array-data 4
        0x0
        -0x1
        -0x1
        0x1
        0x2
        0x3
        0x4
        0x5
    .end array-data
.end method

.method public static yearMonthDay()Lorg/joda/time/PeriodType;
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    sget-object v3, Lorg/joda/time/PeriodType;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/PeriodType;

    .line 5
    .line 6
    if-nez v3, :cond_0

    .line 7
    .line 8
    new-instance v3, Lorg/joda/time/PeriodType;

    .line 9
    .line 10
    invoke-static {}, Lorg/joda/time/DurationFieldType;->years()Lorg/joda/time/DurationFieldType;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    invoke-static {}, Lorg/joda/time/DurationFieldType;->months()Lorg/joda/time/DurationFieldType;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    const/4 v7, 0x3

    .line 23
    new-array v7, v7, [Lorg/joda/time/DurationFieldType;

    .line 24
    .line 25
    aput-object v4, v7, v2

    .line 26
    .line 27
    aput-object v5, v7, v1

    .line 28
    .line 29
    aput-object v6, v7, v0

    .line 30
    .line 31
    const/16 v0, 0x8

    .line 32
    .line 33
    new-array v0, v0, [I

    .line 34
    .line 35
    fill-array-data v0, :array_0

    .line 36
    .line 37
    .line 38
    const-string v1, "YearMonthDay"

    .line 39
    .line 40
    invoke-direct {v3, v1, v7, v0}, Lorg/joda/time/PeriodType;-><init>(Ljava/lang/String;[Lorg/joda/time/DurationFieldType;[I)V

    .line 41
    .line 42
    .line 43
    sput-object v3, Lorg/joda/time/PeriodType;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/PeriodType;

    .line 44
    .line 45
    :cond_0
    return-object v3

    .line 46
    nop

    .line 47
    :array_0
    .array-data 4
        0x0
        0x1
        -0x1
        0x2
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public static yearMonthDayTime()Lorg/joda/time/PeriodType;
    .locals 16

    .line 1
    const/4 v0, 0x6

    .line 2
    const/4 v1, 0x5

    .line 3
    const/4 v2, 0x4

    .line 4
    const/4 v3, 0x3

    .line 5
    const/4 v4, 0x2

    .line 6
    const/4 v5, 0x1

    .line 7
    const/4 v6, 0x0

    .line 8
    sget-object v7, Lorg/joda/time/PeriodType;->Wwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/PeriodType;

    .line 9
    .line 10
    if-nez v7, :cond_0

    .line 11
    .line 12
    new-instance v7, Lorg/joda/time/PeriodType;

    .line 13
    .line 14
    invoke-static {}, Lorg/joda/time/DurationFieldType;->years()Lorg/joda/time/DurationFieldType;

    .line 15
    .line 16
    .line 17
    move-result-object v8

    .line 18
    invoke-static {}, Lorg/joda/time/DurationFieldType;->months()Lorg/joda/time/DurationFieldType;

    .line 19
    .line 20
    .line 21
    move-result-object v9

    .line 22
    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    .line 23
    .line 24
    .line 25
    move-result-object v10

    .line 26
    invoke-static {}, Lorg/joda/time/DurationFieldType;->hours()Lorg/joda/time/DurationFieldType;

    .line 27
    .line 28
    .line 29
    move-result-object v11

    .line 30
    invoke-static {}, Lorg/joda/time/DurationFieldType;->minutes()Lorg/joda/time/DurationFieldType;

    .line 31
    .line 32
    .line 33
    move-result-object v12

    .line 34
    invoke-static {}, Lorg/joda/time/DurationFieldType;->seconds()Lorg/joda/time/DurationFieldType;

    .line 35
    .line 36
    .line 37
    move-result-object v13

    .line 38
    invoke-static {}, Lorg/joda/time/DurationFieldType;->millis()Lorg/joda/time/DurationFieldType;

    .line 39
    .line 40
    .line 41
    move-result-object v14

    .line 42
    const/4 v15, 0x7

    .line 43
    new-array v15, v15, [Lorg/joda/time/DurationFieldType;

    .line 44
    .line 45
    aput-object v8, v15, v6

    .line 46
    .line 47
    aput-object v9, v15, v5

    .line 48
    .line 49
    aput-object v10, v15, v4

    .line 50
    .line 51
    aput-object v11, v15, v3

    .line 52
    .line 53
    aput-object v12, v15, v2

    .line 54
    .line 55
    aput-object v13, v15, v1

    .line 56
    .line 57
    aput-object v14, v15, v0

    .line 58
    .line 59
    const/16 v0, 0x8

    .line 60
    .line 61
    new-array v0, v0, [I

    .line 62
    .line 63
    fill-array-data v0, :array_0

    .line 64
    .line 65
    .line 66
    const-string v1, "YearMonthDayTime"

    .line 67
    .line 68
    invoke-direct {v7, v1, v15, v0}, Lorg/joda/time/PeriodType;-><init>(Ljava/lang/String;[Lorg/joda/time/DurationFieldType;[I)V

    .line 69
    .line 70
    .line 71
    sput-object v7, Lorg/joda/time/PeriodType;->Wwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/PeriodType;

    .line 72
    .line 73
    :cond_0
    return-object v7

    .line 74
    nop

    .line 75
    :array_0
    .array-data 4
        0x0
        0x1
        -0x1
        0x2
        0x3
        0x4
        0x5
        0x6
    .end array-data
.end method

.method public static yearWeekDay()Lorg/joda/time/PeriodType;
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    sget-object v3, Lorg/joda/time/PeriodType;->Wwwwwwwwwwwwwwwwwwww:Lorg/joda/time/PeriodType;

    .line 5
    .line 6
    if-nez v3, :cond_0

    .line 7
    .line 8
    new-instance v3, Lorg/joda/time/PeriodType;

    .line 9
    .line 10
    invoke-static {}, Lorg/joda/time/DurationFieldType;->years()Lorg/joda/time/DurationFieldType;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    invoke-static {}, Lorg/joda/time/DurationFieldType;->weeks()Lorg/joda/time/DurationFieldType;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    const/4 v7, 0x3

    .line 23
    new-array v7, v7, [Lorg/joda/time/DurationFieldType;

    .line 24
    .line 25
    aput-object v4, v7, v2

    .line 26
    .line 27
    aput-object v5, v7, v1

    .line 28
    .line 29
    aput-object v6, v7, v0

    .line 30
    .line 31
    const/16 v0, 0x8

    .line 32
    .line 33
    new-array v0, v0, [I

    .line 34
    .line 35
    fill-array-data v0, :array_0

    .line 36
    .line 37
    .line 38
    const-string v1, "YearWeekDay"

    .line 39
    .line 40
    invoke-direct {v3, v1, v7, v0}, Lorg/joda/time/PeriodType;-><init>(Ljava/lang/String;[Lorg/joda/time/DurationFieldType;[I)V

    .line 41
    .line 42
    .line 43
    sput-object v3, Lorg/joda/time/PeriodType;->Wwwwwwwwwwwwwwwwwwww:Lorg/joda/time/PeriodType;

    .line 44
    .line 45
    :cond_0
    return-object v3

    .line 46
    nop

    .line 47
    :array_0
    .array-data 4
        0x0
        -0x1
        0x1
        0x2
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public static yearWeekDayTime()Lorg/joda/time/PeriodType;
    .locals 16

    .line 1
    const/4 v0, 0x6

    .line 2
    const/4 v1, 0x5

    .line 3
    const/4 v2, 0x4

    .line 4
    const/4 v3, 0x3

    .line 5
    const/4 v4, 0x2

    .line 6
    const/4 v5, 0x1

    .line 7
    const/4 v6, 0x0

    .line 8
    sget-object v7, Lorg/joda/time/PeriodType;->Wwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/PeriodType;

    .line 9
    .line 10
    if-nez v7, :cond_0

    .line 11
    .line 12
    new-instance v7, Lorg/joda/time/PeriodType;

    .line 13
    .line 14
    invoke-static {}, Lorg/joda/time/DurationFieldType;->years()Lorg/joda/time/DurationFieldType;

    .line 15
    .line 16
    .line 17
    move-result-object v8

    .line 18
    invoke-static {}, Lorg/joda/time/DurationFieldType;->weeks()Lorg/joda/time/DurationFieldType;

    .line 19
    .line 20
    .line 21
    move-result-object v9

    .line 22
    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    .line 23
    .line 24
    .line 25
    move-result-object v10

    .line 26
    invoke-static {}, Lorg/joda/time/DurationFieldType;->hours()Lorg/joda/time/DurationFieldType;

    .line 27
    .line 28
    .line 29
    move-result-object v11

    .line 30
    invoke-static {}, Lorg/joda/time/DurationFieldType;->minutes()Lorg/joda/time/DurationFieldType;

    .line 31
    .line 32
    .line 33
    move-result-object v12

    .line 34
    invoke-static {}, Lorg/joda/time/DurationFieldType;->seconds()Lorg/joda/time/DurationFieldType;

    .line 35
    .line 36
    .line 37
    move-result-object v13

    .line 38
    invoke-static {}, Lorg/joda/time/DurationFieldType;->millis()Lorg/joda/time/DurationFieldType;

    .line 39
    .line 40
    .line 41
    move-result-object v14

    .line 42
    const/4 v15, 0x7

    .line 43
    new-array v15, v15, [Lorg/joda/time/DurationFieldType;

    .line 44
    .line 45
    aput-object v8, v15, v6

    .line 46
    .line 47
    aput-object v9, v15, v5

    .line 48
    .line 49
    aput-object v10, v15, v4

    .line 50
    .line 51
    aput-object v11, v15, v3

    .line 52
    .line 53
    aput-object v12, v15, v2

    .line 54
    .line 55
    aput-object v13, v15, v1

    .line 56
    .line 57
    aput-object v14, v15, v0

    .line 58
    .line 59
    const/16 v0, 0x8

    .line 60
    .line 61
    new-array v0, v0, [I

    .line 62
    .line 63
    fill-array-data v0, :array_0

    .line 64
    .line 65
    .line 66
    const-string v1, "YearWeekDayTime"

    .line 67
    .line 68
    invoke-direct {v7, v1, v15, v0}, Lorg/joda/time/PeriodType;-><init>(Ljava/lang/String;[Lorg/joda/time/DurationFieldType;[I)V

    .line 69
    .line 70
    .line 71
    sput-object v7, Lorg/joda/time/PeriodType;->Wwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/PeriodType;

    .line 72
    .line 73
    :cond_0
    return-object v7

    .line 74
    nop

    .line 75
    :array_0
    .array-data 4
        0x0
        -0x1
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
    .end array-data
.end method

.method public static years()Lorg/joda/time/PeriodType;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    sget-object v1, Lorg/joda/time/PeriodType;->Wwwwwwwwwwwwwww:Lorg/joda/time/PeriodType;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    new-instance v1, Lorg/joda/time/PeriodType;

    .line 7
    .line 8
    invoke-static {}, Lorg/joda/time/DurationFieldType;->years()Lorg/joda/time/DurationFieldType;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x1

    .line 13
    new-array v3, v3, [Lorg/joda/time/DurationFieldType;

    .line 14
    .line 15
    aput-object v2, v3, v0

    .line 16
    .line 17
    const/16 v0, 0x8

    .line 18
    .line 19
    new-array v0, v0, [I

    .line 20
    .line 21
    fill-array-data v0, :array_0

    .line 22
    .line 23
    .line 24
    const-string v2, "Years"

    .line 25
    .line 26
    invoke-direct {v1, v2, v3, v0}, Lorg/joda/time/PeriodType;-><init>(Ljava/lang/String;[Lorg/joda/time/DurationFieldType;[I)V

    .line 27
    .line 28
    .line 29
    sput-object v1, Lorg/joda/time/PeriodType;->Wwwwwwwwwwwwwww:Lorg/joda/time/PeriodType;

    .line 30
    .line 31
    :cond_0
    return-object v1

    .line 32
    nop

    .line 33
    :array_0
    .array-data 4
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ILjava/lang/String;)Lorg/joda/time/PeriodType;
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/joda/time/PeriodType;->iIndices:[I

    .line 2
    .line 3
    aget v0, v0, p1

    .line 4
    .line 5
    const/4 v1, -0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/PeriodType;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    add-int/lit8 v2, v2, -0x1

    .line 14
    .line 15
    new-array v2, v2, [Lorg/joda/time/DurationFieldType;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    move v4, v3

    .line 19
    :goto_0
    iget-object v5, p0, Lorg/joda/time/PeriodType;->iTypes:[Lorg/joda/time/DurationFieldType;

    .line 20
    .line 21
    array-length v6, v5

    .line 22
    if-ge v4, v6, :cond_3

    .line 23
    .line 24
    if-ge v4, v0, :cond_1

    .line 25
    .line 26
    aget-object v5, v5, v4

    .line 27
    .line 28
    aput-object v5, v2, v4

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    if-le v4, v0, :cond_2

    .line 32
    .line 33
    add-int/lit8 v6, v4, -0x1

    .line 34
    .line 35
    aget-object v5, v5, v4

    .line 36
    .line 37
    aput-object v5, v2, v6

    .line 38
    .line 39
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    const/16 v0, 0x8

    .line 43
    .line 44
    new-array v4, v0, [I

    .line 45
    .line 46
    :goto_2
    if-ge v3, v0, :cond_7

    .line 47
    .line 48
    if-ge v3, p1, :cond_4

    .line 49
    .line 50
    iget-object v5, p0, Lorg/joda/time/PeriodType;->iIndices:[I

    .line 51
    .line 52
    aget v5, v5, v3

    .line 53
    .line 54
    aput v5, v4, v3

    .line 55
    .line 56
    goto :goto_4

    .line 57
    :cond_4
    if-le v3, p1, :cond_6

    .line 58
    .line 59
    iget-object v5, p0, Lorg/joda/time/PeriodType;->iIndices:[I

    .line 60
    .line 61
    aget v5, v5, v3

    .line 62
    .line 63
    if-ne v5, v1, :cond_5

    .line 64
    .line 65
    move v5, v1

    .line 66
    goto :goto_3

    .line 67
    :cond_5
    add-int/lit8 v5, v5, -0x1

    .line 68
    .line 69
    :goto_3
    aput v5, v4, v3

    .line 70
    .line 71
    goto :goto_4

    .line 72
    :cond_6
    aput v1, v4, v3

    .line 73
    .line 74
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_7
    new-instance p1, Lorg/joda/time/PeriodType;

    .line 78
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lorg/joda/time/PeriodType;->getName()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-direct {p1, p2, v2, v4}, Lorg/joda/time/PeriodType;-><init>(Ljava/lang/String;[Lorg/joda/time/DurationFieldType;[I)V

    .line 99
    .line 100
    .line 101
    return-object p1
.end method

.method public addIndexedField(Lorg/joda/time/ReadablePeriod;I[II)Z
    .locals 0

    .line 1
    if-nez p4, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    iget-object p1, p0, Lorg/joda/time/PeriodType;->iIndices:[I

    .line 6
    .line 7
    aget p1, p1, p2

    .line 8
    .line 9
    const/4 p2, -0x1

    .line 10
    if-eq p1, p2, :cond_1

    .line 11
    .line 12
    aget p2, p3, p1

    .line 13
    .line 14
    invoke-static {p2, p4}, Lorg/joda/time/field/FieldUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(II)I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    aput p2, p3, p1

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    return p1

    .line 22
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 23
    .line 24
    const-string p2, "Field is not supported"

    .line 25
    .line 26
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    instance-of v0, p1, Lorg/joda/time/PeriodType;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_1
    check-cast p1, Lorg/joda/time/PeriodType;

    .line 12
    .line 13
    iget-object v0, p0, Lorg/joda/time/PeriodType;->iTypes:[Lorg/joda/time/DurationFieldType;

    .line 14
    .line 15
    iget-object p1, p1, Lorg/joda/time/PeriodType;->iTypes:[Lorg/joda/time/DurationFieldType;

    .line 16
    .line 17
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public getFieldType(I)Lorg/joda/time/DurationFieldType;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/PeriodType;->iTypes:[Lorg/joda/time/DurationFieldType;

    .line 2
    .line 3
    aget-object p1, v0, p1

    .line 4
    .line 5
    return-object p1
.end method

.method public getIndexedField(Lorg/joda/time/ReadablePeriod;I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/PeriodType;->iIndices:[I

    .line 2
    .line 3
    aget p2, v0, p2

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    if-ne p2, v0, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    return p1

    .line 10
    :cond_0
    invoke-interface {p1, p2}, Lorg/joda/time/ReadablePeriod;->getValue(I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/PeriodType;->iName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lorg/joda/time/PeriodType;->iTypes:[Lorg/joda/time/DurationFieldType;

    .line 4
    .line 5
    array-length v3, v2

    .line 6
    if-ge v0, v3, :cond_0

    .line 7
    .line 8
    aget-object v2, v2, v0

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    add-int/2addr v1, v2

    .line 15
    add-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return v1
.end method

.method public indexOf(Lorg/joda/time/DurationFieldType;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/PeriodType;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_1

    .line 7
    .line 8
    iget-object v2, p0, Lorg/joda/time/PeriodType;->iTypes:[Lorg/joda/time/DurationFieldType;

    .line 9
    .line 10
    aget-object v2, v2, v1

    .line 11
    .line 12
    if-ne v2, p1, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 p1, -0x1

    .line 19
    return p1
.end method

.method public isSupported(Lorg/joda/time/DurationFieldType;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/joda/time/PeriodType;->indexOf(Lorg/joda/time/DurationFieldType;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-ltz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    return p1
.end method

.method public setIndexedField(Lorg/joda/time/ReadablePeriod;I[II)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lorg/joda/time/PeriodType;->iIndices:[I

    .line 2
    .line 3
    aget p1, p1, p2

    .line 4
    .line 5
    const/4 p2, -0x1

    .line 6
    if-eq p1, p2, :cond_0

    .line 7
    .line 8
    aput p4, p3, p1

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    return p1

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string p2, "Field is not supported"

    .line 15
    .line 16
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p1
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/PeriodType;->iTypes:[Lorg/joda/time/DurationFieldType;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "PeriodType["

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/joda/time/PeriodType;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, "]"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method

.method public withDaysRemoved()Lorg/joda/time/PeriodType;
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    const-string v1, "NoDays"

    .line 3
    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/PeriodType;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ILjava/lang/String;)Lorg/joda/time/PeriodType;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public withHoursRemoved()Lorg/joda/time/PeriodType;
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    const-string v1, "NoHours"

    .line 3
    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/PeriodType;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ILjava/lang/String;)Lorg/joda/time/PeriodType;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public withMillisRemoved()Lorg/joda/time/PeriodType;
    .locals 2

    .line 1
    const/4 v0, 0x7

    .line 2
    const-string v1, "NoMillis"

    .line 3
    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/PeriodType;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ILjava/lang/String;)Lorg/joda/time/PeriodType;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public withMinutesRemoved()Lorg/joda/time/PeriodType;
    .locals 2

    .line 1
    const/4 v0, 0x5

    .line 2
    const-string v1, "NoMinutes"

    .line 3
    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/PeriodType;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ILjava/lang/String;)Lorg/joda/time/PeriodType;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public withMonthsRemoved()Lorg/joda/time/PeriodType;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "NoMonths"

    .line 3
    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/PeriodType;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ILjava/lang/String;)Lorg/joda/time/PeriodType;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public withSecondsRemoved()Lorg/joda/time/PeriodType;
    .locals 2

    .line 1
    const/4 v0, 0x6

    .line 2
    const-string v1, "NoSeconds"

    .line 3
    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/PeriodType;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ILjava/lang/String;)Lorg/joda/time/PeriodType;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public withWeeksRemoved()Lorg/joda/time/PeriodType;
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    const-string v1, "NoWeeks"

    .line 3
    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/PeriodType;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ILjava/lang/String;)Lorg/joda/time/PeriodType;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public withYearsRemoved()Lorg/joda/time/PeriodType;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "NoYears"

    .line 3
    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/PeriodType;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ILjava/lang/String;)Lorg/joda/time/PeriodType;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method
