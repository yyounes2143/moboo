.class public Lcom/tencent/thumbplayer/tcmedia/core/demuxer/TPNativeJitterBufferConfig;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/thumbplayer/tcmedia/core/demuxer/TPNativeJitterBufferConfig$Builder;
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
    iput-wide p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/demuxer/TPNativeJitterBufferConfig;->mMinDecreaseDurationMs:J

    .line 5
    .line 6
    iput-wide p3, p0, Lcom/tencent/thumbplayer/tcmedia/core/demuxer/TPNativeJitterBufferConfig;->mMaxIncreaseDurationMs:J

    .line 7
    .line 8
    iput-wide p5, p0, Lcom/tencent/thumbplayer/tcmedia/core/demuxer/TPNativeJitterBufferConfig;->mPerIncreaseDurationMs:J

    .line 9
    .line 10
    iput-wide p7, p0, Lcom/tencent/thumbplayer/tcmedia/core/demuxer/TPNativeJitterBufferConfig;->mPerDecreaseDurationMs:J

    .line 11
    .line 12
    iput-wide p9, p0, Lcom/tencent/thumbplayer/tcmedia/core/demuxer/TPNativeJitterBufferConfig;->mAdjustIntervalThresholdMs:J

    .line 13
    .line 14
    iput-wide p11, p0, Lcom/tencent/thumbplayer/tcmedia/core/demuxer/TPNativeJitterBufferConfig;->mFrozenThresholdMs:J

    .line 15
    .line 16
    return-void
.end method
