.class Lcom/tekartik/sqflite/DatabaseWorker;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/tekartik/sqflite/DatabaseTask;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Runnable;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/os/Handler;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/os/HandlerThread;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tekartik/sqflite/DatabaseWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Lcom/tekartik/sqflite/DatabaseWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/tekartik/sqflite/DatabaseWorker;Lcom/tekartik/sqflite/DatabaseTask;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/tekartik/sqflite/DatabaseWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/tekartik/sqflite/DatabaseTask;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/tekartik/sqflite/DatabaseTask;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/tekartik/sqflite/DatabaseTask;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Runnable;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/tekartik/sqflite/DatabaseWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/tekartik/sqflite/DatabaseTask;

    .line 7
    .line 8
    iget-object p1, p0, Lcom/tekartik/sqflite/DatabaseWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Runnable;

    .line 9
    .line 10
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public declared-synchronized Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Landroid/os/HandlerThread;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/tekartik/sqflite/DatabaseWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 5
    .line 6
    iget v2, p0, Lcom/tekartik/sqflite/DatabaseWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/tekartik/sqflite/DatabaseWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/os/HandlerThread;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 14
    .line 15
    .line 16
    new-instance v0, Landroid/os/Handler;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/tekartik/sqflite/DatabaseWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/os/HandlerThread;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/tekartik/sqflite/DatabaseWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/os/Handler;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/tekartik/sqflite/DatabaseWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    monitor-exit p0

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    throw p1
.end method

.method public declared-synchronized Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/tekartik/sqflite/DatabaseWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/os/HandlerThread;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/tekartik/sqflite/DatabaseWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/os/HandlerThread;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/tekartik/sqflite/DatabaseWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :goto_0
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    throw v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/tekartik/sqflite/DatabaseTask;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tekartik/sqflite/DatabaseWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/tekartik/sqflite/Wwwwwwwwwwwwwwwwwwwwwwwww;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/tekartik/sqflite/Wwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lcom/tekartik/sqflite/DatabaseWorker;Lcom/tekartik/sqflite/DatabaseTask;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tekartik/sqflite/DatabaseWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/tekartik/sqflite/DatabaseTask;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/tekartik/sqflite/DatabaseTask;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tekartik/sqflite/DatabaseWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/tekartik/sqflite/DatabaseTask;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/tekartik/sqflite/DatabaseTask;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method
