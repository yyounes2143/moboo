.class public Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughPluginDetector;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughPluginDetector$HdmiAudioPlugBroadcastReceiver;,
        Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughPluginDetector$AudioPassThroughPluginListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_CHANNEL_COUNT:I = 0x8

.field private static final TAG:Ljava/lang/String; = "TPAudioPassThroughPluginDetector"

.field private static hasRegisterReceiver:Z = false

.field private static isInitted:Z = false

.field private static listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughPluginDetector$AudioPassThroughPluginListener;",
            ">;"
        }
    .end annotation
.end field

.field private static mAudioPassThroughCapabilities:Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughCapabilities;

.field private static mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static mHandler:Landroid/os/Handler;

.field private static mIsAudioPassThroughPlugin:Z

.field private static mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughPluginDetector;->listeners:Ljava/util/List;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    sput-boolean v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughPluginDetector;->mIsAudioPassThroughPlugin:Z

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    sput-object v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughPluginDetector;->mAudioPassThroughCapabilities:Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughCapabilities;

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$100(Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughCapabilities;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughPluginDetector;->onUpdateAudioCapabilities(Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughCapabilities;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$200(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughPluginDetector;->notifyAudioPassThroughStateChange(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static addListener(Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughPluginDetector$AudioPassThroughPluginListener;)V
    .locals 2

    .line 1
    const-class v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughPluginDetector;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughPluginDetector;->listeners:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    sget-boolean p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughPluginDetector;->hasRegisterReceiver:Z

    .line 13
    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughPluginDetector;->registerReceiver()V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    sput-boolean p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughPluginDetector;->hasRegisterReceiver:Z

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    monitor-exit v0

    .line 26
    return-void

    .line 27
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0
.end method

.method public static deinit()V
    .locals 4

    .line 1
    const-class v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughPluginDetector;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughPluginDetector;->isInitted:Z

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughPluginDetector;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    sput-boolean v1, Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughPluginDetector;->isInitted:Z

    .line 18
    .line 19
    const-string v1, "TPAudioPassThroughPluginDetector"

    .line 20
    .line 21
    const-string v2, "TPAudioPassThroughPluginDetector deinit succeed!"

    .line 22
    .line 23
    const/4 v3, 0x2

    .line 24
    invoke-static {v3, v1, v2}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception v1

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw v1
.end method

.method private static getLooper()Landroid/os/Looper;
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 4

    .line 1
    const-class v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughPluginDetector;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "TPAudioPassThroughPluginDetector"

    .line 5
    .line 6
    const-string v2, "TPAudioPassThroughPluginDetector init enter!"

    .line 7
    .line 8
    const/4 v3, 0x2

    .line 9
    invoke-static {v3, v1, v2}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-boolean v1, Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughPluginDetector;->isInitted:Z

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    :goto_0
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    sput-object v1, Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughPluginDetector;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 30
    .line 31
    const/4 p0, 0x1

    .line 32
    sput-boolean p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughPluginDetector;->isInitted:Z

    .line 33
    .line 34
    new-instance v1, Landroid/os/Handler;

    .line 35
    .line 36
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughPluginDetector;->getLooper()Landroid/os/Looper;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 41
    .line 42
    .line 43
    sput-object v1, Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughPluginDetector;->mHandler:Landroid/os/Handler;

    .line 44
    .line 45
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughPluginDetector;->registerReceiver()V

    .line 46
    .line 47
    .line 48
    sput-boolean p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughPluginDetector;->hasRegisterReceiver:Z

    .line 49
    .line 50
    const-string p0, "TPAudioPassThroughPluginDetector"

    .line 51
    .line 52
    const-string v1, "TPAudioPassThroughPluginDetector init succeed!"

    .line 53
    .line 54
    invoke-static {v3, p0, v1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    throw p0
.end method

.method public static isAudioPassThroughPlugin()Z
    .locals 2

    .line 1
    const-class v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughPluginDetector;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughPluginDetector;->mIsAudioPassThroughPlugin:Z

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method

.method public static isAudioPassThroughSupport(II)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughPluginDetector;->mAudioPassThroughCapabilities:Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughCapabilities;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughCapabilities;->supportsEncoding(I)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    sget-object p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughPluginDetector;->mAudioPassThroughCapabilities:Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughCapabilities;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughCapabilities;->getMaxChannelCount()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-gt p1, p0, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    return p0

    .line 22
    :cond_0
    return v1

    .line 23
    :cond_1
    const-string p0, "TPAudioPassThroughPluginDetector"

    .line 24
    .line 25
    const-string p1, "isAudioPassThroughSupport failed, mAudioPassThroughCapabilities is not init yet!"

    .line 26
    .line 27
    const/4 v0, 0x4

    .line 28
    invoke-static {v0, p0, p1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return v1
.end method

.method private static notifyAudioPassThroughStateChange(Z)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughPluginDetector;->mIsAudioPassThroughPlugin:Z

    .line 2
    .line 3
    if-ne v0, p0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sput-boolean p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughPluginDetector;->mIsAudioPassThroughPlugin:Z

    .line 7
    .line 8
    const-class v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughPluginDetector;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughPluginDetector;->listeners:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughPluginDetector$AudioPassThroughPluginListener;

    .line 28
    .line 29
    invoke-interface {v2, p0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughPluginDetector$AudioPassThroughPluginListener;->onAudioPassThroughPlugin(Z)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p0
.end method

.method private static onUpdateAudioCapabilities(Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughCapabilities;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughPluginDetector;->mAudioPassThroughCapabilities:Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughCapabilities;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughCapabilities;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sput-object p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughPluginDetector;->mAudioPassThroughCapabilities:Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughCapabilities;

    .line 10
    .line 11
    new-instance p0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v0, "onUpdateAudioCapabilities AudioCapabilities:"

    .line 14
    .line 15
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughPluginDetector;->mAudioPassThroughCapabilities:Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughCapabilities;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughCapabilities;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const/4 v0, 0x2

    .line 32
    const-string v1, "TPAudioPassThroughPluginDetector"

    .line 33
    .line 34
    invoke-static {v0, v1, p0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method private static registerReceiver()V
    .locals 7

    .line 1
    const-string v0, "registerReceiver enter"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const-string v2, "TPAudioPassThroughPluginDetector"

    .line 5
    .line 6
    invoke-static {v1, v2, v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    const/16 v3, 0x18

    .line 12
    .line 13
    if-ge v0, v3, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    sget-boolean v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughPluginDetector;->isInitted:Z

    .line 17
    .line 18
    const/4 v3, 0x4

    .line 19
    if-eqz v0, :cond_5

    .line 20
    .line 21
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughPluginDetector;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughPluginDetector;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughPluginDetector$HdmiAudioPlugBroadcastReceiver;

    .line 32
    .line 33
    invoke-direct {v0, v4}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughPluginDetector$HdmiAudioPlugBroadcastReceiver;-><init>(Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughPluginDetector$1;)V

    .line 34
    .line 35
    .line 36
    sput-object v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughPluginDetector;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 37
    .line 38
    :cond_2
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughPluginDetector;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Landroid/content/Context;

    .line 45
    .line 46
    if-nez v0, :cond_3

    .line 47
    .line 48
    const-string v0, "registerReceiver failed, context is null, maybe is invalid!"

    .line 49
    .line 50
    invoke-static {v3, v2, v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_3
    sget-object v3, Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughPluginDetector;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 55
    .line 56
    if-eqz v3, :cond_4

    .line 57
    .line 58
    new-instance v3, Landroid/content/IntentFilter;

    .line 59
    .line 60
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v5, "android.media.action.HDMI_AUDIO_PLUG"

    .line 64
    .line 65
    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    sget-object v5, Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughPluginDetector;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 69
    .line 70
    sget-object v6, Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughPluginDetector;->mHandler:Landroid/os/Handler;

    .line 71
    .line 72
    invoke-virtual {v0, v5, v3, v4, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    :cond_4
    invoke-static {v0, v4}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughCapabilities;->getCapabilities(Landroid/content/Context;Landroid/content/Intent;)Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughCapabilities;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    sput-object v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughPluginDetector;->mAudioPassThroughCapabilities:Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughCapabilities;

    .line 81
    .line 82
    const-string v0, "registerReceiver leave"

    .line 83
    .line 84
    invoke-static {v1, v2, v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_5
    :goto_0
    const-string v0, "registerReceiver failed, TPAudioPassThroughPluginDetector is not init yet!"

    .line 89
    .line 90
    invoke-static {v3, v2, v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method public static removeListener(Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughPluginDetector$AudioPassThroughPluginListener;)V
    .locals 2

    .line 1
    const-class v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughPluginDetector;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughPluginDetector;->listeners:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    sget-object p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughPluginDetector;->listeners:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    sget-boolean p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughPluginDetector;->hasRegisterReceiver:Z

    .line 18
    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughPluginDetector;->unregisterReceiver()V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    sput-boolean p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughPluginDetector;->hasRegisterReceiver:Z

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    :goto_0
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p0
.end method

.method private static unregisterReceiver()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughPluginDetector;->isInitted:Z

    .line 2
    .line 3
    const-string v1, "TPAudioPassThroughPluginDetector"

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughPluginDetector;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/content/Context;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    const-string v0, "registerReceiver failed, context is null, maybe is invalid!"

    .line 22
    .line 23
    invoke-static {v2, v1, v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/core/common/TPAudioPassThroughPluginDetector;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_2
    :goto_0
    const-string v0, "registerReceiver failed, TPAudioPassThroughPluginDetector is not init yet!"

    .line 34
    .line 35
    invoke-static {v2, v1, v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
