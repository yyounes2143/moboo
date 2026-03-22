.class Lcom/tekartik/sqflite/SingleDatabaseWorkerPoolImpl;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/tekartik/sqflite/DatabaseWorkerPool;


# instance fields
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
    iput-object p1, p0, Lcom/tekartik/sqflite/SingleDatabaseWorkerPoolImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Lcom/tekartik/sqflite/SingleDatabaseWorkerPoolImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/tekartik/sqflite/Database;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/tekartik/sqflite/DatabaseWorkerPool$-CC;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/tekartik/sqflite/DatabaseWorkerPool;Lcom/tekartik/sqflite/Database;Ljava/lang/Runnable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/tekartik/sqflite/DatabaseTask;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tekartik/sqflite/SingleDatabaseWorkerPoolImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/tekartik/sqflite/DatabaseTask;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tekartik/sqflite/SingleDatabaseWorkerPoolImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/os/HandlerThread;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/tekartik/sqflite/SingleDatabaseWorkerPoolImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/os/HandlerThread;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/tekartik/sqflite/SingleDatabaseWorkerPoolImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/os/Handler;

    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/tekartik/sqflite/SingleDatabaseWorkerPoolImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, p0, Lcom/tekartik/sqflite/SingleDatabaseWorkerPoolImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/tekartik/sqflite/SingleDatabaseWorkerPoolImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/os/HandlerThread;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 13
    .line 14
    .line 15
    new-instance v0, Landroid/os/Handler;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/tekartik/sqflite/SingleDatabaseWorkerPoolImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/os/HandlerThread;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/tekartik/sqflite/SingleDatabaseWorkerPoolImpl;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/os/Handler;

    .line 27
    .line 28
    return-void
.end method
