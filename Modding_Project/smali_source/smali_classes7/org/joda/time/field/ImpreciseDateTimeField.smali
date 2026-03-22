.class public abstract Lorg/joda/time/field/ImpreciseDateTimeField;
.super Lorg/joda/time/field/BaseDateTimeField;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/field/ImpreciseDateTimeField$LinkedDurationField;
    }
.end annotation


# instance fields
.field public final Wwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DurationField;

.field public final Wwwwwwwwwwwwwwwwwwwwwwww:J


# direct methods
.method public constructor <init>(Lorg/joda/time/DateTimeFieldType;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/joda/time/field/BaseDateTimeField;-><init>(Lorg/joda/time/DateTimeFieldType;)V

    .line 2
    .line 3
    .line 4
    iput-wide p2, p0, Lorg/joda/time/field/ImpreciseDateTimeField;->Wwwwwwwwwwwwwwwwwwwwwwww:J

    .line 5
    .line 6
    new-instance p2, Lorg/joda/time/field/ImpreciseDateTimeField$LinkedDurationField;

    .line 7
    .line 8
    invoke-virtual {p1}, Lorg/joda/time/DateTimeFieldType;->getDurationType()Lorg/joda/time/DurationFieldType;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-direct {p2, p0, p1}, Lorg/joda/time/field/ImpreciseDateTimeField$LinkedDurationField;-><init>(Lorg/joda/time/field/ImpreciseDateTimeField;Lorg/joda/time/DurationFieldType;)V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Lorg/joda/time/field/ImpreciseDateTimeField;->Wwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DurationField;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public abstract add(JI)J
.end method

.method public abstract add(JJ)J
.end method

.method public getDifference(JJ)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/joda/time/field/ImpreciseDateTimeField;->getDifferenceAsLong(JJ)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    invoke-static {p1, p2}, Lorg/joda/time/field/FieldUtils;->Wwwwwwwwwwwwwwwwwwwwww(J)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public getDifferenceAsLong(JJ)J
    .locals 9

    .line 1
    cmp-long v0, p1, p3

    .line 2
    .line 3
    if-gez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p3, p4, p1, p2}, Lorg/joda/time/field/ImpreciseDateTimeField;->getDifferenceAsLong(JJ)J

    .line 6
    .line 7
    .line 8
    move-result-wide p1

    .line 9
    neg-long p1, p1

    .line 10
    return-wide p1

    .line 11
    :cond_0
    sub-long v0, p1, p3

    .line 12
    .line 13
    iget-wide v2, p0, Lorg/joda/time/field/ImpreciseDateTimeField;->Wwwwwwwwwwwwwwwwwwwwwwww:J

    .line 14
    .line 15
    div-long/2addr v0, v2

    .line 16
    invoke-virtual {p0, p3, p4, v0, v1}, Lorg/joda/time/field/ImpreciseDateTimeField;->add(JJ)J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    cmp-long v2, v2, p1

    .line 21
    .line 22
    const-wide/16 v3, 0x1

    .line 23
    .line 24
    if-gez v2, :cond_2

    .line 25
    .line 26
    :goto_0
    add-long v5, v0, v3

    .line 27
    .line 28
    invoke-virtual {p0, p3, p4, v5, v6}, Lorg/joda/time/field/ImpreciseDateTimeField;->add(JJ)J

    .line 29
    .line 30
    .line 31
    move-result-wide v7

    .line 32
    cmp-long v2, v7, p1

    .line 33
    .line 34
    if-lez v2, :cond_1

    .line 35
    .line 36
    return-wide v0

    .line 37
    :cond_1
    move-wide v0, v5

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    invoke-virtual {p0, p3, p4, v0, v1}, Lorg/joda/time/field/ImpreciseDateTimeField;->add(JJ)J

    .line 40
    .line 41
    .line 42
    move-result-wide v5

    .line 43
    cmp-long v2, v5, p1

    .line 44
    .line 45
    if-lez v2, :cond_4

    .line 46
    .line 47
    :cond_3
    sub-long/2addr v0, v3

    .line 48
    invoke-virtual {p0, p3, p4, v0, v1}, Lorg/joda/time/field/ImpreciseDateTimeField;->add(JJ)J

    .line 49
    .line 50
    .line 51
    move-result-wide v5

    .line 52
    cmp-long v2, v5, p1

    .line 53
    .line 54
    if-gtz v2, :cond_3

    .line 55
    .line 56
    :cond_4
    return-wide v0
.end method

.method public final getDurationField()Lorg/joda/time/DurationField;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/field/ImpreciseDateTimeField;->Wwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DurationField;

    .line 2
    .line 3
    return-object v0
.end method
