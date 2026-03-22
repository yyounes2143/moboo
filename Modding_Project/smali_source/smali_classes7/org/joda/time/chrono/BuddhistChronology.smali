.class public final Lorg/joda/time/chrono/BuddhistChronology;
.super Lorg/joda/time/chrono/AssembledChronology;
.source "Proguard"


# static fields
.field public static final BE:I = 0x1

.field public static final Kkkkkkkkkkk:Lorg/joda/time/chrono/BuddhistChronology;

.field public static final Kkkkkkkkkkkk:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Lorg/joda/time/DateTimeZone;",
            "Lorg/joda/time/chrono/BuddhistChronology;",
            ">;"
        }
    .end annotation
.end field

.field public static final Kkkkkkkkkkkkk:Lorg/joda/time/DateTimeField;

.field private static final serialVersionUID:J = -0x30383de30522ba0eL


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/joda/time/chrono/BasicSingleEraDateTimeField;

    .line 2
    .line 3
    const-string v1, "BE"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lorg/joda/time/chrono/BasicSingleEraDateTimeField;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lorg/joda/time/chrono/BuddhistChronology;->Kkkkkkkkkkkkk:Lorg/joda/time/DateTimeField;

    .line 9
    .line 10
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 11
    .line 12
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lorg/joda/time/chrono/BuddhistChronology;->Kkkkkkkkkkkk:Lj$/util/concurrent/ConcurrentHashMap;

    .line 16
    .line 17
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    .line 18
    .line 19
    invoke-static {v0}, Lorg/joda/time/chrono/BuddhistChronology;->getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/BuddhistChronology;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lorg/joda/time/chrono/BuddhistChronology;->Kkkkkkkkkkk:Lorg/joda/time/chrono/BuddhistChronology;

    .line 24
    .line 25
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/Chronology;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/joda/time/chrono/AssembledChronology;-><init>(Lorg/joda/time/Chronology;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getInstance()Lorg/joda/time/chrono/BuddhistChronology;
    .locals 1

    .line 1
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefault()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/BuddhistChronology;->getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/BuddhistChronology;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/BuddhistChronology;
    .locals 11

    if-nez p0, :cond_0

    .line 2
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefault()Lorg/joda/time/DateTimeZone;

    move-result-object p0

    .line 3
    :cond_0
    sget-object v0, Lorg/joda/time/chrono/BuddhistChronology;->Kkkkkkkkkkkk:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/joda/time/chrono/BuddhistChronology;

    if-nez v1, :cond_2

    .line 4
    new-instance v10, Lorg/joda/time/chrono/BuddhistChronology;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lorg/joda/time/chrono/GJChronology;->getInstance(Lorg/joda/time/DateTimeZone;Lorg/joda/time/ReadableInstant;)Lorg/joda/time/chrono/GJChronology;

    move-result-object v2

    invoke-direct {v10, v2, v1}, Lorg/joda/time/chrono/BuddhistChronology;-><init>(Lorg/joda/time/Chronology;Ljava/lang/Object;)V

    .line 5
    new-instance v2, Lorg/joda/time/DateTime;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v10}, Lorg/joda/time/DateTime;-><init>(IIIIIIILorg/joda/time/Chronology;)V

    .line 6
    new-instance v3, Lorg/joda/time/chrono/BuddhistChronology;

    invoke-static {v10, v2, v1}, Lorg/joda/time/chrono/LimitChronology;->getInstance(Lorg/joda/time/Chronology;Lorg/joda/time/ReadableDateTime;Lorg/joda/time/ReadableDateTime;)Lorg/joda/time/chrono/LimitChronology;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v3, v1, v2}, Lorg/joda/time/chrono/BuddhistChronology;-><init>(Lorg/joda/time/Chronology;Ljava/lang/Object;)V

    .line 7
    invoke-virtual {v0, p0, v3}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/joda/time/chrono/BuddhistChronology;

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    return-object v3

    :cond_2
    return-object v1
.end method

.method public static getInstanceUTC()Lorg/joda/time/chrono/BuddhistChronology;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/chrono/BuddhistChronology;->Kkkkkkkkkkk:Lorg/joda/time/chrono/BuddhistChronology;

    .line 2
    .line 3
    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/chrono/AssembledChronology;->getBase()Lorg/joda/time/Chronology;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lorg/joda/time/chrono/BuddhistChronology;->getInstanceUTC()Lorg/joda/time/chrono/BuddhistChronology;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lorg/joda/time/Chronology;->getZone()Lorg/joda/time/DateTimeZone;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lorg/joda/time/chrono/BuddhistChronology;->getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/BuddhistChronology;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method


