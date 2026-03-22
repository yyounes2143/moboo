.class public Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient;
.super Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioFeaturesKit;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient$DenoiseLevel;,
        Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient$DenoiseScene;,
        Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient$DenoiseMode;
    }
.end annotation


# static fields
.field private static final ENGINE_CLASS_NAME:Ljava/lang/String; = "com.hihonor.android.magicx.media.audioengine.HnAdvancedRecordServiceImpl"

.field private static final TAG:Ljava/lang/String; = "HnAudioService.HnAdvancedRecordClient"


# instance fields
.field private final mClientBinder:Landroid/os/IBinder;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mFeatureKitManager:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;

.field private mHnAdvancedRecordService:Lcom/tencent/trtc/hardwareearmonitor/honor/IHonorAdvancedRecordService;

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
    iput-boolean v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient;->mIsServiceConnected:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient;->mHnAdvancedRecordService:Lcom/tencent/trtc/hardwareearmonitor/honor/IHonorAdvancedRecordService;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient;->mService:Landroid/os/IBinder;

    .line 11
    .line 12
    new-instance v1, Landroid/os/Binder;

    .line 13
    .line 14
    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient;->mClientBinder:Landroid/os/IBinder;

    .line 18
    .line 19
    new-instance v1, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient$1;

    .line 20
    .line 21
    invoke-direct {v1, p0}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient$1;-><init>(Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient;)V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient;->mConnection:Landroid/content/ServiceConnection;

    .line 25
    .line 26
    new-instance v1, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient$2;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient$2;-><init>(Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient;)V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient;->mFeatureKitManager:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;

    .line 34
    .line 35
    invoke-static {}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;->getInstance()Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient;->mFeatureKitManager:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;

    .line 40
    .line 41
    iput-object p1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient;->mContext:Landroid/content/Context;

    .line 42
    .line 43
    return-void
.end method

