.class public final Lcom/tencent/thumbplayer/tcmedia/core/demuxer/TPNativeJitterBufferConfig$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/tcmedia/core/demuxer/TPNativeJitterBufferConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field public static final DEFAULT_ADJUST_INTERVAL_THRESHOLD_MS:J = 0xea60L

.field public static final DEFAULT_FROZEN_THRESHOLD_MS:J = 0x320L

.field public static final DEFAULT_MAX_DECREASE_DURATION_MS:J = 0x1f40L

.field public static final DEFAULT_MIN_DECREASE_DURATION_MS:J = 0x7d0L

.field public static final DEFAULT_PER_DECREASE_DURATION_MS:J = 0x1f4L

.field public static final DEFAULT_PER_INCREASE_DURATION_MS:J = 0x3e8L


# instance fields
.field private mAdjustIntervalThresholdMs:J

.field private mFrozenThresholdMs:J

.field private mMaxIncreaseDurationMs:J

.field private mMinDecreaseDurationMs:J

.field private mPerDecreaseDurationMs:J

.field private mPerIncreaseDurationMs:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x7d0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/demuxer/TPNativeJitterBufferConfig$Builder;->mMinDecreaseDurationMs:J

    .line 7
    .line 8
    const-wide/16 v0, 0x1f40

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/demuxer/TPNativeJitterBufferConfig$Builder;->mMaxIncreaseDurationMs:J

    .line 11
    .line 12
    const-wide/16 v0, 0x3e8

    .line 13
    .line 14
    iput-wide v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/demuxer/TPNativeJitterBufferConfig$Builder;->mPerIncreaseDurationMs:J

    .line 15
    .line 16
    const-wide/16 v0, 0x1f4

    .line 17
    .line 18
    iput-wide v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/demuxer/TPNativeJitterBufferConfig$Builder;->mPerDecreaseDurationMs:J

    .line 19
    .line 20
    const-wide/32 v0, 0xea60

    .line 21
    .line 22
    .line 23
    iput-wide v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/demuxer/TPNativeJitterBufferConfig$Builder;->mAdjustIntervalThresholdMs:J

    .line 24
    .line 25
    const-wide/16 v0, 0x320

    .line 26
    .line 27
    iput-wide v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/demuxer/TPNativeJitterBufferConfig$Builder;->mFrozenThresholdMs:J

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final build()Lcom/tencent/thumbplayer/tcmedia/core/demuxer/TPNativeJitterBufferConfig;
    .locals 13

    .line 1
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/core/demuxer/TPNativeJitterBufferConfig;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/tencent/thumbplayer/tcmedia/core/demuxer/TPNativeJitterBufferConfig$Builder;->mMinDecreaseDurationMs:J

    .line 4
    .line 5
    iget-wide v3, p0, Lcom/tencent/thumbplayer/tcmedia/core/demuxer/TPNativeJitterBufferConfig$Builder;->mMaxIncreaseDurationMs:J

    .line 6
    .line 7
    iget-wide v5, p0, Lcom/tencent/thumbplayer/tcmedia/core/demuxer/TPNativeJitterBufferConfig$Builder;->mPerIncreaseDurationMs:J

    .line 8
    .line 9
    iget-wide v7, p0, Lcom/tencent/thumbplayer/tcmedia/core/demuxer/TPNativeJitterBufferConfig$Builder;->mPerDecreaseDurationMs:J

    .line 10
    .line 11
    iget-wide v9, p0, Lcom/tencent/thumbplayer/tcmedia/core/demuxer/TPNativeJitterBufferConfig$Builder;->mAdjustIntervalThresholdMs:J

    .line 12
    .line 13
    iget-wide v11, p0, Lcom/tencent/thumbplayer/tcmedia/core/demuxer/TPNativeJitterBufferConfig$Builder;->mFrozenThresholdMs:J

    .line 14
    .line 15
    invoke-direct/range {v0 .. v12}, Lcom/tencent/thumbplayer/tcmedia/core/demuxer/TPNativeJitterBufferConfig;-><init>(JJJJJJ)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public final setAdjustIntervalThresholdMs(J)Lcom/tencent/thumbplayer/tcmedia/core/demuxer/TPNativeJitterBufferConfig$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/demuxer/TPNativeJitterBufferConfig$Builder;->mAdjustIntervalThresholdMs:J

    .line 2
    .line 3
    return-object p0
.end method

.method public final setFrozenThresholdMs(J)Lcom/tencent/thumbplayer/tcmedia/core/demuxer/TPNativeJitterBufferConfig$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/demuxer/TPNativeJitterBufferConfig$Builder;->mFrozenThresholdMs:J

    .line 2
    .line 3
    return-object p0
.end method

.method public final setMaxIncreaseDurationMs(J)Lcom/tencent/thumbplayer/tcmedia/core/demuxer/TPNativeJitterBufferConfig$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/demuxer/TPNativeJitterBufferConfig$Builder;->mMaxIncreaseDurationMs:J

    .line 2
    .line 3
    return-object p0
.end method

.method public final setMinDecreaseDurationMs(J)Lcom/tencent/thumbplayer/tcmedia/core/demuxer/TPNativeJitterBufferConfig$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/demuxer/TPNativeJitterBufferConfig$Builder;->mMinDecreaseDurationMs:J

    .line 2
    .line 3
    return-object p0
.end method

.method public final setPerDecreaseDurationMs(J)Lcom/tencent/thumbplayer/tcmedia/core/demuxer/TPNativeJitterBufferConfig$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/demuxer/TPNativeJitterBufferConfig$Builder;->mPerDecreaseDurationMs:J

    .line 2
    .line 3
    return-object p0
.end method

.method public final setPerIncreaseDurationMs(J)Lcom/tencent/thumbplayer/tcmedia/core/demuxer/TPNativeJitterBufferConfig$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/demuxer/TPNativeJitterBufferConfig$Builder;->mPerIncreaseDurationMs:J

    .line 2
    .line 3
    return-object p0
.end method
