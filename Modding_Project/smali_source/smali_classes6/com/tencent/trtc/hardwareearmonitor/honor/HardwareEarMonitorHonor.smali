.class public Lcom/tencent/trtc/hardwareearmonitor/honor/HardwareEarMonitorHonor;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/tencent/trtc/hardwareearmonitor/honor/IHonorAudioServiceCallback;


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav::extensions"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HardwareEarMonitorHonor"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mHnAudioClient:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;

.field private mHnEarReturnClient:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorEarReturnClient;

.field private mLock:Ljava/lang/Object;

.field private mNativeHardwareEarMonitorHandle:J

.field private mTaskRunner:Lcom/tencent/liteav/base/util/m;


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HardwareEarMonitorHonor;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    iput-wide p1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HardwareEarMonitorHonor;->mNativeHardwareEarMonitorHandle:J

    .line 12
    .line 13
    invoke-static {}, Lcom/tencent/liteav/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string p2, "audio"

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Landroid/media/AudioManager;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HardwareEarMonitorHonor;->mAudioManager:Landroid/media/AudioManager;

    .line 26
    .line 27
    invoke-static {}, Lcom/tencent/liteav/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HardwareEarMonitorHonor;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    new-instance p1, Lcom/tencent/liteav/base/util/m;

    .line 34
    .line 35
    invoke-direct {p1}, Lcom/tencent/liteav/base/util/m;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HardwareEarMonitorHonor;->mTaskRunner:Lcom/tencent/liteav/base/util/m;

    .line 39
    .line 40
    new-instance p1, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;

    .line 41
    .line 42
    iget-object p2, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HardwareEarMonitorHonor;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    invoke-direct {p1, p2, p0}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;-><init>(Landroid/content/Context;Lcom/tencent/trtc/hardwareearmonitor/honor/IHonorAudioServiceCallback;)V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HardwareEarMonitorHonor;->mHnAudioClient:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->initialize()V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public static synthetic access$000(Lcom/tencent/trtc/hardwareearmonitor/honor/HardwareEarMonitorHonor;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HardwareEarMonitorHonor;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/tencent/trtc/hardwareearmonitor/honor/HardwareEarMonitorHonor;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HardwareEarMonitorHonor;->mNativeHardwareEarMonitorHandle:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic access$200(JI)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/tencent/trtc/hardwareearmonitor/honor/HardwareEarMonitorHonor;->nativeHandleResult(JI)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static create(J)Lcom/tencent/trtc/hardwareearmonitor/honor/HardwareEarMonitorHonor;
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/trtc/hardwareearmonitor/honor/HardwareEarMonitorHonor;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/tencent/trtc/hardwareearmonitor/honor/HardwareEarMonitorHonor;-><init>(J)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static isAudioKitSupport()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/liteav/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->isDeviceSupported(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method private static native nativeHandleResult(JI)V
.end method


# virtual methods
.method public createKaraokeService()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HardwareEarMonitorHonor;->mHnAudioClient:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;

    .line 2
    .line 3
    sget-object v1, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient$ServiceType;->HNAUDIO_SERVICE_EARRETURN:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient$ServiceType;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->createService(Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient$ServiceType;)Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioFeaturesKit;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorEarReturnClient;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HardwareEarMonitorHonor;->mHnEarReturnClient:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorEarReturnClient;

    .line 12
    .line 13
    return-void
.end method

.method public destroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HardwareEarMonitorHonor;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const-wide/16 v1, 0x0

    .line 5
    .line 6
    :try_start_0
    iput-wide v1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HardwareEarMonitorHonor;->mNativeHardwareEarMonitorHandle:J

    .line 7
    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HardwareEarMonitorHonor;->mHnAudioClient:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->destroy()V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HardwareEarMonitorHonor;->mHnAudioClient:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HardwareEarMonitorHonor;->mHnEarReturnClient:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorEarReturnClient;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorEarReturnClient;->destroy()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HardwareEarMonitorHonor;->mHnEarReturnClient:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorEarReturnClient;

    .line 27
    .line 28
    :cond_1
    return-void

    .line 29
    :catchall_0
    move-exception v1

    .line 30
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    throw v1
.end method

.method public enableKaraoke(Z)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HardwareEarMonitorHonor;->mHnEarReturnClient:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorEarReturnClient;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/16 p1, 0x70e

    .line 6
    .line 7
    return p1

    .line 8
    :cond_0
    invoke-virtual {v0, p1}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorEarReturnClient;->enableEarReturn(Z)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public getKaraokeLatency()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HardwareEarMonitorHonor;->mHnEarReturnClient:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorEarReturnClient;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorEarReturnClient;->getEarReturnLatency()I

    .line 8
    .line 9
    .line 10
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    return v0

    .line 12
    :catchall_0
    return v1
.end method

.method public getKaraokeSupportedServices()[I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HardwareEarMonitorHonor;->mHnAudioClient:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->getSupportedServices()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    new-array v1, v1, [I

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-ge v2, v3, :cond_1

    .line 23
    .line 24
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Ljava/lang/Integer;

    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    aput v3, v1, v2

    .line 35
    .line 36
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    return-object v1
.end method

.method public isHardwareEarMonitorSupported()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HardwareEarMonitorHonor;->mHnEarReturnClient:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorEarReturnClient;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorEarReturnClient;->isServiceSupported()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public isKaraokeServiceSupport()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HardwareEarMonitorHonor;->mHnAudioClient:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;

    .line 2
    .line 3
    sget-object v1, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient$ServiceType;->HNAUDIO_SERVICE_EARRETURN:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient$ServiceType;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->isServiceSupported(Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient$ServiceType;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public onResult(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HardwareEarMonitorHonor;->mTaskRunner:Lcom/tencent/liteav/base/util/m;

    .line 2
    .line 3
    new-instance v1, Lcom/tencent/trtc/hardwareearmonitor/honor/HardwareEarMonitorHonor$1;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/tencent/trtc/hardwareearmonitor/honor/HardwareEarMonitorHonor$1;-><init>(Lcom/tencent/trtc/hardwareearmonitor/honor/HardwareEarMonitorHonor;I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/util/m;->a(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setAudioParams(Ljava/lang/String;)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HardwareEarMonitorHonor;->mAudioManager:Landroid/media/AudioManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    return p1

    .line 8
    :catchall_0
    const/4 p1, 0x0

    .line 9
    return p1
.end method

.method public setEqualizer(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HardwareEarMonitorHonor;->mHnEarReturnClient:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorEarReturnClient;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/16 p1, 0x70e

    .line 6
    .line 7
    return p1

    .line 8
    :cond_0
    sget-object v1, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorEarReturnClient$ParameName;->CMD_SET_VOCAL_EQUALIZER_MODE:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorEarReturnClient$ParameName;

    .line 9
    .line 10
    invoke-virtual {v0, v1, p1}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorEarReturnClient;->setParameter(Lcom/tencent/trtc/hardwareearmonitor/honor/HonorEarReturnClient$ParameName;I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public setReverberation(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HardwareEarMonitorHonor;->mHnEarReturnClient:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorEarReturnClient;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/16 p1, 0x70e

    .line 6
    .line 7
    return p1

    .line 8
    :cond_0
    sget-object v1, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorEarReturnClient$ParameName;->CMD_SET_AUDIO_EFFECT_MODE_BASE:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorEarReturnClient$ParameName;

    .line 9
    .line 10
    invoke-virtual {v0, v1, p1}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorEarReturnClient;->setParameter(Lcom/tencent/trtc/hardwareearmonitor/honor/HonorEarReturnClient$ParameName;I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public setVolume(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HardwareEarMonitorHonor;->mHnEarReturnClient:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorEarReturnClient;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/16 p1, 0x70e

    .line 6
    .line 7
    return p1

    .line 8
    :cond_0
    sget-object v1, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorEarReturnClient$ParameName;->CMD_SET_VOCAL_VOLUME_BASE:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorEarReturnClient$ParameName;

    .line 9
    .line 10
    invoke-virtual {v0, v1, p1}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorEarReturnClient;->setParameter(Lcom/tencent/trtc/hardwareearmonitor/honor/HonorEarReturnClient$ParameName;I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method
