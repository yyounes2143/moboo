.class public Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPool;
.super Ljava/lang/Object;


# static fields
.field private static final CORE_POOL_SIZE:I = 0x1

.field private static final MAX_POOL_SIZE:I = 0x14

.field private static final PRE_THREAD_NAME:Ljava/lang/String; = "TPCoreHdr"

.field private static final SHARE_THREAD_NAME:Ljava/lang/String; = "TPCore-ShareThread"

.field private static final TAG:Ljava/lang/String; = "TPCore[TPThreadPool]"

.field private static volatile sCustomExecutor:Ljava/util/concurrent/ExecutorService;

.field private static volatile sHandlerThread:Landroid/os/HandlerThread;

.field private static volatile sInstance:Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPool;

.field private static volatile sMainThreadHandler:Landroid/os/Handler;

.field private static volatile sScheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private static volatile sShareSingleExecutor:Ljava/util/concurrent/ExecutorService;

.field private static sShareThreadCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getInstance()Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPool;
    .locals 2

    .line 1
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPool;->sInstance:Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPool;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPool;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPool;->sInstance:Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPool;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPool;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPool;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPool;->sInstance:Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPool;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v1

    .line 26
    :cond_1
    :goto_2
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPool;->sInstance:Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPool;

    .line 27
    .line 28
    return-object v0
.end method

.method private static initHandlerThread()V
    .locals 3

    .line 1
    const-class v0, Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPool;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPool;->sHandlerThread:Landroid/os/HandlerThread;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Landroid/os/HandlerThread;

    .line 9
    .line 10
    const-string v2, "TPCore-ShareThread"

    .line 11
    .line 12
    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sput-object v1, Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPool;->sHandlerThread:Landroid/os/HandlerThread;

    .line 16
    .line 17
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 18
    .line 19
    .line 20
    goto :goto_1

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    goto :goto_2

    .line 23
    :cond_0
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPool;->sHandlerThread:Landroid/os/HandlerThread;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPool;->sHandlerThread:Landroid/os/HandlerThread;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    :goto_1
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPool;->sHandlerThread:Landroid/os/HandlerThread;

    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-nez v1, :cond_2

    .line 41
    .line 42
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPool;->sHandlerThread:Landroid/os/HandlerThread;

    .line 43
    .line 44
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 45
    .line 46
    .line 47
    new-instance v1, Landroid/os/HandlerThread;

    .line 48
    .line 49
    const-string v2, "TPCore-ShareThread"

    .line 50
    .line 51
    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    sput-object v1, Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPool;->sHandlerThread:Landroid/os/HandlerThread;

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 57
    .line 58
    .line 59
    :cond_2
    monitor-exit v0

    .line 60
    return-void

    .line 61
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    throw v1
.end method

.method private static initMainThreadHandler()V
    .locals 4

    .line 1
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPool;->sMainThreadHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-class v0, Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPool;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPool;->sMainThreadHandler:Landroid/os/Handler;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    :goto_0
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    new-instance v2, Landroid/os/Handler;

    .line 24
    .line 25
    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 26
    .line 27
    .line 28
    sput-object v2, Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPool;->sMainThreadHandler:Landroid/os/Handler;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const/4 v1, 0x0

    .line 32
    sput-object v1, Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPool;->sMainThreadHandler:Landroid/os/Handler;

    .line 33
    .line 34
    const-string v1, "TPCore[TPThreadPool]"

    .line 35
    .line 36
    const-string v2, "cannot get thread looper"

    .line 37
    .line 38
    const/4 v3, 0x4

    .line 39
    invoke-static {v3, v1, v2}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw v1
.end method


# virtual methods
.method public obtainHandleThread(Ljava/lang/String;)Landroid/os/HandlerThread;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPool;->obtainHandleThread(Ljava/lang/String;I)Landroid/os/HandlerThread;

    move-result-object p1

    return-object p1
.end method

.method public obtainHandleThread(Ljava/lang/String;I)Landroid/os/HandlerThread;
    .locals 1

    .line 2
    const/16 v0, 0x13

    if-ge p2, v0, :cond_0

    const/16 v0, -0x13

    if-gt p2, v0, :cond_1

    :cond_0
    const/4 p2, 0x0

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "TPCoreHdr"

    :cond_2
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-object v0
.end method

