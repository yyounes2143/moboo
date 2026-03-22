.class public Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;
.super Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioFeaturesKit;
.source "Proguard"


# static fields
.field private static final ENGINE_CLASS_NAME:Ljava/lang/String; = "com.hihonor.android.magicx.media.audioengine.HnAudioPlayServiceImpl"

.field private static final TAG:Ljava/lang/String; = "HnAudioEngine.HnAudioPlayClient"


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mFeatureKitManager:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;

.field private mHnAudioPlayService:Lcom/tencent/trtc/hardwareearmonitor/honor/IHonorAudioPlayService;

.field private mIsServiceConnected:Z

.field private mService:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioFeaturesKit;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;->mIsServiceConnected:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;->mService:Landroid/os/IBinder;

    .line 9
    .line 10
    new-instance v1, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient$1;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient$1;-><init>(Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;)V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;->mConnection:Landroid/content/ServiceConnection;

    .line 16
    .line 17
    new-instance v1, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient$2;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient$2;-><init>(Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;)V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;->mFeatureKitManager:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;

    .line 25
    .line 26
    invoke-static {}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;->getInstance()Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;->mFeatureKitManager:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    return-void
.end method

.method public static synthetic access$000(Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;)Lcom/tencent/trtc/hardwareearmonitor/honor/IHonorAudioPlayService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;->mHnAudioPlayService:Lcom/tencent/trtc/hardwareearmonitor/honor/IHonorAudioPlayService;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$002(Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;Lcom/tencent/trtc/hardwareearmonitor/honor/IHonorAudioPlayService;)Lcom/tencent/trtc/hardwareearmonitor/honor/IHonorAudioPlayService;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;->mHnAudioPlayService:Lcom/tencent/trtc/hardwareearmonitor/honor/IHonorAudioPlayService;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$102(Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;->mIsServiceConnected:Z

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$200(Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;->serviceInit(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$400(Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;->serviceLinkToDeath(Landroid/os/IBinder;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$500(Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;)Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;->mFeatureKitManager:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$700(Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;->mService:Landroid/os/IBinder;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$702(Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;->mService:Landroid/os/IBinder;

    .line 2
    .line 3
    return-object p1
.end method

.method private bindService(Landroid/content/Context;)V
    .locals 3

    .line 1
    const-string v0, "HnAudioEngine.HnAudioPlayClient"

    .line 2
    .line 3
    const-string v1, "bindService"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorLogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;->mFeatureKitManager:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-boolean v1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;->mIsServiceConnected:Z

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;->mConnection:Landroid/content/ServiceConnection;

    .line 17
    .line 18
    const-string v2, "com.hihonor.android.magicx.media.audioengine.HnAudioPlayServiceImpl"

    .line 19
    .line 20
    invoke-virtual {v0, p1, v1, v2}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;->bindService(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method private serviceInit(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "HnAudioPlayClient serviceInit"

    .line 2
    .line 3
    const-string v1, "HnAudioEngine.HnAudioPlayClient"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorLogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;->mHnAudioPlayService:Lcom/tencent/trtc/hardwareearmonitor/honor/IHonorAudioPlayService;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-boolean v2, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;->mIsServiceConnected:Z

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-interface {v0, p1}, Lcom/tencent/trtc/hardwareearmonitor/honor/IHonorAudioPlayService;->init(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void

    .line 23
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v2, "HnAudioPlayClient isSupported,RemoteException ex :"

    .line 26
    .line 27
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {v1, p1}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorLogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method private serviceLinkToDeath(Landroid/os/IBinder;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;->mService:Landroid/os/IBinder;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catchall_0
    iget-object p1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;->mFeatureKitManager:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;

    .line 13
    .line 14
    const/16 v0, 0xbbb

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;->onCallBack(I)V

    .line 17
    .line 18
    .line 19
    const-string p1, "HnAudioEngine.HnAudioPlayClient"

    .line 20
    .line 21
    const-string v0, "serviceLinkToDeath, RemoteException"

    .line 22
    .line 23
    invoke-static {p1, v0}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorLogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioFeaturesKit;->destroy()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v1, "destroy, mIsServiceConnected = "

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;->mIsServiceConnected:Z

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "HnAudioEngine.HnAudioPlayClient"

    .line 21
    .line 22
    invoke-static {v1, v0}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorLogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-boolean v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;->mIsServiceConnected:Z

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;->mIsServiceConnected:Z

    .line 31
    .line 32
    iget-object v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;->mFeatureKitManager:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    iget-object v2, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;->mConnection:Landroid/content/ServiceConnection;

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method

.method public enableHighSampleRatePlay(Z)V
    .locals 4

    .line 1
    sget-wide v0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;->mMinVersion:J

    .line 2
    .line 3
    const-wide/32 v2, 0xf4241

    .line 4
    .line 5
    .line 6
    cmp-long v0, v0, v2

    .line 7
    .line 8
    const-string v1, "HnAudioEngine.HnAudioPlayClient"

    .line 9
    .line 10
    if-gez v0, :cond_0

    .line 11
    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v0, "not support high sample rate play service. The mix version is "

    .line 15
    .line 16
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sget-wide v2, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;->mMinVersion:J

    .line 20
    .line 21
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {v1, p1}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorLogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;->mFeatureKitManager:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;

    .line 32
    .line 33
    const/16 v0, 0xbba

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;->onCallBack(I)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    const-string v0, "enableHighSampleRatePlay, enable = "

    .line 40
    .line 41
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {v1, v0}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorLogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;->mHnAudioPlayService:Lcom/tencent/trtc/hardwareearmonitor/honor/IHonorAudioPlayService;

    .line 53
    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    iget-boolean v2, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;->mIsServiceConnected:Z

    .line 57
    .line 58
    if-eqz v2, :cond_1

    .line 59
    .line 60
    invoke-interface {v0, p1}, Lcom/tencent/trtc/hardwareearmonitor/honor/IHonorAudioPlayService;->enableHighSampleRatePlay(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :catchall_0
    move-exception p1

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    return-void

    .line 67
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v2, "enableHighSampleRatePlay,RemoteException ex : "

    .line 70
    .line 71
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-static {v1, p1}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorLogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-string v0, "HnAudioEngine.HnAudioPlayClient"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const-string p1, "initialize, context is null"

    .line 6
    .line 7
    invoke-static {v0, p1}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorLogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-static {p1}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;->isAudioKitSupport(Landroid/content/Context;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;->mFeatureKitManager:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    invoke-virtual {p1, v1}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;->onCallBack(I)V

    .line 21
    .line 22
    .line 23
    const-string p1, "initialize, not install AudioEngine"

    .line 24
    .line 25
    invoke-static {v0, p1}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorLogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    invoke-direct {p0, p1}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;->bindService(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
