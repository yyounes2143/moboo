.class public Lcom/tencent/thumbplayer/tcmedia/b/h;
.super Lcom/tencent/thumbplayer/tcmedia/b/d;

# interfaces
.implements Lcom/tencent/thumbplayer/tcmedia/api/composition/ITPMediaTrackClip;
.implements Ljava/io/Serializable;


# instance fields
.field private a:I

.field private b:I

.field private c:J

.field private d:J

.field private e:Ljava/lang/String;

.field private f:J

.field private g:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/b/d;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 7

    .line 2
    const-wide/16 v3, 0x0

    const-wide/16 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/tencent/thumbplayer/tcmedia/b/h;-><init>(Ljava/lang/String;IJJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJJ)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/b/d;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iput p2, p0, Lcom/tencent/thumbplayer/tcmedia/b/h;->a:I

    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/b/h;->e:Ljava/lang/String;

    iput-wide p3, p0, Lcom/tencent/thumbplayer/tcmedia/b/h;->c:J

    iput-wide p5, p0, Lcom/tencent/thumbplayer/tcmedia/b/h;->d:J

    const-wide/16 p1, 0x0

    cmp-long p3, p3, p1

    if-gez p3, :cond_0

    iput-wide p1, p0, Lcom/tencent/thumbplayer/tcmedia/b/h;->c:J

    :cond_0
    cmp-long p1, p5, p1

    if-gtz p1, :cond_1

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tcmedia/b/h;->getOriginalDurationMs()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/tencent/thumbplayer/tcmedia/b/h;->d:J

    :cond_1
    iget p1, p0, Lcom/tencent/thumbplayer/tcmedia/b/h;->a:I

    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/b/f;->a(I)I

    move-result p1

    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/b/h;->b:I

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "TPMediaCompositionTrackClip : clipPath empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/b/h;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

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
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/b/h;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/b/h;-><init>()V

    .line 15
    .line 16
    .line 17
    iput p1, v0, Lcom/tencent/thumbplayer/tcmedia/b/h;->a:I

    .line 18
    .line 19
    iget p1, p0, Lcom/tencent/thumbplayer/tcmedia/b/h;->a:I

    .line 20
    .line 21
    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/b/f;->a(I)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iput p1, v0, Lcom/tencent/thumbplayer/tcmedia/b/h;->b:I

    .line 26
    .line 27
    iget-wide v1, p0, Lcom/tencent/thumbplayer/tcmedia/b/h;->c:J

    .line 28
    .line 29
    iput-wide v1, v0, Lcom/tencent/thumbplayer/tcmedia/b/h;->c:J

    .line 30
    .line 31
    iget-wide v1, p0, Lcom/tencent/thumbplayer/tcmedia/b/h;->d:J

    .line 32
    .line 33
    iput-wide v1, v0, Lcom/tencent/thumbplayer/tcmedia/b/h;->d:J

    .line 34
    .line 35
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/b/h;->e:Ljava/lang/String;

    .line 36
    .line 37
    iput-object p1, v0, Lcom/tencent/thumbplayer/tcmedia/b/h;->e:Ljava/lang/String;

    .line 38
    .line 39
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
    instance-of v1, p1, Lcom/tencent/thumbplayer/tcmedia/b/h;

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    return v0

    .line 10
    :cond_1
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/b/h;->b:I

    .line 11
    .line 12
    check-cast p1, Lcom/tencent/thumbplayer/tcmedia/b/h;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/b/h;->getClipId()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-ne v1, v2, :cond_2

    .line 19
    .line 20
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/b/h;->a:I

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/b/h;->getMediaType()I

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
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/b/h;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public getEndTimeMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tencent/thumbplayer/tcmedia/b/h;->d:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/b/h;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMediaType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/b/h;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public getOriginalDurationMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tencent/thumbplayer/tcmedia/b/h;->g:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getStartPositionMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tencent/thumbplayer/tcmedia/b/h;->f:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getStartTimeMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tencent/thumbplayer/tcmedia/b/h;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/b/h;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setCutTimeRange(JJ)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tcmedia/b/h;->getOriginalDurationMs()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    cmp-long v0, p1, v0

    .line 6
    .line 7
    const-string v1, "setCutTimeRange: Start time is greater than duration"

    .line 8
    .line 9
    if-gez v0, :cond_4

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tcmedia/b/h;->getOriginalDurationMs()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    cmp-long v0, p3, v2

    .line 16
    .line 17
    if-gtz v0, :cond_3

    .line 18
    .line 19
    const-wide/16 v0, 0x0

    .line 20
    .line 21
    cmp-long v2, p1, v0

    .line 22
    .line 23
    if-gez v2, :cond_0

    .line 24
    .line 25
    move-wide p1, v0

    .line 26
    :cond_0
    cmp-long v0, p3, v0

    .line 27
    .line 28
    if-gtz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tcmedia/b/h;->getOriginalDurationMs()J

    .line 31
    .line 32
    .line 33
    move-result-wide p3

    .line 34
    :cond_1
    cmp-long v0, p1, p3

    .line 35
    .line 36
    if-gez v0, :cond_2

    .line 37
    .line 38
    iput-wide p1, p0, Lcom/tencent/thumbplayer/tcmedia/b/h;->c:J

    .line 39
    .line 40
    iput-wide p3, p0, Lcom/tencent/thumbplayer/tcmedia/b/h;->d:J

    .line 41
    .line 42
    return-void

    .line 43
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 44
    .line 45
    const-string p2, "setCutTimeRange: Start time is greater than end time"

    .line 46
    .line 47
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1

    .line 51
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 52
    .line 53
    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p1

    .line 57
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 58
    .line 59
    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p1
.end method

.method public setOriginalDurationMs(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/tencent/thumbplayer/tcmedia/b/h;->g:J

    .line 2
    .line 3
    return-void
.end method

.method public setStartPositionMs(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/tencent/thumbplayer/tcmedia/b/h;->f:J

    .line 2
    .line 3
    return-void
.end method