.method public obtainScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    .line 1
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPool;->sScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPool;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPool;->sScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    sput-object v1, Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPool;->sScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v1

    .line 26
    :cond_1
    :goto_2
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPool;->sScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 27
    .line 28
    return-object v0
.end method

.method public obtainShareThread()Landroid/os/HandlerThread;
    .locals 4

    .line 1
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPool;->initHandlerThread()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPool;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    sget v1, Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPool;->sShareThreadCount:I

    .line 8
    .line 9
    add-int/lit8 v1, v1, 0x1

    .line 10
    .line 11
    sput v1, Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPool;->sShareThreadCount:I

    .line 12
    .line 13
    const-string v1, "TPCore[TPThreadPool]"

    .line 14
    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v3, "handlerThread obtainShareThread mShareThreadCount:"

    .line 18
    .line 19
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sget v3, Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPool;->sShareThreadCount:I

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const/4 v3, 0x2

    .line 32
    invoke-static {v3, v1, v2}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPool;->sHandlerThread:Landroid/os/HandlerThread;

    .line 36
    .line 37
    monitor-exit v0

    .line 38
    return-object v1

    .line 39
    :catchall_0
    move-exception v1

    .line 40
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw v1
.end method

.method public obtainSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 2

    .line 1
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPool;->sShareSingleExecutor:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPool;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPool;->sShareSingleExecutor:Ljava/util/concurrent/ExecutorService;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    sput-object v1, Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPool;->sShareSingleExecutor:Ljava/util/concurrent/ExecutorService;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    monitor-exit v0

    .line 22
    goto :goto_2

    .line 23
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw v1

    .line 25
    :cond_1
    :goto_2
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPool;->sShareSingleExecutor:Ljava/util/concurrent/ExecutorService;

    .line 26
    .line 27
    return-object v0
.end method

.method public obtainThreadExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 3

    .line 1
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPool;->sCustomExecutor:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPool;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPool;->sCustomExecutor:Ljava/util/concurrent/ExecutorService;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    const/16 v2, 0x14

    .line 14
    .line 15
    invoke-static {v1, v2}, Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPoolExecutor;->newCustomThreadExecutor(II)Ljava/util/concurrent/ExecutorService;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    sput-object v1, Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPool;->sCustomExecutor:Ljava/util/concurrent/ExecutorService;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    monitor-exit v0

    .line 25
    goto :goto_2

    .line 26
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw v1

    .line 28
    :cond_1
    :goto_2
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPool;->sCustomExecutor:Ljava/util/concurrent/ExecutorService;

    .line 29
    .line 30
    return-object v0
.end method

.method public postDelayRunnableOnMainThread(Ljava/lang/Runnable;J)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPool;->initMainThreadHandler()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPool;->sMainThreadHandler:Landroid/os/Handler;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPool;->sMainThreadHandler:Landroid/os/Handler;

    .line 9
    .line 10
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public postRunnableOnMainThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPool;->initMainThreadHandler()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPool;->sMainThreadHandler:Landroid/os/Handler;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPool;->sMainThreadHandler:Landroid/os/Handler;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public postRunnableOnMainThreadFront(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPool;->initMainThreadHandler()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPool;->sMainThreadHandler:Landroid/os/Handler;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPool;->sMainThreadHandler:Landroid/os/Handler;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public recycle(Landroid/os/HandlerThread;Landroid/os/Handler;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    if-eqz p2, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_1
    sget-object p2, Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPool;->sHandlerThread:Landroid/os/HandlerThread;

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    if-eqz p2, :cond_2

    .line 17
    .line 18
    const-class p2, Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPool;

    .line 19
    .line 20
    monitor-enter p2

    .line 21
    :try_start_0
    sget p1, Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPool;->sShareThreadCount:I

    .line 22
    .line 23
    add-int/lit8 p1, p1, -0x1

    .line 24
    .line 25
    sput p1, Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPool;->sShareThreadCount:I

    .line 26
    .line 27
    const-string p1, "TPCore[TPThreadPool]"

    .line 28
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v1, "handlerThread recycle mShareThreadCount:"

    .line 32
    .line 33
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sget v1, Lcom/tencent/thumbplayer/tcmedia/core/utils/TPThreadPool;->sShareThreadCount:I

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const/4 v1, 0x2

    .line 46
    invoke-static {v1, p1, v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    monitor-exit p2

    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw p1

    .line 54
    :cond_2
    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    .line 55
    .line 56
    .line 57
    return-void
.end method
