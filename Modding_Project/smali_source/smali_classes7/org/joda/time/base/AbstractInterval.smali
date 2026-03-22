.class public abstract Lorg/joda/time/base/AbstractInterval;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lorg/joda/time/ReadableInterval;


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


# virtual methods
.method public checkInterval(JJ)V
    .locals 0

    .line 1
    cmp-long p1, p3, p1

    .line 2
    .line 3
    if-ltz p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 7
    .line 8
    const-string p2, "The end instant must be greater than the start instant"

    .line 9
    .line 10
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public contains(J)Z
    .locals 4

    .line 1
    invoke-interface {p0}, Lorg/joda/time/ReadableInterval;->getStartMillis()J

    move-result-wide v0

    .line 2
    invoke-interface {p0}, Lorg/joda/time/ReadableInterval;->getEndMillis()J

    move-result-wide v2

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    cmp-long p1, p1, v2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public contains(Lorg/joda/time/ReadableInstant;)Z
    .locals 2

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->containsNow()Z

    move-result p1

    return p1

    .line 4
    :cond_0
    invoke-interface {p1}, Lorg/joda/time/ReadableInstant;->getMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/base/AbstractInterval;->contains(J)Z

    move-result p1

    return p1
.end method

.method public contains(Lorg/joda/time/ReadableInterval;)Z
    .locals 8

    if-nez p1, :cond_0

    .line 5
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->containsNow()Z

    move-result p1

    return p1

    .line 6
    :cond_0
    invoke-interface {p1}, Lorg/joda/time/ReadableInterval;->getStartMillis()J

    move-result-wide v0

    .line 7
    invoke-interface {p1}, Lorg/joda/time/ReadableInterval;->getEndMillis()J

    move-result-wide v2

    .line 8
    invoke-interface {p0}, Lorg/joda/time/ReadableInterval;->getStartMillis()J

    move-result-wide v4

    .line 9
    invoke-interface {p0}, Lorg/joda/time/ReadableInterval;->getEndMillis()J

    move-result-wide v6

    cmp-long p1, v4, v0

    if-gtz p1, :cond_1

    cmp-long p1, v0, v6

    if-gez p1, :cond_1

    cmp-long p1, v2, v6

    if-gtz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public containsNow()Z
    .locals 2

    .line 1
    invoke-static {}, Lorg/joda/time/DateTimeUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/base/AbstractInterval;->contains(J)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lorg/joda/time/ReadableInterval;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lorg/joda/time/ReadableInterval;

    .line 12
    .line 13
    invoke-interface {p0}, Lorg/joda/time/ReadableInterval;->getStartMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v3

    .line 17
    invoke-interface {p1}, Lorg/joda/time/ReadableInterval;->getStartMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v5

    .line 21
    cmp-long v1, v3, v5

    .line 22
    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    invoke-interface {p0}, Lorg/joda/time/ReadableInterval;->getEndMillis()J

    .line 26
    .line 27
    .line 28
    move-result-wide v3

    .line 29
    invoke-interface {p1}, Lorg/joda/time/ReadableInterval;->getEndMillis()J

    .line 30
    .line 31
    .line 32
    move-result-wide v5

    .line 33
    cmp-long v1, v3, v5

    .line 34
    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    invoke-interface {p0}, Lorg/joda/time/ReadableInterval;->getChronology()Lorg/joda/time/Chronology;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-interface {p1}, Lorg/joda/time/ReadableInterval;->getChronology()Lorg/joda/time/Chronology;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {v1, p1}, Lorg/joda/time/field/FieldUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    return v0

    .line 52
    :cond_2
    return v2
.end method

