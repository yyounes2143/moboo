.class Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPReuseMediaDrm$TPObjectLifecycleMgr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPDoubleQueueCachedPool$ITPObjectLifecycleMgr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPReuseMediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TPObjectLifecycleMgr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPDoubleQueueCachedPool$ITPObjectLifecycleMgr<",
        "Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPReuseMediaDrm$TPMediaDrmInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mUUID:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/util/UUID;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPReuseMediaDrm$TPObjectLifecycleMgr;->mUUID:Ljava/util/UUID;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public create(Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPDoubleQueueCachedPool;)Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPReuseMediaDrm$TPMediaDrmInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPDoubleQueueCachedPool<",
            "Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPReuseMediaDrm$TPMediaDrmInfo;",
            ">;)",
            "Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPReuseMediaDrm$TPMediaDrmInfo;"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/core/drm/TPDirectMediaDrm;

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPReuseMediaDrm$TPObjectLifecycleMgr;->mUUID:Ljava/util/UUID;

    invoke-direct {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/core/drm/TPDirectMediaDrm;-><init>(Ljava/util/UUID;)V

    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPReuseMediaDrm$TPMediaDrmInfo;

    invoke-interface {p1}, Lcom/tencent/thumbplayer/tcmedia/core/drm/ITPMediaDrm;->openSession()[B

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPReuseMediaDrm$TPMediaDrmInfo;-><init>(Lcom/tencent/thumbplayer/tcmedia/core/drm/ITPMediaDrm;[B)V
    :try_end_0
    .catch Landroid/media/MediaDrmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmFatalException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "createObject error:"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    const-string v1, "[PlayerCore][TPReuseMediaDrm]"

    invoke-static {v0, v1, p1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic create(Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPDoubleQueueCachedPool;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPReuseMediaDrm$TPObjectLifecycleMgr;->create(Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPDoubleQueueCachedPool;)Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPReuseMediaDrm$TPMediaDrmInfo;

    move-result-object p1

    return-object p1
.end method

.method public release(Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPDoubleQueueCachedPool;Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPReuseMediaDrm$TPMediaDrmInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPDoubleQueueCachedPool<",
            "Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPReuseMediaDrm$TPMediaDrmInfo;",
            ">;",
            "Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPReuseMediaDrm$TPMediaDrmInfo;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p2, Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPReuseMediaDrm$TPMediaDrmInfo;->tpMediaDrm:Lcom/tencent/thumbplayer/tcmedia/core/drm/ITPMediaDrm;

    invoke-interface {p1}, Lcom/tencent/thumbplayer/tcmedia/core/drm/ITPMediaDrm;->close()V

    return-void
.end method

.method public bridge synthetic release(Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPDoubleQueueCachedPool;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPReuseMediaDrm$TPMediaDrmInfo;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPReuseMediaDrm$TPObjectLifecycleMgr;->release(Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPDoubleQueueCachedPool;Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPReuseMediaDrm$TPMediaDrmInfo;)V

    return-void
.end method

.method public reset(Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPDoubleQueueCachedPool;Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPReuseMediaDrm$TPMediaDrmInfo;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPDoubleQueueCachedPool<",
            "Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPReuseMediaDrm$TPMediaDrmInfo;",
            ">;",
            "Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPReuseMediaDrm$TPMediaDrmInfo;",
            ")Z"
        }
    .end annotation

    .line 1
    iget-object p1, p2, Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPReuseMediaDrm$TPMediaDrmInfo;->tpMediaDrm:Lcom/tencent/thumbplayer/tcmedia/core/drm/ITPMediaDrm;

    iget-object v0, p2, Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPReuseMediaDrm$TPMediaDrmInfo;->sessionId:[B

    invoke-interface {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/core/drm/ITPMediaDrm;->closeSession([B)V

    :try_start_0
    iget-object p1, p2, Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPReuseMediaDrm$TPMediaDrmInfo;->tpMediaDrm:Lcom/tencent/thumbplayer/tcmedia/core/drm/ITPMediaDrm;

    invoke-interface {p1}, Lcom/tencent/thumbplayer/tcmedia/core/drm/ITPMediaDrm;->openSession()[B

    move-result-object p1

    iput-object p1, p2, Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPReuseMediaDrm$TPMediaDrmInfo;->sessionId:[B
    :try_end_0
    .catch Landroid/media/MediaDrmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmFatalException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "reset error:"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    const-string v0, "[PlayerCore][TPReuseMediaDrm]"

    invoke-static {p2, v0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic reset(Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPDoubleQueueCachedPool;Ljava/lang/Object;)Z
    .locals 0

    .line 2
    check-cast p2, Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPReuseMediaDrm$TPMediaDrmInfo;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPReuseMediaDrm$TPObjectLifecycleMgr;->reset(Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPDoubleQueueCachedPool;Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPReuseMediaDrm$TPMediaDrmInfo;)Z

    move-result p1

    return p1
.end method
