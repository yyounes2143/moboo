.class public final Lorg/joda/time/chrono/GJChronology;
.super Lorg/joda/time/chrono/AssembledChronology;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/chrono/GJChronology$LinkedDurationField;,
        Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;,
        Lorg/joda/time/chrono/GJChronology$CutoverField;
    }
.end annotation


# static fields
.field static final DEFAULT_CUTOVER:Lorg/joda/time/Instant;

.field public static final Kkkkkkkkkkkkk:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Lorg/joda/time/chrono/GJCacheKey;",
            "Lorg/joda/time/chrono/GJChronology;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x2353b2d19aa5d9d7L


# instance fields
.field private iCutoverInstant:Lorg/joda/time/Instant;

.field private iCutoverMillis:J

.field private iGapDuration:J

.field private iGregorianChronology:Lorg/joda/time/chrono/GregorianChronology;

.field private iJulianChronology:Lorg/joda/time/chrono/JulianChronology;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lorg/joda/time/Instant;

    .line 2
    .line 3
    const-wide v1, -0xb1d069b5400L

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lorg/joda/time/Instant;-><init>(J)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lorg/joda/time/chrono/GJChronology;->DEFAULT_CUTOVER:Lorg/joda/time/Instant;

    .line 12
    .line 13
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lorg/joda/time/chrono/GJChronology;->Kkkkkkkkkkkkk:Lj$/util/concurrent/ConcurrentHashMap;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/Chronology;Lorg/joda/time/chrono/JulianChronology;Lorg/joda/time/chrono/GregorianChronology;Lorg/joda/time/Instant;)V
    .locals 2

    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p4, v0, p2

    invoke-direct {p0, p1, v0}, Lorg/joda/time/chrono/AssembledChronology;-><init>(Lorg/joda/time/Chronology;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lorg/joda/time/chrono/JulianChronology;Lorg/joda/time/chrono/GregorianChronology;Lorg/joda/time/Instant;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 1
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x2

    aput-object p3, v1, p1

    invoke-direct {p0, v0, v1}, Lorg/joda/time/chrono/AssembledChronology;-><init>(Lorg/joda/time/Chronology;Ljava/lang/Object;)V

    return-void
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JLorg/joda/time/Chronology;Lorg/joda/time/Chronology;)J
    .locals 3

    .line 1
    invoke-virtual {p2}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0, p1}, Lorg/joda/time/DateTimeField;->get(J)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p2}, Lorg/joda/time/Chronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1, p0, p1}, Lorg/joda/time/DateTimeField;->get(J)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {p2}, Lorg/joda/time/Chronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2, p0, p1}, Lorg/joda/time/DateTimeField;->get(J)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {p2}, Lorg/joda/time/Chronology;->millisOfDay()Lorg/joda/time/DateTimeField;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p2, p0, p1}, Lorg/joda/time/DateTimeField;->get(J)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    invoke-virtual {p3, v0, v1, v2, p0}, Lorg/joda/time/Chronology;->getDateTimeMillis(IIII)J

    .line 34
    .line 35
    .line 36
    move-result-wide p0

    .line 37
    return-wide p0
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JLorg/joda/time/Chronology;Lorg/joda/time/Chronology;)J
    .locals 4

    .line 1
    invoke-virtual {p3}, Lorg/joda/time/Chronology;->weekyear()Lorg/joda/time/DateTimeField;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p2}, Lorg/joda/time/Chronology;->weekyear()Lorg/joda/time/DateTimeField;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1, p0, p1}, Lorg/joda/time/DateTimeField;->get(J)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    invoke-virtual {v0, v2, v3, v1}, Lorg/joda/time/DateTimeField;->set(JI)J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    invoke-virtual {p3}, Lorg/joda/time/Chronology;->weekOfWeekyear()Lorg/joda/time/DateTimeField;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {p2}, Lorg/joda/time/Chronology;->weekOfWeekyear()Lorg/joda/time/DateTimeField;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v3, p0, p1}, Lorg/joda/time/DateTimeField;->get(J)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-virtual {v2, v0, v1, v3}, Lorg/joda/time/DateTimeField;->set(JI)J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    invoke-virtual {p3}, Lorg/joda/time/Chronology;->dayOfWeek()Lorg/joda/time/DateTimeField;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {p2}, Lorg/joda/time/Chronology;->dayOfWeek()Lorg/joda/time/DateTimeField;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v3, p0, p1}, Lorg/joda/time/DateTimeField;->get(J)I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    invoke-virtual {v2, v0, v1, v3}, Lorg/joda/time/DateTimeField;->set(JI)J

    .line 48
    .line 49
    .line 50
    move-result-wide v0

    .line 51
    invoke-virtual {p3}, Lorg/joda/time/Chronology;->millisOfDay()Lorg/joda/time/DateTimeField;

    .line 52
    .line 53
    .line 54
    move-result-object p3

    .line 55
    invoke-virtual {p2}, Lorg/joda/time/Chronology;->millisOfDay()Lorg/joda/time/DateTimeField;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-virtual {p2, p0, p1}, Lorg/joda/time/DateTimeField;->get(J)I

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    invoke-virtual {p3, v0, v1, p0}, Lorg/joda/time/DateTimeField;->set(JI)J

    .line 64
    .line 65
    .line 66
    move-result-wide p0

    .line 67
    return-wide p0
