.class abstract Lorg/joda/time/chrono/BasicChronology;
.super Lorg/joda/time/chrono/AssembledChronology;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/chrono/BasicChronology$YearInfo;,
        Lorg/joda/time/chrono/BasicChronology$HalfdayField;
    }
.end annotation


# static fields
.field public static final Illllllllllllllllllllll:Lorg/joda/time/DateTimeField;

.field public static final Illlllllllllllllllllllll:Lorg/joda/time/DateTimeField;

.field public static final Illllllllllllllllllllllll:Lorg/joda/time/DateTimeField;

.field public static final Illlllllllllllllllllllllll:Lorg/joda/time/DateTimeField;

.field public static final Illllllllllllllllllllllllll:Lorg/joda/time/DateTimeField;

.field public static final Illlllllllllllllllllllllllll:Lorg/joda/time/DateTimeField;

.field public static final Illllllllllllllllllllllllllll:Lorg/joda/time/DateTimeField;

.field public static final Kk:Lorg/joda/time/DateTimeField;

.field public static final Kkk:Lorg/joda/time/DateTimeField;

.field public static final Kkkk:Lorg/joda/time/DateTimeField;

.field public static final Kkkkk:Lorg/joda/time/DateTimeField;

.field public static final Kkkkkk:Lorg/joda/time/DurationField;

.field public static final Kkkkkkk:Lorg/joda/time/DurationField;

.field public static final Kkkkkkkk:Lorg/joda/time/DurationField;

.field public static final Kkkkkkkkk:Lorg/joda/time/DurationField;

.field public static final Kkkkkkkkkk:Lorg/joda/time/DurationField;

.field public static final Kkkkkkkkkkk:Lorg/joda/time/DurationField;

.field public static final Kkkkkkkkkkkk:Lorg/joda/time/DurationField;

.field private static final serialVersionUID:J = 0x72f3ed8da0b42f1fL