.method public getEnd()Lorg/joda/time/DateTime;
    .locals 4

    .line 1
    new-instance v0, Lorg/joda/time/DateTime;

    .line 2
    .line 3
    invoke-interface {p0}, Lorg/joda/time/ReadableInterval;->getEndMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-interface {p0}, Lorg/joda/time/ReadableInterval;->getChronology()Lorg/joda/time/Chronology;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/DateTime;-><init>(JLorg/joda/time/Chronology;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public getStart()Lorg/joda/time/DateTime;
    .locals 4

    .line 1
    new-instance v0, Lorg/joda/time/DateTime;

    .line 2
    .line 3
    invoke-interface {p0}, Lorg/joda/time/ReadableInterval;->getStartMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-interface {p0}, Lorg/joda/time/ReadableInterval;->getChronology()Lorg/joda/time/Chronology;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/DateTime;-><init>(JLorg/joda/time/Chronology;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .line 1
    invoke-interface {p0}, Lorg/joda/time/ReadableInterval;->getStartMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-interface {p0}, Lorg/joda/time/ReadableInterval;->getEndMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    const/16 v4, 0x20

    .line 10
    .line 11
    ushr-long v5, v0, v4

    .line 12
    .line 13
    xor-long/2addr v0, v5

    .line 14
    long-to-int v0, v0

    .line 15
    const/16 v1, 0xbbf

    .line 16
    .line 17
    add-int/2addr v1, v0

    .line 18
    mul-int/lit8 v1, v1, 0x1f

    .line 19
    .line 20
    ushr-long v4, v2, v4

    .line 21
    .line 22
    xor-long/2addr v2, v4

    .line 23
    long-to-int v0, v2

    .line 24
    add-int/2addr v1, v0

    .line 25
    mul-int/lit8 v1, v1, 0x1f

    .line 26
    .line 27
    invoke-interface {p0}, Lorg/joda/time/ReadableInterval;->getChronology()Lorg/joda/time/Chronology;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    add-int/2addr v1, v0

    .line 36
    return v1
.end method

.method public isAfter(J)Z
    .locals 2

    .line 1
    invoke-interface {p0}, Lorg/joda/time/ReadableInterval;->getStartMillis()J

    move-result-wide v0

    cmp-long p1, v0, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isAfter(Lorg/joda/time/ReadableInstant;)Z
    .locals 2

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->isAfterNow()Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-interface {p1}, Lorg/joda/time/ReadableInstant;->getMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/base/AbstractInterval;->isAfter(J)Z

    move-result p1

    return p1
.end method

.method public isAfter(Lorg/joda/time/ReadableInterval;)Z
    .locals 4

    if-nez p1, :cond_0

    .line 4
    invoke-static {}, Lorg/joda/time/DateTimeUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()J

    move-result-wide v0

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p1}, Lorg/joda/time/ReadableInterval;->getEndMillis()J

    move-result-wide v0

    .line 6
    :goto_0
    invoke-interface {p0}, Lorg/joda/time/ReadableInterval;->getStartMillis()J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-ltz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isAfterNow()Z
    .locals 2

    .line 1
    invoke-static {}, Lorg/joda/time/DateTimeUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/base/AbstractInterval;->isAfter(J)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public isBefore(J)Z
    .locals 2

    .line 1
    invoke-interface {p0}, Lorg/joda/time/ReadableInterval;->getEndMillis()J

    move-result-wide v0

    cmp-long p1, v0, p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isBefore(Lorg/joda/time/ReadableInstant;)Z
    .locals 2

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->isBeforeNow()Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-interface {p1}, Lorg/joda/time/ReadableInstant;->getMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/base/AbstractInterval;->isBefore(J)Z

    move-result p1

    return p1
.end method

.method public isBefore(Lorg/joda/time/ReadableInterval;)Z
    .locals 2

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->isBeforeNow()Z

    move-result p1

    return p1

    .line 5
    :cond_0
    invoke-interface {p1}, Lorg/joda/time/ReadableInterval;->getStartMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/base/AbstractInterval;->isBefore(J)Z

    move-result p1

    return p1
.end method

.method public isBeforeNow()Z
    .locals 2

    .line 1
    invoke-static {}, Lorg/joda/time/DateTimeUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/base/AbstractInterval;->isBefore(J)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public isEqual(Lorg/joda/time/ReadableInterval;)Z
    .locals 4

    .line 1
    invoke-interface {p0}, Lorg/joda/time/ReadableInterval;->getStartMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-interface {p1}, Lorg/joda/time/ReadableInterval;->getStartMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    cmp-long v0, v0, v2

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Lorg/joda/time/ReadableInterval;->getEndMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    invoke-interface {p1}, Lorg/joda/time/ReadableInterval;->getEndMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    cmp-long p1, v0, v2

    .line 22
    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    return p1

    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    return p1
.end method

.method public overlaps(Lorg/joda/time/ReadableInterval;)Z
    .locals 10

    .line 1
    invoke-interface {p0}, Lorg/joda/time/ReadableInterval;->getStartMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-interface {p0}, Lorg/joda/time/ReadableInterval;->getEndMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x1

    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    invoke-static {}, Lorg/joda/time/DateTimeUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 14
    .line 15
    .line 16
    move-result-wide v6

    .line 17
    cmp-long p1, v0, v6

    .line 18
    .line 19
    if-gez p1, :cond_0

    .line 20
    .line 21
    cmp-long p1, v6, v2

    .line 22
    .line 23
    if-gez p1, :cond_0

    .line 24
    .line 25
    return v5

    .line 26
    :cond_0
    return v4

    .line 27
    :cond_1
    invoke-interface {p1}, Lorg/joda/time/ReadableInterval;->getStartMillis()J

    .line 28
    .line 29
    .line 30
    move-result-wide v6

    .line 31
    invoke-interface {p1}, Lorg/joda/time/ReadableInterval;->getEndMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide v8

    .line 35
    cmp-long p1, v0, v8

    .line 36
    .line 37
    if-gez p1, :cond_2

    .line 38
    .line 39
    cmp-long p1, v6, v2

    .line 40
    .line 41
    if-gez p1, :cond_2

    .line 42
    .line 43
    return v5

    .line 44
    :cond_2
    return v4
.end method

.method public toDuration()Lorg/joda/time/Duration;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractInterval;->toDurationMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v2, v0, v2

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    sget-object v0, Lorg/joda/time/Duration;->ZERO:Lorg/joda/time/Duration;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    new-instance v2, Lorg/joda/time/Duration;

    .line 15
    .line 16
    invoke-direct {v2, v0, v1}, Lorg/joda/time/Duration;-><init>(J)V

    .line 17
    .line 18
    .line 19
    return-object v2
.end method

.method public toDurationMillis()J
    .locals 4

    .line 1
    invoke-interface {p0}, Lorg/joda/time/ReadableInterval;->getEndMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-interface {p0}, Lorg/joda/time/ReadableInterval;->getStartMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    invoke-static {v0, v1, v2, v3}, Lorg/joda/time/field/FieldUtils;->Wwwwwwwwwwwwwwwwwwwwwww(JJ)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public toInterval()Lorg/joda/time/Interval;
    .locals 6

    .line 1
    new-instance v0, Lorg/joda/time/Interval;

    .line 2
    .line 3
    invoke-interface {p0}, Lorg/joda/time/ReadableInterval;->getStartMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-interface {p0}, Lorg/joda/time/ReadableInterval;->getEndMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v3

    .line 11
    invoke-interface {p0}, Lorg/joda/time/ReadableInterval;->getChronology()Lorg/joda/time/Chronology;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    invoke-direct/range {v0 .. v5}, Lorg/joda/time/Interval;-><init>(JJLorg/joda/time/Chronology;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public toMutableInterval()Lorg/joda/time/MutableInterval;
    .locals 6

    .line 1
    new-instance v0, Lorg/joda/time/MutableInterval;

    .line 2
    .line 3
    invoke-interface {p0}, Lorg/joda/time/ReadableInterval;->getStartMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-interface {p0}, Lorg/joda/time/ReadableInterval;->getEndMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v3

    .line 11
    invoke-interface {p0}, Lorg/joda/time/ReadableInterval;->getChronology()Lorg/joda/time/Chronology;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    invoke-direct/range {v0 .. v5}, Lorg/joda/time/MutableInterval;-><init>(JJLorg/joda/time/Chronology;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public toPeriod()Lorg/joda/time/Period;
    .locals 6

    .line 1
    new-instance v0, Lorg/joda/time/Period;

    invoke-interface {p0}, Lorg/joda/time/ReadableInterval;->getStartMillis()J

    move-result-wide v1

    invoke-interface {p0}, Lorg/joda/time/ReadableInterval;->getEndMillis()J

    move-result-wide v3

    invoke-interface {p0}, Lorg/joda/time/ReadableInterval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/Period;-><init>(JJLorg/joda/time/Chronology;)V

    return-object v0
.end method

.method public toPeriod(Lorg/joda/time/PeriodType;)Lorg/joda/time/Period;
    .locals 7

    .line 2
    new-instance v0, Lorg/joda/time/Period;

    invoke-interface {p0}, Lorg/joda/time/ReadableInterval;->getStartMillis()J

    move-result-wide v1

    invoke-interface {p0}, Lorg/joda/time/ReadableInterval;->getEndMillis()J

    move-result-wide v3

    invoke-interface {p0}, Lorg/joda/time/ReadableInterval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v6

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lorg/joda/time/Period;-><init>(JJLorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Lorg/joda/time/format/DateTimeFormatter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p0}, Lorg/joda/time/ReadableInterval;->getChronology()Lorg/joda/time/Chronology;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatter;->Wwwwwwwwwwwwww(Lorg/joda/time/Chronology;)Lorg/joda/time/format/DateTimeFormatter;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Ljava/lang/StringBuffer;

    .line 14
    .line 15
    const/16 v2, 0x30

    .line 16
    .line 17
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p0}, Lorg/joda/time/ReadableInterval;->getStartMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    invoke-virtual {v0, v1, v2, v3}, Lorg/joda/time/format/DateTimeFormatter;->Wwwwwwwwwwwwwwwwww(Ljava/lang/StringBuffer;J)V

    .line 25
    .line 26
    .line 27
    const/16 v2, 0x2f

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 30
    .line 31
    .line 32
    invoke-interface {p0}, Lorg/joda/time/ReadableInterval;->getEndMillis()J

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    invoke-virtual {v0, v1, v2, v3}, Lorg/joda/time/format/DateTimeFormatter;->Wwwwwwwwwwwwwwwwww(Ljava/lang/StringBuffer;J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    return-object v0
.end method
