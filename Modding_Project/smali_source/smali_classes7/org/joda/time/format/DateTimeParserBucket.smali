.class public Lorg/joda/time/format/DateTimeParserBucket;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/format/DateTimeParserBucket$SavedField;,
        Lorg/joda/time/format/DateTimeParserBucket$SavedState;
    }
.end annotation


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

.field public Wwwwwwwwwwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwwwwwwwwwww:I

.field public Wwwwwwwwwwwwwwwwwwwwwwwww:[Lorg/joda/time/format/DateTimeParserBucket$SavedField;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Integer;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Integer;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeZone;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Integer;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeZone;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Locale;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/Chronology;


# direct methods
.method public constructor <init>(JLorg/joda/time/Chronology;Ljava/util/Locale;Ljava/lang/Integer;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p3}, Lorg/joda/time/DateTimeUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    .line 5
    .line 6
    .line 7
    move-result-object p3

    .line 8
    iput-wide p1, p0, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 9
    .line 10
    invoke-virtual {p3}, Lorg/joda/time/Chronology;->getZone()Lorg/joda/time/DateTimeZone;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeZone;

    .line 15
    .line 16
    invoke-virtual {p3}, Lorg/joda/time/Chronology;->withUTC()Lorg/joda/time/Chronology;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    iput-object p2, p0, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/Chronology;

    .line 21
    .line 22
    if-nez p4, :cond_0

    .line 23
    .line 24
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 25
    .line 26
    .line 27
    move-result-object p4

    .line 28
    :cond_0
    iput-object p4, p0, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Locale;

    .line 29
    .line 30
    iput p6, p0, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 31
    .line 32
    iput-object p5, p0, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Integer;

    .line 33
    .line 34
    iput-object p1, p0, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeZone;

    .line 35
    .line 36
    iput-object p5, p0, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Integer;

    .line 37
    .line 38
    const/16 p1, 0x8

    .line 39
    .line 40
    new-array p1, p1, [Lorg/joda/time/format/DateTimeParserBucket$SavedField;

    .line 41
    .line 42
    iput-object p1, p0, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwwwwww:[Lorg/joda/time/format/DateTimeParserBucket$SavedField;

    .line 43
    .line 44
    return-void
.end method

.method public static Wwwwwwww([Lorg/joda/time/format/DateTimeParserBucket$SavedField;I)V
    .locals 5

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-le p1, v0, :cond_0

    .line 5
    .line 6
    invoke-static {p0, v1, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;II)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    :goto_0
    if-ge v1, p1, :cond_2

    .line 11
    .line 12
    move v0, v1

    .line 13
    :goto_1
    if-lez v0, :cond_1

    .line 14
    .line 15
    add-int/lit8 v2, v0, -0x1

    .line 16
    .line 17
    aget-object v3, p0, v2

    .line 18
    .line 19
    aget-object v4, p0, v0

    .line 20
    .line 21
    invoke-virtual {v3, v4}, Lorg/joda/time/format/DateTimeParserBucket$SavedField;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/format/DateTimeParserBucket$SavedField;)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-lez v3, :cond_1

    .line 26
    .line 27
    aget-object v3, p0, v0

    .line 28
    .line 29
    aget-object v4, p0, v2

    .line 30
    .line 31
    aput-object v4, p0, v0

    .line 32
    .line 33
    aput-object v3, p0, v2

    .line 34
    .line 35
    add-int/lit8 v0, v0, -0x1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    return-void
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/DurationField;Lorg/joda/time/DurationField;)I
    .locals 1

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/joda/time/DurationField;->isSupported()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    if-eqz p1, :cond_2

    .line 11
    .line 12
    invoke-virtual {p1}, Lorg/joda/time/DurationField;->isSupported()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    neg-int p0, p0

    .line 24
    return p0

    .line 25
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 26
    return p0

    .line 27
    :cond_3
    :goto_1
    if-eqz p1, :cond_5

    .line 28
    .line 29
    invoke-virtual {p1}, Lorg/joda/time/DurationField;->isSupported()Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-nez p0, :cond_4

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_4
    const/4 p0, -0x1

    .line 37
    return p0

    .line 38
    :cond_5
    :goto_2
    const/4 p0, 0x0

    .line 39
    return p0
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/format/DateTimeParserBucket;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/format/DateTimeParserBucket;I)I
    .locals 0

    .line 1
    iput p1, p0, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwwwww:I

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/format/DateTimeParserBucket;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwwwww:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/format/DateTimeParserBucket;[Lorg/joda/time/format/DateTimeParserBucket$SavedField;)[Lorg/joda/time/format/DateTimeParserBucket$SavedField;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwwwwww:[Lorg/joda/time/format/DateTimeParserBucket$SavedField;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/format/DateTimeParserBucket;)[Lorg/joda/time/format/DateTimeParserBucket$SavedField;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwwwwww:[Lorg/joda/time/format/DateTimeParserBucket$SavedField;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/format/DateTimeParserBucket;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/format/DateTimeParserBucket;Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTimeZone;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeZone;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/format/DateTimeParserBucket;)Lorg/joda/time/DateTimeZone;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeZone;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public Wwwwwwwww(Lorg/joda/time/DateTimeZone;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 3
    .line 4
    iput-object p1, p0, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeZone;

    .line 5
    .line 6
    return-void
.end method

.method public Wwwwwwwwww(Ljava/lang/Integer;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 3
    .line 4
    iput-object p1, p0, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Integer;

    .line 5
    .line 6
    return-void
.end method

.method public Wwwwwwwwwww()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lorg/joda/time/format/DateTimeParserBucket$SavedState;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lorg/joda/time/format/DateTimeParserBucket$SavedState;-><init>(Lorg/joda/time/format/DateTimeParserBucket;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 13
    .line 14
    return-object v0
.end method

.method public Wwwwwwwwwwww(Lorg/joda/time/DateTimeFieldType;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwww()Lorg/joda/time/format/DateTimeParserBucket$SavedField;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/Chronology;

    .line 6
    .line 7
    invoke-virtual {p1, v1}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/format/DateTimeParserBucket$SavedField;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/DateTimeField;Ljava/lang/String;Ljava/util/Locale;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public Wwwwwwwwwwwww(Lorg/joda/time/DateTimeFieldType;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwww()Lorg/joda/time/format/DateTimeParserBucket$SavedField;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/Chronology;

    .line 6
    .line 7
    invoke-virtual {p1, v1}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v0, p1, p2}, Lorg/joda/time/format/DateTimeParserBucket$SavedField;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/DateTimeField;I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public Wwwwwwwwwwwwww(Lorg/joda/time/DateTimeField;I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwww()Lorg/joda/time/format/DateTimeParserBucket$SavedField;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lorg/joda/time/format/DateTimeParserBucket$SavedField;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/DateTimeField;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public Wwwwwwwwwwwwwww(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/joda/time/format/DateTimeParserBucket$SavedState;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lorg/joda/time/format/DateTimeParserBucket$SavedState;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lorg/joda/time/format/DateTimeParserBucket$SavedState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/format/DateTimeParserBucket;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iput-object p1, p0, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    return p1

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    return p1
.end method

.method public final Wwwwwwwwwwwwwwww()Lorg/joda/time/format/DateTimeParserBucket$SavedField;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwwwwww:[Lorg/joda/time/format/DateTimeParserBucket$SavedField;

    .line 2
    .line 3
    iget v1, p0, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwwwww:I

    .line 4
    .line 5
    array-length v2, v0

    .line 6
    if-eq v1, v2, :cond_0

    .line 7
    .line 8
    iget-boolean v2, p0, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwwww:Z

    .line 9
    .line 10
    if-eqz v2, :cond_2

    .line 11
    .line 12
    :cond_0
    array-length v2, v0

    .line 13
    if-ne v1, v2, :cond_1

    .line 14
    .line 15
    mul-int/lit8 v2, v1, 0x2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    array-length v2, v0

    .line 19
    :goto_0
    new-array v2, v2, [Lorg/joda/time/format/DateTimeParserBucket$SavedField;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    .line 24
    .line 25
    iput-object v2, p0, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwwwwww:[Lorg/joda/time/format/DateTimeParserBucket$SavedField;

    .line 26
    .line 27
    iput-boolean v3, p0, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwwww:Z

    .line 28
    .line 29
    move-object v0, v2

    .line 30
    :cond_2
    const/4 v2, 0x0

    .line 31
    iput-object v2, p0, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 32
    .line 33
    aget-object v2, v0, v1

    .line 34
    .line 35
    if-nez v2, :cond_3

    .line 36
    .line 37
    new-instance v2, Lorg/joda/time/format/DateTimeParserBucket$SavedField;

    .line 38
    .line 39
    invoke-direct {v2}, Lorg/joda/time/format/DateTimeParserBucket$SavedField;-><init>()V

    .line 40
    .line 41
    .line 42
    aput-object v2, v0, v1

    .line 43
    .line 44
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 45
    .line 46
    iput v1, p0, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwwwww:I

    .line 47
    .line 48
    return-object v2
.end method

.method public Wwwwwwwwwwwwwwwww()Lorg/joda/time/DateTimeZone;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeZone;

    .line 2
    .line 3
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwwww()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwwwww()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwwwwww()Ljava/util/Locale;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Locale;

    .line 2
    .line 3
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwww()Lorg/joda/time/Chronology;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/Chronology;

    .line 2
    .line 3
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/format/InternalParser;Ljava/lang/CharSequence;)J
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, p0, p2, v0}, Lorg/joda/time/format/InternalParser;->parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/CharSequence;I)I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    if-ltz p1, :cond_0

    .line 7
    .line 8
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-lt p1, v0, :cond_1

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwwwww(ZLjava/lang/CharSequence;)J

    .line 16
    .line 17
    .line 18
    move-result-wide p1

    .line 19
    return-wide p1

    .line 20
    :cond_0
    not-int p1, p1

    .line 21
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-static {p2, p1}, Lorg/joda/time/format/FormatUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwww(ZLjava/lang/String;)J
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwwwww(ZLjava/lang/CharSequence;)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    return-wide p1
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwww(ZLjava/lang/CharSequence;)J
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwwwwww:[Lorg/joda/time/format/DateTimeParserBucket$SavedField;

    .line 2
    .line 3
    iget v1, p0, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwwwww:I

    .line 4
    .line 5
    iget-boolean v2, p0, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwwww:Z

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, [Lorg/joda/time/format/DateTimeParserBucket$SavedField;->clone()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, [Lorg/joda/time/format/DateTimeParserBucket$SavedField;

    .line 15
    .line 16
    iput-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwwwwww:[Lorg/joda/time/format/DateTimeParserBucket$SavedField;

    .line 17
    .line 18
    iput-boolean v3, p0, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwwww:Z

    .line 19
    .line 20
    :cond_0
    invoke-static {v0, v1}, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwww([Lorg/joda/time/format/DateTimeParserBucket$SavedField;I)V

    .line 21
    .line 22
    .line 23
    if-lez v1, :cond_1

    .line 24
    .line 25
    invoke-static {}, Lorg/joda/time/DurationFieldType;->months()Lorg/joda/time/DurationFieldType;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget-object v4, p0, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/Chronology;

    .line 30
    .line 31
    invoke-virtual {v2, v4}, Lorg/joda/time/DurationFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DurationField;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    iget-object v5, p0, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/Chronology;

    .line 40
    .line 41
    invoke-virtual {v4, v5}, Lorg/joda/time/DurationFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DurationField;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    aget-object v5, v0, v3

    .line 46
    .line 47
    iget-object v5, v5, Lorg/joda/time/format/DateTimeParserBucket$SavedField;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 48
    .line 49
    invoke-virtual {v5}, Lorg/joda/time/DateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-static {v5, v2}, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/DurationField;Lorg/joda/time/DurationField;)I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-ltz v2, :cond_1

    .line 58
    .line 59
    invoke-static {v5, v4}, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/DurationField;Lorg/joda/time/DurationField;)I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-gtz v2, :cond_1

    .line 64
    .line 65
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->year()Lorg/joda/time/DateTimeFieldType;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iget v1, p0, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 70
    .line 71
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwww(Lorg/joda/time/DateTimeFieldType;I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwwwww(ZLjava/lang/CharSequence;)J

    .line 75
    .line 76
    .line 77
    move-result-wide p1

    .line 78
    return-wide p1

    .line 79
    :cond_1
    iget-wide v4, p0, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 80
    .line 81
    move v2, v3

    .line 82
    :goto_0
    const-string v6, "Cannot parse \""

    .line 83
    .line 84
    if-ge v2, v1, :cond_2

    .line 85
    .line 86
    :try_start_0
    aget-object v7, v0, v2

    .line 87
    .line 88
    invoke-virtual {v7, v4, v5, p1}, Lorg/joda/time/format/DateTimeParserBucket$SavedField;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JZ)J

    .line 89
    .line 90
    .line 91
    move-result-wide v4

    .line 92
    add-int/lit8 v2, v2, 0x1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :catch_0
    move-exception p1

    .line 96
    goto :goto_3

    .line 97
    :cond_2
    if-eqz p1, :cond_6

    .line 98
    .line 99
    move p1, v3

    .line 100
    :goto_1
    if-ge p1, v1, :cond_6

    .line 101
    .line 102
    aget-object v2, v0, p1

    .line 103
    .line 104
    iget-object v2, v2, Lorg/joda/time/format/DateTimeParserBucket$SavedField;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 105
    .line 106
    invoke-virtual {v2}, Lorg/joda/time/DateTimeField;->isLenient()Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-nez v2, :cond_4

    .line 111
    .line 112
    aget-object v2, v0, p1

    .line 113
    .line 114
    add-int/lit8 v7, v1, -0x1

    .line 115
    .line 116
    if-ne p1, v7, :cond_3

    .line 117
    .line 118
    const/4 v7, 0x1

    .line 119
    goto :goto_2

    .line 120
    :cond_3
    move v7, v3

    .line 121
    :goto_2
    invoke-virtual {v2, v4, v5, v7}, Lorg/joda/time/format/DateTimeParserBucket$SavedField;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JZ)J

    .line 122
    .line 123
    .line 124
    move-result-wide v4
    :try_end_0
    .catch Lorg/joda/time/IllegalFieldValueException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :cond_4
    add-int/lit8 p1, p1, 0x1

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :goto_3
    if-eqz p2, :cond_5

    .line 129
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const/16 p2, 0x22

    .line 142
    .line 143
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    invoke-virtual {p1, p2}, Lorg/joda/time/IllegalFieldValueException;->prependMessage(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    :cond_5
    throw p1

    .line 154
    :cond_6
    iget-object p1, p0, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Integer;

    .line 155
    .line 156
    if-eqz p1, :cond_7

    .line 157
    .line 158
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    int-to-long p1, p1

    .line 163
    sub-long/2addr v4, p1

    .line 164
    return-wide v4

    .line 165
    :cond_7
    iget-object p1, p0, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeZone;

    .line 166
    .line 167
    if-eqz p1, :cond_9

    .line 168
    .line 169
    invoke-virtual {p1, v4, v5}, Lorg/joda/time/DateTimeZone;->getOffsetFromLocal(J)I

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    int-to-long v0, p1

    .line 174
    sub-long/2addr v4, v0

    .line 175
    iget-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeZone;

    .line 176
    .line 177
    invoke-virtual {v0, v4, v5}, Lorg/joda/time/DateTimeZone;->getOffset(J)I

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-eq p1, v0, :cond_9

    .line 182
    .line 183
    new-instance p1, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    .line 188
    const-string v0, "Illegal instant due to time zone offset transition ("

    .line 189
    .line 190
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    iget-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeZone;

    .line 194
    .line 195
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    const/16 v0, 0x29

    .line 199
    .line 200
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    if-eqz p2, :cond_8

    .line 208
    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    const-string p2, "\": "

    .line 221
    .line 222
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    :cond_8
    new-instance p2, Lorg/joda/time/IllegalInstantException;

    .line 233
    .line 234
    invoke-direct {p2, p1}, Lorg/joda/time/IllegalInstantException;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    throw p2

    .line 238
    :cond_9
    return-wide v4
.end method
