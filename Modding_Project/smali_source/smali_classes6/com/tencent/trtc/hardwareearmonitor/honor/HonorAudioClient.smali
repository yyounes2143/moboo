.class public Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient$ServiceType;
    }
.end annotation


# static fields
.field private static final DEFAULT_FEATURE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_VALUE:I = 0x0

.field private static final ENGINE_CLASS_NAME:Ljava/lang/String; = "com.hihonor.android.magicx.media.audioengine.HnAudioServiceImpl"

.field private static final ENGINE_PACKAGE_NAME:Ljava/lang/String; = "com.hihonor.android.magicx.media.audioengine"

.field private static final TAG:Ljava/lang/String; = "HnAudioEngine.HnAudioClient"


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mFeatureKitManager:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;

.field private mIHnAudioService:Lcom/tencent/trtc/hardwareearmonitor/honor/IHonorAudioService;

.field private mIsServiceConnected:Z

.field private mService:Landroid/os/IBinder;

.field private mSupportedServiceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->DEFAULT_FEATURE_LIST:Ljava/util/List;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tencent/trtc/hardwareearmonitor/honor/IHonorAudioServiceCallback;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->mIHnAudioService:Lcom/tencent/trtc/hardwareearmonitor/honor/IHonorAudioService;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->mIsServiceConnected:Z

    .line 9
    .line 10
    iput-object v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->mService:Landroid/os/IBinder;

    .line 11
    .line 12
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->mSupportedServiceList:Ljava/util/List;

    .line 18
    .line 19
    new-instance v1, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient$1;

    .line 20
    .line 21
    invoke-direct {v1, p0}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient$1;-><init>(Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;)V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->mConnection:Landroid/content/ServiceConnection;

    .line 25
    .line 26
    new-instance v1, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient$2;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient$2;-><init>(Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;)V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 32
    .line 33
    invoke-static {}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;->getInstance()Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iput-object v1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->mFeatureKitManager:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->mContext:Landroid/content/Context;

    .line 40
    .line 41
    invoke-virtual {v1, p2}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;->setCallBack(Lcom/tencent/trtc/hardwareearmonitor/honor/IHonorAudioServiceCallback;)V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->mContext:Landroid/content/Context;

    .line 45
    .line 46
    return-void
.end method

