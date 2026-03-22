.class public Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field private static final BIND_SERVICE_LOCK:Ljava/lang/Object;

.field private static final ENGINE_PACKAGE_NAME:Ljava/lang/String; = "com.hihonor.android.magicx.media.audioengine"

.field private static final NEW_FEATUREMANAGER_LOCK:Ljava/lang/Object;

.field private static final PACKAGE_INFO_FLAG:I = 0x0

.field private static final SET_CALL_BACK_LOCK:Ljava/lang/Object;

.field private static final SUB_VERSION_MASK:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "HnAudioEngine.FeatureKitManager"

.field private static final UNBIND_SERVICE_LOCK:Ljava/lang/Object;

.field public static mMinVersion:J

.field private static sInstance:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;


# instance fields
.field private mCallBack:Lcom/tencent/trtc/hardwareearmonitor/honor/IHonorAudioServiceCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;->SET_CALL_BACK_LOCK:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;->NEW_FEATUREMANAGER_LOCK:Ljava/lang/Object;

    .line 14
    .line 15
    new-instance v0, Ljava/lang/Object;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;->BIND_SERVICE_LOCK:Ljava/lang/Object;

    .line 21
    .line 22
    new-instance v0, Ljava/lang/Object;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;->UNBIND_SERVICE_LOCK:Ljava/lang/Object;

    .line 28
    .line 29
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
    iput-object v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;->mCallBack:Lcom/tencent/trtc/hardwareearmonitor/honor/IHonorAudioServiceCallback;

    .line 6
    .line 7
    return-void
.end method

.method public static getInstance()Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;
    .locals 2

    .line 1
    sget-object v0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;->NEW_FEATUREMANAGER_LOCK:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;->sInstance:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;->sInstance:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object v1, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;->sInstance:Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1
.end method

