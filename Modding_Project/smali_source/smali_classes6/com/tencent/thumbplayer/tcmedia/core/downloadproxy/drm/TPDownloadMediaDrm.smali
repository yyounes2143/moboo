.class public Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm$ProvisionRequest;,
        Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm$KeyRequest;,
        Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm$DownloadDrmSession;,
        Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm$OnExpirationUpdateListener;,
        Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm$OnKeyStatusChangeListener;,
        Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm$OnEventListener;
    }
.end annotation


# static fields
.field private static final FILE_NAME:Ljava/lang/String; = "TPDownloadMediaDrm"

.field private static final MAX_LICENSE_DURATION_TO_RENEW_SECONDS:I = 0x3c

.field public static final PROPERTY_LICENSE_DURATION_REMAINING:Ljava/lang/String; = "LicenseDurationRemaining"

.field public static final PROPERTY_PLAYBACK_DURATION_REMAINING:Ljava/lang/String; = "PlaybackDurationRemaining"


# instance fields
.field private mMediaDrm:Landroid/media/MediaDrm;

.field private mOnEventListener:Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm$OnEventListener;

.field private mOnExpirationUpdateListener:Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm$OnExpirationUpdateListener;

.field private mOnKeyStatusChangeListener:Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm$OnKeyStatusChangeListener;


# direct methods
.method private constructor <init>(Ljava/util/UUID;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/UnsupportedSchemeException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/media/MediaDrm;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic access$000(Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm;)Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm$OnEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm;->mOnEventListener:Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm$OnEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm;)Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm$OnKeyStatusChangeListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm;->mOnKeyStatusChangeListener:Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm$OnKeyStatusChangeListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm;)Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm$OnExpirationUpdateListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm;->mOnExpirationUpdateListener:Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm$OnExpirationUpdateListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static declared-synchronized createDownloadMediaDrm(Ljava/lang/String;)Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm;
    .locals 6

    .line 1
    const-class v0, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 5
    .line 6
    .line 7
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-object v2

    .line 13
    :cond_0
    :try_start_1
    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    new-instance v1, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm;-><init>(Ljava/util/UUID;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    .line 22
    move-object v2, v1

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :catch_0
    move-exception p0

    .line 27
    :try_start_2
    const-string v1, "TPDownloadMediaDrm"

    .line 28
    .line 29
    const-string v3, "tpdlnative"

    .line 30
    .line 31
    new-instance v4, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v5, "createDownloadMediaDrm exception : "

    .line 34
    .line 35
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const/4 v4, 0x0

    .line 50
    invoke-static {v1, v4, v3, p0}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    .line 52
    .line 53
    :goto_0
    monitor-exit v0

    .line 54
    return-object v2

    .line 55
    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 56
    throw p0
.end method

.method private getLicenseDurationRemainingSec([B)J
    .locals 6

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    .line 4
    .line 5
    invoke-virtual {v2, p1}, Landroid/media/MediaDrm;->queryKeyStatus([B)Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_2

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-lez v2, :cond_2

    .line 16
    .line 17
    const-string v2, "LicenseDurationRemaining"

    .line 18
    .line 19
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-nez v3, :cond_0

    .line 30
    .line 31
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 32
    .line 33
    .line 34
    move-result-wide v2

    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    goto :goto_2

    .line 38
    :cond_0
    move-wide v2, v0

    .line 39
    :goto_0
    const-string v4, "PlaybackDurationRemaining"

    .line 40
    .line 41
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-nez v4, :cond_1

    .line 52
    .line 53
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 54
    .line 55
    .line 56
    move-result-wide v4

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    move-wide v4, v0

    .line 59
    :goto_1
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 60
    .line 61
    .line 62
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    return-wide v0

    .line 64
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v3, "queryKeyStatus failed, error:"

    .line 67
    .line 68
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const-string v2, "TPDownloadMediaDrm"

    .line 83
    .line 84
    const/4 v3, 0x0

    .line 85
    const-string v4, "tpdlnative"

    .line 86
    .line 87
    invoke-static {v2, v3, v4, p1}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/utils/TPDLProxyLog;->w(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :cond_2
    return-wide v0
.end method

.method public static declared-synchronized getSdkIntVersion()I
    .locals 2

    .line 1
    const-class v0, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    throw v1
.end method

.method public static declared-synchronized isCryptoSchemeSupported(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-class v0, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-static {p0}, Landroid/media/MediaDrm;->isCryptoSchemeSupported(Ljava/util/UUID;)Z

    .line 9
    .line 10
    .line 11
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit v0

    .line 13
    return p0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    throw p0
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/media/MediaDrm;->setOnEventListener(Landroid/media/MediaDrm$OnEventListener;)V

    .line 8
    .line 9
    .line 10
    iput-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm;->mOnEventListener:Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm$OnEventListener;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    .line 13
    .line 14
    invoke-virtual {v0, v1, v1}, Landroid/media/MediaDrm;->setOnExpirationUpdateListener(Landroid/media/MediaDrm$OnExpirationUpdateListener;Landroid/os/Handler;)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm;->mOnExpirationUpdateListener:Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm$OnExpirationUpdateListener;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    .line 20
    .line 21
    invoke-virtual {v0, v1, v1}, Landroid/media/MediaDrm;->setOnKeyStatusChangeListener(Landroid/media/MediaDrm$OnKeyStatusChangeListener;Landroid/os/Handler;)V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm;->mOnKeyStatusChangeListener:Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm$OnKeyStatusChangeListener;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/media/MediaDrm;->release()V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    .line 32
    .line 33
    return-void
.end method

.method public closeSession([B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->closeSession([B)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getKeyRequest([B[BLjava/lang/String;I)Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm$KeyRequest;
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    .line 2
    .line 3
    const/4 v5, 0x0

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p3

    .line 7
    move v4, p4

    .line 8
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;

    .line 9
    .line 10
    .line 11
    move-result-object p1
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    invoke-virtual {p1}, Landroid/media/MediaDrm$KeyRequest;->getRequestType()I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    new-instance p3, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm$KeyRequest;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/media/MediaDrm$KeyRequest;->getData()[B

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const/4 p4, 0x0

    .line 23
    invoke-direct {p3, p2, p1, p4}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm$KeyRequest;-><init>(I[BI)V

    .line 24
    .line 25
    .line 26
    return-object p3

    .line 27
    :catch_0
    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm$KeyRequest;

    .line 28
    .line 29
    const/4 p2, 0x0

    .line 30
    const/4 p3, -0x1

    .line 31
    invoke-direct {p1, p3, p2, p3}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm$KeyRequest;-><init>(I[BI)V

    .line 32
    .line 33
    .line 34
    return-object p1
.end method

.method public getPropertyByteArray(Ljava/lang/String;)[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->getPropertyByteArray(Ljava/lang/String;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getPropertyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getProvisionRequest()Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm$ProvisionRequest;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/MediaDrm;->getProvisionRequest()Landroid/media/MediaDrm$ProvisionRequest;

    .line 4
    .line 5
    .line 6
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    new-instance v1, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm$ProvisionRequest;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getData()[B

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-direct {v1, v2, v0}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm$ProvisionRequest;-><init>(Ljava/lang/String;[B)V

    .line 18
    .line 19
    .line 20
    return-object v1

    .line 21
    :catch_0
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm$ProvisionRequest;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    new-array v1, v1, [B

    .line 25
    .line 26
    const-string v2, ""

    .line 27
    .line 28
    invoke-direct {v0, v2, v1}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm$ProvisionRequest;-><init>(Ljava/lang/String;[B)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method

.method public openSession()Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm$DownloadDrmSession;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    .line 3
    .line 4
    invoke-virtual {v1}, Landroid/media/MediaDrm;->openSession()[B

    .line 5
    .line 6
    .line 7
    move-result-object v0
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    const/4 v1, 0x0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    const/4 v1, -0x2

    .line 11
    goto :goto_0

    .line 12
    :catch_1
    const/4 v1, -0x1

    .line 13
    :goto_0
    new-instance v2, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm$DownloadDrmSession;

    .line 14
    .line 15
    invoke-direct {v2, v1, v0}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm$DownloadDrmSession;-><init>(I[B)V

    .line 16
    .line 17
    .line 18
    return-object v2
.end method

.method public provideKeyResponse([B[B)[B
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "tpdlnative"

    .line 4
    .line 5
    const-string v3, "TPDownloadMediaDrm"

    .line 6
    .line 7
    :try_start_0
    iget-object v4, p0, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    .line 8
    .line 9
    invoke-virtual {v4, p1, p2}, Landroid/media/MediaDrm;->provideKeyResponse([B[B)[B

    .line 10
    .line 11
    .line 12
    move-result-object p1
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/media/DeniedByServerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-object p1

    .line 14
    :catch_0
    move-exception p1

    .line 15
    goto :goto_0

    .line 16
    :catch_1
    move-exception p1

    .line 17
    goto :goto_1

    .line 18
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v4, "provideKeyResponse DeniedByServerException : "

    .line 21
    .line 22
    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {v3, v1, v2, p1}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    new-array p1, v0, [B

    .line 40
    .line 41
    const/4 p2, -0x2

    .line 42
    aput-byte p2, p1, v1

    .line 43
    .line 44
    return-object p1

    .line 45
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v4, "provideKeyResponse NotProvisionedException : "

    .line 48
    .line 49
    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {v3, v1, v2, p1}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    new-array p1, v0, [B

    .line 67
    .line 68
    const/4 p2, -0x1

    .line 69
    aput-byte p2, p1, v1

    .line 70
    .line 71
    return-object p1
.end method

.method public provideProvisionResponse([B)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->provideProvisionResponse([B)V
    :try_end_0
    .catch Landroid/media/DeniedByServerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return p1

    .line 8
    :catch_0
    const/4 p1, -0x1

    .line 9
    return p1
.end method

.method public removeKeys([B)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->removeKeys([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return p1

    .line 8
    :catch_0
    const/4 p1, -0x1

    .line 9
    return p1
.end method

.method public restoreKeys([B[B)I
    .locals 6

    .line 1
    const/4 v0, -0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    .line 3
    .line 4
    invoke-virtual {v1, p1, p2}, Landroid/media/MediaDrm;->restoreKeys([B[B)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm;->getLicenseDurationRemainingSec([B)J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    const-wide/16 v3, 0x3c

    .line 12
    .line 13
    cmp-long p2, v1, v3

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-gtz p2, :cond_0

    .line 17
    .line 18
    const-string p2, "TPDownloadMediaDrm"

    .line 19
    .line 20
    const-string v4, "tpdlnative"

    .line 21
    .line 22
    const-string v5, "Offline license has expired or will expire soon, Remaining seconds: "

    .line 23
    .line 24
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {p2, v3, v4, v1}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/utils/TPDLProxyLog;->w(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    .line 36
    .line 37
    invoke-virtual {p2, p1}, Landroid/media/MediaDrm;->removeKeys([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    return v0

    .line 41
    :cond_0
    return v3

    .line 42
    :catch_0
    return v0
.end method

.method public setOnEventListener(Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm$OnEventListener;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    .line 2
    .line 3
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm$1;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm$1;-><init>(Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/media/MediaDrm;->setOnEventListener(Landroid/media/MediaDrm$OnEventListener;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setOnExpirationUpdateListener(Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm$OnExpirationUpdateListener;Landroid/os/Handler;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm;->mOnExpirationUpdateListener:Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm$OnExpirationUpdateListener;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    .line 4
    .line 5
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm$3;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm$3;-><init>(Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, p2}, Landroid/media/MediaDrm;->setOnExpirationUpdateListener(Landroid/media/MediaDrm$OnExpirationUpdateListener;Landroid/os/Handler;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public declared-synchronized setOnKeyStatusChangeListener(Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm$OnKeyStatusChangeListener;Landroid/os/Handler;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm;->mOnKeyStatusChangeListener:Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm$OnKeyStatusChangeListener;

    .line 3
    .line 4
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    .line 5
    .line 6
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm$2;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm$2;-><init>(Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0, p2}, Landroid/media/MediaDrm;->setOnKeyStatusChangeListener(Landroid/media/MediaDrm$OnKeyStatusChangeListener;Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    throw p1
.end method

.method public setPropertyByteArray(Ljava/lang/String;[B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDrm;->setPropertyByteArray(Ljava/lang/String;[B)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/drm/TPDownloadMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