.method public static synthetic access$000(Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;)Lcom/tencent/trtc/hardwareearmonitor/honor/IHonorAudioService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->mIHnAudioService:Lcom/tencent/trtc/hardwareearmonitor/honor/IHonorAudioService;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$002(Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;Lcom/tencent/trtc/hardwareearmonitor/honor/IHonorAudioService;)Lcom/tencent/trtc/hardwareearmonitor/honor/IHonorAudioService;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->mIHnAudioService:Lcom/tencent/trtc/hardwareearmonitor/honor/IHonorAudioService;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$102(Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->mIsServiceConnected:Z

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$200(Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;)Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->mFeatureKitManager:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->serviceInit(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$500(Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->serviceLinkToDeath(Landroid/os/IBinder;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$600(Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$700(Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->mService:Landroid/os/IBinder;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$702(Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->mService:Landroid/os/IBinder;

    .line 2
    .line 3
    return-object p1
.end method

.method private bindService(Landroid/content/Context;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "bindService, mIsServiceConnected = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->mIsServiceConnected:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "HnAudioEngine.HnAudioClient"

    .line 18
    .line 19
    invoke-static {v1, v0}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorLogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->mFeatureKitManager:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget-boolean v2, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->mIsServiceConnected:Z

    .line 27
    .line 28
    if-nez v2, :cond_0

    .line 29
    .line 30
    iget-object v2, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->mConnection:Landroid/content/ServiceConnection;

    .line 31
    .line 32
    const-string v3, "com.hihonor.android.magicx.media.audioengine.HnAudioServiceImpl"

    .line 33
    .line 34
    invoke-virtual {v0, p1, v2, v3}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;->bindService(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    return-void

    .line 41
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v2, "bindService,RemoteException ex : "

    .line 44
    .line 45
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-static {v1, p1}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorLogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method private filterUnsupportedService(I)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const-wide/32 v1, 0xf4240

    .line 3
    .line 4
    .line 5
    if-eq p1, v0, :cond_3

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    if-eq p1, v0, :cond_2

    .line 9
    .line 10
    const/4 v0, 0x3

    .line 11
    const-wide/32 v1, 0xf4241

    .line 12
    .line 13
    .line 14
    if-eq p1, v0, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x4

    .line 17
    if-eq p1, v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sget-wide v3, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;->mMinVersion:J

    .line 21
    .line 22
    cmp-long v0, v3, v1

    .line 23
    .line 24
    if-ltz v0, :cond_4

    .line 25
    .line 26
    iget-object v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->mSupportedServiceList:Ljava/util/List;

    .line 27
    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    sget-wide v3, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;->mMinVersion:J

    .line 37
    .line 38
    cmp-long v0, v3, v1

    .line 39
    .line 40
    if-ltz v0, :cond_4

    .line 41
    .line 42
    iget-object v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->mSupportedServiceList:Ljava/util/List;

    .line 43
    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    sget-wide v3, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;->mMinVersion:J

    .line 53
    .line 54
    cmp-long v0, v3, v1

    .line 55
    .line 56
    if-ltz v0, :cond_4

    .line 57
    .line 58
    iget-object v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->mSupportedServiceList:Ljava/util/List;

    .line 59
    .line 60
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    sget-wide v3, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;->mMinVersion:J

    .line 69
    .line 70
    cmp-long v0, v3, v1

    .line 71
    .line 72
    if-ltz v0, :cond_4

    .line 73
    .line 74
    iget-object v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->mSupportedServiceList:Ljava/util/List;

    .line 75
    .line 76
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    :cond_4
    :goto_0
    return-void
.end method

.method public static isDeviceSupported(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;->isAudioKitSupport(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private serviceInit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "serviceInit"

    .line 2
    .line 3
    const-string v1, "HnAudioEngine.HnAudioClient"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorLogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->mIHnAudioService:Lcom/tencent/trtc/hardwareearmonitor/honor/IHonorAudioService;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-boolean v2, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->mIsServiceConnected:Z

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-interface {v0, p1, p2}, Lcom/tencent/trtc/hardwareearmonitor/honor/IHonorAudioService;->init(Ljava/lang/String;Ljava/lang/String;)V
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
    new-instance p2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v0, "isFeatureSupported,RemoteException ex :"

    .line 26
    .line 27
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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
    iput-object p1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->mService:Landroid/os/IBinder;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

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
    iget-object p1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->mFeatureKitManager:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;

    .line 13
    .line 14
    const/4 v0, 0x5

    .line 15
    invoke-virtual {p1, v0}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;->onCallBack(I)V

    .line 16
    .line 17
    .line 18
    const-string p1, "HnAudioEngine.HnAudioClient"

    .line 19
    .line 20
    const-string v0, "serviceLinkToDeath, RemoteException"

    .line 21
    .line 22
    invoke-static {p1, v0}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorLogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method


# virtual methods
.method public createService(Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient$ServiceType;)Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioFeaturesKit;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioFeaturesKit;",
            ">(",
            "Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient$ServiceType;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->mFeatureKitManager:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->mSupportedServiceList:Ljava/util/List;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient$ServiceType;->getServiceType()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->mFeatureKitManager:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient$ServiceType;->getServiceType()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iget-object v1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    invoke-virtual {v0, p1, v1}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;->createFeatureKit(ILandroid/content/Context;)Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioFeaturesKit;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1

    .line 36
    :cond_0
    const-string p1, "HnAudioEngine.HnAudioClient"

    .line 37
    .line 38
    const-string v0, "createService fail"

    .line 39
    .line 40
    invoke-static {p1, v0}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorLogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/4 p1, 0x0

    .line 44
    return-object p1
.end method

.method public destroy()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "destroy, mIsServiceConnected = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->mIsServiceConnected:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "HnAudioEngine.HnAudioClient"

    .line 18
    .line 19
    invoke-static {v1, v0}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorLogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->mIsServiceConnected:Z

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->mIsServiceConnected:Z

    .line 28
    .line 29
    iget-object v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->mFeatureKitManager:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    iget-object v3, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->mConnection:Landroid/content/ServiceConnection;

    .line 34
    .line 35
    invoke-virtual {v0, v2, v3}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    return-void

    .line 42
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v3, "unbindService,RemoteException ex : "

    .line 45
    .line 46
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v1, v0}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorLogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public getSupportedServices()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "HnAudioEngine.HnAudioClient"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->mIHnAudioService:Lcom/tencent/trtc/hardwareearmonitor/honor/IHonorAudioService;

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    iget-boolean v2, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->mIsServiceConnected:Z

    .line 8
    .line 9
    if-eqz v2, :cond_2

    .line 10
    .line 11
    invoke-interface {v1}, Lcom/tencent/trtc/hardwareearmonitor/honor/IHonorAudioService;->getSupportedServices()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    const-string v1, "list is null"

    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorLogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sget-object v0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->DEFAULT_FEATURE_LIST:Ljava/util/List;

    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_0
    iget-object v2, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->mSupportedServiceList:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 28
    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_1

    .line 39
    .line 40
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Ljava/lang/Integer;

    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    invoke-direct {p0, v3}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->filterUnsupportedService(I)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v3, "getSupportedServices "

    .line 57
    .line 58
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-static {v0, v1}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorLogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->mSupportedServiceList:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .line 81
    return-object v0

    .line 82
    :catchall_0
    const-string v1, "getSupportedServices, createFeature,wait bind service fail"

    .line 83
    .line 84
    invoke-static {v0, v1}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorLogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :cond_2
    const-string v1, "getSupportedServices, service not bind"

    .line 88
    .line 89
    invoke-static {v0, v1}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorLogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    sget-object v0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->DEFAULT_FEATURE_LIST:Ljava/util/List;

    .line 93
    .line 94
    return-object v0
.end method

.method public initialize()V
    .locals 2

    .line 1
    const-string v0, "initialize"

    .line 2
    .line 3
    const-string v1, "HnAudioEngine.HnAudioClient"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorLogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-string v0, "mContext is null"

    .line 13
    .line 14
    invoke-static {v1, v0}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorLogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->mFeatureKitManager:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;

    .line 18
    .line 19
    const/4 v1, 0x7

    .line 20
    invoke-virtual {v0, v1}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;->onCallBack(I)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    invoke-static {v0}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;->isAudioKitSupport(Landroid/content/Context;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    const-string v0, "not install AudioKitEngine"

    .line 31
    .line 32
    invoke-static {v1, v0}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorLogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->mFeatureKitManager:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;

    .line 36
    .line 37
    const/4 v1, 0x2

    .line 38
    invoke-virtual {v0, v1}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;->onCallBack(I)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    invoke-direct {p0, v0}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->bindService(Landroid/content/Context;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public isServiceSupported(Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient$ServiceType;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "isServiceSupported, type = "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient$ServiceType;->getServiceType()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "HnAudioEngine.HnAudioClient"

    .line 24
    .line 25
    invoke-static {v2, v1}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorLogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :try_start_0
    iget-object v1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->mIHnAudioService:Lcom/tencent/trtc/hardwareearmonitor/honor/IHonorAudioService;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    iget-boolean v1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->mIsServiceConnected:Z

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    iget-object v1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->mSupportedServiceList:Ljava/util/List;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient$ServiceType;->getServiceType()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    iget-object v1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient;->mIHnAudioService:Lcom/tencent/trtc/hardwareearmonitor/honor/IHonorAudioService;

    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioClient$ServiceType;->getServiceType()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    invoke-interface {v1, p1}, Lcom/tencent/trtc/hardwareearmonitor/honor/IHonorAudioService;->isServiceSupported(I)Z

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
    move-exception p1

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    return v0

    .line 66
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v3, "isServiceSupported,RemoteException ex : "

    .line 69
    .line 70
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-static {v2, p1}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorLogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    return v0
.end method
