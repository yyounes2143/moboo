.class Lcom/didi/drouter/router/Monitor;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/os/Handler;


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

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/Request;Lcom/didi/drouter/router/Result;)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long p1, v0, v2

    .line 6
    .line 7
    if-lez p1, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/didi/drouter/router/Monitor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/didi/drouter/utils/RouterLogger;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0}, Lcom/didi/drouter/router/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const/4 v4, 0x2

    .line 25
    new-array v4, v4, [Ljava/lang/Object;

    .line 26
    .line 27
    const/4 v5, 0x0

    .line 28
    aput-object v2, v4, v5

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    aput-object v3, v4, v2

    .line 32
    .line 33
    const-string v2, "monitor for request \"%s\" start, count down \"%sms\""

    .line 34
    .line 35
    invoke-virtual {p1, v2, v4}, Lcom/didi/drouter/utils/RouterLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    sget-object p1, Lcom/didi/drouter/router/Monitor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/os/Handler;

    .line 39
    .line 40
    new-instance v2, Lcom/didi/drouter/router/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 41
    .line 42
    invoke-direct {v2, p0}, Lcom/didi/drouter/router/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lcom/didi/drouter/router/Request;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 46
    .line 47
    .line 48
    :cond_0
    return-void
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 3

    .line 1
    sget-object v0, Lcom/didi/drouter/router/Monitor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/os/Handler;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/didi/drouter/router/Monitor;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/didi/drouter/router/Monitor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/os/Handler;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Landroid/os/HandlerThread;

    .line 13
    .line 14
    const-string v2, "timeout-monitor-thread"

    .line 15
    .line 16
    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 20
    .line 21
    .line 22
    new-instance v2, Landroid/os/Handler;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 29
    .line 30
    .line 31
    sput-object v2, Lcom/didi/drouter/router/Monitor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/os/Handler;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception v1

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    :goto_0
    monitor-exit v0

    .line 37
    return-void

    .line 38
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw v1

    .line 40
    :cond_1
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/Request;)V
    .locals 1

    .line 1
    const-string v0, "timeout"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/didi/drouter/router/ResultAgent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/Request;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/didi/drouter/router/Request;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/didi/drouter/router/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/didi/drouter/router/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lcom/didi/drouter/router/Request;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/didi/drouter/utils/RouterExecutor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
