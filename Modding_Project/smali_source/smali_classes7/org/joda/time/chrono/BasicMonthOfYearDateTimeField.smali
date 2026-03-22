.class Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;
.super Lorg/joda/time/field/ImpreciseDateTimeField;
.source "Proguard"


# instance fields
.field public final Wwwwwwwwwwwwwwwwwwww:I

.field public final Wwwwwwwwwwwwwwwwwwwww:I

.field public final Wwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/chrono/BasicChronology;


# direct methods
.method public constructor <init>(Lorg/joda/time/chrono/BasicChronology;I)V
    .locals 3

    .line 1
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->monthOfYear()Lorg/joda/time/DateTimeFieldType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lorg/joda/time/chrono/BasicChronology;->getAverageMillisPerMonth()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-direct {p0, v0, v1, v2}, Lorg/joda/time/field/ImpreciseDateTimeField;-><init>(Lorg/joda/time/DateTimeFieldType;J)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/chrono/BasicChronology;

    .line 13
    .line 14
    invoke-virtual {p1}, Lorg/joda/time/chrono/BasicChronology;->getMaxMonth()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iput p1, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->Wwwwwwwwwwwwwwwwwwwww:I

    .line 19
    .line 20
    iput p2, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->Wwwwwwwwwwwwwwwwwwww:I

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public add(JI)J
    .locals 9

    if-nez p3, :cond_0

    return-wide p1

    .line 1
    :cond_0
    iget-object v0, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getMillisOfDay(J)I

    move-result v0

    int-to-long v0, v0

    .line 2
    iget-object v2, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v2, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getYear(J)I

    move-result v2

    .line 3
    iget-object v3, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v3, p1, p2, v2}, Lorg/joda/time/chrono/BasicChronology;->getMonthOfYear(JI)I

    move-result v3

    add-int/lit8 v4, v3, -0x1

    add-int v5, v4, p3

    if-lez v3, :cond_2

    if-gez v5, :cond_2

    .line 4
    iget v5, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->Wwwwwwwwwwwwwwwwwwwww:I

    add-int/2addr v5, p3

    int-to-float v5, v5

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v5

    int-to-float v6, p3

    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v6

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1

    add-int/lit8 v5, v2, -0x1

    .line 5
    iget v6, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->Wwwwwwwwwwwwwwwwwwwww:I

    add-int/2addr p3, v6

    goto :goto_0

    :cond_1
    add-int/lit8 v5, v2, 0x1

    .line 6
    iget v6, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->Wwwwwwwwwwwwwwwwwwwww:I

    sub-int/2addr p3, v6

    :goto_0
    add-int/2addr p3, v4

    move v8, v5

    move v5, p3

    move p3, v8

    goto :goto_1

    :cond_2
    move p3, v2

    :goto_1
    const/4 v4, 0x1

    if-ltz v5, :cond_3

    .line 7
    iget v6, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->Wwwwwwwwwwwwwwwwwwwww:I

    div-int v7, v5, v6

    add-int/2addr p3, v7

    .line 8
    rem-int/2addr v5, v6

    add-int/2addr v5, v4

    goto :goto_2

    .line 9
    :cond_3
    iget v6, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->Wwwwwwwwwwwwwwwwwwwww:I

    div-int v6, v5, v6

    add-int/2addr p3, v6

    add-int/lit8 v6, p3, -0x1

    .line 10
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 11
    iget v7, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->Wwwwwwwwwwwwwwwwwwwww:I

    rem-int/2addr v5, v7

    if-nez v5, :cond_4

    move v5, v7

    :cond_4
    sub-int/2addr v7, v5

    add-int/lit8 v5, v7, 0x1

    if-ne v5, v4, :cond_5

    goto :goto_2

    :cond_5
    move p3, v6

    .line 12
    :goto_2
    iget-object v4, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v4, p1, p2, v2, v3}, Lorg/joda/time/chrono/BasicChronology;->getDayOfMonth(JII)I

    move-result p1

    .line 13
    iget-object p2, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {p2, p3, v5}, Lorg/joda/time/chrono/BasicChronology;->getDaysInYearMonth(II)I

    move-result p2

    if-le p1, p2, :cond_6

    move p1, p2

    .line 14
    :cond_6
    iget-object p2, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/chrono/BasicChronology;

    .line 15
    invoke-virtual {p2, p3, v5, p1}, Lorg/joda/time/chrono/BasicChronology;->getYearMonthDayMillis(III)J

    move-result-wide p1

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public add(JJ)J
    .locals 20

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    long-to-int v5, v3

    int-to-long v6, v5

    cmp-long v6, v6, v3

    if-nez v6, :cond_0

    .line 16
    invoke-virtual {v0, v1, v2, v5}, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->add(JI)J

    move-result-wide v1

    return-wide v1

    .line 17
    :cond_0
    iget-object v5, v0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v5, v1, v2}, Lorg/joda/time/chrono/BasicChronology;->getMillisOfDay(J)I

    move-result v5

    int-to-long v5, v5

    .line 18
    iget-object v7, v0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v7, v1, v2}, Lorg/joda/time/chrono/BasicChronology;->getYear(J)I

    move-result v7

    .line 19
    iget-object v8, v0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v8, v1, v2, v7}, Lorg/joda/time/chrono/BasicChronology;->getMonthOfYear(JI)I

    move-result v8

    add-int/lit8 v9, v8, -0x1

    int-to-long v9, v9

    add-long/2addr v9, v3

    const-wide/16 v11, 0x0

    cmp-long v11, v9, v11

    if-ltz v11, :cond_1

    int-to-long v14, v7

    .line 20
    iget v11, v0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->Wwwwwwwwwwwwwwwwwwwww:I

    const-wide/16 v16, 0x1

    int-to-long v12, v11

    div-long v12, v9, v12

    add-long/2addr v14, v12

    int-to-long v11, v11

    .line 21
    rem-long/2addr v9, v11

    add-long v9, v9, v16

    move-wide/from16 v18, v5

    goto :goto_0

    :cond_1
    const-wide/16 v16, 0x1

    int-to-long v11, v7

    .line 22
    iget v13, v0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->Wwwwwwwwwwwwwwwwwwwww:I

    int-to-long v13, v13

    div-long v13, v9, v13

    add-long/2addr v11, v13

    sub-long v14, v11, v16

    .line 23
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    .line 24
    iget v13, v0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->Wwwwwwwwwwwwwwwwwwwww:I

    move-wide/from16 v18, v5

    int-to-long v5, v13

    rem-long/2addr v9, v5

    long-to-int v5, v9

    if-nez v5, :cond_2

    move v5, v13

    :cond_2
    sub-int/2addr v13, v5

    add-int/lit8 v13, v13, 0x1

    int-to-long v9, v13

    cmp-long v5, v9, v16

    if-nez v5, :cond_3

    move-wide v14, v11

    .line 25
    :cond_3
    :goto_0
    iget-object v5, v0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v5}, Lorg/joda/time/chrono/BasicChronology;->getMinYear()I

    move-result v5

    int-to-long v5, v5

    cmp-long v5, v14, v5

    if-ltz v5, :cond_5

    iget-object v5, v0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/chrono/BasicChronology;

    .line 26
    invoke-virtual {v5}, Lorg/joda/time/chrono/BasicChronology;->getMaxYear()I

    move-result v5

    int-to-long v5, v5

    cmp-long v5, v14, v5

    if-gtz v5, :cond_5

    long-to-int v3, v14

    long-to-int v4, v9

    .line 27
    iget-object v5, v0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v5, v1, v2, v7, v8}, Lorg/joda/time/chrono/BasicChronology;->getDayOfMonth(JII)I

    move-result v1

    .line 28
    iget-object v2, v0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v2, v3, v4}, Lorg/joda/time/chrono/BasicChronology;->getDaysInYearMonth(II)I

    move-result v2

    if-le v1, v2, :cond_4

    move v1, v2

    .line 29
    :cond_4
    iget-object v2, v0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/chrono/BasicChronology;

    .line 30
    invoke-virtual {v2, v3, v4, v1}, Lorg/joda/time/chrono/BasicChronology;->getYearMonthDayMillis(III)J

    move-result-wide v1

    add-long v1, v1, v18

    return-wide v1

    .line 31
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Magnitude of add amount is too large: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public add(Lorg/joda/time/ReadablePartial;I[II)[I
    .locals 5

    if-nez p4, :cond_0

    return-object p3

    .line 32
    :cond_0
    invoke-interface {p1}, Lorg/joda/time/ReadablePartial;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    invoke-interface {p1, v1}, Lorg/joda/time/ReadablePartial;->getFieldType(I)Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->monthOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    .line 33
    aget p2, p3, v1

    add-int/lit8 p2, p2, -0x1

    .line 34
    rem-int/lit8 p4, p4, 0xc

    add-int/2addr p2, p4

    add-int/lit8 p2, p2, 0xc

    rem-int/lit8 p2, p2, 0xc

    add-int/lit8 p2, p2, 0x1

    .line 35
    invoke-virtual {p0, p1, v1, p3, p2}, Lorg/joda/time/field/BaseDateTimeField;->set(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object p1

    return-object p1

    .line 36
    :cond_1
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->Wwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/ReadablePartial;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 37
    invoke-interface {p1}, Lorg/joda/time/ReadablePartial;->size()I

    move-result p2

    const-wide/16 v2, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    .line 38
    invoke-interface {p1, v1}, Lorg/joda/time/ReadablePartial;->getFieldType(I)Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    iget-object v4, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0, v4}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    aget v4, p3, v1

    invoke-virtual {v0, v2, v3, v4}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    :cond_2
    invoke-virtual {p0, v2, v3, p4}, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->add(JI)J

    move-result-wide p2

    .line 40
    iget-object p4, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {p4, p1, p2, p3}, Lorg/joda/time/chrono/BaseChronology;->get(Lorg/joda/time/ReadablePartial;J)[I

    move-result-object p1

    return-object p1

    .line 41
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Lorg/joda/time/field/BaseDateTimeField;->add(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object p1

    return-object p1
.end method

.method public addWrapField(JI)J
    .locals 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->get(J)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    iget v2, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->Wwwwwwwwwwwwwwwwwwwww:I

    .line 7
    .line 8
    invoke-static {v0, p3, v1, v2}, Lorg/joda/time/field/FieldUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(IIII)I

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    invoke-virtual {p0, p1, p2, p3}, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->set(JI)J

    .line 13
    .line 14
    .line 15
    move-result-wide p1

    .line 16
    return-wide p1
.end method

.method public get(J)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/chrono/BasicChronology;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getMonthOfYear(J)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getDifferenceAsLong(JJ)J
    .locals 8

    .line 1
    cmp-long v0, p1, p3

    .line 2
    .line 3
    if-gez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p3, p4, p1, p2}, Lorg/joda/time/field/ImpreciseDateTimeField;->getDifference(JJ)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    neg-int p1, p1

    .line 10
    int-to-long p1, p1

    .line 11
    return-wide p1

    .line 12
    :cond_0
    iget-object v0, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/chrono/BasicChronology;

    .line 13
    .line 14
    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getYear(J)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-object v1, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/chrono/BasicChronology;

    .line 19
    .line 20
    invoke-virtual {v1, p1, p2, v0}, Lorg/joda/time/chrono/BasicChronology;->getMonthOfYear(JI)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    iget-object v2, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/chrono/BasicChronology;

    .line 25
    .line 26
    invoke-virtual {v2, p3, p4}, Lorg/joda/time/chrono/BasicChronology;->getYear(J)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    iget-object v3, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/chrono/BasicChronology;

    .line 31
    .line 32
    invoke-virtual {v3, p3, p4, v2}, Lorg/joda/time/chrono/BasicChronology;->getMonthOfYear(JI)I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    sub-int v4, v0, v2

    .line 37
    .line 38
    int-to-long v4, v4

    .line 39
    iget v6, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->Wwwwwwwwwwwwwwwwwwwww:I

    .line 40
    .line 41
    int-to-long v6, v6

    .line 42
    mul-long/2addr v4, v6

    .line 43
    int-to-long v6, v1

    .line 44
    add-long/2addr v4, v6

    .line 45
    int-to-long v6, v3

    .line 46
    sub-long/2addr v4, v6

    .line 47
    iget-object v6, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/chrono/BasicChronology;

    .line 48
    .line 49
    invoke-virtual {v6, p1, p2, v0, v1}, Lorg/joda/time/chrono/BasicChronology;->getDayOfMonth(JII)I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    iget-object v7, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/chrono/BasicChronology;

    .line 54
    .line 55
    invoke-virtual {v7, v0, v1}, Lorg/joda/time/chrono/BasicChronology;->getDaysInYearMonth(II)I

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    if-ne v6, v7, :cond_1

    .line 60
    .line 61
    iget-object v7, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/chrono/BasicChronology;

    .line 62
    .line 63
    invoke-virtual {v7, p3, p4, v2, v3}, Lorg/joda/time/chrono/BasicChronology;->getDayOfMonth(JII)I

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    if-le v7, v6, :cond_1

    .line 68
    .line 69
    iget-object v7, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/chrono/BasicChronology;

    .line 70
    .line 71
    invoke-virtual {v7}, Lorg/joda/time/chrono/AssembledChronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    invoke-virtual {v7, p3, p4, v6}, Lorg/joda/time/DateTimeField;->set(JI)J

    .line 76
    .line 77
    .line 78
    move-result-wide p3

    .line 79
    :cond_1
    iget-object v6, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/chrono/BasicChronology;

    .line 80
    .line 81
    invoke-virtual {v6, v0, v1}, Lorg/joda/time/chrono/BasicChronology;->getYearMonthMillis(II)J

    .line 82
    .line 83
    .line 84
    move-result-wide v0

    .line 85
    sub-long/2addr p1, v0

    .line 86
    iget-object v0, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/chrono/BasicChronology;

    .line 87
    .line 88
    invoke-virtual {v0, v2, v3}, Lorg/joda/time/chrono/BasicChronology;->getYearMonthMillis(II)J

    .line 89
    .line 90
    .line 91
    move-result-wide v0

    .line 92
    sub-long/2addr p3, v0

    .line 93
    cmp-long p1, p1, p3

    .line 94
    .line 95
    if-gez p1, :cond_2

    .line 96
    .line 97
    const-wide/16 p1, 0x1

    .line 98
    .line 99
    sub-long/2addr v4, p1

    .line 100
    :cond_2
    return-wide v4
.end method

.method public getLeapAmount(J)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->isLeap(J)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public getLeapDurationField()Lorg/joda/time/DurationField;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/chrono/BasicChronology;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/joda/time/chrono/AssembledChronology;->days()Lorg/joda/time/DurationField;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getMaximumValue()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->Wwwwwwwwwwwwwwwwwwwww:I

    .line 2
    .line 3
    return v0
.end method

.method public getMinimumValue()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public getRangeDurationField()Lorg/joda/time/DurationField;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/chrono/BasicChronology;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/joda/time/chrono/AssembledChronology;->years()Lorg/joda/time/DurationField;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public isLeap(J)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/chrono/BasicChronology;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getYear(J)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/chrono/BasicChronology;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Lorg/joda/time/chrono/BasicChronology;->isLeapYear(I)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/chrono/BasicChronology;

    .line 17
    .line 18
    invoke-virtual {v1, p1, p2, v0}, Lorg/joda/time/chrono/BasicChronology;->getMonthOfYear(JI)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iget p2, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->Wwwwwwwwwwwwwwwwwwww:I

    .line 23
    .line 24
    if-ne p1, p2, :cond_0

    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    return p1

    .line 28
    :cond_0
    return v2
.end method

.method public isLenient()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public remainder(J)J
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->roundFloor(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sub-long/2addr p1, v0

    .line 6
    return-wide p1
.end method

.method public roundFloor(J)J
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/chrono/BasicChronology;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getYear(J)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/chrono/BasicChronology;

    .line 8
    .line 9
    invoke-virtual {v1, p1, p2, v0}, Lorg/joda/time/chrono/BasicChronology;->getMonthOfYear(JI)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iget-object p2, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/chrono/BasicChronology;

    .line 14
    .line 15
    invoke-virtual {p2, v0, p1}, Lorg/joda/time/chrono/BasicChronology;->getYearMonthMillis(II)J

    .line 16
    .line 17
    .line 18
    move-result-wide p1

    .line 19
    return-wide p1
.end method

.method public set(JI)J
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iget v1, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->Wwwwwwwwwwwwwwwwwwwww:I

    .line 3
    .line 4
    invoke-static {p0, p3, v0, v1}, Lorg/joda/time/field/FieldUtils;->Wwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/DateTimeField;III)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/chrono/BasicChronology;

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getYear(J)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v1, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/chrono/BasicChronology;

    .line 14
    .line 15
    invoke-virtual {v1, p1, p2, v0}, Lorg/joda/time/chrono/BasicChronology;->getDayOfMonth(JI)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iget-object v2, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/chrono/BasicChronology;

    .line 20
    .line 21
    invoke-virtual {v2, v0, p3}, Lorg/joda/time/chrono/BasicChronology;->getDaysInYearMonth(II)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-le v1, v2, :cond_0

    .line 26
    .line 27
    move v1, v2

    .line 28
    :cond_0
    iget-object v2, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/chrono/BasicChronology;

    .line 29
    .line 30
    invoke-virtual {v2, v0, p3, v1}, Lorg/joda/time/chrono/BasicChronology;->getYearMonthDayMillis(III)J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    iget-object p3, p0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/chrono/BasicChronology;

    .line 35
    .line 36
    invoke-virtual {p3, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getMillisOfDay(J)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    int-to-long p1, p1

    .line 41
    add-long/2addr v0, p1

    .line 42
    return-wide v0
.end method