# virtual methods
.method public assemble(Lorg/joda/time/chrono/AssembledChronology$Fields;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/chrono/AssembledChronology;->getParam()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lorg/joda/time/DurationFieldType;->eras()Lorg/joda/time/DurationFieldType;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lorg/joda/time/field/UnsupportedDurationField;->getInstance(Lorg/joda/time/DurationFieldType;)Lorg/joda/time/field/UnsupportedDurationField;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DurationField;

    .line 16
    .line 17
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwww:Lorg/joda/time/DateTimeField;

    .line 18
    .line 19
    new-instance v1, Lorg/joda/time/field/OffsetDateTimeField;

    .line 20
    .line 21
    new-instance v2, Lorg/joda/time/field/SkipUndoDateTimeField;

    .line 22
    .line 23
    invoke-direct {v2, p0, v0}, Lorg/joda/time/field/SkipUndoDateTimeField;-><init>(Lorg/joda/time/Chronology;Lorg/joda/time/DateTimeField;)V

    .line 24
    .line 25
    .line 26
    const/16 v0, 0x21f

    .line 27
    .line 28
    invoke-direct {v1, v2, v0}, Lorg/joda/time/field/OffsetDateTimeField;-><init>(Lorg/joda/time/DateTimeField;I)V

    .line 29
    .line 30
    .line 31
    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwww:Lorg/joda/time/DateTimeField;

    .line 32
    .line 33
    new-instance v2, Lorg/joda/time/field/DelegatedDateTimeField;

    .line 34
    .line 35
    iget-object v3, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DurationField;

    .line 36
    .line 37
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->yearOfEra()Lorg/joda/time/DateTimeFieldType;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-direct {v2, v1, v3, v4}, Lorg/joda/time/field/DelegatedDateTimeField;-><init>(Lorg/joda/time/DateTimeField;Lorg/joda/time/DurationField;Lorg/joda/time/DateTimeFieldType;)V

    .line 42
    .line 43
    .line 44
    iput-object v2, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Www:Lorg/joda/time/DateTimeField;

    .line 45
    .line 46
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwww:Lorg/joda/time/DateTimeField;

    .line 47
    .line 48
    new-instance v2, Lorg/joda/time/field/OffsetDateTimeField;

    .line 49
    .line 50
    new-instance v3, Lorg/joda/time/field/SkipUndoDateTimeField;

    .line 51
    .line 52
    invoke-direct {v3, p0, v1}, Lorg/joda/time/field/SkipUndoDateTimeField;-><init>(Lorg/joda/time/Chronology;Lorg/joda/time/DateTimeField;)V

    .line 53
    .line 54
    .line 55
    invoke-direct {v2, v3, v0}, Lorg/joda/time/field/OffsetDateTimeField;-><init>(Lorg/joda/time/DateTimeField;I)V

    .line 56
    .line 57
    .line 58
    iput-object v2, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwww:Lorg/joda/time/DateTimeField;

    .line 59
    .line 60
    new-instance v0, Lorg/joda/time/field/OffsetDateTimeField;

    .line 61
    .line 62
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Www:Lorg/joda/time/DateTimeField;

    .line 63
    .line 64
    const/16 v2, 0x63

    .line 65
    .line 66
    invoke-direct {v0, v1, v2}, Lorg/joda/time/field/OffsetDateTimeField;-><init>(Lorg/joda/time/DateTimeField;I)V

    .line 67
    .line 68
    .line 69
    new-instance v1, Lorg/joda/time/field/DividedDateTimeField;

    .line 70
    .line 71
    iget-object v2, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DurationField;

    .line 72
    .line 73
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->centuryOfEra()Lorg/joda/time/DateTimeFieldType;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    const/16 v4, 0x64

    .line 78
    .line 79
    invoke-direct {v1, v0, v2, v3, v4}, Lorg/joda/time/field/DividedDateTimeField;-><init>(Lorg/joda/time/DateTimeField;Lorg/joda/time/DurationField;Lorg/joda/time/DateTimeFieldType;I)V

    .line 80
    .line 81
    .line 82
    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Kkkkkkkkkkkkkkkkkkkkkkkkk:Lorg/joda/time/DateTimeField;

    .line 83
    .line 84
    invoke-virtual {v1}, Lorg/joda/time/DateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DurationField;

    .line 89
    .line 90
    new-instance v0, Lorg/joda/time/field/RemainderDateTimeField;

    .line 91
    .line 92
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Kkkkkkkkkkkkkkkkkkkkkkkkk:Lorg/joda/time/DateTimeField;

    .line 93
    .line 94
    check-cast v1, Lorg/joda/time/field/DividedDateTimeField;

    .line 95
    .line 96
    invoke-direct {v0, v1}, Lorg/joda/time/field/RemainderDateTimeField;-><init>(Lorg/joda/time/field/DividedDateTimeField;)V

    .line 97
    .line 98
    .line 99
    new-instance v1, Lorg/joda/time/field/OffsetDateTimeField;

    .line 100
    .line 101
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->yearOfCentury()Lorg/joda/time/DateTimeFieldType;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    const/4 v3, 0x1

    .line 106
    invoke-direct {v1, v0, v2, v3}, Lorg/joda/time/field/OffsetDateTimeField;-><init>(Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeFieldType;I)V

    .line 107
    .line 108
    .line 109
    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Kkkkkkkkkkkkkkkkkkkkkkkkkk:Lorg/joda/time/DateTimeField;

    .line 110
    .line 111
    new-instance v0, Lorg/joda/time/field/RemainderDateTimeField;

    .line 112
    .line 113
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwww:Lorg/joda/time/DateTimeField;

    .line 114
    .line 115
    iget-object v2, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DurationField;

    .line 116
    .line 117
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->weekyearOfCentury()Lorg/joda/time/DateTimeFieldType;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    invoke-direct {v0, v1, v2, v5, v4}, Lorg/joda/time/field/RemainderDateTimeField;-><init>(Lorg/joda/time/DateTimeField;Lorg/joda/time/DurationField;Lorg/joda/time/DateTimeFieldType;I)V

    .line 122
    .line 123
    .line 124
    new-instance v1, Lorg/joda/time/field/OffsetDateTimeField;

    .line 125
    .line 126
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->weekyearOfCentury()Lorg/joda/time/DateTimeFieldType;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-direct {v1, v0, v2, v3}, Lorg/joda/time/field/OffsetDateTimeField;-><init>(Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeFieldType;I)V

    .line 131
    .line 132
    .line 133
    iput-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwww:Lorg/joda/time/DateTimeField;

    .line 134
    .line 135
    sget-object v0, Lorg/joda/time/chrono/BuddhistChronology;->Kkkkkkkkkkkkk:Lorg/joda/time/DateTimeField;

    .line 136
    .line 137
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Kkkkkkkkkkkkkkkkkkkkkkkk:Lorg/joda/time/DateTimeField;

    .line 138
    .line 139
    :cond_0
    return-void
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
    instance-of v0, p1, Lorg/joda/time/chrono/BuddhistChronology;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    check-cast p1, Lorg/joda/time/chrono/BuddhistChronology;

    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/joda/time/chrono/AssembledChronology;->getZone()Lorg/joda/time/DateTimeZone;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1}, Lorg/joda/time/chrono/AssembledChronology;->getZone()Lorg/joda/time/DateTimeZone;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v0, p1}, Lorg/joda/time/DateTimeZone;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1

    .line 24
    :cond_1
    const/4 p1, 0x0

    .line 25
    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/chrono/AssembledChronology;->getZone()Lorg/joda/time/DateTimeZone;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/joda/time/DateTimeZone;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const v1, 0x1dc28427

    .line 10
    .line 11
    .line 12
    add-int/2addr v1, v0

    .line 13
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/chrono/AssembledChronology;->getZone()Lorg/joda/time/DateTimeZone;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "BuddhistChronology"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const/16 v1, 0x5b

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lorg/joda/time/DateTimeZone;->getID()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const/16 v0, 0x5d

    .line 30
    .line 31
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    return-object v0

    .line 39
    :cond_0
    return-object v1
.end method

.method public withUTC()Lorg/joda/time/Chronology;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/chrono/BuddhistChronology;->Kkkkkkkkkkk:Lorg/joda/time/chrono/BuddhistChronology;

    .line 2
    .line 3
    return-object v0
.end method

.method public withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefault()Lorg/joda/time/DateTimeZone;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/chrono/AssembledChronology;->getZone()Lorg/joda/time/DateTimeZone;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-ne p1, v0, :cond_1

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_1
    invoke-static {p1}, Lorg/joda/time/chrono/BuddhistChronology;->getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/BuddhistChronology;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method
