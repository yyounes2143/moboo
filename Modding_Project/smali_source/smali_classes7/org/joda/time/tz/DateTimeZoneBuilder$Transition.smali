.class final Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/tz/DateTimeZoneBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Transition"
.end annotation


# instance fields
.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-wide v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 6
    .line 7
    iget-wide v3, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 8
    .line 9
    cmp-long v1, v1, v3

    .line 10
    .line 11
    if-lez v1, :cond_2

    .line 12
    .line 13
    iget v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 14
    .line 15
    iget v2, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 16
    .line 17
    if-ne v1, v2, :cond_1

    .line 18
    .line 19
    iget v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 20
    .line 21
    iget v2, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 22
    .line 23
    if-ne v1, v2, :cond_1

    .line 24
    .line 25
    iget-object v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 26
    .line 27
    iget-object p1, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-nez p1, :cond_2

    .line 34
    .line 35
    :cond_1
    return v0

    .line 36
    :cond_2
    const/4 p1, 0x0

    .line 37
    return p1
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 2
    .line 3
    return v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 2
    .line 3
    return v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lorg/joda/time/DateTime;

    .line 7
    .line 8
    iget-wide v2, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 9
    .line 10
    sget-object v4, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    .line 11
    .line 12
    invoke-direct {v1, v2, v3, v4}, Lorg/joda/time/DateTime;-><init>(JLorg/joda/time/DateTimeZone;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, " "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget v2, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    return-object v0
.end method