.method public static synthetic access$000(Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient;)Lcom/tencent/trtc/hardwareearmonitor/honor/IHonorAdvancedRecordService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient;->mHnAdvancedRecordService:Lcom/tencent/trtc/hardwareearmonitor/honor/IHonorAdvancedRecordService;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$002(Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient;Lcom/tencent/trtc/hardwareearmonitor/honor/IHonorAdvancedRecordService;)Lcom/tencent/trtc/hardwareearmonitor/honor/IHonorAdvancedRecordService;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient;->mHnAdvancedRecordService:Lcom/tencent/trtc/hardwareearmonitor/honor/IHonorAdvancedRecordService;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$102(Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient;->mIsServiceConnected:Z

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$200(Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient;)Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient;->mFeatureKitManager:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient;->serviceInit(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$500(Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient;->serviceLinkToDeath(Landroid/os/IBinder;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$600(Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$700(Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient;->mService:Landroid/os/IBinder;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$702(Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient;->mService:Landroid/os/IBinder;

    .line 2
    .line 3
    return-object p1
.end method

.method private bindService(Landroid/content/Context;)V
    .locals 3

    .line 1
    const-string v0, "HnAudioService.HnAdvancedRecordClient"

    .line 2
    .line 3
    const-string v1, "HnAdvancedRecordClient bindService"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorLogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient;->mFeatureKitManager:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-boolean v1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient;->mIsServiceConnected:Z

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient;->mConnection:Landroid/content/ServiceConnection;

    .line 17
    .line 18
    const-string v2, "com.hihonor.android.magicx.media.audioengine.HnAdvancedRecordServiceImpl"

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
    const-string v0, "HnAdvancedRecordClient serviceInit"

    .line 2
    .line 3
    const-string v1, "HnAudioService.HnAdvancedRecordClient"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorLogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient;->mHnAdvancedRecordService:Lcom/tencent/trtc/hardwareearmonitor/honor/IHonorAdvancedRecordService;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-boolean v2, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient;->mIsServiceConnected:Z

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-interface {v0, p1}, Lcom/tencent/trtc/hardwareearmonitor/honor/IHonorAdvancedRecordService;->init(Ljava/lang/String;)V
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
    const-string v2, "HnAdvancedRecordClient isSupported,RemoteException ex :"

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
    iput-object p1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient;->mService:Landroid/os/IBinder;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

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
    iget-object p1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient;->mFeatureKitManager:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;

    .line 13
    .line 14
    const/16 v0, 0x7d2

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;->onCallBack(I)V

    .line 17
    .line 18
    .line 19
    const-string p1, "HnAudioService.HnAdvancedRecordClient"

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
    const-string v1, "destroy, HnAdvancedRecordClient mIsServiceConnected = "

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient;->mIsServiceConnected:Z

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
    const-string v1, "HnAudioService.HnAdvancedRecordClient"

    .line 21
    .line 22
    invoke-static {v1, v0}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorLogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-boolean v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient;->mIsServiceConnected:Z

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient;->mIsServiceConnected:Z

    .line 31
    .line 32
    iget-object v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient;->mFeatureKitManager:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    iget-object v2, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient;->mConnection:Landroid/content/ServiceConnection;

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method

.method public disableAdvancedRecord(Landroid/content/Context;)Z
    .locals 4

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, "HnAdvancedRecordClient disableAdvancedRecord mIsServiceConnected="

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient;->mIsServiceConnected:Z

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v0, "HnAudioService.HnAdvancedRecordClient"

    .line 18
    .line 19
    invoke-static {v0, p1}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorLogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    :try_start_0
    iget-object v1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient;->mHnAdvancedRecordService:Lcom/tencent/trtc/hardwareearmonitor/honor/IHonorAdvancedRecordService;

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    iget-boolean v2, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient;->mIsServiceConnected:Z

    .line 28
    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    invoke-interface {v1}, Lcom/tencent/trtc/hardwareearmonitor/honor/IHonorAdvancedRecordService;->disableAdvancedRecord()Z

    .line 32
    .line 33
    .line 34
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    return p1

    .line 36
    :catchall_0
    move-exception v1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return p1

    .line 39
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v3, "disableAdvancedRecord failed, RemoteException ex : "

    .line 42
    .line 43
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {v0, v1}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorLogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return p1
.end method

.method public enableAdvancedRecord(Landroid/content/Context;)Z
    .locals 4

    .line 1
    const-string p1, "HnAdvancedRecordClient enableAdvancedRecord"

    .line 2
    .line 3
    const-string v0, "HnAudioService.HnAdvancedRecordClient"

    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorLogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient;->mHnAdvancedRecordService:Lcom/tencent/trtc/hardwareearmonitor/honor/IHonorAdvancedRecordService;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-boolean v2, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient;->mIsServiceConnected:Z

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    invoke-interface {v1}, Lcom/tencent/trtc/hardwareearmonitor/honor/IHonorAdvancedRecordService;->enableAdvancedRecord()Z

    .line 18
    .line 19
    .line 20
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    return p1

    .line 22
    :catchall_0
    move-exception v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return p1

    .line 25
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v3, "enableAdvancedRecord failed, RemoteException ex : "

    .line 28
    .line 29
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {v0, v1}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorLogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return p1
.end method

.method public enableRecordDenoise(ZLcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient$DenoiseMode;Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient$DenoiseScene;Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient$DenoiseLevel;)I
    .locals 9

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
    const-string v1, "HnAudioService.HnAdvancedRecordClient"

    .line 9
    .line 10
    if-gez v0, :cond_0

    .line 11
    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string p2, "enable record denoise fail, mix version is "

    .line 15
    .line 16
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sget-wide p2, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;->mMinVersion:J

    .line 20
    .line 21
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

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
    const/16 p1, 0x7d4

    .line 32
    .line 33
    return p1

    .line 34
    :cond_0
    const/4 v2, -0x2

    .line 35
    :try_start_0
    iget-object v3, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient;->mHnAdvancedRecordService:Lcom/tencent/trtc/hardwareearmonitor/honor/IHonorAdvancedRecordService;

    .line 36
    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    iget-boolean v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient;->mIsServiceConnected:Z

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-virtual {p2}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient$DenoiseMode;->getMode()I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    invoke-virtual {p3}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient$DenoiseScene;->getScene()I

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    invoke-virtual {p4}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient$DenoiseLevel;->getLevel()I

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    iget-object v8, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient;->mClientBinder:Landroid/os/IBinder;

    .line 56
    .line 57
    move v4, p1

    .line 58
    invoke-interface/range {v3 .. v8}, Lcom/tencent/trtc/hardwareearmonitor/honor/IHonorAdvancedRecordService;->enableRecordDenoise(ZIIILandroid/os/IBinder;)I

    .line 59
    .line 60
    .line 61
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    return p1

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    move-object p1, v0

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    return v2

    .line 67
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string p3, "enableRecordDenoise,RemoteException ex : "

    .line 70
    .line 71
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-static {v1, p1}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorLogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    return v2
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-string v0, "HnAdvancedRecordClient initialize"

    .line 2
    .line 3
    const-string v1, "HnAudioService.HnAdvancedRecordClient"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorLogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    const-string p1, "initialize, context is null"

    .line 11
    .line 12
    invoke-static {v1, p1}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorLogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-static {p1}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;->isAudioKitSupport(Landroid/content/Context;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    iget-object p1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient;->mFeatureKitManager:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;

    .line 23
    .line 24
    const/4 v0, 0x2

    .line 25
    invoke-virtual {p1, v0}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;->onCallBack(I)V

    .line 26
    .line 27
    .line 28
    const-string p1, "initialize, not install AudioEngine"

    .line 29
    .line 30
    invoke-static {v1, p1}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorLogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    invoke-direct {p0, p1}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient;->bindService(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public isServiceSupported()Z
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "HnAdvancedRecordClient isSupported, type = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient$ServiceType;->HNAUDIO_SERVICE_ADVANCEDRECORD:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient$ServiceType;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient$ServiceType;->getServiceType()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, ",mIsServiceConnected="

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-boolean v2, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient;->mIsServiceConnected:Z

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v2, "HnAudioService.HnAdvancedRecordClient"

    .line 32
    .line 33
    invoke-static {v2, v0}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorLogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient;->mHnAdvancedRecordService:Lcom/tencent/trtc/hardwareearmonitor/honor/IHonorAdvancedRecordService;

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    iget-boolean v3, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient;->mIsServiceConnected:Z

    .line 41
    .line 42
    if-eqz v3, :cond_0

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient$ServiceType;->getServiceType()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-interface {v0, v1}, Lcom/tencent/trtc/hardwareearmonitor/honor/IHonorAdvancedRecordService;->isSupported(I)Z

    .line 49
    .line 50
    .line 51
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    return v0

    .line 53
    :catchall_0
    move-exception v0

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v3, "isSupported,RemoteException ex : "

    .line 57
    .line 58
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {v2, v0}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorLogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :cond_0
    invoke-super {p0}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioFeaturesKit;->isServiceSupported()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    return v0
.end method
