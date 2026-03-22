.class public Lcom/tencent/thumbplayer/tcmedia/core/richmedia/TPNativeTimeRange;
.super Ljava/lang/Object;


# instance fields
.field private mEndTimeMs:J

.field private mStartTimeMs:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/richmedia/TPNativeTimeRange;->mStartTimeMs:J

    .line 5
    .line 6
    iput-wide p3, p0, Lcom/tencent/thumbplayer/tcmedia/core/richmedia/TPNativeTimeRange;->mEndTimeMs:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getEndTimeMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/richmedia/TPNativeTimeRange;->mEndTimeMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getStartTimeMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/richmedia/TPNativeTimeRange;->mStartTimeMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public setEndTimeMs(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/richmedia/TPNativeTimeRange;->mEndTimeMs:J

    .line 2
    .line 3
    return-void
.end method

.method public setStartTimeMs(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/richmedia/TPNativeTimeRange;->mStartTimeMs:J

    .line 2
    .line 3
    return-void
.end method
