.class public final Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmPool;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "TPMediaDrmManager"

.field private static final sInstance:Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmPool;


# instance fields
.field private mIsMediaDrmReuse:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmPool;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmPool;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmPool;->sInstance:Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmPool;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmPool;->mIsMediaDrmReuse:Z

    .line 6
    .line 7
    return-void
.end method

.method public static getInstance()Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmPool;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmPool;->sInstance:Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmPool;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final createTPDirectMediaDrm(Ljava/util/UUID;)Lcom/tencent/thumbplayer/tcmedia/core/drm/ITPMediaDrm;
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/core/drm/TPDirectMediaDrm;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/drm/TPDirectMediaDrm;-><init>(Ljava/util/UUID;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final createTPMediaDrm(Ljava/util/UUID;)Lcom/tencent/thumbplayer/tcmedia/core/drm/ITPMediaDrm;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmPool;->mIsMediaDrmReuse:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPReuseMediaDrm;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPReuseMediaDrm;-><init>(Ljava/util/UUID;)V
    :try_end_0
    .catch Landroid/media/MediaDrmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmFatalException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    return-object v0

    .line 11
    :catch_0
    move-exception v0

    .line 12
    goto :goto_0

    .line 13
    :catch_1
    move-exception v0

    .line 14
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "reset error:"

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v1, 0x4

    .line 25
    const-string v2, "TPMediaDrmManager"

    .line 26
    .line 27
    invoke-static {v1, v2, v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/core/drm/TPDirectMediaDrm;

    .line 31
    .line 32
    invoke-direct {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/drm/TPDirectMediaDrm;-><init>(Ljava/util/UUID;)V

    .line 33
    .line 34
    .line 35
    return-object v0
.end method

.method public final preload()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/core/drm/reuse/TPReuseMediaDrm;->preloadAsync()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final setMediaDrmReuseEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmPool;->mIsMediaDrmReuse:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tcmedia/core/drm/TPMediaDrmPool;->preload()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
