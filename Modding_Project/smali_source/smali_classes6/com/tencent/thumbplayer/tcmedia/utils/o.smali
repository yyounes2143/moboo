.class public Lcom/tencent/thumbplayer/tcmedia/utils/o;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Landroid/os/HandlerThread;

.field private static volatile b:Landroid/os/Handler;

.field private static c:I

.field private static volatile d:Ljava/util/concurrent/ExecutorService;

.field private static volatile e:Ljava/util/concurrent/ExecutorService;

.field private static volatile f:Ljava/util/concurrent/ScheduledExecutorService;

.field private static volatile g:Lcom/tencent/thumbplayer/tcmedia/utils/o;


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

.method public static a()Lcom/tencent/thumbplayer/tcmedia/utils/o;
    .locals 2

    .line 3
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/utils/o;->g:Lcom/tencent/thumbplayer/tcmedia/utils/o;

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/thumbplayer/tcmedia/utils/o;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/utils/o;->g:Lcom/tencent/thumbplayer/tcmedia/utils/o;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/thumbplayer/tcmedia/utils/o;

    invoke-direct {v1}, Lcom/tencent/thumbplayer/tcmedia/utils/o;-><init>()V

    sput-object v1, Lcom/tencent/thumbplayer/tcmedia/utils/o;->g:Lcom/tencent/thumbplayer/tcmedia/utils/o;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/utils/o;->g:Lcom/tencent/thumbplayer/tcmedia/utils/o;

    return-object v0
.end method

.method private static f()V
    .locals 3

    .line 1
    const-class v0, Lcom/tencent/thumbplayer/tcmedia/utils/o;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/utils/o;->a:Landroid/os/HandlerThread;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Landroid/os/HandlerThread;

    .line 9
    .line 10
    const-string v2, "TP-ShareThreadPool"

    .line 11
    .line 12
    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sput-object v1, Lcom/tencent/thumbplayer/tcmedia/utils/o;->a:Landroid/os/HandlerThread;

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
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/utils/o;->a:Landroid/os/HandlerThread;

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
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/utils/o;->a:Landroid/os/HandlerThread;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    :goto_1
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/utils/o;->a:Landroid/os/HandlerThread;

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
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/utils/o;->a:Landroid/os/HandlerThread;

    .line 43
    .line 44
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 45
    .line 46
    .line 47
    new-instance v1, Landroid/os/HandlerThread;

    .line 48
    .line 49
    const-string v2, "TP-ShareThreadPool"

    .line 50
    .line 51
    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    sput-object v1, Lcom/tencent/thumbplayer/tcmedia/utils/o;->a:Landroid/os/HandlerThread;

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


# virtual methods
.method public a(Ljava/lang/String;)Landroid/os/HandlerThread;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/thumbplayer/tcmedia/utils/o;->a(Ljava/lang/String;I)Landroid/os/HandlerThread;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;I)Landroid/os/HandlerThread;
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

    const-string p1, "TP-HandlerThread"

    :cond_2
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-object v0
.end method

.method public a(Landroid/os/HandlerThread;Landroid/os/Handler;)V
    .locals 2

    .line 4
    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    sget-object p2, Lcom/tencent/thumbplayer/tcmedia/utils/o;->a:Landroid/os/HandlerThread;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-class p2, Lcom/tencent/thumbplayer/tcmedia/utils/o;

    monitor-enter p2

    :try_start_0
    sget p1, Lcom/tencent/thumbplayer/tcmedia/utils/o;->c:I

    add-int/lit8 p1, p1, -0x1

    sput p1, Lcom/tencent/thumbplayer/tcmedia/utils/o;->c:I

    const-string p1, "TPPlayer[TPThreadPool]"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handlerThread recycle mShareThreadCount:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/tencent/thumbplayer/tcmedia/utils/o;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method

.method public b()Landroid/os/HandlerThread;
    .locals 4

    .line 1
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/utils/o;->f()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/tencent/thumbplayer/tcmedia/utils/o;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    sget v1, Lcom/tencent/thumbplayer/tcmedia/utils/o;->c:I

    .line 8
    .line 9
    add-int/lit8 v1, v1, 0x1

    .line 10
    .line 11
    sput v1, Lcom/tencent/thumbplayer/tcmedia/utils/o;->c:I

    .line 12
    .line 13
    const-string v1, "TPPlayer[TPThreadPool]"

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
    sget v3, Lcom/tencent/thumbplayer/tcmedia/utils/o;->c:I

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
    invoke-static {v1, v2}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/utils/o;->a:Landroid/os/HandlerThread;

    .line 35
    .line 36
    monitor-exit v0

    .line 37
    return-object v1

    .line 38
    :catchall_0
    move-exception v1

    .line 39
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw v1
.end method

.method public c()Ljava/util/concurrent/ExecutorService;
    .locals 2

    .line 1
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/utils/o;->d:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/tencent/thumbplayer/tcmedia/utils/o;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/utils/o;->d:Ljava/util/concurrent/ExecutorService;

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
    sput-object v1, Lcom/tencent/thumbplayer/tcmedia/utils/o;->d:Ljava/util/concurrent/ExecutorService;

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
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/utils/o;->d:Ljava/util/concurrent/ExecutorService;

    .line 26
    .line 27
    return-object v0
.end method

.method public d()Ljava/util/concurrent/ExecutorService;
    .locals 3

    .line 1
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/utils/o;->e:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/tencent/thumbplayer/tcmedia/utils/o;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/utils/o;->e:Ljava/util/concurrent/ExecutorService;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x4

    .line 13
    const/16 v2, 0x14

    .line 14
    .line 15
    invoke-static {v1, v2}, Lcom/tencent/thumbplayer/tcmedia/utils/p;->a(II)Ljava/util/concurrent/ExecutorService;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    sput-object v1, Lcom/tencent/thumbplayer/tcmedia/utils/o;->e:Ljava/util/concurrent/ExecutorService;

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
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/utils/o;->e:Ljava/util/concurrent/ExecutorService;

    .line 29
    .line 30
    return-object v0
.end method

.method public e()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    .line 1
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/utils/o;->f:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/tencent/thumbplayer/tcmedia/utils/o;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/utils/o;->f:Ljava/util/concurrent/ScheduledExecutorService;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x4

    .line 13
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    sput-object v1, Lcom/tencent/thumbplayer/tcmedia/utils/o;->f:Ljava/util/concurrent/ScheduledExecutorService;

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
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/utils/o;->f:Ljava/util/concurrent/ScheduledExecutorService;

    .line 27
    .line 28
    return-object v0
.end method
