.class public Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerBaseMediaParams;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TPPlayerBaseMediaParams"
.end annotation


# instance fields
.field public mAudioDecoderType:I

.field public mAudioEncodeFormat:I

.field public mAudioRenderType:I

.field public mDemuxerType:I

.field public mDurationMs:J

.field public mFormatContainer:Ljava/lang/String;

.field public mHlsSourceType:I

.field public mSubtitleEncodeFormat:I

.field public mVideoDecoderType:I

.field public mVideoEncodeFormat:I

.field public mVideoFrameRate:F

.field public mVideoHeight:I

.field public mVideoRenderType:I

.field public mVideoStreamBitrateKbps:J

.field public mVideoWidth:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerBaseMediaParams;->mFormatContainer:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerBaseMediaParams;->mVideoEncodeFormat:I

    .line 10
    .line 11
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerBaseMediaParams;->mAudioEncodeFormat:I

    .line 12
    .line 13
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerBaseMediaParams;->mSubtitleEncodeFormat:I

    .line 14
    .line 15
    const-wide/16 v1, -0x1

    .line 16
    .line 17
    iput-wide v1, p0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerBaseMediaParams;->mVideoStreamBitrateKbps:J

    .line 18
    .line 19
    iput-wide v1, p0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerBaseMediaParams;->mDurationMs:J

    .line 20
    .line 21
    const/high16 v1, -0x40800000    # -1.0f

    .line 22
    .line 23
    iput v1, p0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerBaseMediaParams;->mVideoFrameRate:F

    .line 24
    .line 25
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerBaseMediaParams;->mVideoWidth:I

    .line 26
    .line 27
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerBaseMediaParams;->mVideoHeight:I

    .line 28
    .line 29
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerBaseMediaParams;->mVideoDecoderType:I

    .line 30
    .line 31
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerBaseMediaParams;->mAudioDecoderType:I

    .line 32
    .line 33
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerBaseMediaParams;->mDemuxerType:I

    .line 34
    .line 35
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerBaseMediaParams;->mVideoRenderType:I

    .line 36
    .line 37
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerBaseMediaParams;->mAudioRenderType:I

    .line 38
    .line 39
    iput v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerBaseMediaParams;->mHlsSourceType:I

    .line 40
    .line 41
    return-void
.end method
