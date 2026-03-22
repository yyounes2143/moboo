.class public final Lorg/jacoco/core/data/ExecutionData;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[Z

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J


# direct methods
.method public constructor <init>(JLjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lorg/jacoco/core/data/ExecutionData;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 5
    .line 6
    iput-object p3, p0, Lorg/jacoco/core/data/ExecutionData;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 7
    .line 8
    new-array p1, p4, [Z

    .line 9
    .line 10
    iput-object p1, p0, Lorg/jacoco/core/data/ExecutionData;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()[Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jacoco/core/data/ExecutionData;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[Z

    .line 2
    .line 3
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JLjava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    iget-wide v3, p0, Lorg/jacoco/core/data/ExecutionData;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 5
    .line 6
    cmp-long v3, v3, p1

    .line 7
    .line 8
    if-nez v3, :cond_2

    .line 9
    .line 10
    iget-object v3, p0, Lorg/jacoco/core/data/ExecutionData;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    iget-object v3, p0, Lorg/jacoco/core/data/ExecutionData;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[Z

    .line 19
    .line 20
    array-length v3, v3

    .line 21
    if-ne v3, p4, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    new-instance p4, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    new-array p2, v2, [Ljava/lang/Object;

    .line 31
    .line 32
    aput-object p3, p2, v1

    .line 33
    .line 34
    aput-object p1, p2, v0

    .line 35
    .line 36
    const-string p1, "Incompatible execution data for class %s with id %016x."

    .line 37
    .line 38
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {p4, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p4

    .line 46
    :cond_1
    new-instance p4, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    iget-object v3, p0, Lorg/jacoco/core/data/ExecutionData;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const/4 p2, 0x3

    .line 55
    new-array p2, p2, [Ljava/lang/Object;

    .line 56
    .line 57
    aput-object v3, p2, v1

    .line 58
    .line 59
    aput-object p3, p2, v0

    .line 60
    .line 61
    aput-object p1, p2, v2

    .line 62
    .line 63
    const-string p1, "Different class names %s and %s for id %016x."

    .line 64
    .line 65
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-direct {p4, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p4

    .line 73
    :cond_2
    new-instance p3, Ljava/lang/IllegalStateException;

    .line 74
    .line 75
    iget-wide v3, p0, Lorg/jacoco/core/data/ExecutionData;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 76
    .line 77
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 78
    .line 79
    .line 80
    move-result-object p4

    .line 81
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    new-array p2, v2, [Ljava/lang/Object;

    .line 86
    .line 87
    aput-object p4, p2, v1

    .line 88
    .line 89
    aput-object p1, p2, v0

    .line 90
    .line 91
    const-string p1, "Different ids (%016x and %016x)."

    .line 92
    .line 93
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-direct {p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p3
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/jacoco/core/data/ExecutionData;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 2
    .line 3
    iget-wide v1, p0, Lorg/jacoco/core/data/ExecutionData;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 4
    .line 5
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x2

    .line 10
    new-array v2, v2, [Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    aput-object v0, v2, v3

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    aput-object v1, v2, v0

    .line 17
    .line 18
    const-string v0, "ExecutionData[name=%s, id=%016x]"

    .line 19
    .line 20
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method
