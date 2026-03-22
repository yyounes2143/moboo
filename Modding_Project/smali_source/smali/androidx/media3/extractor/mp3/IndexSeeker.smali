.class final Landroidx/media3/extractor/mp3/IndexSeeker;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroidx/media3/extractor/mp3/Seeker;


# static fields
.field static final MIN_TIME_BETWEEN_POINTS_US:J = 0x186a0L
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final averageBitrate:I

.field private final dataEndPosition:J

.field private durationUs:J

.field private final positions:Landroidx/media3/common/util/LongArray;

.field private final timesUs:Landroidx/media3/common/util/LongArray;


# direct methods
.method public constructor <init>(JJJ)V
    .locals 10

    .line 1
    move-wide v2, p5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    iput-wide p1, p0, Landroidx/media3/extractor/mp3/IndexSeeker;->durationUs:J

    .line 6
    .line 7
    iput-wide v2, p0, Landroidx/media3/extractor/mp3/IndexSeeker;->dataEndPosition:J

    .line 8
    .line 9
    new-instance v6, Landroidx/media3/common/util/LongArray;

    .line 10
    .line 11
    invoke-direct {v6}, Landroidx/media3/common/util/LongArray;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v6, p0, Landroidx/media3/extractor/mp3/IndexSeeker;->timesUs:Landroidx/media3/common/util/LongArray;

    .line 15
    .line 16
    new-instance v7, Landroidx/media3/common/util/LongArray;

    .line 17
    .line 18
    invoke-direct {v7}, Landroidx/media3/common/util/LongArray;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v7, p0, Landroidx/media3/extractor/mp3/IndexSeeker;->positions:Landroidx/media3/common/util/LongArray;

    .line 22
    .line 23
    const-wide/16 v8, 0x0

    .line 24
    .line 25
    invoke-virtual {v6, v8, v9}, Landroidx/media3/common/util/LongArray;->add(J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v7, p3, p4}, Landroidx/media3/common/util/LongArray;->add(J)V

    .line 29
    .line 30
    .line 31
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    cmp-long v6, p1, v6

    .line 37
    .line 38
    const v7, -0x7fffffff

    .line 39
    .line 40
    .line 41
    if-eqz v6, :cond_1

    .line 42
    .line 43
    sub-long v0, p3, v2

    .line 44
    .line 45
    const-wide/16 v2, 0x8

    .line 46
    .line 47
    sget-object v6, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 48
    .line 49
    move-wide v4, p1

    .line 50
    invoke-static/range {v0 .. v6}, Landroidx/media3/common/util/Util;->scaleLargeValue(JJJLjava/math/RoundingMode;)J

    .line 51
    .line 52
    .line 53
    move-result-wide v0

    .line 54
    cmp-long v2, v0, v8

    .line 55
    .line 56
    if-lez v2, :cond_0

    .line 57
    .line 58
    const-wide/32 v2, 0x7fffffff

    .line 59
    .line 60
    .line 61
    cmp-long v2, v0, v2

    .line 62
    .line 63
    if-gtz v2, :cond_0

    .line 64
    .line 65
    long-to-int v7, v0

    .line 66
    :cond_0
    iput v7, p0, Landroidx/media3/extractor/mp3/IndexSeeker;->averageBitrate:I

    .line 67
    .line 68
    return-void

    .line 69
    :cond_1
    iput v7, p0, Landroidx/media3/extractor/mp3/IndexSeeker;->averageBitrate:I

    .line 70
    .line 71
    return-void
.end method


# virtual methods
.method public getAverageBitrate()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/extractor/mp3/IndexSeeker;->averageBitrate:I

    .line 2
    .line 3
    return v0
.end method