.method public static isAudioKitSupport(Landroid/content/Context;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "HnAudioEngine.FeatureKitManager"

    .line 3
    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    const-string p0, "context is null"

    .line 7
    .line 8
    invoke-static {v1, p0}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorLogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-eqz p0, :cond_2

    .line 17
    .line 18
    :try_start_0
    const-string v2, "com.hihonor.android.magicx.media.audioengine"

    .line 19
    .line 20
    invoke-virtual {p0, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 25
    .line 26
    div-int/lit16 p0, p0, 0x3e8

    .line 27
    .line 28
    int-to-long v2, p0

    .line 29
    const-wide/32 v4, 0xf4241

    .line 30
    .line 31
    .line 32
    cmp-long v6, v2, v4

    .line 33
    .line 34
    if-lez v6, :cond_1

    .line 35
    .line 36
    move-wide v2, v4

    .line 37
    :cond_1
    sput-wide v2, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;->mMinVersion:J

    .line 38
    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v3, " isDeviceSupport is true, enginVersionCode="

    .line 42
    .line 43
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string p0, " audioKitVersionCode=1000001"

    .line 50
    .line 51
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-static {v1, p0}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorLogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const/4 p0, 0x1

    .line 62
    return p0

    .line 63
    :cond_2
    const-string p0, "packageManager is null"

    .line 64
    .line 65
    invoke-static {v1, p0}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorLogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    .line 68
    return v0

    .line 69
    :catchall_0
    const-string p0, "isAudioKitSupport ,NameNotFoundException"

    .line 70
    .line 71
    invoke-static {v1, p0}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorLogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return v0
.end method


# virtual methods
.method public bindService(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;->BIND_SERVICE_LOCK:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    :try_start_0
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    goto :goto_1

    .line 10
    :cond_0
    new-instance v1, Landroid/content/Intent;

    .line 11
    .line 12
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v2, "com.hihonor.android.magicx.media.audioengine"

    .line 16
    .line 17
    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    :try_start_1
    const-string p3, "HnAudioEngine.FeatureKitManager"

    .line 21
    .line 22
    const-string v2, "bindService"

    .line 23
    .line 24
    invoke-static {p3, v2}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorLogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 p3, 0x1

    .line 28
    invoke-virtual {p1, v1, p2, p3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_1
    move-exception p1

    .line 33
    :try_start_2
    const-string p2, "HnAudioEngine.FeatureKitManager"

    .line 34
    .line 35
    new-instance p3, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v1, "bindService, SecurityException, "

    .line 38
    .line 39
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {p2, p1}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorLogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :goto_0
    monitor-exit v0

    .line 57
    return-void

    .line 58
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    throw p1
.end method

.method public createFeatureKit(ILandroid/content/Context;)Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioFeaturesKit;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioFeaturesKit;",
            ">(I",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    .line 1
    const-string v0, "createFeatureKit, type ="

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "HnAudioEngine.FeatureKitManager"

    .line 12
    .line 13
    invoke-static {v1, v0}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorLogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    if-nez p2, :cond_0

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_0
    const/4 v2, 0x1

    .line 21
    if-eq p1, v2, :cond_3

    .line 22
    .line 23
    const/4 v2, 0x2

    .line 24
    if-eq p1, v2, :cond_2

    .line 25
    .line 26
    const/4 v2, 0x3

    .line 27
    if-eq p1, v2, :cond_1

    .line 28
    .line 29
    const/4 v2, 0x4

    .line 30
    if-eq p1, v2, :cond_2

    .line 31
    .line 32
    const-string p1, "createFeatureKit, type error"

    .line 33
    .line 34
    invoke-static {v1, p1}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorLogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_1
    new-instance p1, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;

    .line 39
    .line 40
    invoke-direct {p1, p2}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;-><init>(Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p2}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAudioPlayClient;->initialize(Landroid/content/Context;)V

    .line 44
    .line 45
    .line 46
    return-object p1

    .line 47
    :cond_2
    new-instance p1, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient;

    .line 48
    .line 49
    invoke-direct {p1, p2}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient;-><init>(Landroid/content/Context;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorAdvancedRecordClient;->initialize(Landroid/content/Context;)V

    .line 53
    .line 54
    .line 55
    return-object p1

    .line 56
    :cond_3
    new-instance p1, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorEarReturnClient;

    .line 57
    .line 58
    invoke-direct {p1, p2}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorEarReturnClient;-><init>(Landroid/content/Context;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p2}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorEarReturnClient;->initialize(Landroid/content/Context;)V

    .line 62
    .line 63
    .line 64
    return-object p1
.end method

.method public getCallBack()Lcom/tencent/trtc/hardwareearmonitor/honor/IHonorAudioServiceCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;->mCallBack:Lcom/tencent/trtc/hardwareearmonitor/honor/IHonorAudioServiceCallback;

    .line 2
    .line 3
    return-object v0
.end method

.method public onCallBack(I)V
    .locals 3

    .line 1
    const-string v0, "HnAudioEngine.FeatureKitManager"

    .line 2
    .line 3
    const-string v1, "onCallBack, result ="

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0, v1}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorLogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;->SET_CALL_BACK_LOCK:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v0

    .line 19
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;->getCallBack()Lcom/tencent/trtc/hardwareearmonitor/honor/IHonorAudioServiceCallback;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;->getCallBack()Lcom/tencent/trtc/hardwareearmonitor/honor/IHonorAudioServiceCallback;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v1, p1}, Lcom/tencent/trtc/hardwareearmonitor/honor/IHonorAudioServiceCallback;->onResult(I)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    :goto_0
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p1
.end method

.method public setCallBack(Lcom/tencent/trtc/hardwareearmonitor/honor/IHonorAudioServiceCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;->mCallBack:Lcom/tencent/trtc/hardwareearmonitor/honor/IHonorAudioServiceCallback;

    .line 2
    .line 3
    return-void
.end method

.method public unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .locals 2

    .line 1
    const-string v0, "HnAudioEngine.FeatureKitManager"

    .line 2
    .line 3
    const-string v1, "unbindService"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorLogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/tencent/trtc/hardwareearmonitor/honor/HonorFeatureKitManager;->UNBIND_SERVICE_LOCK:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    :goto_0
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p1
.end method
