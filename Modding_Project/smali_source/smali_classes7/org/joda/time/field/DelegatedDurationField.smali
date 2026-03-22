.class public Lorg/joda/time/field/DelegatedDurationField;
.super Lorg/joda/time/DurationField;
.source "Proguard"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x4d6381cd0978f915L


# instance fields
.field private final iField:Lorg/joda/time/DurationField;

.field private final iType:Lorg/joda/time/DurationFieldType;


# direct methods
.method public constructor <init>(Lorg/joda/time/DurationField;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/joda/time/field/DelegatedDurationField;-><init>(Lorg/joda/time/DurationField;Lorg/joda/time/DurationFieldType;)V

    return-void
.end method

.method public constructor <init>(Lorg/joda/time/DurationField;Lorg/joda/time/DurationFieldType;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/joda/time/DurationField;-><init>()V

    if-eqz p1, :cond_1

    .line 3
    iput-object p1, p0, Lorg/joda/time/field/DelegatedDurationField;->iField:Lorg/joda/time/DurationField;

    if-nez p2, :cond_0

    .line 4
    invoke-virtual {p1}, Lorg/joda/time/DurationField;->getType()Lorg/joda/time/DurationFieldType;

    move-result-object p2

    :cond_0
    iput-object p2, p0, Lorg/joda/time/field/DelegatedDurationField;->iType:Lorg/joda/time/DurationFieldType;

    return-void

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The field must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public add(JI)J
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDurationField;->iField:Lorg/joda/time/DurationField;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public add(JJ)J
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDurationField;->iField:Lorg/joda/time/DurationField;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DurationField;->add(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/joda/time/DurationField;

    invoke-virtual {p0, p1}, Lorg/joda/time/field/DelegatedDurationField;->compareTo(Lorg/joda/time/DurationField;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/joda/time/DurationField;)I
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDurationField;->iField:Lorg/joda/time/DurationField;

    invoke-interface {v0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/joda/time/field/DelegatedDurationField;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDurationField;->iField:Lorg/joda/time/DurationField;

    .line 6
    .line 7
    check-cast p1, Lorg/joda/time/field/DelegatedDurationField;

    .line 8
    .line 9
    iget-object p1, p1, Lorg/joda/time/field/DelegatedDurationField;->iField:Lorg/joda/time/DurationField;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return p1
.end method

.method public getDifference(JJ)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDurationField;->iField:Lorg/joda/time/DurationField;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DurationField;->getDifference(JJ)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getDifferenceAsLong(JJ)J
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDurationField;->iField:Lorg/joda/time/DurationField;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DurationField;->getDifferenceAsLong(JJ)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    return-wide p1
.end method

.method public getMillis(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDurationField;->iField:Lorg/joda/time/DurationField;

    invoke-virtual {v0, p1}, Lorg/joda/time/DurationField;->getMillis(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMillis(IJ)J
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDurationField;->iField:Lorg/joda/time/DurationField;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/DurationField;->getMillis(IJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getMillis(J)J
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDurationField;->iField:Lorg/joda/time/DurationField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DurationField;->getMillis(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getMillis(JJ)J
    .locals 1

    .line 4
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDurationField;->iField:Lorg/joda/time/DurationField;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DurationField;->getMillis(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDurationField;->iType:Lorg/joda/time/DurationFieldType;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/joda/time/DurationFieldType;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getType()Lorg/joda/time/DurationFieldType;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDurationField;->iType:Lorg/joda/time/DurationFieldType;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUnitMillis()J
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDurationField;->iField:Lorg/joda/time/DurationField;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/joda/time/DurationField;->getUnitMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getValue(J)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDurationField;->iField:Lorg/joda/time/DurationField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DurationField;->getValue(J)I

    move-result p1

    return p1
.end method

.method public getValue(JJ)I
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDurationField;->iField:Lorg/joda/time/DurationField;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DurationField;->getValue(JJ)I

    move-result p1

    return p1
.end method

.method public getValueAsLong(J)J
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDurationField;->iField:Lorg/joda/time/DurationField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DurationField;->getValueAsLong(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getValueAsLong(JJ)J
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDurationField;->iField:Lorg/joda/time/DurationField;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DurationField;->getValueAsLong(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final getWrappedField()Lorg/joda/time/DurationField;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDurationField;->iField:Lorg/joda/time/DurationField;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDurationField;->iField:Lorg/joda/time/DurationField;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lorg/joda/time/field/DelegatedDurationField;->iType:Lorg/joda/time/DurationFieldType;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    xor-int/2addr v0, v1

    .line 14
    return v0
.end method

.method public isPrecise()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDurationField;->iField:Lorg/joda/time/DurationField;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/joda/time/DurationField;->isPrecise()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isSupported()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDurationField;->iField:Lorg/joda/time/DurationField;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/joda/time/DurationField;->isSupported()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDurationField;->iType:Lorg/joda/time/DurationFieldType;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/joda/time/field/DelegatedDurationField;->iField:Lorg/joda/time/DurationField;

    .line 6
    .line 7
    invoke-virtual {v0}, Lorg/joda/time/DurationField;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v1, "DurationField["

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lorg/joda/time/field/DelegatedDurationField;->iType:Lorg/joda/time/DurationFieldType;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const/16 v1, 0x5d

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0
.end method
