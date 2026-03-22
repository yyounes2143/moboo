.class public final Lorg/jacoco/core/internal/data/CRC64;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[J


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    const/16 v0, 0x100

    .line 2
    .line 3
    new-array v1, v0, [J

    .line 4
    .line 5
    sput-object v1, Lorg/jacoco/core/internal/data/CRC64;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[J

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    if-ge v2, v0, :cond_2

    .line 10
    .line 11
    int-to-long v3, v2

    .line 12
    move v5, v1

    .line 13
    :goto_1
    const/16 v6, 0x8

    .line 14
    .line 15
    if-ge v5, v6, :cond_1

    .line 16
    .line 17
    const-wide/16 v6, 0x1

    .line 18
    .line 19
    and-long v8, v3, v6

    .line 20
    .line 21
    cmp-long v6, v8, v6

    .line 22
    .line 23
    const/4 v7, 0x1

    .line 24
    if-nez v6, :cond_0

    .line 25
    .line 26
    ushr-long/2addr v3, v7

    .line 27
    const-wide/high16 v6, -0x2800000000000000L    # -7.880401239278896E115

    .line 28
    .line 29
    xor-long/2addr v3, v6

    .line 30
    goto :goto_2

    .line 31
    :cond_0
    ushr-long/2addr v3, v7

    .line 32
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    sget-object v5, Lorg/jacoco/core/internal/data/CRC64;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[J

    .line 36
    .line 37
    aput-wide v3, v5, v2

    .line 38
    .line 39
    add-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