# instance fields
.field public final transient Kkkkkkkkkkkkk:[Lorg/joda/time/chrono/BasicChronology$YearInfo;

.field private final iMinDaysInFirstWeek:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    sget-object v0, Lorg/joda/time/field/MillisDurationField;->INSTANCE:Lorg/joda/time/DurationField;

    .line 2
    .line 3
    sput-object v0, Lorg/joda/time/chrono/BasicChronology;->Kkkkkkkkkkkk:Lorg/joda/time/DurationField;

    .line 4
    .line 5
    new-instance v1, Lorg/joda/time/field/PreciseDurationField;

    .line 6
    .line 7
    invoke-static {}, Lorg/joda/time/DurationFieldType;->seconds()Lorg/joda/time/DurationFieldType;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-wide/16 v3, 0x3e8

    .line 12
    .line 13
    invoke-direct {v1, v2, v3, v4}, Lorg/joda/time/field/PreciseDurationField;-><init>(Lorg/joda/time/DurationFieldType;J)V

    .line 14
    .line 15
    .line 16
    sput-object v1, Lorg/joda/time/chrono/BasicChronology;->Kkkkkkkkkkk:Lorg/joda/time/DurationField;

    .line 17
    .line 18
    new-instance v2, Lorg/joda/time/field/PreciseDurationField;

    .line 19
    .line 20
    invoke-static {}, Lorg/joda/time/DurationFieldType;->minutes()Lorg/joda/time/DurationFieldType;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const-wide/32 v4, 0xea60

    .line 25
    .line 26
    .line 27
    invoke-direct {v2, v3, v4, v5}, Lorg/joda/time/field/PreciseDurationField;-><init>(Lorg/joda/time/DurationFieldType;J)V

    .line 28
    .line 29
    .line 30
    sput-object v2, Lorg/joda/time/chrono/BasicChronology;->Kkkkkkkkkk:Lorg/joda/time/DurationField;

    .line 31
    .line 32
    new-instance v3, Lorg/joda/time/field/PreciseDurationField;

    .line 33
    .line 34
    invoke-static {}, Lorg/joda/time/DurationFieldType;->hours()Lorg/joda/time/DurationFieldType;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    const-wide/32 v5, 0x36ee80

    .line 39
    .line 40
    .line 41
    invoke-direct {v3, v4, v5, v6}, Lorg/joda/time/field/PreciseDurationField;-><init>(Lorg/joda/time/DurationFieldType;J)V

    .line 42
    .line 43
    .line 44
    sput-object v3, Lorg/joda/time/chrono/BasicChronology;->Kkkkkkkkk:Lorg/joda/time/DurationField;

    .line 45
    .line 46
    new-instance v4, Lorg/joda/time/field/PreciseDurationField;

    .line 47
    .line 48
    invoke-static {}, Lorg/joda/time/DurationFieldType;->halfdays()Lorg/joda/time/DurationFieldType;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    const-wide/32 v6, 0x2932e00

    .line 53
    .line 54
    .line 55
    invoke-direct {v4, v5, v6, v7}, Lorg/joda/time/field/PreciseDurationField;-><init>(Lorg/joda/time/DurationFieldType;J)V

    .line 56
    .line 57
    .line 58
    sput-object v4, Lorg/joda/time/chrono/BasicChronology;->Kkkkkkkk:Lorg/joda/time/DurationField;

    .line 59
    .line 60
    new-instance v5, Lorg/joda/time/field/PreciseDurationField;

    .line 61
    .line 62
    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    const-wide/32 v7, 0x5265c00

    .line 67
    .line 68
    .line 69
    invoke-direct {v5, v6, v7, v8}, Lorg/joda/time/field/PreciseDurationField;-><init>(Lorg/joda/time/DurationFieldType;J)V

    .line 70
    .line 71
    .line 72
    sput-object v5, Lorg/joda/time/chrono/BasicChronology;->Kkkkkkk:Lorg/joda/time/DurationField;

    .line 73
    .line 74
    new-instance v6, Lorg/joda/time/field/PreciseDurationField;

    .line 75
    .line 76
    invoke-static {}, Lorg/joda/time/DurationFieldType;->weeks()Lorg/joda/time/DurationFieldType;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    const-wide/32 v8, 0x240c8400

    .line 81
    .line 82
    .line 83
    invoke-direct {v6, v7, v8, v9}, Lorg/joda/time/field/PreciseDurationField;-><init>(Lorg/joda/time/DurationFieldType;J)V

    .line 84
    .line 85
    .line 86
    sput-object v6, Lorg/joda/time/chrono/BasicChronology;->Kkkkkk:Lorg/joda/time/DurationField;

    .line 87
    .line 88
    new-instance v6, Lorg/joda/time/field/PreciseDateTimeField;

    .line 89
    .line 90
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->millisOfSecond()Lorg/joda/time/DateTimeFieldType;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    invoke-direct {v6, v7, v0, v1}, Lorg/joda/time/field/PreciseDateTimeField;-><init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DurationField;Lorg/joda/time/DurationField;)V

    .line 95
    .line 96
    .line 97
    sput-object v6, Lorg/joda/time/chrono/BasicChronology;->Kkkkk:Lorg/joda/time/DateTimeField;

    .line 98
    .line 99
    new-instance v6, Lorg/joda/time/field/PreciseDateTimeField;

    .line 100
    .line 101
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->millisOfDay()Lorg/joda/time/DateTimeFieldType;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    invoke-direct {v6, v7, v0, v5}, Lorg/joda/time/field/PreciseDateTimeField;-><init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DurationField;Lorg/joda/time/DurationField;)V

    .line 106
    .line 107
    .line 108
    sput-object v6, Lorg/joda/time/chrono/BasicChronology;->Kkkk:Lorg/joda/time/DateTimeField;

    .line 109
    .line 110
    new-instance v0, Lorg/joda/time/field/PreciseDateTimeField;

    .line 111
    .line 112
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->secondOfMinute()Lorg/joda/time/DateTimeFieldType;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    invoke-direct {v0, v6, v1, v2}, Lorg/joda/time/field/PreciseDateTimeField;-><init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DurationField;Lorg/joda/time/DurationField;)V

    .line 117
    .line 118
    .line 119
    sput-object v0, Lorg/joda/time/chrono/BasicChronology;->Kkk:Lorg/joda/time/DateTimeField;

    .line 120
    .line 121
    new-instance v0, Lorg/joda/time/field/PreciseDateTimeField;

    .line 122
    .line 123
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->secondOfDay()Lorg/joda/time/DateTimeFieldType;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    invoke-direct {v0, v6, v1, v5}, Lorg/joda/time/field/PreciseDateTimeField;-><init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DurationField;Lorg/joda/time/DurationField;)V

    .line 128
    .line 129
    .line 130
    sput-object v0, Lorg/joda/time/chrono/BasicChronology;->Kk:Lorg/joda/time/DateTimeField;

    .line 131
    .line 132
    new-instance v0, Lorg/joda/time/field/PreciseDateTimeField;

    .line 133
    .line 134
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->minuteOfHour()Lorg/joda/time/DateTimeFieldType;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/field/PreciseDateTimeField;-><init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DurationField;Lorg/joda/time/DurationField;)V

    .line 139
    .line 140
    .line 141
    sput-object v0, Lorg/joda/time/chrono/BasicChronology;->Illllllllllllllllllllllllllll:Lorg/joda/time/DateTimeField;

    .line 142
    .line 143
    new-instance v0, Lorg/joda/time/field/PreciseDateTimeField;

    .line 144
    .line 145
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->minuteOfDay()Lorg/joda/time/DateTimeFieldType;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-direct {v0, v1, v2, v5}, Lorg/joda/time/field/PreciseDateTimeField;-><init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DurationField;Lorg/joda/time/DurationField;)V

    .line 150
    .line 151
    .line 152
    sput-object v0, Lorg/joda/time/chrono/BasicChronology;->Illlllllllllllllllllllllllll:Lorg/joda/time/DateTimeField;

    .line 153
    .line 154
    new-instance v0, Lorg/joda/time/field/PreciseDateTimeField;

    .line 155
    .line 156
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->hourOfDay()Lorg/joda/time/DateTimeFieldType;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-direct {v0, v1, v3, v5}, Lorg/joda/time/field/PreciseDateTimeField;-><init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DurationField;Lorg/joda/time/DurationField;)V

    .line 161
    .line 162
    .line 163
    sput-object v0, Lorg/joda/time/chrono/BasicChronology;->Illllllllllllllllllllllllll:Lorg/joda/time/DateTimeField;

    .line 164
    .line 165
    new-instance v1, Lorg/joda/time/field/PreciseDateTimeField;

    .line 166
    .line 167
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->hourOfHalfday()Lorg/joda/time/DateTimeFieldType;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    invoke-direct {v1, v2, v3, v4}, Lorg/joda/time/field/PreciseDateTimeField;-><init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DurationField;Lorg/joda/time/DurationField;)V

    .line 172
    .line 173
    .line 174
    sput-object v1, Lorg/joda/time/chrono/BasicChronology;->Illlllllllllllllllllllllll:Lorg/joda/time/DateTimeField;

    .line 175
    .line 176
    new-instance v2, Lorg/joda/time/field/ZeroIsMaxDateTimeField;

    .line 177
    .line 178
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->clockhourOfDay()Lorg/joda/time/DateTimeFieldType;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    invoke-direct {v2, v0, v3}, Lorg/joda/time/field/ZeroIsMaxDateTimeField;-><init>(Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeFieldType;)V

    .line 183
    .line 184
    .line 185
    sput-object v2, Lorg/joda/time/chrono/BasicChronology;->Illllllllllllllllllllllll:Lorg/joda/time/DateTimeField;

    .line 186
    .line 187
    new-instance v0, Lorg/joda/time/field/ZeroIsMaxDateTimeField;

    .line 188
    .line 189
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->clockhourOfHalfday()Lorg/joda/time/DateTimeFieldType;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    invoke-direct {v0, v1, v2}, Lorg/joda/time/field/ZeroIsMaxDateTimeField;-><init>(Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeFieldType;)V

    .line 194
    .line 195
    .line 196
    sput-object v0, Lorg/joda/time/chrono/BasicChronology;->Illlllllllllllllllllllll:Lorg/joda/time/DateTimeField;

    .line 197
    .line 198
    new-instance v0, Lorg/joda/time/chrono/BasicChronology$HalfdayField;

    .line 199
    .line 200
    invoke-direct {v0}, Lorg/joda/time/chrono/BasicChronology$HalfdayField;-><init>()V

    .line 201
    .line 202
    .line 203
    sput-object v0, Lorg/joda/time/chrono/BasicChronology;->Illllllllllllllllllllll:Lorg/joda/time/DateTimeField;

    .line 204
    .line 205
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/Chronology;Ljava/lang/Object;I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/joda/time/chrono/AssembledChronology;-><init>(Lorg/joda/time/Chronology;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    const/16 p1, 0x400

    .line 5
    .line 6
    new-array p1, p1, [Lorg/joda/time/chrono/BasicChronology$YearInfo;

    .line 7
    .line 8
    iput-object p1, p0, Lorg/joda/time/chrono/BasicChronology;->Kkkkkkkkkkkkk:[Lorg/joda/time/chrono/BasicChronology$YearInfo;

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    if-lt p3, p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x7

    .line 14
    if-gt p3, p1, :cond_0

    .line 15
    .line 16
    iput p3, p0, Lorg/joda/time/chrono/BasicChronology;->iMinDaysInFirstWeek:I

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    new-instance p2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v0, "Invalid min days in first week: "

    .line 27
    .line 28
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1
.end method

.method public static synthetic access$000()Lorg/joda/time/DurationField;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/chrono/BasicChronology;->Kkkkkkkk:Lorg/joda/time/DurationField;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$100()Lorg/joda/time/DurationField;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/chrono/BasicChronology;->Kkkkkkk:Lorg/joda/time/DurationField;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Lorg/joda/time/chrono/BasicChronology$YearInfo;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/joda/time/chrono/BasicChronology;->Kkkkkkkkkkkkk:[Lorg/joda/time/chrono/BasicChronology$YearInfo;

    .line 2
    .line 3
    and-int/lit16 v1, p1, 0x3ff

    .line 4
    .line 5
    aget-object v0, v0, v1

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget v2, v0, Lorg/joda/time/chrono/BasicChronology$YearInfo;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 10
    .line 11
    if-eq v2, p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    return-object v0

    .line 15
    :cond_1
    :goto_0
    new-instance v0, Lorg/joda/time/chrono/BasicChronology$YearInfo;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lorg/joda/time/chrono/BasicChronology;->calculateFirstDayOfYearMillis(I)J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    invoke-direct {v0, p1, v2, v3}, Lorg/joda/time/chrono/BasicChronology$YearInfo;-><init>(IJ)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lorg/joda/time/chrono/BasicChronology;->Kkkkkkkkkkkkk:[Lorg/joda/time/chrono/BasicChronology$YearInfo;

    .line 25
    .line 26
    aput-object v0, p1, v1

    .line 27
    .line 28
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(IIII)J
    .locals 6

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/joda/time/chrono/BasicChronology;->getDateMidnightMillis(III)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/high16 v2, -0x8000000000000000L

    .line 6
    .line 7
    cmp-long v4, v0, v2

    .line 8
    .line 9
    if-nez v4, :cond_0

    .line 10
    .line 11
    add-int/lit8 p3, p3, 0x1

    .line 12
    .line 13
    invoke-virtual {p0, p1, p2, p3}, Lorg/joda/time/chrono/BasicChronology;->getDateMidnightMillis(III)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    const p1, 0x5265c00

    .line 18
    .line 19
    .line 20
    sub-int/2addr p4, p1

    .line 21
    :cond_0
    int-to-long p1, p4

    .line 22
    add-long/2addr p1, v0

    .line 23
    const-wide/16 p3, 0x0

    .line 24
    .line 25
    cmp-long v4, p1, p3

    .line 26
    .line 27
    if-gez v4, :cond_1

    .line 28
    .line 29
    cmp-long v5, v0, p3

    .line 30
    .line 31
    if-lez v5, :cond_1

    .line 32
    .line 33
    const-wide p1, 0x7fffffffffffffffL

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    return-wide p1

    .line 39
    :cond_1
    if-lez v4, :cond_2

    .line 40
    .line 41
    cmp-long p3, v0, p3

    .line 42
    .line 43
    if-gez p3, :cond_2

    .line 44
    .line 45
    return-wide v2

    .line 46
    :cond_2
    return-wide p1
.end method

.method public assemble(Lorg/joda/time/chrono/AssembledChronology$Fields;)V
    .locals 6

    .line 1
    sget-object v0, Lorg/joda/time/chrono/BasicChronology;->Kkkkkkkkkkkk:Lorg/joda/time/DurationField;

    .line 2
    .line 3
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DurationField;

    .line 4
    .line 5
    sget-object v0, Lorg/joda/time/chrono/BasicChronology;->Kkkkkkkkkkk:Lorg/joda/time/DurationField;

    .line 6
    .line 7
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DurationField;

    .line 8
    .line 9
    sget-object v0, Lorg/joda/time/chrono/BasicChronology;->Kkkkkkkkkk:Lorg/joda/time/DurationField;

    .line 10
    .line 11
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DurationField;

    .line 12
    .line 13
    sget-object v0, Lorg/joda/time/chrono/BasicChronology;->Kkkkkkkkk:Lorg/joda/time/DurationField;

    .line 14
    .line 15
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DurationField;

    .line 16
    .line 17
    sget-object v0, Lorg/joda/time/chrono/BasicChronology;->Kkkkkkkk:Lorg/joda/time/DurationField;

    .line 18
    .line 19
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DurationField;

    .line 20
    .line 21
    sget-object v0, Lorg/joda/time/chrono/BasicChronology;->Kkkkkkk:Lorg/joda/time/DurationField;

    .line 22
    .line 23
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DurationField;

    .line 24
    .line 25
    sget-object v0, Lorg/joda/time/chrono/BasicChronology;->Kkkkkk:Lorg/joda/time/DurationField;

    .line 26
    .line 27
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DurationField;

    .line 28
    .line 29
    sget-object v0, Lorg/joda/time/chrono/BasicChronology;->Kkkkk:Lorg/joda/time/DateTimeField;

    .line 30
    .line 31
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 32
    .line 33
    sget-object v0, Lorg/joda/time/chrono/BasicChronology;->Kkkk:Lorg/joda/time/DateTimeField;

    .line 34
    .line 35
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 36
    .line 37
    sget-object v0, Lorg/joda/time/chrono/BasicChronology;->Kkk:Lorg/joda/time/DateTimeField;

    .line 38
    .line 39
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 40
    .line 41
    sget-object v0, Lorg/joda/time/chrono/BasicChronology;->Kk:Lorg/joda/time/DateTimeField;

    .line 42
    .line 43
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 44
    .line 45
    sget-object v0, Lorg/joda/time/chrono/BasicChronology;->Illllllllllllllllllllllllllll:Lorg/joda/time/DateTimeField;

    .line 46
    .line 47
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 48
    .line 49
    sget-object v0, Lorg/joda/time/chrono/BasicChronology;->Illlllllllllllllllllllllllll:Lorg/joda/time/DateTimeField;

    .line 50
    .line 51
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 52
    .line 53
    sget-object v0, Lorg/joda/time/chrono/BasicChronology;->Illllllllllllllllllllllllll:Lorg/joda/time/DateTimeField;

    .line 54
    .line 55
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 56
    .line 57
    sget-object v0, Lorg/joda/time/chrono/BasicChronology;->Illlllllllllllllllllllllll:Lorg/joda/time/DateTimeField;

    .line 58
    .line 59
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 60
    .line 61
    sget-object v0, Lorg/joda/time/chrono/BasicChronology;->Illllllllllllllllllllllll:Lorg/joda/time/DateTimeField;

    .line 62
    .line 63
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 64
    .line 65
    sget-object v0, Lorg/joda/time/chrono/BasicChronology;->Illlllllllllllllllllllll:Lorg/joda/time/DateTimeField;

    .line 66
    .line 67
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 68
    .line 69
    sget-object v0, Lorg/joda/time/chrono/BasicChronology;->Illllllllllllllllllllll:Lorg/joda/time/DateTimeField;

    .line 70
    .line 71
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 72
    .line 73
    new-instance v0, Lorg/joda/time/chrono/BasicYearDateTimeField;

    .line 74
    .line 75
    invoke-direct {v0, p0}, Lorg/joda/time/chrono/BasicYearDateTimeField;-><init>(Lorg/joda/time/chrono/BasicChronology;)V

    .line 76
    .line 77
    .line 78
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwww:Lorg/joda/time/DateTimeField;

    .line 79
    .line 80
    new-instance v1, Lorg/joda/time/chrono/GJYearOfEraDateTimeField;

    .line 81
    .line 82
    invoke-direct {v1, v0, p0}, Lorg/joda/time/chrono/GJYearOfEraDateTimeField;-><init>(Lorg/joda/time/DateTimeField;Lorg/joda/time/chrono/BasicChronology;)V

    .line 83
    .line 84
    .line 85
    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Www:Lorg/joda/time/DateTimeField;

    .line 86
    .line 87
    new-instance v0, Lorg/joda/time/field/OffsetDateTimeField;

    .line 88
    .line 89
    const/16 v2, 0x63

    .line 90
    .line 91
    invoke-direct {v0, v1, v2}, Lorg/joda/time/field/OffsetDateTimeField;-><init>(Lorg/joda/time/DateTimeField;I)V

    .line 92
    .line 93
    .line 94
    new-instance v1, Lorg/joda/time/field/DividedDateTimeField;

    .line 95
    .line 96
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->centuryOfEra()Lorg/joda/time/DateTimeFieldType;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    const/16 v3, 0x64

    .line 101
    .line 102
    invoke-direct {v1, v0, v2, v3}, Lorg/joda/time/field/DividedDateTimeField;-><init>(Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeFieldType;I)V

    .line 103
    .line 104
    .line 105
    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Kkkkkkkkkkkkkkkkkkkkkkkkk:Lorg/joda/time/DateTimeField;

    .line 106
    .line 107
    invoke-virtual {v1}, Lorg/joda/time/DateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DurationField;

    .line 112
    .line 113
    new-instance v0, Lorg/joda/time/field/RemainderDateTimeField;

    .line 114
    .line 115
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Kkkkkkkkkkkkkkkkkkkkkkkkk:Lorg/joda/time/DateTimeField;

    .line 116
    .line 117
    check-cast v1, Lorg/joda/time/field/DividedDateTimeField;

    .line 118
    .line 119
    invoke-direct {v0, v1}, Lorg/joda/time/field/RemainderDateTimeField;-><init>(Lorg/joda/time/field/DividedDateTimeField;)V

    .line 120
    .line 121
    .line 122
    new-instance v1, Lorg/joda/time/field/OffsetDateTimeField;

    .line 123
    .line 124
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->yearOfCentury()Lorg/joda/time/DateTimeFieldType;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    const/4 v4, 0x1

    .line 129
    invoke-direct {v1, v0, v2, v4}, Lorg/joda/time/field/OffsetDateTimeField;-><init>(Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeFieldType;I)V

    .line 130
    .line 131
    .line 132
    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Kkkkkkkkkkkkkkkkkkkkkkkkkk:Lorg/joda/time/DateTimeField;

    .line 133
    .line 134
    new-instance v0, Lorg/joda/time/chrono/GJEraDateTimeField;

    .line 135
    .line 136
    invoke-direct {v0, p0}, Lorg/joda/time/chrono/GJEraDateTimeField;-><init>(Lorg/joda/time/chrono/BasicChronology;)V

    .line 137
    .line 138
    .line 139
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Kkkkkkkkkkkkkkkkkkkkkkkk:Lorg/joda/time/DateTimeField;

    .line 140
    .line 141
    new-instance v0, Lorg/joda/time/chrono/GJDayOfWeekDateTimeField;

    .line 142
    .line 143
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DurationField;

    .line 144
    .line 145
    invoke-direct {v0, p0, v1}, Lorg/joda/time/chrono/GJDayOfWeekDateTimeField;-><init>(Lorg/joda/time/chrono/BasicChronology;Lorg/joda/time/DurationField;)V

    .line 146
    .line 147
    .line 148
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 149
    .line 150
    new-instance v0, Lorg/joda/time/chrono/BasicDayOfMonthDateTimeField;

    .line 151
    .line 152
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DurationField;

    .line 153
    .line 154
    invoke-direct {v0, p0, v1}, Lorg/joda/time/chrono/BasicDayOfMonthDateTimeField;-><init>(Lorg/joda/time/chrono/BasicChronology;Lorg/joda/time/DurationField;)V

    .line 155
    .line 156
    .line 157
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 158
    .line 159
    new-instance v0, Lorg/joda/time/chrono/BasicDayOfYearDateTimeField;

    .line 160
    .line 161
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DurationField;

    .line 162
    .line 163
    invoke-direct {v0, p0, v1}, Lorg/joda/time/chrono/BasicDayOfYearDateTimeField;-><init>(Lorg/joda/time/chrono/BasicChronology;Lorg/joda/time/DurationField;)V

    .line 164
    .line 165
    .line 166
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 167
    .line 168
    new-instance v0, Lorg/joda/time/chrono/GJMonthOfYearDateTimeField;

    .line 169
    .line 170
    invoke-direct {v0, p0}, Lorg/joda/time/chrono/GJMonthOfYearDateTimeField;-><init>(Lorg/joda/time/chrono/BasicChronology;)V

    .line 171
    .line 172
    .line 173
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwww:Lorg/joda/time/DateTimeField;

    .line 174
    .line 175
    new-instance v0, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;

    .line 176
    .line 177
    invoke-direct {v0, p0}, Lorg/joda/time/chrono/BasicWeekyearDateTimeField;-><init>(Lorg/joda/time/chrono/BasicChronology;)V

    .line 178
    .line 179
    .line 180
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwww:Lorg/joda/time/DateTimeField;

    .line 181
    .line 182
    new-instance v0, Lorg/joda/time/chrono/BasicWeekOfWeekyearDateTimeField;

    .line 183
    .line 184
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DurationField;

    .line 185
    .line 186
    invoke-direct {v0, p0, v1}, Lorg/joda/time/chrono/BasicWeekOfWeekyearDateTimeField;-><init>(Lorg/joda/time/chrono/BasicChronology;Lorg/joda/time/DurationField;)V

    .line 187
    .line 188
    .line 189
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwww:Lorg/joda/time/DateTimeField;

    .line 190
    .line 191
    new-instance v0, Lorg/joda/time/field/RemainderDateTimeField;

    .line 192
    .line 193
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwww:Lorg/joda/time/DateTimeField;

    .line 194
    .line 195
    iget-object v2, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DurationField;

    .line 196
    .line 197
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->weekyearOfCentury()Lorg/joda/time/DateTimeFieldType;

    .line 198
    .line 199
    .line 200
    move-result-object v5

    .line 201
    invoke-direct {v0, v1, v2, v5, v3}, Lorg/joda/time/field/RemainderDateTimeField;-><init>(Lorg/joda/time/DateTimeField;Lorg/joda/time/DurationField;Lorg/joda/time/DateTimeFieldType;I)V

    .line 202
    .line 203
    .line 204
    new-instance v1, Lorg/joda/time/field/OffsetDateTimeField;

    .line 205
    .line 206
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->weekyearOfCentury()Lorg/joda/time/DateTimeFieldType;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    invoke-direct {v1, v0, v2, v4}, Lorg/joda/time/field/OffsetDateTimeField;-><init>(Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeFieldType;I)V

    .line 211
    .line 212
    .line 213
    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwww:Lorg/joda/time/DateTimeField;

    .line 214
    .line 215
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwww:Lorg/joda/time/DateTimeField;

    .line 216
    .line 217
    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DurationField;

    .line 222
    .line 223
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwww:Lorg/joda/time/DateTimeField;

    .line 224
    .line 225
    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DurationField;

    .line 230
    .line 231
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwww:Lorg/joda/time/DateTimeField;

    .line 232
    .line 233
    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DurationField;

    .line 238
    .line 239
    return-void
.end method

.method public abstract calculateFirstDayOfYearMillis(I)J
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-ne v2, v3, :cond_1

    .line 17
    .line 18
    check-cast p1, Lorg/joda/time/chrono/BasicChronology;

    .line 19
    .line 20
    invoke-virtual {p0}, Lorg/joda/time/chrono/BasicChronology;->getMinimumDaysInFirstWeek()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-virtual {p1}, Lorg/joda/time/chrono/BasicChronology;->getMinimumDaysInFirstWeek()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-ne v2, v3, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Lorg/joda/time/chrono/BasicChronology;->getZone()Lorg/joda/time/DateTimeZone;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {p1}, Lorg/joda/time/chrono/BasicChronology;->getZone()Lorg/joda/time/DateTimeZone;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {v2, p1}, Lorg/joda/time/DateTimeZone;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    return v0

    .line 45
    :cond_1
    return v1
.end method

.method public abstract getApproxMillisAtEpochDividedByTwo()J
.end method

.method public abstract getAverageMillisPerMonth()J
.end method

.method public abstract getAverageMillisPerYear()J
.end method

.method public abstract getAverageMillisPerYearDividedByTwo()J
.end method

.method public getDateMidnightMillis(III)J
    .locals 6

    .line 1
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->year()Lorg/joda/time/DateTimeFieldType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lorg/joda/time/chrono/BasicChronology;->getMinYear()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    sub-int/2addr v1, v2

    .line 11
    invoke-virtual {p0}, Lorg/joda/time/chrono/BasicChronology;->getMaxYear()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    add-int/2addr v3, v2

    .line 16
    invoke-static {v0, p1, v1, v3}, Lorg/joda/time/field/FieldUtils;->Wwwwwwwwwwwwwwwwwwww(Lorg/joda/time/DateTimeFieldType;III)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->monthOfYear()Lorg/joda/time/DateTimeFieldType;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p0, p1}, Lorg/joda/time/chrono/BasicChronology;->getMaxMonth(I)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-static {v0, p2, v2, v1}, Lorg/joda/time/field/FieldUtils;->Wwwwwwwwwwwwwwwwwwww(Lorg/joda/time/DateTimeFieldType;III)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getDaysInYearMonth(II)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-lt p3, v2, :cond_2

    .line 35
    .line 36
    if-gt p3, v0, :cond_2

    .line 37
    .line 38
    invoke-virtual {p0, p1, p2, p3}, Lorg/joda/time/chrono/BasicChronology;->getYearMonthDayMillis(III)J

    .line 39
    .line 40
    .line 41
    move-result-wide p2

    .line 42
    const-wide/16 v0, 0x0

    .line 43
    .line 44
    cmp-long v0, p2, v0

    .line 45
    .line 46
    if-gez v0, :cond_0

    .line 47
    .line 48
    invoke-virtual {p0}, Lorg/joda/time/chrono/BasicChronology;->getMaxYear()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    add-int/2addr v1, v2

    .line 53
    if-ne p1, v1, :cond_0

    .line 54
    .line 55
    const-wide p1, 0x7fffffffffffffffL

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    return-wide p1

    .line 61
    :cond_0
    if-lez v0, :cond_1

    .line 62
    .line 63
    invoke-virtual {p0}, Lorg/joda/time/chrono/BasicChronology;->getMinYear()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    sub-int/2addr v0, v2

    .line 68
    if-ne p1, v0, :cond_1

    .line 69
    .line 70
    const-wide/high16 p1, -0x8000000000000000L

    .line 71
    .line 72
    return-wide p1

    .line 73
    :cond_1
    return-wide p2

    .line 74
    :cond_2
    move v1, v0

    .line 75
    new-instance v0, Lorg/joda/time/IllegalFieldValueException;

    .line 76
    .line 77
    move v3, v1

    .line 78
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfMonth()Lorg/joda/time/DateTimeFieldType;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object p3

    .line 86
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    const-string v5, "year: "

    .line 100
    .line 101
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string p1, " month: "

    .line 108
    .line 109
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    move-object v3, v2

    .line 120
    move-object v2, p3

    .line 121
    invoke-direct/range {v0 .. v5}, Lorg/joda/time/IllegalFieldValueException;-><init>(Lorg/joda/time/DateTimeFieldType;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw v0
.end method

.method public getDateTimeMillis(IIII)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/chrono/AssembledChronology;->getBase()Lorg/joda/time/Chronology;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/Chronology;->getDateTimeMillis(IIII)J

    move-result-wide p1

    return-wide p1

    .line 3
    :cond_0
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->millisOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x5265bff

    invoke-static {v0, p4, v1, v2}, Lorg/joda/time/field/FieldUtils;->Wwwwwwwwwwwwwwwwwwww(Lorg/joda/time/DateTimeFieldType;III)V

    .line 4
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/joda/time/chrono/BasicChronology;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(IIII)J

    move-result-wide p1

    return-wide p1
.end method

.method public getDateTimeMillis(IIIIIII)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lorg/joda/time/chrono/AssembledChronology;->getBase()Lorg/joda/time/Chronology;

    move-result-object v0

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    .line 6
    invoke-virtual/range {v0 .. v7}, Lorg/joda/time/Chronology;->getDateTimeMillis(IIIIIII)J

    move-result-wide p1

    return-wide p1

    :cond_0
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    .line 7
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->hourOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object p1

    const/16 p2, 0x17

    const/4 p3, 0x0

    invoke-static {p1, v4, p3, p2}, Lorg/joda/time/field/FieldUtils;->Wwwwwwwwwwwwwwwwwwww(Lorg/joda/time/DateTimeFieldType;III)V

    .line 8
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->minuteOfHour()Lorg/joda/time/DateTimeFieldType;

    move-result-object p1

    const/16 p2, 0x3b

    invoke-static {p1, v5, p3, p2}, Lorg/joda/time/field/FieldUtils;->Wwwwwwwwwwwwwwwwwwww(Lorg/joda/time/DateTimeFieldType;III)V

    .line 9
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->secondOfMinute()Lorg/joda/time/DateTimeFieldType;

    move-result-object p1

    invoke-static {p1, v6, p3, p2}, Lorg/joda/time/field/FieldUtils;->Wwwwwwwwwwwwwwwwwwww(Lorg/joda/time/DateTimeFieldType;III)V

    .line 10
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->millisOfSecond()Lorg/joda/time/DateTimeFieldType;

    move-result-object p1

    const/16 p2, 0x3e7

    invoke-static {p1, v7, p3, p2}, Lorg/joda/time/field/FieldUtils;->Wwwwwwwwwwwwwwwwwwww(Lorg/joda/time/DateTimeFieldType;III)V

    const p1, 0x36ee80

    mul-int p4, v4, p1

    const p1, 0xea60

    mul-int p5, v5, p1

    add-int/2addr p4, p5

    mul-int/lit16 p6, v6, 0x3e8

    add-int/2addr p4, p6

    add-int/2addr p4, v7

    int-to-long p1, p4

    long-to-int p1, p1

    .line 11
    invoke-virtual {p0, v1, v2, v3, p1}, Lorg/joda/time/chrono/BasicChronology;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(IIII)J

    move-result-wide p1

    return-wide p1
.end method

.method public getDayOfMonth(J)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getYear(J)I

    move-result v0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/chrono/BasicChronology;->getMonthOfYear(JI)I

    move-result v1

    .line 3
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/joda/time/chrono/BasicChronology;->getDayOfMonth(JII)I

    move-result p1

    return p1
.end method

.method public getDayOfMonth(JI)I
    .locals 1

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lorg/joda/time/chrono/BasicChronology;->getMonthOfYear(JI)I

    move-result v0

    .line 5
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/joda/time/chrono/BasicChronology;->getDayOfMonth(JII)I

    move-result p1

    return p1
.end method

.method public getDayOfMonth(JII)I
    .locals 2

    .line 6
    invoke-virtual {p0, p3}, Lorg/joda/time/chrono/BasicChronology;->getYearMillis(I)J

    move-result-wide v0

    .line 7
    invoke-virtual {p0, p3, p4}, Lorg/joda/time/chrono/BasicChronology;->getTotalMillisByYearMonth(II)J

    move-result-wide p3

    add-long/2addr v0, p3

    sub-long/2addr p1, v0

    const-wide/32 p3, 0x5265c00

    .line 8
    div-long/2addr p1, p3

    long-to-int p1, p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public getDayOfWeek(J)I
    .locals 7

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    const-wide/16 v1, 0x7

    .line 6
    .line 7
    const-wide/32 v3, 0x5265c00

    .line 8
    .line 9
    .line 10
    if-ltz v0, :cond_0

    .line 11
    .line 12
    div-long/2addr p1, v3

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-wide/32 v5, 0x5265bff

    .line 15
    .line 16
    .line 17
    sub-long/2addr p1, v5

    .line 18
    div-long/2addr p1, v3

    .line 19
    const-wide/16 v3, -0x3

    .line 20
    .line 21
    cmp-long v0, p1, v3

    .line 22
    .line 23
    if-gez v0, :cond_1

    .line 24
    .line 25
    const-wide/16 v3, 0x4

    .line 26
    .line 27
    add-long/2addr p1, v3

    .line 28
    rem-long/2addr p1, v1

    .line 29
    long-to-int p1, p1

    .line 30
    add-int/lit8 p1, p1, 0x7

    .line 31
    .line 32
    return p1

    .line 33
    :cond_1
    :goto_0
    const-wide/16 v3, 0x3

    .line 34
    .line 35
    add-long/2addr p1, v3

    .line 36
    rem-long/2addr p1, v1

    .line 37
    long-to-int p1, p1

    .line 38
    add-int/lit8 p1, p1, 0x1

    .line 39
    .line 40
    return p1
.end method

.method public getDayOfYear(J)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getYear(J)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/chrono/BasicChronology;->getDayOfYear(JI)I

    move-result p1

    return p1
.end method

.method public getDayOfYear(JI)I
    .locals 2

    .line 2
    invoke-virtual {p0, p3}, Lorg/joda/time/chrono/BasicChronology;->getYearMillis(I)J

    move-result-wide v0

    sub-long/2addr p1, v0

    const-wide/32 v0, 0x5265c00

    .line 3
    div-long/2addr p1, v0

    long-to-int p1, p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public getDaysInMonthMax()I
    .locals 1

    .line 1
    const/16 v0, 0x1f

    return v0
.end method

.method public abstract getDaysInMonthMax(I)I
.end method

.method public getDaysInMonthMax(J)I
    .locals 1

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getYear(J)I

    move-result v0

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/chrono/BasicChronology;->getMonthOfYear(JI)I

    move-result p1

    .line 4
    invoke-virtual {p0, v0, p1}, Lorg/joda/time/chrono/BasicChronology;->getDaysInYearMonth(II)I

    move-result p1

    return p1
.end method

.method public getDaysInMonthMaxForSet(JI)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getDaysInMonthMax(J)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public getDaysInYear(I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/joda/time/chrono/BasicChronology;->isLeapYear(I)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/16 p1, 0x16e

    .line 8
    .line 9
    return p1

    .line 10
    :cond_0
    const/16 p1, 0x16d

    .line 11
    .line 12
    return p1
.end method

.method public getDaysInYearMax()I
    .locals 1

    .line 1
    const/16 v0, 0x16e

    .line 2
    .line 3
    return v0
.end method

.method public abstract getDaysInYearMonth(II)I
.end method

.method public getFirstWeekOfYearMillis(I)J
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lorg/joda/time/chrono/BasicChronology;->getYearMillis(I)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/chrono/BasicChronology;->getDayOfWeek(J)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget v2, p0, Lorg/joda/time/chrono/BasicChronology;->iMinDaysInFirstWeek:I

    .line 10
    .line 11
    rsub-int/lit8 v2, v2, 0x8

    .line 12
    .line 13
    const-wide/32 v3, 0x5265c00

    .line 14
    .line 15
    .line 16
    if-le p1, v2, :cond_0

    .line 17
    .line 18
    rsub-int/lit8 p1, p1, 0x8

    .line 19
    .line 20
    int-to-long v5, p1

    .line 21
    mul-long/2addr v5, v3

    .line 22
    add-long/2addr v0, v5

    .line 23
    return-wide v0

    .line 24
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 25
    .line 26
    int-to-long v5, p1

    .line 27
    mul-long/2addr v5, v3

    .line 28
    sub-long/2addr v0, v5

    .line 29
    return-wide v0
.end method

.method public getMaxMonth()I
    .locals 1

    .line 1
    const/16 v0, 0xc

    return v0
.end method

.method public getMaxMonth(I)I
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/joda/time/chrono/BasicChronology;->getMaxMonth()I

    move-result p1

    return p1
.end method

.method public abstract getMaxYear()I
.end method

.method public getMillisOfDay(J)I
    .locals 5

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    const-wide/32 v1, 0x5265c00

    .line 6
    .line 7
    .line 8
    if-ltz v0, :cond_0

    .line 9
    .line 10
    rem-long/2addr p1, v1

    .line 11
    long-to-int p1, p1

    .line 12
    return p1

    .line 13
    :cond_0
    const-wide/16 v3, 0x1

    .line 14
    .line 15
    add-long/2addr p1, v3

    .line 16
    rem-long/2addr p1, v1

    .line 17
    long-to-int p1, p1

    .line 18
    const p2, 0x5265bff

    .line 19
    .line 20
    .line 21
    add-int/2addr p1, p2

    .line 22
    return p1
.end method

.method public abstract getMinYear()I
.end method

.method public getMinimumDaysInFirstWeek()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/joda/time/chrono/BasicChronology;->iMinDaysInFirstWeek:I

    .line 2
    .line 3
    return v0
.end method

.method public getMonthOfYear(J)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getYear(J)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/chrono/BasicChronology;->getMonthOfYear(JI)I

    move-result p1

    return p1
.end method

.method public abstract getMonthOfYear(JI)I
.end method

.method public abstract getTotalMillisByYearMonth(II)J
.end method

.method public getWeekOfWeekyear(J)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getYear(J)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/chrono/BasicChronology;->getWeekOfWeekyear(JI)I

    move-result p1

    return p1
.end method

.method public getWeekOfWeekyear(JI)I
    .locals 6

    .line 2
    invoke-virtual {p0, p3}, Lorg/joda/time/chrono/BasicChronology;->getFirstWeekOfYearMillis(I)J

    move-result-wide v0

    cmp-long v2, p1, v0

    const/4 v3, 0x1

    if-gez v2, :cond_0

    sub-int/2addr p3, v3

    .line 3
    invoke-virtual {p0, p3}, Lorg/joda/time/chrono/BasicChronology;->getWeeksInYear(I)I

    move-result p1

    return p1

    :cond_0
    add-int/2addr p3, v3

    .line 4
    invoke-virtual {p0, p3}, Lorg/joda/time/chrono/BasicChronology;->getFirstWeekOfYearMillis(I)J

    move-result-wide v4

    cmp-long p3, p1, v4

    if-ltz p3, :cond_1

    return v3

    :cond_1
    sub-long/2addr p1, v0

    const-wide/32 v0, 0x240c8400

    .line 5
    div-long/2addr p1, v0

    long-to-int p1, p1

    add-int/2addr p1, v3

    return p1
.end method

.method public getWeeksInYear(I)I
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lorg/joda/time/chrono/BasicChronology;->getFirstWeekOfYearMillis(I)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    add-int/lit8 p1, p1, 0x1

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lorg/joda/time/chrono/BasicChronology;->getFirstWeekOfYearMillis(I)J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    sub-long/2addr v2, v0

    .line 12
    const-wide/32 v0, 0x240c8400

    .line 13
    .line 14
    .line 15
    div-long/2addr v2, v0

    .line 16
    long-to-int p1, v2

    .line 17
    return p1
.end method

.method public getWeekyear(J)I
    .locals 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getYear(J)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/chrono/BasicChronology;->getWeekOfWeekyear(JI)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    const-wide/32 v0, 0x240c8400

    .line 13
    .line 14
    .line 15
    add-long/2addr p1, v0

    .line 16
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getYear(J)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1

    .line 21
    :cond_0
    const/16 v2, 0x33

    .line 22
    .line 23
    if-le v1, v2, :cond_1

    .line 24
    .line 25
    const-wide/32 v0, 0x48190800

    .line 26
    .line 27
    .line 28
    sub-long/2addr p1, v0

    .line 29
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getYear(J)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    return p1

    .line 34
    :cond_1
    return v0
.end method

.method public getYear(J)I
    .locals 9

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/chrono/BasicChronology;->getAverageMillisPerYearDividedByTwo()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const/4 v2, 0x1

    .line 6
    shr-long v3, p1, v2

    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/joda/time/chrono/BasicChronology;->getApproxMillisAtEpochDividedByTwo()J

    .line 9
    .line 10
    .line 11
    move-result-wide v5

    .line 12
    add-long/2addr v3, v5

    .line 13
    const-wide/16 v5, 0x0

    .line 14
    .line 15
    cmp-long v7, v3, v5

    .line 16
    .line 17
    if-gez v7, :cond_0

    .line 18
    .line 19
    sub-long/2addr v3, v0

    .line 20
    const-wide/16 v7, 0x1

    .line 21
    .line 22
    add-long/2addr v3, v7

    .line 23
    :cond_0
    div-long/2addr v3, v0

    .line 24
    long-to-int v0, v3

    .line 25
    invoke-virtual {p0, v0}, Lorg/joda/time/chrono/BasicChronology;->getYearMillis(I)J

    .line 26
    .line 27
    .line 28
    move-result-wide v3

    .line 29
    sub-long v7, p1, v3

    .line 30
    .line 31
    cmp-long v1, v7, v5

    .line 32
    .line 33
    if-gez v1, :cond_1

    .line 34
    .line 35
    add-int/lit8 v0, v0, -0x1

    .line 36
    .line 37
    return v0

    .line 38
    :cond_1
    const-wide v5, 0x757b12c00L

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    cmp-long v1, v7, v5

    .line 44
    .line 45
    if-ltz v1, :cond_3

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Lorg/joda/time/chrono/BasicChronology;->isLeapYear(I)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    const-wide v5, 0x75cd78800L

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    :cond_2
    add-long/2addr v3, v5

    .line 59
    cmp-long p1, v3, p1

    .line 60
    .line 61
    if-gtz p1, :cond_3

    .line 62
    .line 63
    add-int/2addr v0, v2

    .line 64
    :cond_3
    return v0
.end method

.method public abstract getYearDifference(JJ)J
.end method

.method public getYearMillis(I)J
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/joda/time/chrono/BasicChronology;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Lorg/joda/time/chrono/BasicChronology$YearInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-wide v0, p1, Lorg/joda/time/chrono/BasicChronology$YearInfo;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 6
    .line 7
    return-wide v0
.end method

.method public getYearMonthDayMillis(III)J
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lorg/joda/time/chrono/BasicChronology;->getYearMillis(I)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getTotalMillisByYearMonth(II)J

    .line 6
    .line 7
    .line 8
    move-result-wide p1

    .line 9
    add-long/2addr v0, p1

    .line 10
    add-int/lit8 p3, p3, -0x1

    .line 11
    .line 12
    int-to-long p1, p3

    .line 13
    const-wide/32 v2, 0x5265c00

    .line 14
    .line 15
    .line 16
    mul-long/2addr p1, v2

    .line 17
    add-long/2addr v0, p1

    .line 18
    return-wide v0
.end method

.method public getYearMonthMillis(II)J
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/joda/time/chrono/BasicChronology;->getYearMillis(I)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getTotalMillisByYearMonth(II)J

    .line 6
    .line 7
    .line 8
    move-result-wide p1

    .line 9
    add-long/2addr v0, p1

    .line 10
    return-wide v0
.end method

.method public getZone()Lorg/joda/time/DateTimeZone;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/chrono/AssembledChronology;->getBase()Lorg/joda/time/Chronology;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lorg/joda/time/Chronology;->getZone()Lorg/joda/time/DateTimeZone;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    .line 13
    .line 14
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    mul-int/lit8 v0, v0, 0xb

    .line 14
    .line 15
    invoke-virtual {p0}, Lorg/joda/time/chrono/BasicChronology;->getZone()Lorg/joda/time/DateTimeZone;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lorg/joda/time/DateTimeZone;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    add-int/2addr v0, v1

    .line 24
    invoke-virtual {p0}, Lorg/joda/time/chrono/BasicChronology;->getMinimumDaysInFirstWeek()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    add-int/2addr v0, v1

    .line 29
    return v0
.end method

.method public isLeapDay(J)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public abstract isLeapYear(I)Z
.end method

.method public abstract setYear(JI)J
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x3c

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/16 v2, 0x2e

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-ltz v2, :cond_0

    .line 23
    .line 24
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const/16 v1, 0x5b

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lorg/joda/time/chrono/BasicChronology;->getZone()Lorg/joda/time/DateTimeZone;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    invoke-virtual {v1}, Lorg/joda/time/DateTimeZone;->getID()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-virtual {p0}, Lorg/joda/time/chrono/BasicChronology;->getMinimumDaysInFirstWeek()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    const/4 v2, 0x4

    .line 56
    if-eq v1, v2, :cond_2

    .line 57
    .line 58
    const-string v1, ",mdfw="

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lorg/joda/time/chrono/BasicChronology;->getMinimumDaysInFirstWeek()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    :cond_2
    const/16 v1, 0x5d

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    return-object v0
.end method
