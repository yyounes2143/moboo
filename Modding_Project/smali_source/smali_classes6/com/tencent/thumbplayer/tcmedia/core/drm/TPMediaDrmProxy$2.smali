.class final Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmProxy$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmProxy;->createMediaDrmProxyWithAsyncTimeout(Ljava/util/UUID;ZLcom/tencent/thumbplayer/tcmedia/core/drm/ITPDrmInterruptCallback;)Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$cleanup:[Z

.field final synthetic val$exceptions:[Landroid/media/UnsupportedSchemeException;

.field final synthetic val$isReuse:Z

.field final synthetic val$lock:Ljava/lang/Object;

.field final synthetic val$mediaDrmProxies:[Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmProxy;

.field final synthetic val$uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>([Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmProxy;Ljava/util/UUID;Z[Landroid/media/UnsupportedSchemeException;Ljava/lang/Object;[Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmProxy$2;->val$mediaDrmProxies:[Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmProxy;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmProxy$2;->val$uuid:Ljava/util/UUID;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmProxy$2;->val$isReuse:Z

    .line 6
    .line 7
    iput-object p4, p0, Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmProxy$2;->val$exceptions:[Landroid/media/UnsupportedSchemeException;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmProxy$2;->val$lock:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmProxy$2;->val$cleanup:[Z

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    const-string v0, "create system mediaDrm proxy start."

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmProxy$2;->val$mediaDrmProxies:[Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmProxy;

    .line 9
    .line 10
    new-instance v3, Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmProxy;

    .line 11
    .line 12
    iget-object v4, p0, Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmProxy$2;->val$uuid:Ljava/util/UUID;

    .line 13
    .line 14
    iget-boolean v5, p0, Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmProxy$2;->val$isReuse:Z

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    invoke-direct {v3, v4, v5, v6}, Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmProxy;-><init>(Ljava/util/UUID;ZLcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmProxy$1;)V

    .line 18
    .line 19
    .line 20
    aput-object v3, v2, v0
    :try_end_0
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v2

    .line 24
    iget-object v3, p0, Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmProxy$2;->val$exceptions:[Landroid/media/UnsupportedSchemeException;

    .line 25
    .line 26
    aput-object v2, v3, v0

    .line 27
    .line 28
    :goto_0
    const-string v2, "create system mediaDrm proxy end."

    .line 29
    .line 30
    invoke-static {v1, v2}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmProxy$2;->val$lock:Ljava/lang/Object;

    .line 34
    .line 35
    monitor-enter v1

    .line 36
    :try_start_1
    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmProxy$2;->val$cleanup:[Z

    .line 37
    .line 38
    aget-boolean v2, v2, v0

    .line 39
    .line 40
    iget-object v3, p0, Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmProxy$2;->val$lock:Ljava/lang/Object;

    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 43
    .line 44
    .line 45
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    if-eqz v2, :cond_0

    .line 47
    .line 48
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmProxy$2;->val$mediaDrmProxies:[Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmProxy;

    .line 49
    .line 50
    aget-object v0, v1, v0

    .line 51
    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmProxy;->release()V

    .line 55
    .line 56
    .line 57
    :cond_0
    return-void

    .line 58
    :catchall_0
    move-exception v0

    .line 59
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    throw v0
.end method
