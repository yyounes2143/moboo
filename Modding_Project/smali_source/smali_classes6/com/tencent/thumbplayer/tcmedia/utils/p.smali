.class public Lcom/tencent/thumbplayer/tcmedia/utils/p;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/thumbplayer/tcmedia/utils/p$a;,
        Lcom/tencent/thumbplayer/tcmedia/utils/p$b;
    }
.end annotation


# direct methods
.method public static a(II)Ljava/util/concurrent/ExecutorService;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 4
    .line 5
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 6
    .line 7
    const/16 v1, 0x14

    .line 8
    .line 9
    invoke-direct {v6, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 10
    .line 11
    .line 12
    new-instance v7, Lcom/tencent/thumbplayer/tcmedia/utils/p$b;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-direct {v7, v1}, Lcom/tencent/thumbplayer/tcmedia/utils/p$b;-><init>(Lcom/tencent/thumbplayer/tcmedia/utils/p$1;)V

    .line 16
    .line 17
    .line 18
    new-instance v8, Lcom/tencent/thumbplayer/tcmedia/utils/p$a;

    .line 19
    .line 20
    invoke-direct {v8, v1}, Lcom/tencent/thumbplayer/tcmedia/utils/p$a;-><init>(Lcom/tencent/thumbplayer/tcmedia/utils/p$1;)V

    .line 21
    .line 22
    .line 23
    const-wide/16 v3, 0x3c

    .line 24
    .line 25
    move v1, p0

    .line 26
    move v2, p1

    .line 27
    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method
