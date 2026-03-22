.class public final Lcom/facebook/ads/redexgen/X/8T;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/8R;,
        Lcom/facebook/ads/androidx/media3/exoplayer/audio/AudioTrackPositionTracker$PlayState;
    }
.end annotation


# static fields
.field public static A0X:[B

.field public static A0Y:[Ljava/lang/String;


# instance fields
.field public A00:F

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:J

.field public A07:J

.field public A08:J

.field public A09:J

.field public A0A:J

.field public A0B:J

.field public A0C:J

.field public A0D:J

.field public A0E:J

.field public A0F:J

.field public A0G:J

.field public A0H:J

.field public A0I:J

.field public A0J:J

.field public A0K:J

.field public A0L:J

.field public A0M:J

.field public A0N:Landroid/media/AudioTrack;

.field public A0O:Lcom/facebook/ads/redexgen/X/8Q;

.field public A0P:Ljava/lang/reflect/Method;

.field public A0Q:Z

.field public A0R:Z

.field public A0S:Z

.field public A0T:Z

.field public A0U:Z

.field public final A0V:Lcom/facebook/ads/redexgen/X/8R;

.field public final A0W:[J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 479
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "mFphCeoU9HvMn9ZZEpclfwqoVhk40KwD"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "hKlz0nzOWHQPWv"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "iUYlz8XGQwag9oYQcAYdcNYdwsYMOsO1"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "15ELq8Y13cCLXlrgije1Lj"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "fmh7yYOlG9VsvjTz00hbP4"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Zli7uOe3zpCWYKVvl9v2rZgR93QJVexK"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "W36N5BhoqHIblVGPIwsJc"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "WdPWN8eOnICUfyPLt7yxKs7AdkGnQCZN"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/8T;->A0Y:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/8T;->A06()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/8R;)V
    .locals 4

    .line 23025
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23026
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/8R;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8T;->A0V:Lcom/facebook/ads/redexgen/X/8R;

    .line 23027
    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x12

    if-lt v1, v0, :cond_0

    .line 23028
    :try_start_0
    const-class v3, Landroid/media/AudioTrack;

    const/4 v2, 0x0

    const/16 v1, 0xa

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8T;->A03(III)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8T;->A0P:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23029
    :catch_0
    :cond_0
    const/16 v0, 0xa

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8T;->A0W:[J

    .line 23030
    return-void
.end method

.method private A00()J
    .locals 7

    .line 23031
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 23032
    .local v0, "currentTimeMs":J
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/8T;->A0M:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    .line 23033
    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, v5

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/8T;->A0M:J

    sub-long/2addr v2, v0

    .line 23034
    .local v2, "elapsedTimeSinceStopUs":J
    iget v0, p0, Lcom/facebook/ads/redexgen/X/8T;->A00:F

    .line 23035
    invoke-static {v2, v3, v0}, Lcom/facebook/ads/redexgen/X/4a;->A0Q(JF)J

    move-result-wide v1

    .line 23036
    .local v4, "mediaTimeSinceStopUs":J
    iget v0, p0, Lcom/facebook/ads/redexgen/X/8T;->A04:I

    int-to-long v4, v0

    mul-long/2addr v4, v1

    const-wide/32 v0, 0xf4240

    div-long/2addr v4, v0

    .line 23037
    .local v6, "framesSinceStop":J
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/8T;->A07:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/8T;->A0L:J

    add-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    .line 23038
    .end local v2    # "elapsedTimeSinceStopUs":J
    .end local v4    # "mediaTimeSinceStopUs":J
    .end local v6    # "framesSinceStop":J
    :cond_0
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/8T;->A0C:J

    sub-long v3, v5, v0

    const-wide/16 v1, 0x5

    cmp-long v0, v3, v1

    if-ltz v0, :cond_1

    .line 23039
    invoke-direct {p0, v5, v6}, Lcom/facebook/ads/redexgen/X/8T;->A09(J)V

    .line 23040
    iput-wide v5, p0, Lcom/facebook/ads/redexgen/X/8T;->A0C:J

    .line 23041
    :cond_1
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/8T;->A0I:J

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/8T;->A0J:J

    const/16 v0, 0x20

    shl-long/2addr v1, v0

    add-long/2addr v3, v1

    return-wide v3
.end method

.method private A01()J
    .locals 2

    .line 23042
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8T;->A00()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/8T;->A02(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private A02(J)J
    .locals 4

    .line 23043
    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, p1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/8T;->A04:I

    int-to-long v0, v0

    div-long/2addr v2, v0

    return-wide v2
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/8T;->A0X:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v3, p0, p1

    sub-int/2addr v3, p2

    sget-object v1, Lcom/facebook/ads/redexgen/X/8T;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x79

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/8T;->A0Y:[Ljava/lang/String;

    const-string v1, "zj97MoHR9Py27VEns6K5abiX60E98d7F"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    add-int/lit8 v0, v3, -0x2c

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A04()V
    .locals 10

    .line 23044
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/16 v0, 0x3e8

    div-long/2addr v2, v0

    .line 23045
    .local v0, "systemTimeUs":J
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/8T;->A0A:J

    sub-long v6, v2, v0

    const-wide/16 v4, 0x7530

    cmp-long v0, v6, v4

    if-ltz v0, :cond_5

    .line 23046
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8T;->A01()J

    move-result-wide v6

    .line 23047
    .local v2, "playbackPositionUs":J
    const-wide/16 v4, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/8T;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x39

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v8, Lcom/facebook/ads/redexgen/X/8T;->A0Y:[Ljava/lang/String;

    const-string v1, "mG91kidYerianKW8k81eRhz1YFhUJ0TD"

    const/4 v0, 0x5

    aput-object v1, v8, v0

    const-string v1, "tz52TeTP2nXzICTGyUb9gO4UkVUhPqg7"

    const/4 v0, 0x2

    aput-object v1, v8, v0

    cmp-long v0, v6, v4

    if-nez v0, :cond_1

    .line 23048
    return-void

    .line 23049
    :cond_1
    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/8T;->A0W:[J

    iget v8, p0, Lcom/facebook/ads/redexgen/X/8T;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/8T;->A00:F

    .line 23050
    invoke-static {v6, v7, v0}, Lcom/facebook/ads/redexgen/X/4a;->A0R(JF)J

    move-result-wide v0

    sub-long/2addr v0, v2

    aput-wide v0, v9, v8

    .line 23051
    iget v0, p0, Lcom/facebook/ads/redexgen/X/8T;->A02:I

    add-int/lit8 v8, v0, 0x1

    const/16 v7, 0xa

    sget-object v6, Lcom/facebook/ads/redexgen/X/8T;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v6, v0

    const/4 v0, 0x2

    aget-object v6, v6, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v6, Lcom/facebook/ads/redexgen/X/8T;->A0Y:[Ljava/lang/String;

    const-string v1, "AFkMvnjOvj65Z9PkG4nAGP"

    const/4 v0, 0x4

    aput-object v1, v6, v0

    const-string v1, "gdO3Z2pM7uD2KyszdkE03V"

    const/4 v0, 0x3

    aput-object v1, v6, v0

    rem-int/2addr v8, v7

    iput v8, p0, Lcom/facebook/ads/redexgen/X/8T;->A02:I

    .line 23052
    iget v0, p0, Lcom/facebook/ads/redexgen/X/8T;->A05:I

    if-ge v0, v7, :cond_2

    .line 23053
    iget v0, p0, Lcom/facebook/ads/redexgen/X/8T;->A05:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/8T;->A05:I

    .line 23054
    :cond_2
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/8T;->A0A:J

    sget-object v1, Lcom/facebook/ads/redexgen/X/8T;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x79

    if-eq v1, v0, :cond_3

    .line 23055
    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/8T;->A0K:J

    .line 23056
    const/4 v0, 0x0

    .local v4, "i":I
    :goto_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/8T;->A05:I

    if-ge v0, v1, :cond_5

    .line 23057
    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/8T;->A0K:J

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8T;->A0W:[J

    aget-wide v8, v1, v0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/8T;->A05:I

    int-to-long v4, v1

    div-long/2addr v8, v4

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/facebook/ads/redexgen/X/8T;->A0K:J

    .line 23058
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 23059
    :cond_3
    sget-object v6, Lcom/facebook/ads/redexgen/X/8T;->A0Y:[Ljava/lang/String;

    const-string v1, "OfE8owY5iQWinV"

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const-string v1, "VmS0vt0tfNVVuH5SEqER3"

    const/4 v0, 0x6

    aput-object v1, v6, v0

    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/8T;->A0K:J

    .line 23060
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 23061
    .end local v2    # "playbackPositionUs":J
    .end local v4    # "i":I
    :cond_5
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8T;->A0T:Z

    if-eqz v0, :cond_6

    .line 23062
    return-void

    .line 23063
    :cond_6
    invoke-direct {p0, v2, v3}, Lcom/facebook/ads/redexgen/X/8T;->A07(J)V

    .line 23064
    invoke-direct {p0, v2, v3}, Lcom/facebook/ads/redexgen/X/8T;->A08(J)V

    .line 23065
    return-void
.end method

.method private A05()V
    .locals 3

    .line 23066
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/8T;->A0K:J

    .line 23067
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/8T;->A05:I

    .line 23068
    iput v0, p0, Lcom/facebook/ads/redexgen/X/8T;->A02:I

    .line 23069
    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/8T;->A0A:J

    .line 23070
    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/8T;->A0D:J

    .line 23071
    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/8T;->A0H:J

    .line 23072
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8T;->A0U:Z

    .line 23073
    return-void
.end method

.method public static A06()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/8T;->A0X:[B

    return-void

    :array_0
    .array-data 1
        -0x12t
        -0x14t
        -0x5t
        -0x2dt
        -0x18t
        -0x5t
        -0x14t
        -0xbt
        -0x16t
        0x0t
    .end array-data
.end method

.method private A07(J)V
    .locals 15

    .line 23074
    move-object v4, p0

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/8T;->A0O:Lcom/facebook/ads/redexgen/X/8Q;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/8Q;

    .line 23075
    .local v12, "audioTimestampPoller":Lcom/facebook/ads/redexgen/X/8Q;
    move-wide/from16 v11, p1

    invoke-virtual {v3, v11, v12}, Lcom/facebook/ads/redexgen/X/8Q;->A07(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 23076
    return-void

    .line 23077
    :cond_0
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/8Q;->A02()J

    move-result-wide v9

    .line 23078
    .local v13, "audioTimestampSystemTimeUs":J
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/8Q;->A01()J

    move-result-wide v7

    .line 23079
    .local v8, "audioTimestampPositionFrames":J
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8T;->A01()J

    move-result-wide v13

    .line 23080
    .local p0, "playbackPositionUs":J
    sub-long v0, v9, v11

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/32 v5, 0x4c4b40

    cmp-long v0, v1, v5

    if-lez v0, :cond_1

    .line 23081
    iget-object v6, v4, Lcom/facebook/ads/redexgen/X/8T;->A0V:Lcom/facebook/ads/redexgen/X/8R;

    .end local v8    # "audioTimestampPositionFrames":J
    .local v10, "audioTimestampPositionFrames":J
    invoke-interface/range {v6 .. v14}, Lcom/facebook/ads/redexgen/X/8R;->AFP(JJJJ)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/8T;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x79

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 23082
    .end local v10    # "audioTimestampPositionFrames":J
    .restart local v8    # "audioTimestampPositionFrames":J
    .end local v8    # "audioTimestampPositionFrames":J
    .restart local v10    # "audioTimestampPositionFrames":J
    :cond_1
    invoke-direct {v4, v7, v8}, Lcom/facebook/ads/redexgen/X/8T;->A02(J)J

    move-result-wide v0

    sub-long/2addr v0, v13

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    cmp-long v0, v1, v5

    if-lez v0, :cond_2

    .line 23083
    iget-object v6, v4, Lcom/facebook/ads/redexgen/X/8T;->A0V:Lcom/facebook/ads/redexgen/X/8R;

    invoke-interface/range {v6 .. v14}, Lcom/facebook/ads/redexgen/X/8R;->AEi(JJJJ)V

    .line 23084
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/8Q;->A04()V

    goto :goto_0

    .line 23085
    :cond_2
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/8Q;->A03()V

    goto :goto_0

    .line 23086
    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/8T;->A0Y:[Ljava/lang/String;

    const-string v1, "mF6kCbqtc5PO8yUDnW98QRQbFVZ1vLXh"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/8Q;->A04()V

    .line 23087
    :goto_0
    return-void
.end method

.method private A08(J)V
    .locals 7

    .line 23088
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8T;->A0R:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8T;->A0P:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/8T;->A09:J

    sub-long v3, p1, v0

    const-wide/32 v1, 0x7a120

    cmp-long v0, v3, v1

    if-ltz v0, :cond_1

    .line 23089
    :try_start_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/8T;->A0P:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8T;->A0N:Landroid/media/AudioTrack;

    .line 23090
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4a;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v0, 0x3e8

    mul-long/2addr v2, v0

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/8T;->A06:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/8T;->A0E:J

    .line 23091
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/8T;->A0E:J

    const-wide/16 v3, 0x0

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/8T;->A0E:J

    .line 23092
    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/8T;->A0E:J

    const-wide/32 v1, 0x4c4b40

    cmp-long v0, v5, v1

    if-lez v0, :cond_0

    .line 23093
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/8T;->A0V:Lcom/facebook/ads/redexgen/X/8R;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/8T;->A0E:J

    invoke-interface {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/8R;->ADi(J)V

    .line 23094
    iput-wide v3, p0, Lcom/facebook/ads/redexgen/X/8T;->A0E:J

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23095
    .local v0, "e":Ljava/lang/Exception;
    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8T;->A0P:Ljava/lang/reflect/Method;

    .line 23096
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/8T;->A09:J

    .line 23097
    :cond_1
    return-void
.end method

.method private A09(J)V
    .locals 12

    .line 23098
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8T;->A0N:Landroid/media/AudioTrack;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioTrack;

    .line 23099
    .local v0, "audioTrack":Landroid/media/AudioTrack;
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v7

    .line 23100
    .local v1, "state":I
    const/4 v0, 0x1

    if-ne v7, v0, :cond_0

    .line 23101
    return-void

    .line 23102
    :cond_0
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v0

    int-to-long v4, v0

    const-wide v0, 0xffffffffL

    and-long/2addr v4, v0

    .line 23103
    .local v2, "rawPlaybackHeadPosition":J
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8T;->A0T:Z

    const-wide/16 v10, 0x0

    if-eqz v0, :cond_3

    .line 23104
    const/4 v3, 0x2

    sget-object v1, Lcom/facebook/ads/redexgen/X/8T;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x79

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/8T;->A0Y:[Ljava/lang/String;

    const-string v1, "ov9kApTb7V0CjbZZCKupQjB7jnUQPlTV"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "rmmJb8OCjqsXlyJPr0xnnc6CD7US0gp3"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ne v7, v3, :cond_2

    cmp-long v0, v4, v10

    if-nez v0, :cond_2

    .line 23105
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/8T;->A0I:J

    sget-object v6, Lcom/facebook/ads/redexgen/X/8T;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v6, v0

    const/4 v0, 0x2

    aget-object v6, v6, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v6, Lcom/facebook/ads/redexgen/X/8T;->A0Y:[Ljava/lang/String;

    const-string v1, "zeySHXDKnQ5XWlDOUaGDVi"

    const/4 v0, 0x4

    aput-object v1, v6, v0

    const-string v1, "LoWPIsfdmaPBaSpnKkuKXN"

    const/4 v0, 0x3

    aput-object v1, v6, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/8T;->A0F:J

    .line 23106
    :cond_2
    :goto_0
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/8T;->A0F:J

    add-long/2addr v4, v0

    .line 23107
    :cond_3
    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x1d

    if-gt v1, v0, :cond_7

    .line 23108
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v10

    if-nez v0, :cond_6

    iget-wide v8, p0, Lcom/facebook/ads/redexgen/X/8T;->A0I:J

    cmp-long v0, v8, v10

    if-lez v0, :cond_6

    const/4 v0, 0x3

    if-ne v7, v0, :cond_6

    .line 23109
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/8T;->A08:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_4

    .line 23110
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/8T;->A08:J

    .line 23111
    :cond_4
    return-void

    :cond_5
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/8T;->A0F:J

    goto :goto_0

    .line 23112
    :cond_6
    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/8T;->A08:J

    .line 23113
    :cond_7
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/8T;->A0I:J

    cmp-long v0, v1, v4

    if-lez v0, :cond_8

    .line 23114
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/8T;->A0J:J

    const-wide/16 v0, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/8T;->A0J:J

    .line 23115
    :cond_8
    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/8T;->A0I:J

    .line 23116
    return-void
.end method

.method private A0A()Z
    .locals 5

    .line 23117
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8T;->A0T:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8T;->A0N:Landroid/media/AudioTrack;

    .line 23118
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_0

    .line 23119
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8T;->A00()J

    move-result-wide v3

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 23120
    :goto_0
    return v0

    .line 23121
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0B(I)Z
    .locals 2

    .line 23122
    sget v1, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v0, 0x17

    if-ge v1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A0C(J)I
    .locals 4

    .line 23123
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8T;->A00()J

    move-result-wide v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/8T;->A03:I

    int-to-long v0, v0

    mul-long/2addr v2, v0

    sub-long/2addr p1, v2

    long-to-int v1, p1

    .line 23124
    .local v1, "bytesPending":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/8T;->A01:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final A0D(Z)J
    .locals 16

    .line 23125
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/8T;->A0N:Landroid/media/AudioTrack;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    const/4 v0, 0x3

    if-ne v1, v0, :cond_0

    .line 23126
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/8T;->A04()V

    .line 23127
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/16 v14, 0x3e8

    div-long/2addr v2, v14

    .line 23128
    .local v1, "systemTimeUs":J
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/8T;->A0O:Lcom/facebook/ads/redexgen/X/8Q;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/8Q;

    .line 23129
    .local v5, "audioTimestampPoller":Lcom/facebook/ads/redexgen/X/8Q;
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/8Q;->A06()Z

    move-result v6

    .line 23130
    .local v6, "useGetTimestampMode":Z
    if-eqz v6, :cond_5

    .line 23131
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/8Q;->A01()J

    move-result-wide v0

    .line 23132
    .local v7, "timestampPositionFrames":J
    invoke-direct {v7, v0, v1}, Lcom/facebook/ads/redexgen/X/8T;->A02(J)J

    move-result-wide v0

    .line 23133
    .local v9, "timestampPositionUs":J
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/8Q;->A02()J

    move-result-wide v8

    sub-long v4, v2, v8

    .line 23134
    .local v11, "elapsedSinceTimestampUs":J
    iget v8, v7, Lcom/facebook/ads/redexgen/X/8T;->A00:F

    .line 23135
    invoke-static {v4, v5, v8}, Lcom/facebook/ads/redexgen/X/4a;->A0Q(JF)J

    move-result-wide v4

    .line 23136
    add-long/2addr v0, v4

    .line 23137
    .end local v7    # "timestampPositionFrames":J
    .end local v11    # "elapsedSinceTimestampUs":J
    .local v9, "positionUs":J
    :cond_1
    :goto_0
    iget-boolean v4, v7, Lcom/facebook/ads/redexgen/X/8T;->A0S:Z

    if-eq v4, v6, :cond_2

    .line 23138
    iget-wide v4, v7, Lcom/facebook/ads/redexgen/X/8T;->A0D:J

    iput-wide v4, v7, Lcom/facebook/ads/redexgen/X/8T;->A0H:J

    .line 23139
    iget-wide v4, v7, Lcom/facebook/ads/redexgen/X/8T;->A0B:J

    iput-wide v4, v7, Lcom/facebook/ads/redexgen/X/8T;->A0G:J

    .line 23140
    :cond_2
    iget-wide v8, v7, Lcom/facebook/ads/redexgen/X/8T;->A0H:J

    sub-long v4, v2, v8

    .line 23141
    .local v7, "elapsedSincePreviousModeUs":J
    const-wide/32 v12, 0xf4240

    cmp-long v8, v4, v12

    if-gez v8, :cond_3

    .line 23142
    iget-wide v8, v7, Lcom/facebook/ads/redexgen/X/8T;->A0G:J

    iget v10, v7, Lcom/facebook/ads/redexgen/X/8T;->A00:F

    .line 23143
    invoke-static {v4, v5, v10}, Lcom/facebook/ads/redexgen/X/4a;->A0Q(JF)J

    move-result-wide v10

    add-long/2addr v8, v10

    .line 23144
    .local v13, "previousModeProjectedPositionUs":J
    mul-long/2addr v4, v14

    div-long/2addr v4, v12

    .line 23145
    .local v15, "rampPoint":J
    mul-long/2addr v0, v4

    .line 23146
    sub-long v10, v14, v4

    mul-long/2addr v10, v8

    add-long/2addr v0, v10

    .line 23147
    div-long/2addr v0, v14

    .line 23148
    .end local v13    # "previousModeProjectedPositionUs":J
    .end local v15    # "rampPoint":J
    :cond_3
    iget-boolean v4, v7, Lcom/facebook/ads/redexgen/X/8T;->A0U:Z

    if-nez v4, :cond_4

    iget-wide v8, v7, Lcom/facebook/ads/redexgen/X/8T;->A0B:J

    cmp-long v4, v0, v8

    if-lez v4, :cond_4

    .line 23149
    const/4 v4, 0x1

    iput-boolean v4, v7, Lcom/facebook/ads/redexgen/X/8T;->A0U:Z

    .line 23150
    iget-wide v8, v7, Lcom/facebook/ads/redexgen/X/8T;->A0B:J

    sub-long v4, v0, v8

    invoke-static {v4, v5}, Lcom/facebook/ads/redexgen/X/4a;->A0P(J)J

    move-result-wide v4

    .line 23151
    .local v3, "mediaDurationSinceLastPositionUs":J
    iget v8, v7, Lcom/facebook/ads/redexgen/X/8T;->A00:F

    .line 23152
    invoke-static {v4, v5, v8}, Lcom/facebook/ads/redexgen/X/4a;->A0R(JF)J

    move-result-wide v8

    .line 23153
    .local v11, "playoutDurationSinceLastPositionUs":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v8, v9}, Lcom/facebook/ads/redexgen/X/4a;->A0P(J)J

    move-result-wide v8

    sub-long/2addr v4, v8

    .line 23154
    .local v13, "playoutStartSystemTimeMs":J
    iget-object v8, v7, Lcom/facebook/ads/redexgen/X/8T;->A0V:Lcom/facebook/ads/redexgen/X/8R;

    invoke-interface {v8, v4, v5}, Lcom/facebook/ads/redexgen/X/8R;->AEg(J)V

    .line 23155
    .end local v3    # "mediaDurationSinceLastPositionUs":J
    .end local v11    # "playoutDurationSinceLastPositionUs":J
    .end local v13    # "playoutStartSystemTimeMs":J
    :cond_4
    iput-wide v2, v7, Lcom/facebook/ads/redexgen/X/8T;->A0D:J

    .line 23156
    iput-wide v0, v7, Lcom/facebook/ads/redexgen/X/8T;->A0B:J

    .line 23157
    iput-boolean v6, v7, Lcom/facebook/ads/redexgen/X/8T;->A0S:Z

    .line 23158
    return-wide v0

    .line 23159
    .end local v9    # "positionUs":J
    :cond_5
    iget v5, v7, Lcom/facebook/ads/redexgen/X/8T;->A05:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/8T;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x39

    if-eq v1, v0, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_6
    sget-object v4, Lcom/facebook/ads/redexgen/X/8T;->A0Y:[Ljava/lang/String;

    const-string v1, "hPK4fhT0jDF836"

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const-string v1, "hdImPZUqzFjLboc09pskO"

    const/4 v0, 0x6

    aput-object v1, v4, v0

    if-nez v5, :cond_7

    .line 23160
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/8T;->A01()J

    move-result-wide v0

    .line 23161
    .local v7, "positionUs":J
    .restart local v9    # "positionUs":J
    :goto_1
    if-nez p1, :cond_1

    .line 23162
    iget-wide v4, v7, Lcom/facebook/ads/redexgen/X/8T;->A0E:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto/16 :goto_0

    .line 23163
    .end local v7    # "positionUs":J
    :cond_7
    iget-wide v4, v7, Lcom/facebook/ads/redexgen/X/8T;->A0K:J

    add-long/2addr v4, v2

    iget v0, v7, Lcom/facebook/ads/redexgen/X/8T;->A00:F

    .line 23164
    invoke-static {v4, v5, v0}, Lcom/facebook/ads/redexgen/X/4a;->A0Q(JF)J

    move-result-wide v0

    goto :goto_1
.end method

.method public final A0E()V
    .locals 1

    .line 23165
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8T;->A05()V

    .line 23166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8T;->A0N:Landroid/media/AudioTrack;

    .line 23167
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8T;->A0O:Lcom/facebook/ads/redexgen/X/8Q;

    .line 23168
    return-void
.end method

.method public final A0F()V
    .locals 1

    .line 23169
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8T;->A0O:Lcom/facebook/ads/redexgen/X/8Q;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/8Q;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8Q;->A05()V

    .line 23170
    return-void
.end method

.method public final A0G(F)V
    .locals 4

    .line 23171
    iput p1, p0, Lcom/facebook/ads/redexgen/X/8T;->A00:F

    .line 23172
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8T;->A0O:Lcom/facebook/ads/redexgen/X/8Q;

    if-eqz v0, :cond_0

    .line 23173
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/8T;->A0O:Lcom/facebook/ads/redexgen/X/8Q;

    sget-object v2, Lcom/facebook/ads/redexgen/X/8T;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/8T;->A0Y:[Ljava/lang/String;

    const-string v1, "VU48pb9CUkQeOU"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "XcBh4pT8Ou6Ibzda0RyIg"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/8Q;->A05()V

    .line 23174
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8T;->A05()V

    .line 23175
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0H(J)V
    .locals 4

    .line 23176
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8T;->A00()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/8T;->A0L:J

    .line 23177
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v0, 0x3e8

    mul-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/8T;->A0M:J

    .line 23178
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/8T;->A07:J

    .line 23179
    return-void
.end method

.method public final A0I(Landroid/media/AudioTrack;ZIII)V
    .locals 5

    .line 23180
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/8T;->A0N:Landroid/media/AudioTrack;

    .line 23181
    iput p4, p0, Lcom/facebook/ads/redexgen/X/8T;->A03:I

    .line 23182
    iput p5, p0, Lcom/facebook/ads/redexgen/X/8T;->A01:I

    .line 23183
    new-instance v0, Lcom/facebook/ads/redexgen/X/8Q;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/8Q;-><init>(Landroid/media/AudioTrack;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8T;->A0O:Lcom/facebook/ads/redexgen/X/8Q;

    .line 23184
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/8T;->A04:I

    .line 23185
    const/4 v4, 0x0

    if-eqz p2, :cond_1

    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/8T;->A0B(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8T;->A0T:Z

    .line 23186
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/4a;->A15(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8T;->A0R:Z

    .line 23187
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8T;->A0R:Z

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_0

    div-int/2addr p5, p4

    int-to-long v0, p5

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/8T;->A02(J)J

    move-result-wide v0

    :goto_1
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/8T;->A06:J

    .line 23188
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/8T;->A0I:J

    .line 23189
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/8T;->A0J:J

    .line 23190
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/8T;->A0F:J

    .line 23191
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/8T;->A0Q:Z

    .line 23192
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/8T;->A0M:J

    .line 23193
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/8T;->A08:J

    .line 23194
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/8T;->A09:J

    .line 23195
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/8T;->A0E:J

    .line 23196
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/8T;->A00:F

    .line 23197
    return-void

    .line 23198
    :cond_0
    move-wide v0, v2

    goto :goto_1

    .line 23199
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0J()Z
    .locals 2

    .line 23200
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8T;->A0N:Landroid/media/AudioTrack;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    const/4 v0, 0x3

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0K()Z
    .locals 5

    .line 23201
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8T;->A05()V

    .line 23202
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/8T;->A0M:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 23203
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8T;->A0O:Lcom/facebook/ads/redexgen/X/8Q;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/8Q;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8Q;->A05()V

    .line 23204
    const/4 v0, 0x1

    return v0

    .line 23205
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final A0L(J)Z
    .locals 3

    .line 23206
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8T;->A00()J

    move-result-wide v1

    cmp-long v0, p1, v1

    if-gtz v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8T;->A0A()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0M(J)Z
    .locals 5

    .line 23207
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/8T;->A08:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-lez v0, :cond_0

    .line 23208
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/8T;->A08:J

    sub-long/2addr v3, v0

    const-wide/16 v1, 0xc8

    cmp-long v0, v3, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    .line 23209
    :goto_0
    return v0

    .line 23210
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0N(J)Z
    .locals 8

    .line 23211
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8T;->A0N:Landroid/media/AudioTrack;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v7

    .line 23212
    .local v0, "playState":I
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8T;->A0T:Z

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    .line 23213
    const/4 v0, 0x2

    const/4 v3, 0x0

    if-ne v7, v0, :cond_1

    .line 23214
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/8T;->A0Q:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/8T;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 23215
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/8T;->A0Y:[Ljava/lang/String;

    const-string v1, "DhRe3Wriyk6HQ1"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "kYJAoF9OHBJ3Wrbuortpe"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return v3

    .line 23216
    :cond_1
    if-ne v7, v4, :cond_2

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8T;->A00()J

    move-result-wide v5

    const-wide/16 v1, 0x0

    cmp-long v0, v5, v1

    if-nez v0, :cond_2

    .line 23217
    return v3

    .line 23218
    :cond_2
    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/8T;->A0Q:Z

    .line 23219
    .local v1, "hadData":Z
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/8T;->A0L(J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8T;->A0Q:Z

    .line 23220
    if-eqz v1, :cond_3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8T;->A0Q:Z

    if-nez v0, :cond_3

    if-eq v7, v4, :cond_3

    .line 23221
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/8T;->A0V:Lcom/facebook/ads/redexgen/X/8R;

    iget v2, p0, Lcom/facebook/ads/redexgen/X/8T;->A01:I

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/8T;->A06:J

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/4a;->A0P(J)J

    move-result-wide v0

    invoke-interface {v3, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/8R;->AFY(IJ)V

    .line 23222
    :cond_3
    return v4
.end method