.end method

.method public static synthetic access$000(Lorg/joda/time/chrono/GJChronology;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/joda/time/chrono/GJChronology;->iGapDuration:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic access$100(Lorg/joda/time/chrono/GJChronology;)Lorg/joda/time/chrono/GregorianChronology;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/joda/time/chrono/GJChronology;->iGregorianChronology:Lorg/joda/time/chrono/GregorianChronology;

    .line 2
    .line 3
    return-object p0
.end method

.method public static getInstance()Lorg/joda/time/chrono/GJChronology;
    .locals 3

    .line 1
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefault()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    sget-object v1, Lorg/joda/time/chrono/GJChronology;->DEFAULT_CUTOVER:Lorg/joda/time/Instant;

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lorg/joda/time/chrono/GJChronology;->getInstance(Lorg/joda/time/DateTimeZone;Lorg/joda/time/ReadableInstant;I)Lorg/joda/time/chrono/GJChronology;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/GJChronology;
    .locals 2

    .line 2
    sget-object v0, Lorg/joda/time/chrono/GJChronology;->DEFAULT_CUTOVER:Lorg/joda/time/Instant;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lorg/joda/time/chrono/GJChronology;->getInstance(Lorg/joda/time/DateTimeZone;Lorg/joda/time/ReadableInstant;I)Lorg/joda/time/chrono/GJChronology;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Lorg/joda/time/DateTimeZone;JI)Lorg/joda/time/chrono/GJChronology;
    .locals 2

    .line 20
    sget-object v0, Lorg/joda/time/chrono/GJChronology;->DEFAULT_CUTOVER:Lorg/joda/time/Instant;

    invoke-virtual {v0}, Lorg/joda/time/Instant;->getMillis()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 21
    :cond_0
    new-instance v0, Lorg/joda/time/Instant;

    invoke-direct {v0, p1, p2}, Lorg/joda/time/Instant;-><init>(J)V

    move-object p1, v0

    .line 22
    :goto_0
    invoke-static {p0, p1, p3}, Lorg/joda/time/chrono/GJChronology;->getInstance(Lorg/joda/time/DateTimeZone;Lorg/joda/time/ReadableInstant;I)Lorg/joda/time/chrono/GJChronology;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Lorg/joda/time/DateTimeZone;Lorg/joda/time/ReadableInstant;)Lorg/joda/time/chrono/GJChronology;
    .locals 1

    const/4 v0, 0x4

    .line 3
    invoke-static {p0, p1, v0}, Lorg/joda/time/chrono/GJChronology;->getInstance(Lorg/joda/time/DateTimeZone;Lorg/joda/time/ReadableInstant;I)Lorg/joda/time/chrono/GJChronology;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Lorg/joda/time/DateTimeZone;Lorg/joda/time/ReadableInstant;I)Lorg/joda/time/chrono/GJChronology;
    .locals 4

    .line 4
    invoke-static {p0}, Lorg/joda/time/DateTimeUtils;->Wwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTimeZone;

    move-result-object p0

    if-nez p1, :cond_0

    .line 5
    sget-object p1, Lorg/joda/time/chrono/GJChronology;->DEFAULT_CUTOVER:Lorg/joda/time/Instant;

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {p1}, Lorg/joda/time/ReadableInstant;->toInstant()Lorg/joda/time/Instant;

    move-result-object p1

    .line 7
    new-instance v0, Lorg/joda/time/LocalDate;

    invoke-virtual {p1}, Lorg/joda/time/Instant;->getMillis()J

    move-result-wide v1

    invoke-static {p0}, Lorg/joda/time/chrono/GregorianChronology;->getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/GregorianChronology;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/LocalDate;-><init>(JLorg/joda/time/Chronology;)V

    .line 8
    invoke-virtual {v0}, Lorg/joda/time/LocalDate;->getYear()I

    move-result v0

    if-lez v0, :cond_3

    .line 9
    :goto_0
    new-instance v0, Lorg/joda/time/chrono/GJCacheKey;

    invoke-direct {v0, p0, p1, p2}, Lorg/joda/time/chrono/GJCacheKey;-><init>(Lorg/joda/time/DateTimeZone;Lorg/joda/time/Instant;I)V

    .line 10
    sget-object v1, Lorg/joda/time/chrono/GJChronology;->Kkkkkkkkkkkkk:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/joda/time/chrono/GJChronology;

    if-nez v2, :cond_2

    .line 11
    sget-object v2, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    if-ne p0, v2, :cond_1

    .line 12
    new-instance v2, Lorg/joda/time/chrono/GJChronology;

    .line 13
    invoke-static {p0, p2}, Lorg/joda/time/chrono/JulianChronology;->getInstance(Lorg/joda/time/DateTimeZone;I)Lorg/joda/time/chrono/JulianChronology;

    move-result-object v3

    .line 14
    invoke-static {p0, p2}, Lorg/joda/time/chrono/GregorianChronology;->getInstance(Lorg/joda/time/DateTimeZone;I)Lorg/joda/time/chrono/GregorianChronology;

    move-result-object p0

    invoke-direct {v2, v3, p0, p1}, Lorg/joda/time/chrono/GJChronology;-><init>(Lorg/joda/time/chrono/JulianChronology;Lorg/joda/time/chrono/GregorianChronology;Lorg/joda/time/Instant;)V

    goto :goto_1

    .line 15
    :cond_1
    invoke-static {v2, p1, p2}, Lorg/joda/time/chrono/GJChronology;->getInstance(Lorg/joda/time/DateTimeZone;Lorg/joda/time/ReadableInstant;I)Lorg/joda/time/chrono/GJChronology;

    move-result-object p1

    .line 16
    new-instance v2, Lorg/joda/time/chrono/GJChronology;

    .line 17
    invoke-static {p1, p0}, Lorg/joda/time/chrono/ZonedChronology;->getInstance(Lorg/joda/time/Chronology;Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/ZonedChronology;

    move-result-object p0

    iget-object p2, p1, Lorg/joda/time/chrono/GJChronology;->iJulianChronology:Lorg/joda/time/chrono/JulianChronology;

    iget-object v3, p1, Lorg/joda/time/chrono/GJChronology;->iGregorianChronology:Lorg/joda/time/chrono/GregorianChronology;

    iget-object p1, p1, Lorg/joda/time/chrono/GJChronology;->iCutoverInstant:Lorg/joda/time/Instant;

    invoke-direct {v2, p0, p2, v3, p1}, Lorg/joda/time/chrono/GJChronology;-><init>(Lorg/joda/time/Chronology;Lorg/joda/time/chrono/JulianChronology;Lorg/joda/time/chrono/GregorianChronology;Lorg/joda/time/Instant;)V

    .line 18
    :goto_1
    invoke-virtual {v1, v0, v2}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/joda/time/chrono/GJChronology;

    if-eqz p0, :cond_2

    return-object p0

    :cond_2
    return-object v2

    .line 19
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cutover too early. Must be on or after 0001-01-01."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInstanceUTC()Lorg/joda/time/chrono/GJChronology;
    .locals 3

    .line 1
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    .line 2
    .line 3
    sget-object v1, Lorg/joda/time/chrono/GJChronology;->DEFAULT_CUTOVER:Lorg/joda/time/Instant;

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    invoke-static {v0, v1, v2}, Lorg/joda/time/chrono/GJChronology;->getInstance(Lorg/joda/time/DateTimeZone;Lorg/joda/time/ReadableInstant;I)Lorg/joda/time/chrono/GJChronology;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/chrono/GJChronology;->getZone()Lorg/joda/time/DateTimeZone;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverInstant:Lorg/joda/time/Instant;

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/joda/time/chrono/GJChronology;->getMinimumDaysInFirstWeek()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-static {v0, v1, v2}, Lorg/joda/time/chrono/GJChronology;->getInstance(Lorg/joda/time/DateTimeZone;Lorg/joda/time/ReadableInstant;I)Lorg/joda/time/chrono/GJChronology;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method


# virtual methods
.method public assemble(Lorg/joda/time/chrono/AssembledChronology$Fields;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/chrono/AssembledChronology;->getParam()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, [Ljava/lang/Object;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aget-object v2, v0, v2

    .line 9
    .line 10
    move-object v8, v2

    .line 11
    check-cast v8, Lorg/joda/time/chrono/JulianChronology;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    aget-object v2, v0, v2

    .line 15
    .line 16
    move-object v9, v2

    .line 17
    check-cast v9, Lorg/joda/time/chrono/GregorianChronology;

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    aget-object v0, v0, v2

    .line 21
    .line 22
    check-cast v0, Lorg/joda/time/Instant;

    .line 23
    .line 24
    invoke-virtual {v0}, Lorg/joda/time/Instant;->getMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    iput-wide v2, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    .line 29
    .line 30
    iput-object v8, p0, Lorg/joda/time/chrono/GJChronology;->iJulianChronology:Lorg/joda/time/chrono/JulianChronology;

    .line 31
    .line 32
    iput-object v9, p0, Lorg/joda/time/chrono/GJChronology;->iGregorianChronology:Lorg/joda/time/chrono/GregorianChronology;

    .line 33
    .line 34
    iput-object v0, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverInstant:Lorg/joda/time/Instant;

    .line 35
    .line 36
    invoke-virtual {p0}, Lorg/joda/time/chrono/AssembledChronology;->getBase()Lorg/joda/time/Chronology;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    invoke-virtual {v8}, Lorg/joda/time/chrono/JulianChronology;->getMinimumDaysInFirstWeek()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    invoke-virtual {v9}, Lorg/joda/time/chrono/GregorianChronology;->getMinimumDaysInFirstWeek()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-ne v0, v2, :cond_2

    .line 52
    .line 53
    iget-wide v2, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    .line 54
    .line 55
    invoke-virtual {p0, v2, v3}, Lorg/joda/time/chrono/GJChronology;->julianToGregorianByYear(J)J

    .line 56
    .line 57
    .line 58
    move-result-wide v4

    .line 59
    sub-long/2addr v2, v4

    .line 60
    iput-wide v2, p0, Lorg/joda/time/chrono/GJChronology;->iGapDuration:J

    .line 61
    .line 62
    invoke-virtual {p1, v9}, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/Chronology;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v9}, Lorg/joda/time/chrono/AssembledChronology;->millisOfDay()Lorg/joda/time/DateTimeField;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iget-wide v2, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    .line 70
    .line 71
    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->get(J)I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_1

    .line 76
    .line 77
    new-instance v0, Lorg/joda/time/chrono/GJChronology$CutoverField;

    .line 78
    .line 79
    invoke-virtual {v8}, Lorg/joda/time/chrono/AssembledChronology;->millisOfSecond()Lorg/joda/time/DateTimeField;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    iget-object v3, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 84
    .line 85
    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    .line 86
    .line 87
    move-object v1, p0

    .line 88
    invoke-direct/range {v0 .. v5}, Lorg/joda/time/chrono/GJChronology$CutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;J)V

    .line 89
    .line 90
    .line 91
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 92
    .line 93
    new-instance v0, Lorg/joda/time/chrono/GJChronology$CutoverField;

    .line 94
    .line 95
    invoke-virtual {v8}, Lorg/joda/time/chrono/AssembledChronology;->millisOfDay()Lorg/joda/time/DateTimeField;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    iget-object v3, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 100
    .line 101
    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    .line 102
    .line 103
    invoke-direct/range {v0 .. v5}, Lorg/joda/time/chrono/GJChronology$CutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;J)V

    .line 104
    .line 105
    .line 106
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 107
    .line 108
    new-instance v0, Lorg/joda/time/chrono/GJChronology$CutoverField;

    .line 109
    .line 110
    invoke-virtual {v8}, Lorg/joda/time/chrono/AssembledChronology;->secondOfMinute()Lorg/joda/time/DateTimeField;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    iget-object v3, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 115
    .line 116
    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    .line 117
    .line 118
    invoke-direct/range {v0 .. v5}, Lorg/joda/time/chrono/GJChronology$CutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;J)V

    .line 119
    .line 120
    .line 121
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 122
    .line 123
    new-instance v0, Lorg/joda/time/chrono/GJChronology$CutoverField;

    .line 124
    .line 125
    invoke-virtual {v8}, Lorg/joda/time/chrono/AssembledChronology;->secondOfDay()Lorg/joda/time/DateTimeField;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    iget-object v3, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 130
    .line 131
    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    .line 132
    .line 133
    invoke-direct/range {v0 .. v5}, Lorg/joda/time/chrono/GJChronology$CutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;J)V

    .line 134
    .line 135
    .line 136
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 137
    .line 138
    new-instance v0, Lorg/joda/time/chrono/GJChronology$CutoverField;

    .line 139
    .line 140
    invoke-virtual {v8}, Lorg/joda/time/chrono/AssembledChronology;->minuteOfHour()Lorg/joda/time/DateTimeField;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    iget-object v3, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 145
    .line 146
    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    .line 147
    .line 148
    invoke-direct/range {v0 .. v5}, Lorg/joda/time/chrono/GJChronology$CutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;J)V

    .line 149
    .line 150
    .line 151
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 152
    .line 153
    new-instance v0, Lorg/joda/time/chrono/GJChronology$CutoverField;

    .line 154
    .line 155
    invoke-virtual {v8}, Lorg/joda/time/chrono/AssembledChronology;->minuteOfDay()Lorg/joda/time/DateTimeField;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    iget-object v3, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 160
    .line 161
    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    .line 162
    .line 163
    invoke-direct/range {v0 .. v5}, Lorg/joda/time/chrono/GJChronology$CutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;J)V

    .line 164
    .line 165
    .line 166
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 167
    .line 168
    new-instance v0, Lorg/joda/time/chrono/GJChronology$CutoverField;

    .line 169
    .line 170
    invoke-virtual {v8}, Lorg/joda/time/chrono/AssembledChronology;->hourOfDay()Lorg/joda/time/DateTimeField;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    iget-object v3, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 175
    .line 176
    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    .line 177
    .line 178
    invoke-direct/range {v0 .. v5}, Lorg/joda/time/chrono/GJChronology$CutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;J)V

    .line 179
    .line 180
    .line 181
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 182
    .line 183
    new-instance v0, Lorg/joda/time/chrono/GJChronology$CutoverField;

    .line 184
    .line 185
    invoke-virtual {v8}, Lorg/joda/time/chrono/AssembledChronology;->hourOfHalfday()Lorg/joda/time/DateTimeField;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    iget-object v3, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 190
    .line 191
    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    .line 192
    .line 193
    invoke-direct/range {v0 .. v5}, Lorg/joda/time/chrono/GJChronology$CutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;J)V

    .line 194
    .line 195
    .line 196
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 197
    .line 198
    new-instance v0, Lorg/joda/time/chrono/GJChronology$CutoverField;

    .line 199
    .line 200
    invoke-virtual {v8}, Lorg/joda/time/chrono/AssembledChronology;->clockhourOfDay()Lorg/joda/time/DateTimeField;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    iget-object v3, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 205
    .line 206
    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    .line 207
    .line 208
    invoke-direct/range {v0 .. v5}, Lorg/joda/time/chrono/GJChronology$CutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;J)V

    .line 209
    .line 210
    .line 211
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 212
    .line 213
    new-instance v0, Lorg/joda/time/chrono/GJChronology$CutoverField;

    .line 214
    .line 215
    invoke-virtual {v8}, Lorg/joda/time/chrono/AssembledChronology;->clockhourOfHalfday()Lorg/joda/time/DateTimeField;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    iget-object v3, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 220
    .line 221
    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    .line 222
    .line 223
    invoke-direct/range {v0 .. v5}, Lorg/joda/time/chrono/GJChronology$CutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;J)V

    .line 224
    .line 225
    .line 226
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 227
    .line 228
    new-instance v0, Lorg/joda/time/chrono/GJChronology$CutoverField;

    .line 229
    .line 230
    invoke-virtual {v8}, Lorg/joda/time/chrono/AssembledChronology;->halfdayOfDay()Lorg/joda/time/DateTimeField;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    iget-object v3, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 235
    .line 236
    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    .line 237
    .line 238
    invoke-direct/range {v0 .. v5}, Lorg/joda/time/chrono/GJChronology$CutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;J)V

    .line 239
    .line 240
    .line 241
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 242
    .line 243
    :cond_1
    new-instance v0, Lorg/joda/time/chrono/GJChronology$CutoverField;

    .line 244
    .line 245
    invoke-virtual {v8}, Lorg/joda/time/chrono/AssembledChronology;->era()Lorg/joda/time/DateTimeField;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    iget-object v3, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Kkkkkkkkkkkkkkkkkkkkkkkk:Lorg/joda/time/DateTimeField;

    .line 250
    .line 251
    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    .line 252
    .line 253
    move-object v1, p0

    .line 254
    invoke-direct/range {v0 .. v5}, Lorg/joda/time/chrono/GJChronology$CutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;J)V

    .line 255
    .line 256
    .line 257
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Kkkkkkkkkkkkkkkkkkkkkkkk:Lorg/joda/time/DateTimeField;

    .line 258
    .line 259
    new-instance v0, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;

    .line 260
    .line 261
    invoke-virtual {v8}, Lorg/joda/time/chrono/AssembledChronology;->year()Lorg/joda/time/DateTimeField;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    iget-object v3, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwww:Lorg/joda/time/DateTimeField;

    .line 266
    .line 267
    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    .line 268
    .line 269
    invoke-direct/range {v0 .. v5}, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;J)V

    .line 270
    .line 271
    .line 272
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwww:Lorg/joda/time/DateTimeField;

    .line 273
    .line 274
    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DurationField;

    .line 279
    .line 280
    new-instance v0, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;

    .line 281
    .line 282
    invoke-virtual {v8}, Lorg/joda/time/chrono/AssembledChronology;->yearOfEra()Lorg/joda/time/DateTimeField;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    iget-object v3, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Www:Lorg/joda/time/DateTimeField;

    .line 287
    .line 288
    iget-object v4, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DurationField;

    .line 289
    .line 290
    iget-wide v5, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    .line 291
    .line 292
    invoke-direct/range {v0 .. v6}, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;Lorg/joda/time/DurationField;J)V

    .line 293
    .line 294
    .line 295
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Www:Lorg/joda/time/DateTimeField;

    .line 296
    .line 297
    new-instance v0, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;

    .line 298
    .line 299
    invoke-virtual {v8}, Lorg/joda/time/chrono/AssembledChronology;->centuryOfEra()Lorg/joda/time/DateTimeField;

    .line 300
    .line 301
    .line 302
    move-result-object v2

    .line 303
    iget-object v3, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Kkkkkkkkkkkkkkkkkkkkkkkkk:Lorg/joda/time/DateTimeField;

    .line 304
    .line 305
    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    .line 306
    .line 307
    invoke-direct/range {v0 .. v5}, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;J)V

    .line 308
    .line 309
    .line 310
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Kkkkkkkkkkkkkkkkkkkkkkkkk:Lorg/joda/time/DateTimeField;

    .line 311
    .line 312
    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DurationField;

    .line 317
    .line 318
    new-instance v0, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;

    .line 319
    .line 320
    invoke-virtual {v8}, Lorg/joda/time/chrono/AssembledChronology;->yearOfCentury()Lorg/joda/time/DateTimeField;

    .line 321
    .line 322
    .line 323
    move-result-object v2

    .line 324
    iget-object v3, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Kkkkkkkkkkkkkkkkkkkkkkkkkk:Lorg/joda/time/DateTimeField;

    .line 325
    .line 326
    iget-object v4, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DurationField;

    .line 327
    .line 328
    iget-object v5, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DurationField;

    .line 329
    .line 330
    iget-wide v6, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    .line 331
    .line 332
    invoke-direct/range {v0 .. v7}, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;Lorg/joda/time/DurationField;Lorg/joda/time/DurationField;J)V

    .line 333
    .line 334
    .line 335
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Kkkkkkkkkkkkkkkkkkkkkkkkkk:Lorg/joda/time/DateTimeField;

    .line 336
    .line 337
    new-instance v0, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;

    .line 338
    .line 339
    invoke-virtual {v8}, Lorg/joda/time/chrono/AssembledChronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    .line 340
    .line 341
    .line 342
    move-result-object v2

    .line 343
    iget-object v3, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwww:Lorg/joda/time/DateTimeField;

    .line 344
    .line 345
    iget-object v5, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DurationField;

    .line 346
    .line 347
    iget-wide v6, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    .line 348
    .line 349
    const/4 v4, 0x0

    .line 350
    invoke-direct/range {v0 .. v7}, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;Lorg/joda/time/DurationField;Lorg/joda/time/DurationField;J)V

    .line 351
    .line 352
    .line 353
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwww:Lorg/joda/time/DateTimeField;

    .line 354
    .line 355
    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DurationField;

    .line 360
    .line 361
    new-instance v0, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;

    .line 362
    .line 363
    invoke-virtual {v8}, Lorg/joda/time/chrono/AssembledChronology;->weekyear()Lorg/joda/time/DateTimeField;

    .line 364
    .line 365
    .line 366
    move-result-object v2

    .line 367
    iget-object v3, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwww:Lorg/joda/time/DateTimeField;

    .line 368
    .line 369
    iget-wide v5, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    .line 370
    .line 371
    const/4 v7, 0x1

    .line 372
    invoke-direct/range {v0 .. v7}, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;Lorg/joda/time/DurationField;JZ)V

    .line 373
    .line 374
    .line 375
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwww:Lorg/joda/time/DateTimeField;

    .line 376
    .line 377
    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DurationField;

    .line 382
    .line 383
    new-instance v0, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;

    .line 384
    .line 385
    invoke-virtual {v8}, Lorg/joda/time/chrono/AssembledChronology;->weekyearOfCentury()Lorg/joda/time/DateTimeField;

    .line 386
    .line 387
    .line 388
    move-result-object v2

    .line 389
    iget-object v3, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwww:Lorg/joda/time/DateTimeField;

    .line 390
    .line 391
    iget-object v4, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DurationField;

    .line 392
    .line 393
    iget-object v5, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DurationField;

    .line 394
    .line 395
    iget-wide v6, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    .line 396
    .line 397
    invoke-direct/range {v0 .. v7}, Lorg/joda/time/chrono/GJChronology$ImpreciseCutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;Lorg/joda/time/DurationField;Lorg/joda/time/DurationField;J)V

    .line 398
    .line 399
    .line 400
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwww:Lorg/joda/time/DateTimeField;

    .line 401
    .line 402
    invoke-virtual {v9}, Lorg/joda/time/chrono/AssembledChronology;->year()Lorg/joda/time/DateTimeField;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    iget-wide v2, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    .line 407
    .line 408
    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->roundCeiling(J)J

    .line 409
    .line 410
    .line 411
    move-result-wide v5

    .line 412
    new-instance v0, Lorg/joda/time/chrono/GJChronology$CutoverField;

    .line 413
    .line 414
    invoke-virtual {v8}, Lorg/joda/time/chrono/AssembledChronology;->dayOfYear()Lorg/joda/time/DateTimeField;

    .line 415
    .line 416
    .line 417
    move-result-object v2

    .line 418
    iget-object v3, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 419
    .line 420
    iget-object v4, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DurationField;

    .line 421
    .line 422
    const/4 v7, 0x0

    .line 423
    invoke-direct/range {v0 .. v7}, Lorg/joda/time/chrono/GJChronology$CutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;Lorg/joda/time/DurationField;JZ)V

    .line 424
    .line 425
    .line 426
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 427
    .line 428
    invoke-virtual {v9}, Lorg/joda/time/chrono/AssembledChronology;->weekyear()Lorg/joda/time/DateTimeField;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    iget-wide v2, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    .line 433
    .line 434
    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->roundCeiling(J)J

    .line 435
    .line 436
    .line 437
    move-result-wide v5

    .line 438
    new-instance v0, Lorg/joda/time/chrono/GJChronology$CutoverField;

    .line 439
    .line 440
    invoke-virtual {v8}, Lorg/joda/time/chrono/AssembledChronology;->weekOfWeekyear()Lorg/joda/time/DateTimeField;

    .line 441
    .line 442
    .line 443
    move-result-object v2

    .line 444
    iget-object v3, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwww:Lorg/joda/time/DateTimeField;

    .line 445
    .line 446
    iget-object v4, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DurationField;

    .line 447
    .line 448
    const/4 v7, 0x1

    .line 449
    invoke-direct/range {v0 .. v7}, Lorg/joda/time/chrono/GJChronology$CutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;Lorg/joda/time/DurationField;JZ)V

    .line 450
    .line 451
    .line 452
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwww:Lorg/joda/time/DateTimeField;

    .line 453
    .line 454
    new-instance v0, Lorg/joda/time/chrono/GJChronology$CutoverField;

    .line 455
    .line 456
    invoke-virtual {v8}, Lorg/joda/time/chrono/AssembledChronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    .line 457
    .line 458
    .line 459
    move-result-object v2

    .line 460
    iget-object v3, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 461
    .line 462
    iget-wide v4, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    .line 463
    .line 464
    invoke-direct/range {v0 .. v5}, Lorg/joda/time/chrono/GJChronology$CutoverField;-><init>(Lorg/joda/time/chrono/GJChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeField;J)V

    .line 465
    .line 466
    .line 467
    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DurationField;

    .line 468
    .line 469
    iput-object v1, v0, Lorg/joda/time/chrono/GJChronology$CutoverField;->Wwwwwwwwwwwwwwwwwww:Lorg/joda/time/DurationField;

    .line 470
    .line 471
    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->Wwwwwwwwww:Lorg/joda/time/DateTimeField;

    .line 472
    .line 473
    return-void

    .line 474
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 475
    .line 476
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 477
    .line 478
    .line 479
    throw v0
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
    instance-of v1, p1, Lorg/joda/time/chrono/GJChronology;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    check-cast p1, Lorg/joda/time/chrono/GJChronology;

    .line 11
    .line 12
    iget-wide v3, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    .line 13
    .line 14
    iget-wide v5, p1, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    .line 15
    .line 16
    cmp-long v1, v3, v5

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Lorg/joda/time/chrono/GJChronology;->getMinimumDaysInFirstWeek()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {p1}, Lorg/joda/time/chrono/GJChronology;->getMinimumDaysInFirstWeek()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-ne v1, v3, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Lorg/joda/time/chrono/GJChronology;->getZone()Lorg/joda/time/DateTimeZone;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {p1}, Lorg/joda/time/chrono/GJChronology;->getZone()Lorg/joda/time/DateTimeZone;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {v1, p1}, Lorg/joda/time/DateTimeZone;->equals(Ljava/lang/Object;)Z

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
    return v2
