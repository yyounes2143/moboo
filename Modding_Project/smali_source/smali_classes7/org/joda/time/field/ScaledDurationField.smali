.class public Lorg/joda/time/field/ScaledDurationField;
.super Lorg/joda/time/field/DecoratedDurationField;
.source "Proguard"


# static fields
.field private static final serialVersionUID:J = -0x2c7b410ef9b08afdL


# instance fields
.field private final iScalar:I


# direct methods
.method public constructor <init>(Lorg/joda/time/DurationField;Lorg/joda/time/DurationFieldType;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/joda/time/field/DecoratedDurationField;-><init>(Lorg/joda/time/DurationField;Lorg/joda/time/DurationFieldType;)V

    .line 2
    .line 3
    .line 4
    if-eqz p3, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    if-eq p3, p1, :cond_0

    .line 8
    .line 9
    iput p3, p0, Lorg/joda/time/field/ScaledDurationField;->iScalar:I

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string p2, "The scalar must not be 0 or 1"

    .line 15
    .line 16
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p1
.end method


# virtual methods
.method public add(JI)J
    .locals 4

    int-to-long v0, p3

    .line 1
    iget p3, p0, Lorg/joda/time/field/ScaledDurationField;->iScalar:I

    int-to-long v2, p3

    mul-long/2addr v0, v2

    .line 2
    invoke-virtual {p0}, Lorg/joda/time/field/DecoratedDurationField;->getWrappedField()Lorg/joda/time/DurationField;

    move-result-object p3

    invoke-virtual {p3, p1, p2, v0, v1}, Lorg/joda/time/DurationField;->add(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public add(JJ)J
    .locals 1

    .line 3
    iget v0, p0, Lorg/joda/time/field/ScaledDurationField;->iScalar:I

    invoke-static {p3, p4, v0}, Lorg/joda/time/field/FieldUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwww(JI)J

    move-result-wide p3

    .line 4
    invoke-virtual {p0}, Lorg/joda/time/field/DecoratedDurationField;->getWrappedField()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DurationField;->add(JJ)J

    move-result-wide p1

    return-wide p1
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
    instance-of v1, p1, Lorg/joda/time/field/ScaledDurationField;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    check-cast p1, Lorg/joda/time/field/ScaledDurationField;

    .line 11
    .line 12
    invoke-virtual {p0}, Lorg/joda/time/field/DecoratedDurationField;->getWrappedField()Lorg/joda/time/DurationField;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p1}, Lorg/joda/time/field/DecoratedDurationField;->getWrappedField()Lorg/joda/time/DurationField;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Lorg/joda/time/field/BaseDurationField;->getType()Lorg/joda/time/DurationFieldType;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {p1}, Lorg/joda/time/field/BaseDurationField;->getType()Lorg/joda/time/DurationFieldType;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    if-ne v1, v3, :cond_1

    .line 35
    .line 36
    iget v1, p0, Lorg/joda/time/field/ScaledDurationField;->iScalar:I

    .line 37
    .line 38
    iget p1, p1, Lorg/joda/time/field/ScaledDurationField;->iScalar:I

    .line 39
    .line 40
    if-ne v1, p1, :cond_1

    .line 41
    .line 42
    return v0

    .line 43
    :cond_1
    return v2
.end method

.method public getDifference(JJ)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/field/DecoratedDurationField;->getWrappedField()Lorg/joda/time/DurationField;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DurationField;->getDifference(JJ)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget p2, p0, Lorg/joda/time/field/ScaledDurationField;->iScalar:I

    .line 10
    .line 11
    div-int/2addr p1, p2

    .line 12
    return p1
.end method

.method public getDifferenceAsLong(JJ)J
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/field/DecoratedDurationField;->getWrappedField()Lorg/joda/time/DurationField;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DurationField;->getDifferenceAsLong(JJ)J

    .line 6
    .line 7
    .line 8
    move-result-wide p1

    .line 9
    iget p3, p0, Lorg/joda/time/field/ScaledDurationField;->iScalar:I

    .line 10
    .line 11
    int-to-long p3, p3

    .line 12
    div-long/2addr p1, p3

    .line 13
    return-wide p1
.end method

.method public getMillis(I)J
    .locals 4

    int-to-long v0, p1

    .line 1
    iget p1, p0, Lorg/joda/time/field/ScaledDurationField;->iScalar:I

    int-to-long v2, p1

    mul-long/2addr v0, v2

    .line 2
    invoke-virtual {p0}, Lorg/joda/time/field/DecoratedDurationField;->getWrappedField()Lorg/joda/time/DurationField;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lorg/joda/time/DurationField;->getMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMillis(IJ)J
    .locals 4

    int-to-long v0, p1

    .line 5
    iget p1, p0, Lorg/joda/time/field/ScaledDurationField;->iScalar:I

    int-to-long v2, p1

    mul-long/2addr v0, v2

    .line 6
    invoke-virtual {p0}, Lorg/joda/time/field/DecoratedDurationField;->getWrappedField()Lorg/joda/time/DurationField;

    move-result-object p1

    invoke-virtual {p1, v0, v1, p2, p3}, Lorg/joda/time/DurationField;->getMillis(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getMillis(J)J
    .locals 1

    .line 3
    iget v0, p0, Lorg/joda/time/field/ScaledDurationField;->iScalar:I

    invoke-static {p1, p2, v0}, Lorg/joda/time/field/FieldUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwww(JI)J

    move-result-wide p1

    .line 4
    invoke-virtual {p0}, Lorg/joda/time/field/DecoratedDurationField;->getWrappedField()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DurationField;->getMillis(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getMillis(JJ)J
    .locals 1

    .line 7
    iget v0, p0, Lorg/joda/time/field/ScaledDurationField;->iScalar:I

    invoke-static {p1, p2, v0}, Lorg/joda/time/field/FieldUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwww(JI)J

    move-result-wide p1

    .line 8
    invoke-virtual {p0}, Lorg/joda/time/field/DecoratedDurationField;->getWrappedField()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DurationField;->getMillis(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getScalar()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/joda/time/field/ScaledDurationField;->iScalar:I

    .line 2
    .line 3
    return v0
.end method

.method public getUnitMillis()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/field/DecoratedDurationField;->getWrappedField()Lorg/joda/time/DurationField;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/joda/time/DurationField;->getUnitMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iget v2, p0, Lorg/joda/time/field/ScaledDurationField;->iScalar:I

    .line 10
    .line 11
    int-to-long v2, v2

    .line 12
    mul-long/2addr v0, v2

    .line 13
    return-wide v0
.end method

.method public getValue(J)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/field/DecoratedDurationField;->getWrappedField()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DurationField;->getValue(J)I

    move-result p1

    iget p2, p0, Lorg/joda/time/field/ScaledDurationField;->iScalar:I

    div-int/2addr p1, p2

    return p1
.end method

.method public getValue(JJ)I
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/joda/time/field/DecoratedDurationField;->getWrappedField()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DurationField;->getValue(JJ)I

    move-result p1

    iget p2, p0, Lorg/joda/time/field/ScaledDurationField;->iScalar:I

    div-int/2addr p1, p2

    return p1
.end method

.method public getValueAsLong(J)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/field/DecoratedDurationField;->getWrappedField()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DurationField;->getValueAsLong(J)J

    move-result-wide p1

    iget v0, p0, Lorg/joda/time/field/ScaledDurationField;->iScalar:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method public getValueAsLong(JJ)J
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/joda/time/field/DecoratedDurationField;->getWrappedField()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DurationField;->getValueAsLong(JJ)J

    move-result-wide p1

    iget p3, p0, Lorg/joda/time/field/ScaledDurationField;->iScalar:I

    int-to-long p3, p3

    div-long/2addr p1, p3

    return-wide p1
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget v0, p0, Lorg/joda/time/field/ScaledDurationField;->iScalar:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    const/16 v2, 0x20

    .line 5
    .line 6
    ushr-long v2, v0, v2

    .line 7
    .line 8
    xor-long/2addr v0, v2

    .line 9
    long-to-int v0, v0

    .line 10
    invoke-virtual {p0}, Lorg/joda/time/field/BaseDurationField;->getType()Lorg/joda/time/DurationFieldType;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    add-int/2addr v0, v1

    .line 19
    invoke-virtual {p0}, Lorg/joda/time/field/DecoratedDurationField;->getWrappedField()Lorg/joda/time/DurationField;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    add-int/2addr v0, v1

    .line 28
    return v0
.end method
