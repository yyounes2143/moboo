.class public final synthetic Lcom/tekartik/sqflite/DatabaseWorkerPool$-CC;
.super Ljava/lang/Object;
.source "Proguard"


# direct methods
.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;II)Lcom/tekartik/sqflite/DatabaseWorkerPool;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    new-instance p1, Lcom/tekartik/sqflite/SingleDatabaseWorkerPoolImpl;

    .line 5
    .line 6
    invoke-direct {p1, p0, p2}, Lcom/tekartik/sqflite/SingleDatabaseWorkerPoolImpl;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    new-instance v0, Lcom/tekartik/sqflite/DatabaseWorkerPoolImpl;

    .line 11
    .line 12
    invoke-direct {v0, p0, p1, p2}, Lcom/tekartik/sqflite/DatabaseWorkerPoolImpl;-><init>(Ljava/lang/String;II)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/tekartik/sqflite/DatabaseWorkerPool;Lcom/tekartik/sqflite/Database;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/tekartik/sqflite/DatabaseWorkerPool$1;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1}, Lcom/tekartik/sqflite/DatabaseWorkerPool$1;-><init>(Lcom/tekartik/sqflite/DatabaseWorkerPool;Lcom/tekartik/sqflite/Database;)V

    .line 8
    .line 9
    .line 10
    move-object p1, v0

    .line 11
    :goto_0
    new-instance v0, Lcom/tekartik/sqflite/DatabaseTask;

    .line 12
    .line 13
    invoke-direct {v0, p1, p2}, Lcom/tekartik/sqflite/DatabaseTask;-><init>(Lcom/tekartik/sqflite/DatabaseDelegate;Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p0, v0}, Lcom/tekartik/sqflite/DatabaseWorkerPool;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/tekartik/sqflite/DatabaseTask;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