.end method

.method public getDateTimeMillis(IIII)J
    .locals 4
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
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology;->iGregorianChronology:Lorg/joda/time/chrono/GregorianChronology;

    .line 4
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/chrono/GregorianChronology;->getDateTimeMillis(IIII)J

    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 6
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology;->iJulianChronology:Lorg/joda/time/chrono/JulianChronology;

    .line 7
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/chrono/JulianChronology;->getDateTimeMillis(IIII)J

    move-result-wide p1

    .line 8
    iget-wide p3, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    cmp-long p3, p1, p3

    if-gez p3, :cond_1

    return-wide p1

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Specified date does not exist"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-wide v0
.end method

.method public getDateTimeMillis(IIIIIII)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 10
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

    .line 11
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

    .line 12
    :try_start_0
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology;->iGregorianChronology:Lorg/joda/time/chrono/GregorianChronology;

    .line 13
    invoke-virtual/range {v0 .. v7}, Lorg/joda/time/chrono/GregorianChronology;->getDateTimeMillis(IIIIIII)J

    move-result-wide p1
    :try_end_0
    .catch Lorg/joda/time/IllegalFieldValueException; {:try_start_0 .. :try_end_0} :catch_0

    move p3, v3

    goto :goto_0

    :catch_0
    move-exception v0

    move p3, v3

    move-object p1, v0

    const/4 p2, 0x2

    if-ne v2, p2, :cond_4

    const/16 p2, 0x1d

    if-ne p3, p2, :cond_4

    .line 14
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology;->iGregorianChronology:Lorg/joda/time/chrono/GregorianChronology;

    const/16 v3, 0x1c

    .line 15
    invoke-virtual/range {v0 .. v7}, Lorg/joda/time/chrono/GregorianChronology;->getDateTimeMillis(IIIIIII)J

    move-result-wide p4

    .line 16
    iget-wide p6, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    cmp-long p2, p4, p6

    if-gez p2, :cond_3

    move-wide p1, p4

    .line 17
    :goto_0
    iget-wide p4, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    cmp-long p4, p1, p4

    if-gez p4, :cond_2

    .line 18
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology;->iJulianChronology:Lorg/joda/time/chrono/JulianChronology;

    move v3, p3

    .line 19
    invoke-virtual/range {v0 .. v7}, Lorg/joda/time/chrono/JulianChronology;->getDateTimeMillis(IIIIIII)J

    move-result-wide p1

    .line 20
    iget-wide p3, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    cmp-long p3, p1, p3

    if-gez p3, :cond_1

    goto :goto_1

    .line 21
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Specified date does not exist"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    return-wide p1

    .line 22
    :cond_3
    throw p1

    .line 23
    :cond_4
    throw p1
