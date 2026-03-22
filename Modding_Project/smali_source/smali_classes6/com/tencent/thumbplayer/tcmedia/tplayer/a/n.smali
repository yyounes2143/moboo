.class public Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;
.super Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;


# instance fields
.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->i:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->j:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->k:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->l:Z

    .line 13
    .line 14
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;

    .line 15
    .line 16
    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;

    .line 20
    .line 21
    return-void
.end method

.method private a(JILcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->b(JILcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;)Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;->b()Ljava/util/Map;

    move-result-object p1

    const-string p2, "reportVodEndEvent"

    invoke-virtual {p0, p2, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->a(Ljava/lang/String;Ljava/util/Map;)V

    const-string p2, "vod_end"

    invoke-virtual {p0, p2, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->b(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, p2, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->c(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private a(JILcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;Lcom/tencent/thumbplayer/tcmedia/core/player/TPDynamicStatisticParams;)V
    .locals 11

    .line 4
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->k:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/d/b$b;

    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/d/b$b;-><init>()V

    invoke-direct {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->k(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V

    iput-boolean v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->k:Z

    :cond_0
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->j:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/d/b$q;

    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/d/b$q;-><init>()V

    invoke-direct {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->i(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V

    iput-boolean v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->j:Z

    :cond_1
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->l:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;

    iget-wide v2, v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;->j:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    iget-wide v2, v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;->k:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-object v8, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;

    iget-wide v9, v8, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;->j:J

    sub-long/2addr v6, v9

    add-long/2addr v2, v6

    iput-wide v2, v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;->k:J

    iput-wide v4, v8, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;->j:J

    :cond_2
    iput-boolean v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->l:Z

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reportPlayerEndEvent playerStopTimeMs:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " errorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TPVodReporter"

    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p5

    invoke-direct {p0, p4, v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->a(Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;Lcom/tencent/thumbplayer/tcmedia/core/player/TPDynamicStatisticParams;)V

    invoke-direct/range {p0 .. p4}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->a(JILcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;)V

    return-void
.end method

.method private a(JJI)V
    .locals 4

    .line 5
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;

    iget-object v0, v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;->t:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "TPVodReporter"

    if-nez v0, :cond_0

    const-string p3, "reportSelectTrackEndEvent mSelectTrackInfoList is not contain key:"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;

    iget-object v0, v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;->t:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m$a;

    iget-wide v2, v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m$a;->b:J

    sub-long/2addr p3, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reportSelectTrackEndEvent trackUniqueIndex:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " costTimeMs:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " trackId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m$a;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/f;

    invoke-direct {v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/f;-><init>()V

    invoke-virtual {v1, p5}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/f;->o(I)V

    invoke-virtual {v1, p3, p4}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/f;->c(J)V

    iget-object p3, v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m$a;->c:Lcom/tencent/thumbplayer/tcmedia/api/TPTrackInfo;

    invoke-virtual {p3}, Lcom/tencent/thumbplayer/tcmedia/api/TPTrackInfo;->getTrackType()I

    move-result p3

    invoke-virtual {v1, p3}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/f;->p(I)V

    iget-object p3, v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m$a;->c:Lcom/tencent/thumbplayer/tcmedia/api/TPTrackInfo;

    iget-boolean p3, p3, Lcom/tencent/thumbplayer/tcmedia/api/TPTrackInfo;->isInternal:Z

    invoke-virtual {v1, p3}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/f;->q(I)V

    iget-object p3, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->f:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/j;

    iget-object p4, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;

    iget-object p4, p4, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;

    invoke-virtual {p3, p4}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/j;->b(Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;)V

    iget-object p3, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;

    iget-object p3, p3, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;

    iget p4, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->g:I

    add-int/lit8 p5, p4, 0x1

    iput p5, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->g:I

    invoke-virtual {p3, p4}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;->a(I)V

    iget-object p3, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;

    iget-object p3, p3, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;

    invoke-virtual {v1, p3}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;->a(Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;)V

    invoke-virtual {v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;->b()Ljava/util/Map;

    move-result-object p3

    const-string p4, "onSelectTrackEnd"

    invoke-virtual {p0, p4, p3}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->a(Ljava/lang/String;Ljava/util/Map;)V

    const-string p4, "vod_select_track"

    invoke-virtual {p0, p4, p3}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->b(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, p4, p3}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->c(Ljava/lang/String;Ljava/util/Map;)V

    iget-object p3, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;

    iget-object p3, p3, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;->t:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Lcom/tencent/thumbplayer/tcmedia/api/TPDrmInfo;)V
    .locals 1

    .line 7
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->b(Lcom/tencent/thumbplayer/tcmedia/api/TPDrmInfo;)Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;->b()Ljava/util/Map;

    move-result-object p1

    const-string v0, "reportPlayerDrmInfoEvent"

    invoke-virtual {p0, v0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->a(Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "vod_drm_authentication"

    invoke-virtual {p0, v0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->b(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, v0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->c(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private a(Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;Lcom/tencent/thumbplayer/tcmedia/core/player/TPDynamicStatisticParams;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->b(Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;Lcom/tencent/thumbplayer/tcmedia/core/player/TPDynamicStatisticParams;)Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;->b()Ljava/util/Map;

    move-result-object p1

    const-string p2, "reportVodEndFlowEvent"

    invoke-virtual {p0, p2, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->a(Ljava/lang/String;Ljava/util/Map;)V

    const-string p2, "vod_flow"

    invoke-virtual {p0, p2, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->b(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, p2, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->c(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private a(Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/c;Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;)V
    .locals 1

    .line 9
    iget-object v0, p2, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;->mPlayerBaseMediaParams:Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerBaseMediaParams;

    iget v0, v0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerBaseMediaParams;->mVideoDecoderType:I

    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/c;->t(I)V

    iget-object v0, p2, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;->mPlayerBaseMediaParams:Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerBaseMediaParams;

    iget v0, v0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerBaseMediaParams;->mAudioDecoderType:I

    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/c;->u(I)V

    iget-object v0, p2, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;->mPlayerBaseMediaParams:Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerBaseMediaParams;

    iget v0, v0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerBaseMediaParams;->mVideoRenderType:I

    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/c;->v(I)V

    iget-object v0, p2, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;->mPlayerBaseMediaParams:Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerBaseMediaParams;

    iget v0, v0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerBaseMediaParams;->mAudioRenderType:I

    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/c;->w(I)V

    iget-object p2, p2, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;->mPlayerBaseMediaParams:Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerBaseMediaParams;

    iget p2, p2, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerBaseMediaParams;->mDemuxerType:I

    invoke-virtual {p1, p2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/c;->s(I)V

    return-void
.end method

.method private a(Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/e;Lcom/tencent/thumbplayer/tcmedia/core/player/TPDynamicStatisticParams;)V
    .locals 2

    .line 10
    iget-wide v0, p2, Lcom/tencent/thumbplayer/tcmedia/core/player/TPDynamicStatisticParams;->mMaxVideoStreamBitrate:J

    invoke-virtual {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/e;->u(J)V

    iget-wide v0, p2, Lcom/tencent/thumbplayer/tcmedia/core/player/TPDynamicStatisticParams;->mAvgVideoStreamBitrate:J

    invoke-virtual {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/e;->v(J)V

    iget-wide v0, p2, Lcom/tencent/thumbplayer/tcmedia/core/player/TPDynamicStatisticParams;->mMinVideoStreamBitrate:J

    invoke-virtual {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/e;->w(J)V

    iget-wide v0, p2, Lcom/tencent/thumbplayer/tcmedia/core/player/TPDynamicStatisticParams;->mMaxVideoDecodeCostTimeMs:J

    invoke-virtual {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/e;->x(J)V

    iget-wide v0, p2, Lcom/tencent/thumbplayer/tcmedia/core/player/TPDynamicStatisticParams;->mAvgVideoDecodeCostTimeMs:J

    invoke-virtual {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/e;->y(J)V

    iget-wide v0, p2, Lcom/tencent/thumbplayer/tcmedia/core/player/TPDynamicStatisticParams;->mMinVideoDecodeCostTimeMs:J

    invoke-virtual {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/e;->z(J)V

    iget v0, p2, Lcom/tencent/thumbplayer/tcmedia/core/player/TPDynamicStatisticParams;->mVideoDecodeFrameCount:I

    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/e;->o(I)V

    iget p2, p2, Lcom/tencent/thumbplayer/tcmedia/core/player/TPDynamicStatisticParams;->mVideoRenderFrameCount:I

    invoke-virtual {p1, p2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/e;->p(I)V

    return-void
.end method

.method private a(Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/e;Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;)V
    .locals 2

    .line 11
    iget-object v0, p2, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;->mPlayerGeneralTrackingParams:Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;

    iget-wide v0, v0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;->mCoreApiPrepareTimeMs:J

    invoke-virtual {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/e;->f(J)V

    iget-object v0, p2, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;->mPlayerGeneralTrackingParams:Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;

    iget-wide v0, v0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;->mCoreSchedulingThreadPrepareTimeMs:J

    invoke-virtual {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/e;->g(J)V

    iget-object v0, p2, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;->mPlayerGeneralTrackingParams:Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;

    iget-wide v0, v0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;->mDemuxerThreadPrepareTimeMs:J

    invoke-virtual {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/e;->h(J)V

    iget-object v0, p2, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;->mPlayerGeneralTrackingParams:Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;

    iget-wide v0, v0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;->mDemuxerOpenFileSTimeMs:J

    invoke-virtual {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/e;->i(J)V

    iget-object v0, p2, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;->mPlayerGeneralTrackingParams:Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;

    iget-wide v0, v0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;->mCoreApiPrepareTimeMs:J

    invoke-virtual {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/e;->j(J)V

    iget-object v0, p2, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;->mPlayerGeneralTrackingParams:Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;

    iget-wide v0, v0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;->mInitFirstClipPositionETimeMs:J

    invoke-virtual {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/e;->k(J)V

    iget-object v0, p2, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;->mPlayerGeneralTrackingParams:Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;

    iget-wide v0, v0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;->mFirstVideoPacketReadETimeMs:J

    invoke-virtual {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/e;->l(J)V

    iget-object v0, p2, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;->mPlayerGeneralTrackingParams:Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;

    iget-wide v0, v0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;->mFirstAudioPacketReadETimeMs:J

    invoke-virtual {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/e;->m(J)V

    iget-object v0, p2, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;->mPlayerGeneralTrackingParams:Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;

    iget-wide v0, v0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;->mDemuxerThreadOnPreparedTimeMs:J

    invoke-virtual {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/e;->n(J)V

    iget-object v0, p2, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;->mPlayerGeneralTrackingParams:Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;

    iget-wide v0, v0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;->mCoreSchedulingThreadOnPreparedTimeMs:J

    invoke-virtual {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/e;->o(J)V

    iget-object v0, p2, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;->mPlayerGeneralTrackingParams:Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;

    iget-wide v0, v0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;->mVideoDecoderOpenedTimeMs:J

    invoke-virtual {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/e;->q(J)V

    iget-object v0, p2, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;->mPlayerGeneralTrackingParams:Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;

    iget-wide v0, v0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;->mFirstVideoFrameRenderETimeMs:J

    invoke-virtual {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/e;->r(J)V

    iget-object v0, p2, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;->mPlayerGeneralTrackingParams:Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;

    iget-wide v0, v0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;->mAudioDecoderOpenedTimeMs:J

    invoke-virtual {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/e;->s(J)V

    iget-object p2, p2, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;->mPlayerGeneralTrackingParams:Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;

    iget-wide v0, p2, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerGeneralTrackingParams;->mFirstAudioFrameRenderETimeMs:J

    invoke-virtual {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/e;->t(J)V

    return-void
.end method

.method private b(Lcom/tencent/thumbplayer/tcmedia/api/TPDrmInfo;)Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/b;
    .locals 3

    .line 1
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/b;

    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/b;-><init>()V

    iget v1, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPDrmInfo;->drmAbility:I

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;->n(I)V

    iget v1, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPDrmInfo;->drmSupportSecureDecoder:I

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/b;->q(I)V

    iget v1, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPDrmInfo;->drmSupportSecureDecrypt:I

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/b;->r(I)V

    iget v1, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPDrmInfo;->drmSecureLevel:I

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/b;->p(I)V

    iget-object v1, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPDrmInfo;->drmComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/b;->q(Ljava/lang/String;)V

    iget v1, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPDrmInfo;->drmType:I

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/b;->o(I)V

    iget-wide v1, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPDrmInfo;->drmPrepareStartTimeMs:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/b;->c(J)V

    iget-wide v1, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPDrmInfo;->drmPrepareEndTimeMs:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/b;->d(J)V

    iget-wide v1, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPDrmInfo;->drmOpenSessionStartTimeMs:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/b;->e(J)V

    iget-wide v1, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPDrmInfo;->drmOpenSessionEndTimeMs:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/b;->f(J)V

    iget-wide v1, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPDrmInfo;->drmGetProvisionReqStartTimeMs:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/b;->g(J)V

    iget-wide v1, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPDrmInfo;->drmGetProvisionReqEndTimeMs:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/b;->h(J)V

    iget-wide v1, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPDrmInfo;->drmSendProvisionReqTimeMs:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/b;->i(J)V

    iget-wide v1, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPDrmInfo;->drmRecvProvisionRespTimeMs:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/b;->j(J)V

    iget-wide v1, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPDrmInfo;->drmProvideProvisionRespStartTimeMs:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/b;->k(J)V

    iget-wide v1, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPDrmInfo;->drmProvideProvisionRespEndTimeMs:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/b;->l(J)V

    iget-wide v1, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPDrmInfo;->drmGetKeyReqStartTimeMs:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/b;->m(J)V

    iget-wide v1, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPDrmInfo;->drmGetKeyReqEndTimeMs:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/b;->n(J)V

    iget-wide v1, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPDrmInfo;->drmSendKeyReqTimeMs:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/b;->o(J)V

    iget-wide v1, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPDrmInfo;->drmRecvKeyRespTimeMs:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/b;->p(J)V

    iget-wide v1, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPDrmInfo;->drmProvideKeyRespStartTimeMs:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/b;->q(J)V

    iget-wide v1, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPDrmInfo;->drmProvideKeyRespEndTimeMs:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/b;->r(J)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->f:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/j;

    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;

    iget-object v1, v1, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;

    invoke-virtual {p1, v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/j;->b(Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;

    iget-object p1, p1, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;

    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->g:I

    invoke-virtual {p1, v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;->a(I)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;

    iget-object p1, p1, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;->a(Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;)V

    return-object v0
.end method

.method private b(JILcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;)Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/c;
    .locals 4

    .line 2
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/c;

    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/c;-><init>()V

    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;

    iget-wide v2, v1, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;->g:J

    sub-long/2addr p1, v2

    iput-wide p1, v1, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;->i:J

    invoke-virtual {v0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/c;->c(J)V

    invoke-virtual {v0, p3}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/c;->o(I)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;

    iget p1, p1, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;->m:I

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/c;->p(I)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;

    iget p1, p1, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;->n:I

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/c;->q(I)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;

    iget p1, p1, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;->o:I

    int-to-long p1, p1

    invoke-virtual {v0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/c;->d(J)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;

    iget p1, p1, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;->q:I

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/c;->r(I)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;

    iget p1, p1, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;->r:I

    int-to-long p1, p1

    invoke-virtual {v0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/c;->e(J)V

    invoke-direct {p0, v0, p4}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->a(Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/c;Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;

    iget-object p1, p1, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;

    iget p2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->g:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->g:I

    invoke-virtual {p1, p2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;->a(I)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->f:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/j;

    iget-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;

    iget-object p2, p2, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;

    invoke-virtual {p1, p2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/j;->b(Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;

    iget-object p1, p1, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;->a(Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;)V

    return-object v0
.end method

.method private b(Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;Lcom/tencent/thumbplayer/tcmedia/core/player/TPDynamicStatisticParams;)Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/e;
    .locals 3

    .line 3
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/e;

    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/e;-><init>()V

    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->e:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/l;

    iget-wide v1, v1, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/l;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/e;->c(J)V

    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->e:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/l;

    iget-wide v1, v1, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/l;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/e;->d(J)V

    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->e:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/l;

    iget-wide v1, v1, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/l;->c:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/e;->e(J)V

    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;

    iget-wide v1, v1, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;->f:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/e;->p(J)V

    invoke-direct {p0, v0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->a(Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/e;Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;)V

    invoke-direct {p0, v0, p2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->a(Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/e;Lcom/tencent/thumbplayer/tcmedia/core/player/TPDynamicStatisticParams;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->f:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/j;

    iget-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;

    iget-object p2, p2, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;

    invoke-virtual {p1, p2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/j;->b(Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;

    iget-object p1, p1, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;

    iget p2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->g:I

    add-int/lit8 v1, p2, 0x1

    iput v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->g:I

    invoke-virtual {p1, p2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;->a(I)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;

    iget-object p1, p1, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;->a(Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;)V

    return-object v0
.end method

.method private c()V
    .locals 2

    .line 1
    const-string v0, "TPVodReporter"

    const-string v1, "onAppForeground"

    invoke-static {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;

    iget-object v0, v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method private c(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V
    .locals 5

    .line 2
    instance-of v0, p1, Lcom/tencent/thumbplayer/tcmedia/d/b$o;

    if-nez v0, :cond_0

    const-string p1, "TPVodReporter"

    const-string v0, "onPrepareDone fail:params is not match"

    invoke-static {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    check-cast p1, Lcom/tencent/thumbplayer/tcmedia/d/b$o;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/d/b$a;->b()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->e:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/l;

    iget-wide v2, v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/l;->c:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/d/b$a;->b()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;->f:J

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;

    invoke-virtual {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->a(Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;

    iget-object p1, p1, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;

    iget v2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->g:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->g:I

    invoke-virtual {p1, v2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;->a(I)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->f:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/j;

    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;

    iget-object v2, v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;

    invoke-virtual {p1, v2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/j;->b(Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;

    invoke-virtual {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->b(Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;)V

    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/d;

    invoke-direct {p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/d;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/d;->c(J)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;

    iget-object v0, v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;

    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;->a(Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;)V

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;->b()Ljava/util/Map;

    move-result-object p1

    const-string v0, "onPrepareDone"

    invoke-virtual {p0, v0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->a(Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "vod_first_load"

    invoke-virtual {p0, v0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->b(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, v0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->c(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private d()V
    .locals 4

    .line 1
    const-string v0, "TPVodReporter"

    const-string v1, "onAppBackground"

    invoke-static {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->b()Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->a(Z)Lcom/tencent/thumbplayer/tcmedia/core/player/TPDynamicStatisticParams;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->b(Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;Lcom/tencent/thumbplayer/tcmedia/core/player/TPDynamicStatisticParams;)Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/e;

    move-result-object v0

    const-string v2, "vod_flow"

    invoke-virtual {p0, v2, v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->a(Ljava/lang/String;Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->b()Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;

    move-result-object v0

    invoke-direct {p0, v2, v3, v1, v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->b(JILcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;)Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/c;

    move-result-object v0

    const-string v1, "vod_end"

    invoke-virtual {p0, v1, v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->a(Ljava/lang/String;Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;)V

    return-void
.end method

.method private d(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V
    .locals 9

    .line 2
    instance-of v0, p1, Lcom/tencent/thumbplayer/tcmedia/d/b$m;

    if-nez v0, :cond_0

    const-string p1, "TPVodReporter"

    const-string v0, "onPlayerStart fail:params is not match"

    invoke-static {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    check-cast p1, Lcom/tencent/thumbplayer/tcmedia/d/b$m;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->i:Z

    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->l:Z

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;

    iget-wide v1, v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;->g:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/d/b$a;->b()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;->g:J

    :cond_1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/d/b$a;->b()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;->h:J

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;

    iget-wide v1, v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;->j:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    iget-wide v1, v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;->k:J

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/d/b$a;->b()J

    move-result-wide v5

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;

    iget-wide v7, p1, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;->j:J

    sub-long/2addr v5, v7

    add-long/2addr v1, v5

    iput-wide v1, v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;->k:J

    iput-wide v3, p1, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;->j:J

    :cond_2
    return-void
.end method

.method private e(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V
    .locals 4

    .line 1
    instance-of v0, p1, Lcom/tencent/thumbplayer/tcmedia/d/b$j;

    .line 2
    .line 3
    const-string v1, "TPVodReporter"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p1, "onPlayerPause fail:params is not match"

    .line 8
    .line 9
    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    check-cast p1, Lcom/tencent/thumbplayer/tcmedia/d/b$j;

    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->l:Z

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    const-string p1, "onPlayerPause has been called"

    .line 20
    .line 21
    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->l:Z

    .line 27
    .line 28
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/d/b$a;->b()J

    .line 31
    .line 32
    .line 33
    move-result-wide v2

    .line 34
    iput-wide v2, v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;->j:J

    .line 35
    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v0, "Vod onPlayerPause timeMs:"

    .line 39
    .line 40
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;

    .line 44
    .line 45
    iget-wide v2, v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;->j:J

    .line 46
    .line 47
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method private f(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->i:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string p1, "TPVodReporter"

    .line 6
    .line 7
    const-string v0, "Player has been called End"

    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->i:Z

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->a(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    invoke-virtual {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->b(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)Lcom/tencent/thumbplayer/tcmedia/core/player/TPDynamicStatisticParams;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/d/b$a;->b()J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    const/4 v4, 0x0

    .line 29
    move-object v1, p0

    .line 30
    invoke-direct/range {v1 .. v6}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->a(JILcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;Lcom/tencent/thumbplayer/tcmedia/core/player/TPDynamicStatisticParams;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, v1, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;

    .line 34
    .line 35
    iget-object p1, p1, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;->a()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->a(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method private g(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->i:Z

    .line 2
    .line 3
    const-string v1, "TPVodReporter"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p1, "Player has been called End"

    .line 8
    .line 9
    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->i:Z

    .line 15
    .line 16
    instance-of v0, p1, Lcom/tencent/thumbplayer/tcmedia/d/b$i;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    const-string p1, "onPlayerError fail:params is not match"

    .line 21
    .line 22
    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    check-cast p1, Lcom/tencent/thumbplayer/tcmedia/d/b$i;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/d/b$i;->e()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    invoke-virtual {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->a(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->b(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)Lcom/tencent/thumbplayer/tcmedia/core/player/TPDynamicStatisticParams;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/d/b$a;->b()J

    .line 41
    .line 42
    .line 43
    move-result-wide v1

    .line 44
    move-object v0, p0

    .line 45
    invoke-direct/range {v0 .. v5}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->a(JILcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;Lcom/tencent/thumbplayer/tcmedia/core/player/TPDynamicStatisticParams;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;

    .line 49
    .line 50
    iget-object p1, p1, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;->a()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->a(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method private h(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V
    .locals 4

    .line 1
    instance-of v0, p1, Lcom/tencent/thumbplayer/tcmedia/d/b$r;

    .line 2
    .line 3
    const-string v1, "TPVodReporter"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p1, "onSeekStart fail:params is not match"

    .line 8
    .line 9
    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    check-cast p1, Lcom/tencent/thumbplayer/tcmedia/d/b$r;

    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->k:Z

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/d/b$b;

    .line 20
    .line 21
    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/d/b$b;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->k(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->j:Z

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/d/b$q;

    .line 32
    .line 33
    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/d/b$q;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->i(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V

    .line 37
    .line 38
    .line 39
    :cond_2
    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->j:Z

    .line 41
    .line 42
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/d/b$a;->b()J

    .line 45
    .line 46
    .line 47
    move-result-wide v2

    .line 48
    iput-wide v2, v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;->l:J

    .line 49
    .line 50
    new-instance p1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v0, "Vod onSeekStart timeMs:"

    .line 53
    .line 54
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;

    .line 58
    .line 59
    iget-wide v2, v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;->l:J

    .line 60
    .line 61
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method private i(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V
    .locals 6

    .line 1
    instance-of v0, p1, Lcom/tencent/thumbplayer/tcmedia/d/b$q;

    .line 2
    .line 3
    const-string v1, "TPVodReporter"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p1, "onSeekEnd fail:params is not match"

    .line 8
    .line 9
    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    check-cast p1, Lcom/tencent/thumbplayer/tcmedia/d/b$q;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->j:Z

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/d/b$a;->b()J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;

    .line 23
    .line 24
    iget-wide v4, p1, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;->l:J

    .line 25
    .line 26
    sub-long/2addr v2, v4

    .line 27
    const-wide/16 v4, 0x4b0

    .line 28
    .line 29
    cmp-long v0, v2, v4

    .line 30
    .line 31
    if-lez v0, :cond_1

    .line 32
    .line 33
    iget v0, p1, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;->n:I

    .line 34
    .line 35
    add-int/lit8 v0, v0, 0x1

    .line 36
    .line 37
    iput v0, p1, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;->n:I

    .line 38
    .line 39
    iget v0, p1, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;->o:I

    .line 40
    .line 41
    int-to-long v4, v0

    .line 42
    add-long/2addr v4, v2

    .line 43
    long-to-int v0, v4

    .line 44
    iput v0, p1, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;->o:I

    .line 45
    .line 46
    :cond_1
    iget v0, p1, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;->m:I

    .line 47
    .line 48
    add-int/lit8 v0, v0, 0x1

    .line 49
    .line 50
    iput v0, p1, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;->m:I

    .line 51
    .line 52
    new-instance p1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v0, "Vod onSeekEnd seekCostTimeMs:"

    .line 55
    .line 56
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v0, " mSeekTotalCount:"

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;

    .line 68
    .line 69
    iget v0, v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;->m:I

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v0, " mSeekBufferingTotalCount:"

    .line 75
    .line 76
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;

    .line 80
    .line 81
    iget v0, v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;->n:I

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v0, " mSeekBufferingTotalDurationMs:"

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;

    .line 92
    .line 93
    iget v0, v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;->o:I

    .line 94
    .line 95
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method private j(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V
    .locals 4

    .line 1
    instance-of v0, p1, Lcom/tencent/thumbplayer/tcmedia/d/b$c;

    .line 2
    .line 3
    const-string v1, "TPVodReporter"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p1, "onBufferingStart fail:params is not match"

    .line 8
    .line 9
    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    check-cast p1, Lcom/tencent/thumbplayer/tcmedia/d/b$c;

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->k:Z

    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->j:Z

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/d/b$a;->b()J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    iput-wide v2, v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;->p:J

    .line 30
    .line 31
    new-instance p1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v0, "Vod onBufferingStart timeMs:"

    .line 34
    .line 35
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;

    .line 39
    .line 40
    iget-wide v2, v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;->p:J

    .line 41
    .line 42
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method private k(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V
    .locals 6

    .line 1
    instance-of v0, p1, Lcom/tencent/thumbplayer/tcmedia/d/b$b;

    .line 2
    .line 3
    const-string v1, "TPVodReporter"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p1, "onBufferingEnd fail:params is not match"

    .line 8
    .line 9
    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    check-cast p1, Lcom/tencent/thumbplayer/tcmedia/d/b$b;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->k:Z

    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->j:Z

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/d/b$a;->b()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;

    .line 28
    .line 29
    iget-wide v4, p1, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;->p:J

    .line 30
    .line 31
    sub-long/2addr v2, v4

    .line 32
    const-string p1, "Vod onBufferingEnd bufferingCostTimeMs:"

    .line 33
    .line 34
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-wide/16 v0, 0x4b0

    .line 46
    .line 47
    cmp-long p1, v2, v0

    .line 48
    .line 49
    if-gtz p1, :cond_2

    .line 50
    .line 51
    :goto_0
    return-void

    .line 52
    :cond_2
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;

    .line 53
    .line 54
    iget v0, p1, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;->q:I

    .line 55
    .line 56
    add-int/lit8 v0, v0, 0x1

    .line 57
    .line 58
    iput v0, p1, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;->q:I

    .line 59
    .line 60
    iget v0, p1, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;->r:I

    .line 61
    .line 62
    int-to-long v0, v0

    .line 63
    add-long/2addr v0, v2

    .line 64
    long-to-int v0, v0

    .line 65
    iput v0, p1, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;->r:I

    .line 66
    .line 67
    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/a;

    .line 68
    .line 69
    invoke-direct {p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/a;-><init>()V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;

    .line 73
    .line 74
    iget v0, v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;->s:F

    .line 75
    .line 76
    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/a;->b(F)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v2, v3}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b/a;->c(J)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->f:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/j;

    .line 83
    .line 84
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;

    .line 85
    .line 86
    iget-object v1, v1, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/j;->b(Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;

    .line 92
    .line 93
    iget-object v0, v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;

    .line 94
    .line 95
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->g:I

    .line 96
    .line 97
    add-int/lit8 v2, v1, 0x1

    .line 98
    .line 99
    iput v2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->g:I

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;->a(I)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;

    .line 105
    .line 106
    iget-object v0, v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;

    .line 107
    .line 108
    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;->a(Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;->b()Ljava/util/Map;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    const-string v0, "onBufferingEnd"

    .line 116
    .line 117
    invoke-virtual {p0, v0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 118
    .line 119
    .line 120
    const-string v0, "vod_second_buffering"

    .line 121
    .line 122
    invoke-virtual {p0, v0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, v0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->c(Ljava/lang/String;Ljava/util/Map;)V

    .line 126
    .line 127
    .line 128
    return-void
.end method

.method private l(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/tencent/thumbplayer/tcmedia/d/b$v;

    .line 2
    .line 3
    const-string v1, "TPVodReporter"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p1, "onSetPlaySpeed fail:params is not match"

    .line 8
    .line 9
    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    check-cast p1, Lcom/tencent/thumbplayer/tcmedia/d/b$v;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/d/b$v;->d()F

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iput p1, v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;->s:F

    .line 22
    .line 23
    new-instance p1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v0, "Vod onSetPlaySpeed mPlaySpeed:"

    .line 26
    .line 27
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;

    .line 31
    .line 32
    iget v0, v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;->s:F

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method private m(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V
    .locals 6

    .line 1
    instance-of v0, p1, Lcom/tencent/thumbplayer/tcmedia/d/b$t;

    .line 2
    .line 3
    const-string v1, "TPVodReporter"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p1, "onSelectTrackStart fail:params is not match"

    .line 8
    .line 9
    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    check-cast p1, Lcom/tencent/thumbplayer/tcmedia/d/b$t;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/d/b$t;->d()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/d/b$t;->e()J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    new-instance v4, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v5, "Vod onSelectTrackStart trackId:"

    .line 26
    .line 27
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v5, " trackUniqueIndex:"

    .line 34
    .line 35
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-static {v1, v4}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;

    .line 49
    .line 50
    iget-object v1, v1, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;->t:Ljava/util/Map;

    .line 51
    .line 52
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_1

    .line 61
    .line 62
    return-void

    .line 63
    :cond_1
    new-instance v1, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m$a;

    .line 64
    .line 65
    invoke-direct {v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m$a;-><init>()V

    .line 66
    .line 67
    .line 68
    iput v0, v1, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m$a;->a:I

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/d/b$t;->f()Lcom/tencent/thumbplayer/tcmedia/api/TPTrackInfo;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iput-object v0, v1, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m$a;->c:Lcom/tencent/thumbplayer/tcmedia/api/TPTrackInfo;

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/d/b$a;->b()J

    .line 77
    .line 78
    .line 79
    move-result-wide v2

    .line 80
    iput-wide v2, v1, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m$a;->b:J

    .line 81
    .line 82
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;

    .line 83
    .line 84
    iget-object v0, v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;->t:Ljava/util/Map;

    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/d/b$t;->e()J

    .line 87
    .line 88
    .line 89
    move-result-wide v2

    .line 90
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method private n(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V
    .locals 8

    .line 1
    instance-of v0, p1, Lcom/tencent/thumbplayer/tcmedia/d/b$s;

    .line 2
    .line 3
    const-string v1, "TPVodReporter"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p1, "onSelectTrackEnd fail:params is not match"

    .line 8
    .line 9
    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    check-cast p1, Lcom/tencent/thumbplayer/tcmedia/d/b$s;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/d/b$s;->d()I

    .line 16
    .line 17
    .line 18
    move-result v7

    .line 19
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/d/b$s;->e()J

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v2, "Vod onSelectTrackEnd errorCode:"

    .line 26
    .line 27
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v2, " trackUniqueIndex:"

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/d/b$a;->b()J

    .line 49
    .line 50
    .line 51
    move-result-wide v5

    .line 52
    move-object v2, p0

    .line 53
    invoke-direct/range {v2 .. v7}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->a(JJI)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method private o(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/tencent/thumbplayer/tcmedia/d/b$h;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string p1, "TPVodReporter"

    .line 6
    .line 7
    const-string v0, "onDrmInfo fail:params is not match"

    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    check-cast p1, Lcom/tencent/thumbplayer/tcmedia/d/b$h;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/d/b$h;->d()Lcom/tencent/thumbplayer/tcmedia/api/TPDrmInfo;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->a(Lcom/tencent/thumbplayer/tcmedia/api/TPDrmInfo;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private p(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/tencent/thumbplayer/tcmedia/d/b$e;

    .line 2
    .line 3
    const-string v1, "TPVodReporter"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p1, "onDTProcessUpdate fail:params is not match"

    .line 8
    .line 9
    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    check-cast p1, Lcom/tencent/thumbplayer/tcmedia/d/b$e;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/d/b$e;->d()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const-string v0, "Vod onDTProcessUpdate speedKbps:"

    .line 20
    .line 21
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;

    .line 33
    .line 34
    iput p1, v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;->b:I

    .line 35
    .line 36
    return-void
.end method

.method private q(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V
    .locals 4

    .line 1
    instance-of v0, p1, Lcom/tencent/thumbplayer/tcmedia/d/b$d;

    .line 2
    .line 3
    const-string v1, "TPVodReporter"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p1, "onDTCdnUrlUpdate fail:params is not match"

    .line 8
    .line 9
    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    check-cast p1, Lcom/tencent/thumbplayer/tcmedia/d/b$d;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/d/b$d;->d()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/d/b$d;->e()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v3, "Vod onDTCdnUrlUpdate cdnIp:"

    .line 26
    .line 27
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v3, " uIp:"

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-static {v1, v2}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;

    .line 49
    .line 50
    iput-object v0, v1, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;->c:Ljava/lang/String;

    .line 51
    .line 52
    iput-object p1, v1, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;->d:Ljava/lang/String;

    .line 53
    .line 54
    return-void
.end method

.method private r(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/tencent/thumbplayer/tcmedia/d/b$f;

    .line 2
    .line 3
    const-string v1, "TPVodReporter"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p1, "onDTProtocolUpdate fail:params is not match"

    .line 8
    .line 9
    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    check-cast p1, Lcom/tencent/thumbplayer/tcmedia/d/b$f;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/d/b$f;->d()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v2, "Vod onDTProtocolUpdate protocolVer:"

    .line 24
    .line 25
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;

    .line 33
    .line 34
    iput-object p1, v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;->e:Ljava/lang/String;

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->a()V

    return-void
.end method

.method public a(ILcom/tencent/thumbplayer/tcmedia/d/b$a;)V
    .locals 1

    .line 2
    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3ea

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    return-void

    :pswitch_0
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->r(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V

    return-void

    :pswitch_1
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->q(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V

    return-void

    :pswitch_2
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->p(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V

    return-void

    :pswitch_3
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->o(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V

    return-void

    :pswitch_4
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->l(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V

    return-void

    :pswitch_5
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->n(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V

    return-void

    :pswitch_6
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->m(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V

    return-void

    :pswitch_7
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->k(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V

    return-void

    :pswitch_8
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->j(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V

    return-void

    :pswitch_9
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->i(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V

    return-void

    :pswitch_a
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->h(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V

    return-void

    :pswitch_b
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->g(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V

    return-void

    :pswitch_c
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->f(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V

    return-void

    :pswitch_d
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->e(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V

    return-void

    :pswitch_e
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->d(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V

    return-void

    :pswitch_f
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->c(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->d()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->c()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/content/Context;Lcom/tencent/thumbplayer/tcmedia/tplayer/a/l;)V
    .locals 0

    .line 6
    invoke-super {p0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->a(Landroid/content/Context;Lcom/tencent/thumbplayer/tcmedia/tplayer/a/l;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->f:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/j;

    iget-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/n;->m:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/m;

    iget-object p2, p2, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;

    invoke-virtual {p1, p2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/j;->a(Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;)V

    return-void
.end method
