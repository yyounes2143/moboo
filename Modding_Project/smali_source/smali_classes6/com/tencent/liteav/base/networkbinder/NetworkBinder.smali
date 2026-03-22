.class public Lcom/tencent/liteav/base/networkbinder/NetworkBinder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav"
.end annotation


# static fields
.field public static final CELLULAR:I = 0x2

.field public static final DEFAULT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "NetworkBinder"

.field public static final WIFI:I = 0x1

.field private static isPrint:Z = true


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mIsActivatingNetwork:Z

.field private mIsNetworkAvailable:Z

.field private final mLocker:Ljava/lang/Object;

.field private mNativeNetworkBinderJni:J

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mNetworkType:I

.field private final mTimeoutRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

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
    iput-object v0, p0, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->mLocker:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->mIsActivatingNetwork:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->mIsNetworkAvailable:Z

    .line 15
    .line 16
    iput v0, p0, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->mNetworkType:I

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 20
    .line 21
    new-instance v0, Lcom/tencent/liteav/base/networkbinder/NetworkBinder$1;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/tencent/liteav/base/networkbinder/NetworkBinder$1;-><init>(Lcom/tencent/liteav/base/networkbinder/NetworkBinder;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 27
    .line 28
    iput-wide p1, p0, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->mNativeNetworkBinderJni:J

    .line 29
    .line 30
    new-instance p1, Landroid/os/Handler;

    .line 31
    .line 32
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->mHandler:Landroid/os/Handler;

    .line 40
    .line 41
    return-void
.end method

.method public static synthetic access$000(Lcom/tencent/liteav/base/networkbinder/NetworkBinder;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->mLocker:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/tencent/liteav/base/networkbinder/NetworkBinder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->mIsActivatingNetwork:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$102(Lcom/tencent/liteav/base/networkbinder/NetworkBinder;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->mIsActivatingNetwork:Z

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$200(Lcom/tencent/liteav/base/networkbinder/NetworkBinder;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->checkNativeValid()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$300(Lcom/tencent/liteav/base/networkbinder/NetworkBinder;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->mNativeNetworkBinderJni:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic access$400(JLjava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->nativeOnNetworkAvailable(JLjava/lang/String;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$500(Lcom/tencent/liteav/base/networkbinder/NetworkBinder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->mIsNetworkAvailable:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$502(Lcom/tencent/liteav/base/networkbinder/NetworkBinder;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->mIsNetworkAvailable:Z

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$600(Lcom/tencent/liteav/base/networkbinder/NetworkBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->deactivateNetworkAdapter()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$700(Lcom/tencent/liteav/base/networkbinder/NetworkBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->cancleTimeoutRunnable()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bindSocket(Ljava/lang/String;I)Z
    .locals 5

    .line 1
    const-string v0, " socket:"

    .line 2
    .line 3
    const-string v1, "NetworkBinder"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz p0, :cond_3

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-nez v3, :cond_3

    .line 13
    .line 14
    const/4 v3, -0x1

    .line 15
    if-ne p1, v3, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->checkSystemVersionValid()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-nez v3, :cond_1

    .line 23
    .line 24
    return v2

    .line 25
    :cond_1
    invoke-static {p0}, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->findNetwork(Ljava/lang/String;)Landroid/net/Network;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    if-nez v3, :cond_2

    .line 30
    .line 31
    const-string v3, "[BindSocket]:NetworkBinder bindSocket can not find network:"

    .line 32
    .line 33
    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-static {v1, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return v2

    .line 41
    :cond_2
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->fromFd(I)Landroid/os/ParcelFileDescriptor;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v3, v4}, Landroid/net/Network;->bindSocket(Ljava/io/FileDescriptor;)V

    .line 50
    .line 51
    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v4, "[BindSocket]:NetworkBinder bindSocket succ, name:"

    .line 55
    .line 56
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-static {v1, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    .line 75
    const/4 p0, 0x1

    .line 76
    return p0

    .line 77
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v4, "[BindSocket]:bindSocket in java encountered an exception, name:"

    .line 80
    .line 81
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-static {v1, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    :cond_3
    :goto_0
    return v2
.end method

.method private cancleTimeoutRunnable()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    .line 8
    const-string v1, "NetworkBinder"

    .line 9
    .line 10
    const-string v2, "[BindSocket]:remove cancel last request network runnable"

    .line 11
    .line 12
    invoke-static {v1, v2, v0}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->mHandler:Landroid/os/Handler;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method private checkNativeValid()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->mLocker:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-wide v1, p0, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->mNativeNetworkBinderJni:J

    .line 5
    .line 6
    const-wide/16 v3, -0x1

    .line 7
    .line 8
    cmp-long v1, v1, v3

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    monitor-exit v0

    .line 16
    return v1

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw v1
.end method

.method private static checkSystemVersionValid()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x17

    .line 6
    .line 7
    if-ge v0, v1, :cond_1

    .line 8
    .line 9
    sget-boolean v0, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->isPrint:Z

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-string v0, "NetworkBinder"

    .line 15
    .line 16
    const-string v2, "[BindSocket]:The android version is too low and does not support network binding"

    .line 17
    .line 18
    invoke-static {v0, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sput-boolean v1, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->isPrint:Z

    .line 22
    .line 23
    :cond_0
    return v1

    .line 24
    :cond_1
    const/4 v0, 0x1

    .line 25
    return v0
.end method

.method private createNetworkCallback()Landroid/net/ConnectivityManager$NetworkCallback;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->mLocker:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-object v1

    .line 10
    :catchall_0
    move-exception v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-static {}, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->checkSystemVersionValid()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    return-object v1

    .line 21
    :cond_1
    invoke-static {}, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->getConnectivityManager()Landroid/net/ConnectivityManager;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    return-object v1

    .line 28
    :cond_2
    new-instance v1, Lcom/tencent/liteav/base/networkbinder/NetworkBinder$2;

    .line 29
    .line 30
    invoke-direct {v1, p0, v0}, Lcom/tencent/liteav/base/networkbinder/NetworkBinder$2;-><init>(Lcom/tencent/liteav/base/networkbinder/NetworkBinder;Landroid/net/ConnectivityManager;)V

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->mLocker:Ljava/lang/Object;

    .line 34
    .line 35
    monitor-enter v2

    .line 36
    :try_start_1
    iput-object v1, p0, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 37
    .line 38
    monitor-exit v2

    .line 39
    return-object v1

    .line 40
    :catchall_1
    move-exception v0

    .line 41
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 42
    throw v0

    .line 43
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    throw v1
.end method

.method private deactivateNetworkAdapter()V
    .locals 5

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->checkSystemVersionValid()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->getConnectivityManager()Landroid/net/ConnectivityManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    iget-object v1, p0, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->mLocker:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    :try_start_1
    iget-object v2, p0, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 19
    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    const-string v2, "NetworkBinder"

    .line 23
    .line 24
    const-string v3, "[BindSocket]:deactivat network adapter"

    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    new-array v4, v4, [Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {v2, v3, v4}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    :goto_1
    monitor-exit v1

    .line 41
    return-void

    .line 42
    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 44
    :catch_0
    const-string v0, "NetworkBinder"

    .line 45
    .line 46
    const-string v1, "[BindSocket]:deactivateNetworkAdapter in java encountered an exception"

    .line 47
    .line 48
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public static findNetwork(Ljava/lang/String;)Landroid/net/Network;
    .locals 7

    .line 1
    invoke-static {}, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->checkSystemVersionValid()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    invoke-static {}, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->getConnectivityManager()Landroid/net/ConnectivityManager;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    array-length v3, v2

    .line 21
    const/4 v4, 0x0

    .line 22
    :goto_0
    if-ge v4, v3, :cond_3

    .line 23
    .line 24
    aget-object v5, v2, v4

    .line 25
    .line 26
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    if-eqz v6, :cond_2

    .line 31
    .line 32
    invoke-virtual {v6}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    if-eqz v6, :cond_2

    .line 41
    .line 42
    return-object v5

    .line 43
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    return-object v1
.end method

.method private static getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    .line 1
    invoke-static {}, Lcom/tencent/liteav/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    const-string v1, "connectivity"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 16
    .line 17
    return-object v0
.end method

.method private static native nativeOnNetworkAvailable(JLjava/lang/String;Z)V
.end method


# virtual methods
.method public activateNetworkAdapter(I)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eq p1, v1, :cond_0

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    if-eq p1, v2, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->mLocker:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    :try_start_1
    iget-boolean v3, p0, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->mIsActivatingNetwork:Z

    .line 13
    .line 14
    if-eqz v3, :cond_1

    .line 15
    .line 16
    const-string v1, "NetworkBinder"

    .line 17
    .line 18
    const-string v3, "[BindSocket]:mIsActivatingNetwork is true"

    .line 19
    .line 20
    invoke-static {v1, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    monitor-exit v2

    .line 24
    return v0

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    goto :goto_2

    .line 27
    :cond_1
    iput-boolean v1, p0, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->mIsActivatingNetwork:Z

    .line 28
    .line 29
    iput-boolean v0, p0, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->mIsNetworkAvailable:Z

    .line 30
    .line 31
    iget v3, p0, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->mNetworkType:I

    .line 32
    .line 33
    if-eq v3, p1, :cond_2

    .line 34
    .line 35
    invoke-direct {p0}, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->deactivateNetworkAdapter()V

    .line 36
    .line 37
    .line 38
    :cond_2
    iput p1, p0, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->mNetworkType:I

    .line 39
    .line 40
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->doActivateNetworkAdapter(I)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_4

    .line 46
    .line 47
    iget-object v2, p0, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->mLocker:Ljava/lang/Object;

    .line 48
    .line 49
    monitor-enter v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 50
    :try_start_3
    iget-object v3, p0, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->mHandler:Landroid/os/Handler;

    .line 51
    .line 52
    if-eqz v3, :cond_3

    .line 53
    .line 54
    iget-object v4, p0, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 55
    .line 56
    const-wide/16 v5, 0x7d0

    .line 57
    .line 58
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catchall_1
    move-exception v1

    .line 63
    goto :goto_1

    .line 64
    :cond_3
    :goto_0
    monitor-exit v2

    .line 65
    return v1

    .line 66
    :goto_1
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 67
    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 68
    :goto_2
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 69
    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 70
    :catch_0
    const-string v1, "NetworkBinder"

    .line 71
    .line 72
    const-string v2, "[BindSocket]:activateNetworkAdapter in java encountered an exception, networkType:"

    .line 73
    .line 74
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-static {v1, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :cond_4
    return v0
.end method

.method public destroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->mLocker:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iput-boolean v1, p0, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->mIsActivatingNetwork:Z

    .line 6
    .line 7
    iput-boolean v1, p0, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->mIsNetworkAvailable:Z

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->deactivateNetworkAdapter()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->cancleTimeoutRunnable()V

    .line 13
    .line 14
    .line 15
    const-wide/16 v1, -0x1

    .line 16
    .line 17
    iput-wide v1, p0, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->mNativeNetworkBinderJni:J

    .line 18
    .line 19
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1
.end method

.method public doActivateNetworkAdapter(I)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ne p1, v1, :cond_0

    .line 4
    .line 5
    move v2, v1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v2, 0x2

    .line 8
    if-ne p1, v2, :cond_4

    .line 9
    .line 10
    move v2, v0

    .line 11
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->checkSystemVersionValid()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-nez v3, :cond_1

    .line 16
    .line 17
    return v0

    .line 18
    :cond_1
    invoke-static {}, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->getConnectivityManager()Landroid/net/ConnectivityManager;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    if-nez v3, :cond_2

    .line 23
    .line 24
    return v0

    .line 25
    :cond_2
    invoke-direct {p0}, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->createNetworkCallback()Landroid/net/ConnectivityManager$NetworkCallback;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    if-nez v4, :cond_3

    .line 30
    .line 31
    return v0

    .line 32
    :cond_3
    new-instance v5, Landroid/net/NetworkRequest$Builder;

    .line 33
    .line 34
    invoke-direct {v5}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 35
    .line 36
    .line 37
    const/16 v6, 0xc

    .line 38
    .line 39
    invoke-virtual {v5, v6}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-virtual {v5, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v3, v2, v4}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    return v1

    .line 55
    :catch_0
    const-string v1, "[BindSocket]:requestNetwork in java encountered an exception, networkType:"

    .line 56
    .line 57
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    const-string v1, "NetworkBinder"

    .line 66
    .line 67
    invoke-static {v1, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_4
    return v0
.end method

.method public resumeDefaultNetworkAdapter()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->mNetworkType:I

    .line 3
    .line 4
    invoke-direct {p0}, Lcom/tencent/liteav/base/networkbinder/NetworkBinder;->deactivateNetworkAdapter()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
