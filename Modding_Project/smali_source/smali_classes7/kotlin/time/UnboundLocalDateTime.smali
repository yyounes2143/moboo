.class final Lkotlin/time/UnboundLocalDateTime;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/time/UnboundLocalDateTime$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0003\u0018\u0000 !2\u00020\u0001:\u0001!B?\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\n\u0010\u000bJW\u0010\u0014\u001a\u0002H\u0015\"\u0004\u0008\u0000\u0010\u00152\u0006\u0010\u0016\u001a\u00020\u000326\u0010\u0017\u001a2\u0012\u0013\u0012\u00110\u0019\u00a2\u0006\u000c\u0008\u001a\u0012\u0008\u0008\u001b\u0012\u0004\u0008\u0008(\u001c\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u001a\u0012\u0008\u0008\u001b\u0012\u0004\u0008\u0008(\u001d\u0012\u0004\u0012\u0002H\u00150\u0018H\u0086\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001eJ\u0008\u0010\u001f\u001a\u00020 H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\rR\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\rR\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\rR\u0011\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\r\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\""
    }
    d2 = {
        "Lkotlin/time/UnboundLocalDateTime;",
        "",
        "year",
        "",
        "month",
        "day",
        "hour",
        "minute",
        "second",
        "nanosecond",
        "<init>",
        "(IIIIIII)V",
        "getYear",
        "()I",
        "getMonth",
        "getDay",
        "getHour",
        "getMinute",
        "getSecond",
        "getNanosecond",
        "toInstant",
        "T",
        "offsetSeconds",
        "buildInstant",
        "Lkotlin/Function2;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "epochSeconds",
        "nanosecondOfSecond",
        "(ILkotlin/jvm/functions/Function2;)Ljava/lang/Object;",
        "toString",
        "",
        "Companion",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/time/ExperimentalTime;
.end annotation


# static fields
.field public static final Companion:Lkotlin/time/UnboundLocalDateTime$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final day:I

.field private final hour:I

.field private final minute:I

.field private final month:I

.field private final nanosecond:I

.field private final second:I

.field private final year:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlin/time/UnboundLocalDateTime$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lkotlin/time/UnboundLocalDateTime$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lkotlin/time/UnboundLocalDateTime;->Companion:Lkotlin/time/UnboundLocalDateTime$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lkotlin/time/UnboundLocalDateTime;->year:I

    .line 5
    .line 6
    iput p2, p0, Lkotlin/time/UnboundLocalDateTime;->month:I

    .line 7
    .line 8
    iput p3, p0, Lkotlin/time/UnboundLocalDateTime;->day:I

    .line 9
    .line 10
    iput p4, p0, Lkotlin/time/UnboundLocalDateTime;->hour:I

    .line 11
    .line 12
    iput p5, p0, Lkotlin/time/UnboundLocalDateTime;->minute:I

    .line 13
    .line 14
    iput p6, p0, Lkotlin/time/UnboundLocalDateTime;->second:I

    .line 15
    .line 16
    iput p7, p0, Lkotlin/time/UnboundLocalDateTime;->nanosecond:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final getDay()I
    .locals 1

    .line 1
    iget v0, p0, Lkotlin/time/UnboundLocalDateTime;->day:I

    .line 2
    .line 3
    return v0
.end method

.method public final getHour()I
    .locals 1

    .line 1
    iget v0, p0, Lkotlin/time/UnboundLocalDateTime;->hour:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMinute()I
    .locals 1

    .line 1
    iget v0, p0, Lkotlin/time/UnboundLocalDateTime;->minute:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMonth()I
    .locals 1

    .line 1
    iget v0, p0, Lkotlin/time/UnboundLocalDateTime;->month:I

    .line 2
    .line 3
    return v0
.end method

.method public final getNanosecond()I
    .locals 1

    .line 1
    iget v0, p0, Lkotlin/time/UnboundLocalDateTime;->nanosecond:I

    .line 2
    .line 3
    return v0
.end method

.method public final getSecond()I
    .locals 1

    .line 1
    iget v0, p0, Lkotlin/time/UnboundLocalDateTime;->second:I

    .line 2
    .line 3
    return v0
.end method

.method public final getYear()I
    .locals 1

    .line 1
    iget v0, p0, Lkotlin/time/UnboundLocalDateTime;->year:I

    .line 2
    .line 3
    return v0
.end method

.method public final toInstant(ILkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 10
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Integer;",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlin/time/UnboundLocalDateTime;->getYear()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-long v0, v0

    .line 6
    const/16 v2, 0x16d

    .line 7
    .line 8
    int-to-long v2, v2

    .line 9
    mul-long/2addr v2, v0

    .line 10
    const-wide/16 v4, 0x0

    .line 11
    .line 12
    cmp-long v4, v0, v4

    .line 13
    .line 14
    if-ltz v4, :cond_0

    .line 15
    .line 16
    const/4 v4, 0x3

    .line 17
    int-to-long v4, v4

    .line 18
    add-long/2addr v4, v0

    .line 19
    const/4 v6, 0x4

    .line 20
    int-to-long v6, v6

    .line 21
    div-long/2addr v4, v6

    .line 22
    const/16 v6, 0x63

    .line 23
    .line 24
    int-to-long v6, v6

    .line 25
    add-long/2addr v6, v0

    .line 26
    const/16 v8, 0x64

    .line 27
    .line 28
    int-to-long v8, v8

    .line 29
    div-long/2addr v6, v8

    .line 30
    sub-long/2addr v4, v6

    .line 31
    const/16 v6, 0x18f

    .line 32
    .line 33
    int-to-long v6, v6

    .line 34
    add-long/2addr v0, v6

    .line 35
    const/16 v6, 0x190

    .line 36
    .line 37
    int-to-long v6, v6

    .line 38
    div-long/2addr v0, v6

    .line 39
    add-long/2addr v4, v0

    .line 40
    add-long/2addr v2, v4

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v4, -0x4

    .line 43
    int-to-long v4, v4

    .line 44
    div-long v4, v0, v4

    .line 45
    .line 46
    const/16 v6, -0x64

    .line 47
    .line 48
    int-to-long v6, v6

    .line 49
    div-long v6, v0, v6

    .line 50
    .line 51
    sub-long/2addr v4, v6

    .line 52
    const/16 v6, -0x190

    .line 53
    .line 54
    int-to-long v6, v6

    .line 55
    div-long/2addr v0, v6

    .line 56
    add-long/2addr v4, v0

    .line 57
    sub-long/2addr v2, v4

    .line 58
    :goto_0
    invoke-virtual {p0}, Lkotlin/time/UnboundLocalDateTime;->getMonth()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    mul-int/lit16 v0, v0, 0x16f

    .line 63
    .line 64
    add-int/lit16 v0, v0, -0x16a

    .line 65
    .line 66
    div-int/lit8 v0, v0, 0xc

    .line 67
    .line 68
    int-to-long v0, v0

    .line 69
    add-long/2addr v2, v0

    .line 70
    invoke-virtual {p0}, Lkotlin/time/UnboundLocalDateTime;->getDay()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    add-int/lit8 v0, v0, -0x1

    .line 75
    .line 76
    int-to-long v0, v0

    .line 77
    add-long/2addr v2, v0

    .line 78
    invoke-virtual {p0}, Lkotlin/time/UnboundLocalDateTime;->getMonth()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    const/4 v1, 0x2

    .line 83
    if-le v0, v1, :cond_2

    .line 84
    .line 85
    const-wide/16 v0, -0x1

    .line 86
    .line 87
    add-long/2addr v0, v2

    .line 88
    invoke-virtual {p0}, Lkotlin/time/UnboundLocalDateTime;->getYear()I

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    invoke-static {v4}, Lkotlin/time/InstantKt;->isLeapYear(I)Z

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    if-nez v4, :cond_1

    .line 97
    .line 98
    const-wide/16 v0, -0x2

    .line 99
    .line 100
    add-long/2addr v2, v0

    .line 101
    goto :goto_1

    .line 102
    :cond_1
    move-wide v2, v0

    .line 103
    :cond_2
    :goto_1
    const v0, 0xafaa8

    .line 104
    .line 105
    .line 106
    int-to-long v0, v0

    .line 107
    sub-long/2addr v2, v0

    .line 108
    invoke-virtual {p0}, Lkotlin/time/UnboundLocalDateTime;->getHour()I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    mul-int/lit16 v0, v0, 0xe10

    .line 113
    .line 114
    invoke-virtual {p0}, Lkotlin/time/UnboundLocalDateTime;->getMinute()I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    mul-int/lit8 v1, v1, 0x3c

    .line 119
    .line 120
    add-int/2addr v0, v1

    .line 121
    invoke-virtual {p0}, Lkotlin/time/UnboundLocalDateTime;->getSecond()I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    add-int/2addr v0, v1

    .line 126
    const v1, 0x15180

    .line 127
    .line 128
    .line 129
    int-to-long v4, v1

    .line 130
    mul-long/2addr v2, v4

    .line 131
    int-to-long v0, v0

    .line 132
    add-long/2addr v2, v0

    .line 133
    int-to-long v0, p1

    .line 134
    sub-long/2addr v2, v0

    .line 135
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {p0}, Lkotlin/time/UnboundLocalDateTime;->getNanosecond()I

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-interface {p2, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "UnboundLocalDateTime("

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lkotlin/time/UnboundLocalDateTime;->year:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x2d

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v2, p0, Lkotlin/time/UnboundLocalDateTime;->month:I

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget v1, p0, Lkotlin/time/UnboundLocalDateTime;->day:I

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const/16 v1, 0x20

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget v1, p0, Lkotlin/time/UnboundLocalDateTime;->hour:I

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const/16 v1, 0x3a

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget v2, p0, Lkotlin/time/UnboundLocalDateTime;->minute:I

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    iget v1, p0, Lkotlin/time/UnboundLocalDateTime;->second:I

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const/16 v1, 0x2e

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    iget v1, p0, Lkotlin/time/UnboundLocalDateTime;->nanosecond:I

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const/16 v1, 0x29

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    return-object v0
.end method
