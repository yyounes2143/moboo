.class public Lorg/joda/time/tz/DateTimeZoneBuilder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;,
        Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;,
        Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;,
        Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;,
        Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;,
        Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;,
        Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;
    }
.end annotation


# instance fields
.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    const/16 v1, 0xa

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/ArrayList;

    .line 12
    .line 13
    return-void
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/DataOutput;J)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-wide/32 v0, 0x1b7740

    .line 2
    .line 3
    .line 4
    rem-long v2, p1, v0

    .line 5
    .line 6
    const-wide/16 v4, 0x0

    .line 7
    .line 8
    cmp-long v2, v2, v4

    .line 9
    .line 10
    const-wide/16 v6, 0x3f

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    div-long v0, p1, v0

    .line 15
    .line 16
    const/16 v2, 0x3a

    .line 17
    .line 18
    shl-long v8, v0, v2

    .line 19
    .line 20
    shr-long v2, v8, v2

    .line 21
    .line 22
    cmp-long v2, v2, v0

    .line 23
    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    and-long p1, v0, v6

    .line 27
    .line 28
    long-to-int p1, p1

    .line 29
    invoke-interface {p0, p1}, Ljava/io/DataOutput;->writeByte(I)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    const-wide/32 v0, 0xea60

    .line 34
    .line 35
    .line 36
    rem-long v2, p1, v0

    .line 37
    .line 38
    cmp-long v2, v2, v4

    .line 39
    .line 40
    if-nez v2, :cond_1

    .line 41
    .line 42
    div-long v0, p1, v0

    .line 43
    .line 44
    const/16 v2, 0x22

    .line 45
    .line 46
    shl-long v8, v0, v2

    .line 47
    .line 48
    shr-long v2, v8, v2

    .line 49
    .line 50
    cmp-long v2, v2, v0

    .line 51
    .line 52
    if-nez v2, :cond_1

    .line 53
    .line 54
    const-wide/32 p1, 0x3fffffff

    .line 55
    .line 56
    .line 57
    and-long/2addr p1, v0

    .line 58
    long-to-int p1, p1

    .line 59
    const/high16 p2, 0x40000000    # 2.0f

    .line 60
    .line 61
    or-int/2addr p1, p2

    .line 62
    invoke-interface {p0, p1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_1
    const-wide/16 v0, 0x3e8

    .line 67
    .line 68
    rem-long v2, p1, v0

    .line 69
    .line 70
    cmp-long v2, v2, v4

    .line 71
    .line 72
    if-nez v2, :cond_2

    .line 73
    .line 74
    div-long v0, p1, v0

    .line 75
    .line 76
    const/16 v2, 0x1a

    .line 77
    .line 78
    shl-long v8, v0, v2

    .line 79
    .line 80
    shr-long v2, v8, v2

    .line 81
    .line 82
    cmp-long v2, v2, v0

    .line 83
    .line 84
    if-nez v2, :cond_2

    .line 85
    .line 86
    const/16 p1, 0x20

    .line 87
    .line 88
    shr-long p1, v0, p1

    .line 89
    .line 90
    and-long/2addr p1, v6

    .line 91
    long-to-int p1, p1

    .line 92
    or-int/lit16 p1, p1, 0x80

    .line 93
    .line 94
    invoke-interface {p0, p1}, Ljava/io/DataOutput;->writeByte(I)V

    .line 95
    .line 96
    .line 97
    long-to-int p1, v0

    .line 98
    invoke-interface {p0, p1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_2
    cmp-long v0, p1, v4

    .line 103
    .line 104
    if-gez v0, :cond_3

    .line 105
    .line 106
    const/16 v0, 0xff

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_3
    const/16 v0, 0xc0

    .line 110
    .line 111
    :goto_0
    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 112
    .line 113
    .line 114
    invoke-interface {p0, p1, p2}, Ljava/io/DataOutput;->writeLong(J)V

    .line 115
    .line 116
    .line 117
    return-void
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/DataInput;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    shr-int/lit8 v1, v0, 0x6

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x2

    .line 9
    const/16 v4, 0x1a

    .line 10
    .line 11
    if-eq v1, v2, :cond_2

    .line 12
    .line 13
    if-eq v1, v3, :cond_1

    .line 14
    .line 15
    const/4 v2, 0x3

    .line 16
    if-eq v1, v2, :cond_0

    .line 17
    .line 18
    shl-int/lit8 p0, v0, 0x1a

    .line 19
    .line 20
    shr-int/2addr p0, v4

    .line 21
    int-to-long v0, p0

    .line 22
    const-wide/32 v2, 0x1b7740

    .line 23
    .line 24
    .line 25
    :goto_0
    mul-long/2addr v0, v2

    .line 26
    return-wide v0

    .line 27
    :cond_0
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    return-wide v0

    .line 32
    :cond_1
    int-to-long v0, v0

    .line 33
    const/16 v2, 0x3a

    .line 34
    .line 35
    shl-long/2addr v0, v2

    .line 36
    shr-long/2addr v0, v4

    .line 37
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    shl-int/lit8 v2, v2, 0x18

    .line 42
    .line 43
    int-to-long v2, v2

    .line 44
    or-long/2addr v0, v2

    .line 45
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    shl-int/lit8 v2, v2, 0x10

    .line 50
    .line 51
    int-to-long v2, v2

    .line 52
    or-long/2addr v0, v2

    .line 53
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    shl-int/lit8 v2, v2, 0x8

    .line 58
    .line 59
    int-to-long v2, v2

    .line 60
    or-long/2addr v0, v2

    .line 61
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    int-to-long v2, p0

    .line 66
    or-long/2addr v0, v2

    .line 67
    const-wide/16 v2, 0x3e8

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    shl-int/2addr v0, v4

    .line 71
    shr-int/2addr v0, v3

    .line 72
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    shl-int/lit8 v1, v1, 0x10

    .line 77
    .line 78
    or-int/2addr v0, v1

    .line 79
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    shl-int/lit8 v1, v1, 0x8

    .line 84
    .line 85
    or-int/2addr v0, v1

    .line 86
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    or-int/2addr p0, v0

    .line 91
    int-to-long v0, p0

    .line 92
    const-wide/32 v2, 0xea60

    .line 93
    .line 94
    .line 95
    goto :goto_0
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/InputStream;Ljava/lang/String;)Lorg/joda/time/DateTimeZone;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p0, Ljava/io/DataInput;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Ljava/io/DataInput;

    .line 6
    .line 7
    invoke-static {p0, p1}, Lorg/joda/time/tz/DateTimeZoneBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/DataInput;Ljava/lang/String;)Lorg/joda/time/DateTimeZone;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance v0, Ljava/io/DataInputStream;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, p1}, Lorg/joda/time/tz/DateTimeZoneBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/DataInput;Ljava/lang/String;)Lorg/joda/time/DateTimeZone;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/DataInput;Ljava/lang/String;)Lorg/joda/time/DateTimeZone;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x43

    .line 6
    .line 7
    if-eq v0, v1, :cond_3

    .line 8
    .line 9
    const/16 v1, 0x46

    .line 10
    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    const/16 v1, 0x50

    .line 14
    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    invoke-static {p0, p1}, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->readFrom(Ljava/io/DataInput;Ljava/lang/String;)Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    new-instance p0, Ljava/io/IOException;

    .line 23
    .line 24
    const-string p1, "Invalid encoding"

    .line 25
    .line 26
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p0

    .line 30
    :cond_1
    new-instance v0, Lorg/joda/time/tz/FixedDateTimeZone;

    .line 31
    .line 32
    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {p0}, Lorg/joda/time/tz/DateTimeZoneBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/DataInput;)J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    long-to-int v2, v2

    .line 41
    invoke-static {p0}, Lorg/joda/time/tz/DateTimeZoneBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/DataInput;)J

    .line 42
    .line 43
    .line 44
    move-result-wide v3

    .line 45
    long-to-int p0, v3

    .line 46
    invoke-direct {v0, p1, v1, v2, p0}, Lorg/joda/time/tz/FixedDateTimeZone;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    sget-object p0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    .line 50
    .line 51
    invoke-virtual {v0, p0}, Lorg/joda/time/DateTimeZone;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    return-object p0

    .line 58
    :cond_2
    return-object v0

    .line 59
    :cond_3
    invoke-static {p0, p1}, Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;->readFrom(Ljava/io/DataInput;Ljava/lang/String;)Lorg/joda/time/tz/DateTimeZoneBuilder$PrecalculatedZone;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-static {p0}, Lorg/joda/time/tz/CachedDateTimeZone;->forZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/tz/CachedDateTimeZone;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0
.end method