.end method

.method public getGregorianCutover()Lorg/joda/time/Instant;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverInstant:Lorg/joda/time/Instant;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMinimumDaysInFirstWeek()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology;->iGregorianChronology:Lorg/joda/time/chrono/GregorianChronology;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/joda/time/chrono/GregorianChronology;->getMinimumDaysInFirstWeek()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
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

.method public gregorianToJulianByWeekyear(J)J
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology;->iGregorianChronology:Lorg/joda/time/chrono/GregorianChronology;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/joda/time/chrono/GJChronology;->iJulianChronology:Lorg/joda/time/chrono/JulianChronology;

    .line 4
    .line 5
    invoke-static {p1, p2, v0, v1}, Lorg/joda/time/chrono/GJChronology;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JLorg/joda/time/Chronology;Lorg/joda/time/Chronology;)J

    .line 6
    .line 7
    .line 8
    move-result-wide p1

    .line 9
    return-wide p1
.end method

.method public gregorianToJulianByYear(J)J
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology;->iGregorianChronology:Lorg/joda/time/chrono/GregorianChronology;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/joda/time/chrono/GJChronology;->iJulianChronology:Lorg/joda/time/chrono/JulianChronology;

    .line 4
    .line 5
    invoke-static {p1, p2, v0, v1}, Lorg/joda/time/chrono/GJChronology;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JLorg/joda/time/Chronology;Lorg/joda/time/Chronology;)J

    .line 6
    .line 7
    .line 8
    move-result-wide p1

    .line 9
    return-wide p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/chrono/GJChronology;->getZone()Lorg/joda/time/DateTimeZone;

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
    const/16 v1, 0x61c1

    .line 10
    .line 11
    add-int/2addr v1, v0

    .line 12
    invoke-virtual {p0}, Lorg/joda/time/chrono/GJChronology;->getMinimumDaysInFirstWeek()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    add-int/2addr v1, v0

    .line 17
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverInstant:Lorg/joda/time/Instant;

    .line 18
    .line 19
    invoke-virtual {v0}, Lorg/joda/time/base/AbstractInstant;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    add-int/2addr v1, v0

    .line 24
    return v1
