.class public Lcom/changdu/component/core/googleadid/GoogleAdId;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/changdu/component/core/googleadid/GoogleAdId$OnGoogleAdIdReadListener;
    }
.end annotation


# static fields
.field public static volatile a:Lcom/changdu/component/core/googleadid/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Ljava/util/concurrent/Callable;J)Ljava/lang/Object;
    .locals 4

    .line 1
    sget-object v0, Lcom/changdu/component/core/googleadid/GoogleAdId;->a:Lcom/changdu/component/core/googleadid/i;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/changdu/component/core/googleadid/GoogleAdId;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/changdu/component/core/googleadid/GoogleAdId;->a:Lcom/changdu/component/core/googleadid/i;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/changdu/component/core/googleadid/i;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/changdu/component/core/googleadid/i;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/changdu/component/core/googleadid/GoogleAdId;->a:Lcom/changdu/component/core/googleadid/i;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

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
    throw p0

    .line 26
    :cond_1
    :goto_2
    sget-object v0, Lcom/changdu/component/core/googleadid/GoogleAdId;->a:Lcom/changdu/component/core/googleadid/i;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/changdu/component/core/googleadid/i;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 29
    .line 30
    new-instance v1, Lcom/changdu/component/core/googleadid/h;

    .line 31
    .line 32
    invoke-direct {v1, p0}, Lcom/changdu/component/core/googleadid/h;-><init>(Ljava/util/concurrent/Callable;)V

    .line 33
    .line 34
    .line 35
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 36
    .line 37
    const-wide/16 v2, 0x0

    .line 38
    .line 39
    invoke-virtual {v0, v1, v2, v3, p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :try_start_1
    invoke-interface {v0, p1, p2, p0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 47
    return-object p0

    .line 48
    :catch_0
    const/4 p0, 0x0

    .line 49
    return-object p0
.end method

.method public static getGoogleAdId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 5
    :try_start_0
    invoke-static {p0}, Lcom/changdu/component/core/googleadid/o;->a(Landroid/content/Context;)Lcom/changdu/component/core/googleadid/m;

    move-result-object v0

    .line 6
    iget-object v0, v0, Lcom/changdu/component/core/googleadid/m;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    .line 7
    new-instance v1, Lcom/changdu/component/core/googleadid/e;

    invoke-direct {v1, p0}, Lcom/changdu/component/core/googleadid/e;-><init>(Landroid/content/Context;)V

    const-wide/16 v2, 0x2af8

    invoke-static {v1, v2, v3}, Lcom/changdu/component/core/googleadid/GoogleAdId;->a(Ljava/util/concurrent/Callable;J)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 8
    new-instance v0, Lcom/changdu/component/core/googleadid/f;

    invoke-direct {v0, p0, v1}, Lcom/changdu/component/core/googleadid/f;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/changdu/component/core/googleadid/GoogleAdId;->a(Ljava/util/concurrent/Callable;J)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    .line 9
    :cond_0
    sget-object p0, Lcom/changdu/component/core/googleadid/GoogleAdId;->a:Lcom/changdu/component/core/googleadid/i;

    if-eqz p0, :cond_2

    .line 10
    const-class p0, Lcom/changdu/component/core/googleadid/GoogleAdId;

    monitor-enter p0

    .line 11
    :try_start_1
    sget-object v1, Lcom/changdu/component/core/googleadid/GoogleAdId;->a:Lcom/changdu/component/core/googleadid/i;

    if-eqz v1, :cond_1

    .line 12
    sget-object v1, Lcom/changdu/component/core/googleadid/GoogleAdId;->a:Lcom/changdu/component/core/googleadid/i;

    .line 13
    iget-object v1, v1, Lcom/changdu/component/core/googleadid/i;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 14
    invoke-virtual {v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 15
    :cond_1
    :goto_1
    monitor-exit p0

    goto :goto_3

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    :goto_3
    return-object v0
.end method

.method public static getGoogleAdId(Landroid/content/Context;Lcom/changdu/component/core/googleadid/GoogleAdId$OnGoogleAdIdReadListener;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/changdu/component/core/googleadid/d;

    invoke-direct {v0, p1}, Lcom/changdu/component/core/googleadid/d;-><init>(Lcom/changdu/component/core/googleadid/GoogleAdId$OnGoogleAdIdReadListener;)V

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/content/Context;

    const/4 v1, 0x0

    aput-object p0, p1, v1

    .line 2
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 4
    new-instance v2, Lcom/changdu/component/core/googleadid/b;

    invoke-direct {v2, v0, p1, p0}, Lcom/changdu/component/core/googleadid/b;-><init>(Lcom/changdu/component/core/googleadid/d;[Ljava/lang/Object;Landroid/os/Handler;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
