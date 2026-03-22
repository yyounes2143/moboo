.class public Lcom/tencent/thumbplayer/tcmedia/b/a;
.super Lcom/tencent/thumbplayer/tcmedia/b/d;

# interfaces
.implements Lcom/tencent/thumbplayer/tcmedia/api/composition/ITPMediaTrackClip;
.implements Ljava/io/Serializable;


# instance fields
.field private a:I

.field private b:I

.field private c:J

.field private d:J

.field private e:J


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/b/d;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/tencent/thumbplayer/tcmedia/b/a;->c:J

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/tencent/thumbplayer/tcmedia/b/a;->d:J

    .line 9
    .line 10
    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/b/a;->a:I

    .line 11
    .line 12
    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/b/f;->a(I)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/b/a;->b:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public clone(I)Lcom/tencent/thumbplayer/tcmedia/api/composition/ITPMediaTrackClip;
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    return-object p1

    .line 12
    :cond_0
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/b/a;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/b/a;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/b/f;->a(I)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iput p1, v0, Lcom/tencent/thumbplayer/tcmedia/b/a;->b:I

    .line 22
    .line 23
    iget-wide v1, p0, Lcom/tencent/thumbplayer/tcmedia/b/a;->c:J

    .line 24
    .line 25
    iput-wide v1, v0, Lcom/tencent/thumbplayer/tcmedia/b/a;->c:J

    .line 26
    .line 27
    iget-wide v1, p0, Lcom/tencent/thumbplayer/tcmedia/b/a;->d:J

    .line 28
    .line 29
    iput-wide v1, v0, Lcom/tencent/thumbplayer/tcmedia/b/a;->d:J

    .line 30
    .line 31
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/tencent/thumbplayer/tcmedia/b/a;

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    return v0

    .line 10
    :cond_1
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/b/a;->b:I

    .line 11
    .line 12
    check-cast p1, Lcom/tencent/thumbplayer/tcmedia/b/a;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/b/a;->getClipId()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-ne v1, v2, :cond_2

    .line 19
    .line 20
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/b/a;->a:I

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/b/a;->getMediaType()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-ne v1, p1, :cond_2

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    return p1

    .line 30
    :cond_2
    return v0
.end method

.method public getClipId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/b/a;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public getEndTimeMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tencent/thumbplayer/tcmedia/b/a;->d:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public getMediaType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/b/a;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public getOriginalDurationMs()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/tencent/thumbplayer/tcmedia/b/a;->d:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/tencent/thumbplayer/tcmedia/b/a;->c:J

    .line 4
    .line 5
    sub-long/2addr v0, v2

    .line 6
    return-wide v0
.end method

.method public getStartPositionMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tencent/thumbplayer/tcmedia/b/a;->e:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getStartTimeMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tencent/thumbplayer/tcmedia/b/a;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public setCutTimeRange(JJ)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-gez v2, :cond_0

    .line 6
    .line 7
    move-wide p1, v0

    .line 8
    :cond_0
    cmp-long v0, p1, p3

    .line 9
    .line 10
    if-gez v0, :cond_1

    .line 11
    .line 12
    iput-wide p1, p0, Lcom/tencent/thumbplayer/tcmedia/b/a;->c:J

    .line 13
    .line 14
    iput-wide p3, p0, Lcom/tencent/thumbplayer/tcmedia/b/a;->d:J

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    const-string p2, "setCutTimeRange: Start time is greater than end time"

    .line 20
    .line 21
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1
.end method

.method public setOriginalDurationMs(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public setStartPositionMs(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/tencent/thumbplayer/tcmedia/b/a;->e:J

    .line 2
    .line 3
    return-void
.end method
