.class public Lcom/tencent/thumbplayer/tcmedia/api/TPJitterBufferConfig;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/thumbplayer/tcmedia/api/TPJitterBufferConfig$Builder;
    }
.end annotation


# instance fields
.field private mAdjustIntervalThresholdMs:J

.field private mFrozenThresholdMs:J

.field private mMaxIncreaseDurationMs:J

.field private mMinDecreaseDurationMs:J

.field private mPerDecreaseDurationMs:J

.field private mPerIncreaseDurationMs:J


# direct methods
.method public constructor <init>(JJJJJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPJitterBufferConfig;->mMinDecreaseDurationMs:J

    .line 5
    .line 6
    iput-wide p3, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPJitterBufferConfig;->mMaxIncreaseDurationMs:J

    .line 7
    .line 8
    iput-wide p5, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPJitterBufferConfig;->mPerIncreaseDurationMs:J

    .line 9
    .line 10
    iput-wide p7, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPJitterBufferConfig;->mPerDecreaseDurationMs:J

    .line 11
    .line 12
    iput-wide p9, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPJitterBufferConfig;->mAdjustIntervalThresholdMs:J

    .line 13
    .line 14
    iput-wide p11, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPJitterBufferConfig;->mFrozenThresholdMs:J

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public getAdjustIntervalThresholdMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPJitterBufferConfig;->mAdjustIntervalThresholdMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getFrozenThresholdMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPJitterBufferConfig;->mFrozenThresholdMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getMaxIncreaseDurationMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPJitterBufferConfig;->mMaxIncreaseDurationMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getMinDecreaseDurationMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPJitterBufferConfig;->mMinDecreaseDurationMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getPerDecreaseDurationMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPJitterBufferConfig;->mPerDecreaseDurationMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getPerIncreaseDurationMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tencent/thumbplayer/tcmedia/api/TPJitterBufferConfig;->mPerIncreaseDurationMs:J

    .line 2
    .line 3
    return-wide v0
.end method
