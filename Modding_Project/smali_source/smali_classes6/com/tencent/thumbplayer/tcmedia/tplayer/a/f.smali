.class public Lcom/tencent/thumbplayer/tcmedia/tplayer/a/f;
.super Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;


# instance fields
.field private i:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/f;->i:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;

    .line 10
    .line 11
    return-void
.end method

.method private c()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->b:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/a/a;

    const-string v1, "TPPrepareFailReporter"

    if-nez v0, :cond_0

    const-string v0, "fillStreamInfoToCommonParams fail, not set mPlayerInfoGetter"

    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/a/a;->a()Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/f;->i:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;

    iget-object v2, v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;

    iget-object v3, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->e:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/l;

    iget-object v3, v3, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/l;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/f;->i:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;

    iget-object v2, v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;

    iget-object v3, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->e:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/l;

    iget v3, v3, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/l;->g:I

    invoke-virtual {v2, v3}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;->f(I)V

    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/f;->i:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;

    iget-object v2, v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;

    iget-object v3, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->e:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/l;

    iget-object v3, v3, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/l;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;->j(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/f;->i:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;

    iget-object v2, v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;

    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/TPDownloadProxyHelper;->getNativeLibVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;->l(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/f;->i:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;

    iget-object v3, v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;

    iget v2, v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;->b:I

    invoke-virtual {v3, v2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;->k(I)V

    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/f;->i:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;

    iget-object v3, v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;

    iget-object v2, v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;->e:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;->o(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/f;->i:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;

    iget-object v3, v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;

    iget-object v2, v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;->d:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;->m(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/f;->i:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;

    iget-object v3, v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;

    iget-object v2, v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;->c:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;->n(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/f;->i:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;

    iget-object v2, v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;

    iget-object v3, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->e:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/l;

    iget v3, v3, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/l;->h:I

    invoke-virtual {v2, v3}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;->l(I)V

    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->h:Ljava/util/Map;

    iget-object v3, v0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;->mPlayerConfigParams:Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerConfigParams;

    iget-wide v3, v3, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerConfigParams;->mBufferMinTotalDurationMs:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "buffermintotaldurationms"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->h:Ljava/util/Map;

    iget-object v3, v0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;->mPlayerConfigParams:Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerConfigParams;

    iget-wide v3, v3, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerConfigParams;->mBufferMaxTotalDurationMs:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "buffermaxtotaldurationms"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->h:Ljava/util/Map;

    iget-object v3, v0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;->mPlayerConfigParams:Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerConfigParams;

    iget-wide v3, v3, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerConfigParams;->mPreloadTotalDurationMs:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "preloadtotaldurationms"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->h:Ljava/util/Map;

    iget-object v3, v0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;->mPlayerConfigParams:Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerConfigParams;

    iget-wide v3, v3, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerConfigParams;->mMinBufferingDurationMs:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "minbufferingdurationms"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->h:Ljava/util/Map;

    iget-object v3, v0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;->mPlayerConfigParams:Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerConfigParams;

    iget-wide v3, v3, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerConfigParams;->mMinBufferingTimeMs:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "minbufferingtimems"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->h:Ljava/util/Map;

    iget-object v3, v0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;->mPlayerConfigParams:Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerConfigParams;

    iget-wide v3, v3, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerConfigParams;->mMaxBufferingTimeMs:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "maxbufferingtimems"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->h:Ljava/util/Map;

    iget-object v3, v0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;->mPlayerConfigParams:Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerConfigParams;

    iget v3, v3, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerConfigParams;->mReduceLatencyAction:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "reducelatencyaction"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->h:Ljava/util/Map;

    iget-object v3, v0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;->mPlayerConfigParams:Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerConfigParams;

    iget v3, v3, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerConfigParams;->mReduceLatencyPlaySpeed:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v4, "reducelatencyspeed"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->h:Ljava/util/Map;

    iget-object v0, v0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;->mPlayerConfigParams:Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerConfigParams;

    iget v0, v0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams$TPPlayerConfigParams;->mBufferType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "buffertype"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->h:Ljava/util/Map;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/f;->i:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;

    iget-object v2, v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;->p(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private c(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V
    .locals 4

    .line 2
    instance-of v0, p1, Lcom/tencent/thumbplayer/tcmedia/d/b$i;

    const-string v1, "TPPrepareFailReporter"

    if-nez v0, :cond_0

    const-string p1, "onPrepareError fail:params is not match"

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    check-cast p1, Lcom/tencent/thumbplayer/tcmedia/d/b$i;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/d/b$i;->d()I

    move-result v0

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/d/b$i;->e()I

    move-result p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onPrepareError errorType:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " errorCode:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b;

    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b;-><init>()V

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/b;->o(I)V

    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/f;->c()V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/f;->i:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;

    invoke-virtual {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->b(Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->f:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/j;

    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/f;->i:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;

    iget-object v1, v1, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;

    invoke-virtual {p1, v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/j;->b(Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/f;->i:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;

    iget-object p1, p1, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;->a(Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;)V

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;->b()Ljava/util/Map;

    move-result-object p1

    const-string v0, "onPrepareError"

    invoke-virtual {p0, v0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->a(Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "prepare_fail"

    invoke-virtual {p0, v0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->b(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, v0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->c(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private d(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/tencent/thumbplayer/tcmedia/d/b$e;

    .line 2
    .line 3
    const-string v1, "TPPrepareFailReporter"

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
    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/f;->i:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;

    .line 33
    .line 34
    iput p1, v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;->b:I

    .line 35
    .line 36
    return-void
.end method

.method private e(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V
    .locals 4

    .line 1
    instance-of v0, p1, Lcom/tencent/thumbplayer/tcmedia/d/b$d;

    .line 2
    .line 3
    const-string v1, "TPPrepareFailReporter"

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
    invoke-static {v1, v2}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/f;->i:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;

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

.method private f(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/tencent/thumbplayer/tcmedia/d/b$f;

    .line 2
    .line 3
    const-string v1, "TPPrepareFailReporter"

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
    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/f;->i:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;

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
    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/f;->f(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V

    return-void

    :pswitch_1
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/f;->e(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V

    return-void

    :pswitch_2
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/f;->d(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V

    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/f;->c(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/content/Context;Lcom/tencent/thumbplayer/tcmedia/tplayer/a/l;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->a(Landroid/content/Context;Lcom/tencent/thumbplayer/tcmedia/tplayer/a/l;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/c;->f:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/j;

    iget-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/f;->i:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;

    iget-object p2, p2, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b;->a:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;

    invoke-virtual {p1, p2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/j;->a(Lcom/tencent/thumbplayer/tcmedia/tplayer/a/b/a;)V

    return-void
.end method