.method public getDataEndPosition()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/extractor/mp3/IndexSeeker;->dataEndPosition:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getDurationUs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/extractor/mp3/IndexSeeker;->durationUs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getSeekPoints(J)Landroidx/media3/extractor/SeekMap$SeekPoints;
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/media3/extractor/mp3/IndexSeeker;->timesUs:Landroidx/media3/common/util/LongArray;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, p1, p2, v1, v1}, Landroidx/media3/common/util/Util;->binarySearchFloor(Landroidx/media3/common/util/LongArray;JZZ)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    new-instance v2, Landroidx/media3/extractor/SeekPoint;

    .line 9
    .line 10
    iget-object v3, p0, Landroidx/media3/extractor/mp3/IndexSeeker;->timesUs:Landroidx/media3/common/util/LongArray;

    .line 11
    .line 12
    invoke-virtual {v3, v0}, Landroidx/media3/common/util/LongArray;->get(I)J

    .line 13
    .line 14
    .line 15
    move-result-wide v3

    .line 16
    iget-object v5, p0, Landroidx/media3/extractor/mp3/IndexSeeker;->positions:Landroidx/media3/common/util/LongArray;

    .line 17
    .line 18
    invoke-virtual {v5, v0}, Landroidx/media3/common/util/LongArray;->get(I)J

    .line 19
    .line 20
    .line 21
    move-result-wide v5

    .line 22
    invoke-direct {v2, v3, v4, v5, v6}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    .line 23
    .line 24
    .line 25
    iget-wide v3, v2, Landroidx/media3/extractor/SeekPoint;->timeUs:J

    .line 26
    .line 27
    cmp-long p1, v3, p1

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    iget-object p1, p0, Landroidx/media3/extractor/mp3/IndexSeeker;->timesUs:Landroidx/media3/common/util/LongArray;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroidx/media3/common/util/LongArray;->size()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    sub-int/2addr p1, v1

    .line 38
    if-ne v0, p1, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    new-instance p1, Landroidx/media3/extractor/SeekPoint;

    .line 42
    .line 43
    iget-object p2, p0, Landroidx/media3/extractor/mp3/IndexSeeker;->timesUs:Landroidx/media3/common/util/LongArray;

    .line 44
    .line 45
    add-int/2addr v0, v1

    .line 46
    invoke-virtual {p2, v0}, Landroidx/media3/common/util/LongArray;->get(I)J

    .line 47
    .line 48
    .line 49
    move-result-wide v3

    .line 50
    iget-object p2, p0, Landroidx/media3/extractor/mp3/IndexSeeker;->positions:Landroidx/media3/common/util/LongArray;

    .line 51
    .line 52
    invoke-virtual {p2, v0}, Landroidx/media3/common/util/LongArray;->get(I)J

    .line 53
    .line 54
    .line 55
    move-result-wide v0

    .line 56
    invoke-direct {p1, v3, v4, v0, v1}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    .line 57
    .line 58
    .line 59
    new-instance p2, Landroidx/media3/extractor/SeekMap$SeekPoints;

    .line 60
    .line 61
    invoke-direct {p2, v2, p1}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    .line 62
    .line 63
    .line 64
    return-object p2

    .line 65
    :cond_1
    :goto_0
    new-instance p1, Landroidx/media3/extractor/SeekMap$SeekPoints;

    .line 66
    .line 67
    invoke-direct {p1, v2}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;)V

    .line 68
    .line 69
    .line 70
    return-object p1
.end method

.method public getTimeUs(J)J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/extractor/mp3/IndexSeeker;->positions:Landroidx/media3/common/util/LongArray;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, p1, p2, v1, v1}, Landroidx/media3/common/util/Util;->binarySearchFloor(Landroidx/media3/common/util/LongArray;JZZ)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iget-object p2, p0, Landroidx/media3/extractor/mp3/IndexSeeker;->timesUs:Landroidx/media3/common/util/LongArray;

    .line 9
    .line 10
    invoke-virtual {p2, p1}, Landroidx/media3/common/util/LongArray;->get(I)J

    .line 11
    .line 12
    .line 13
    move-result-wide p1

    .line 14
    return-wide p1
.end method

.method public isSeekable()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public isTimeUsInIndex(J)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/extractor/mp3/IndexSeeker;->timesUs:Landroidx/media3/common/util/LongArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/common/util/LongArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    sub-int/2addr v1, v2

    .line 9
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/LongArray;->get(I)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    sub-long/2addr p1, v0

    .line 14
    const-wide/32 v0, 0x186a0

    .line 15
    .line 16
    .line 17
    cmp-long p1, p1, v0

    .line 18
    .line 19
    if-gez p1, :cond_0

    .line 20
    .line 21
    return v2

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    return p1
.end method

.method public maybeAddSeekPoint(JJ)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/media3/extractor/mp3/IndexSeeker;->isTimeUsInIndex(J)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/mp3/IndexSeeker;->timesUs:Landroidx/media3/common/util/LongArray;

    .line 9
    .line 10
    invoke-virtual {v0, p1, p2}, Landroidx/media3/common/util/LongArray;->add(J)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Landroidx/media3/extractor/mp3/IndexSeeker;->positions:Landroidx/media3/common/util/LongArray;

    .line 14
    .line 15
    invoke-virtual {p1, p3, p4}, Landroidx/media3/common/util/LongArray;->add(J)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public setDurationUs(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/media3/extractor/mp3/IndexSeeker;->durationUs:J

    .line 2
    .line 3
    return-void
.end method