.end method

.method public julianToGregorianByWeekyear(J)J
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology;->iJulianChronology:Lorg/joda/time/chrono/JulianChronology;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/joda/time/chrono/GJChronology;->iGregorianChronology:Lorg/joda/time/chrono/GregorianChronology;

    .line 4
    .line 5
    invoke-static {p1, p2, v0, v1}, Lorg/joda/time/chrono/GJChronology;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JLorg/joda/time/Chronology;Lorg/joda/time/Chronology;)J

    .line 6
    .line 7
    .line 8
    move-result-wide p1

    .line 9
    return-wide p1
.end method

.method public julianToGregorianByYear(J)J
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology;->iJulianChronology:Lorg/joda/time/chrono/JulianChronology;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/joda/time/chrono/GJChronology;->iGregorianChronology:Lorg/joda/time/chrono/GregorianChronology;

    .line 4
    .line 5
    invoke-static {p1, p2, v0, v1}, Lorg/joda/time/chrono/GJChronology;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JLorg/joda/time/Chronology;Lorg/joda/time/Chronology;)J

    .line 6
    .line 7
    .line 8
    move-result-wide p1

    .line 9
    return-wide p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    const/16 v1, 0x3c

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const-string v1, "GJChronology"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11
    .line 12
    .line 13
    const/16 v1, 0x5b

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lorg/joda/time/chrono/GJChronology;->getZone()Lorg/joda/time/DateTimeZone;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lorg/joda/time/DateTimeZone;->getID()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 27
    .line 28
    .line 29
    iget-wide v1, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    .line 30
    .line 31
    sget-object v3, Lorg/joda/time/chrono/GJChronology;->DEFAULT_CUTOVER:Lorg/joda/time/Instant;

    .line 32
    .line 33
    invoke-virtual {v3}, Lorg/joda/time/Instant;->getMillis()J

    .line 34
    .line 35
    .line 36
    move-result-wide v3

    .line 37
    cmp-long v1, v1, v3

    .line 38
    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    const-string v1, ",cutover="

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lorg/joda/time/chrono/GJChronology;->withUTC()Lorg/joda/time/Chronology;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Lorg/joda/time/Chronology;->dayOfYear()Lorg/joda/time/DateTimeField;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iget-wide v2, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    .line 55
    .line 56
    invoke-virtual {v1, v2, v3}, Lorg/joda/time/DateTimeField;->remainder(J)J

    .line 57
    .line 58
    .line 59
    move-result-wide v1

    .line 60
    const-wide/16 v3, 0x0

    .line 61
    .line 62
    cmp-long v1, v1, v3

    .line 63
    .line 64
    if-nez v1, :cond_0

    .line 65
    .line 66
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lorg/joda/time/format/DateTimeFormatter;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    goto :goto_0

    .line 71
    :cond_0
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Lorg/joda/time/format/DateTimeFormatter;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    :goto_0
    invoke-virtual {p0}, Lorg/joda/time/chrono/GJChronology;->withUTC()Lorg/joda/time/Chronology;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v1, v2}, Lorg/joda/time/format/DateTimeFormatter;->Wwwwwwwwwwwwww(Lorg/joda/time/Chronology;)Lorg/joda/time/format/DateTimeFormatter;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    iget-wide v2, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverMillis:J

    .line 84
    .line 85
    invoke-virtual {v1, v0, v2, v3}, Lorg/joda/time/format/DateTimeFormatter;->Wwwwwwwwwwwwwwwwww(Ljava/lang/StringBuffer;J)V

    .line 86
    .line 87
    .line 88
    :cond_1
    invoke-virtual {p0}, Lorg/joda/time/chrono/GJChronology;->getMinimumDaysInFirstWeek()I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    const/4 v2, 0x4

    .line 93
    if-eq v1, v2, :cond_2

    .line 94
    .line 95
    const-string v1, ",mdfw="

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Lorg/joda/time/chrono/GJChronology;->getMinimumDaysInFirstWeek()I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 105
    .line 106
    .line 107
    :cond_2
    const/16 v1, 0x5d

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    return-object v0
.end method

.method public withUTC()Lorg/joda/time/Chronology;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/joda/time/chrono/GJChronology;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;
    .locals 2

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
    invoke-virtual {p0}, Lorg/joda/time/chrono/GJChronology;->getZone()Lorg/joda/time/DateTimeZone;

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
    iget-object v0, p0, Lorg/joda/time/chrono/GJChronology;->iCutoverInstant:Lorg/joda/time/Instant;

    .line 15
    .line 16
    invoke-virtual {p0}, Lorg/joda/time/chrono/GJChronology;->getMinimumDaysInFirstWeek()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-static {p1, v0, v1}, Lorg/joda/time/chrono/GJChronology;->getInstance(Lorg/joda/time/DateTimeZone;Lorg/joda/time/ReadableInstant;I)Lorg/joda/time/chrono/GJChronology;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method
