.class public abstract Lcom/changdu/component/deeplink/google/util/b;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field public static final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sput v0, Lcom/changdu/component/deeplink/google/util/b;->a:I

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static a(Ljava/lang/String;IIJLjava/util/concurrent/TimeUnit;ZLjava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    new-instance v7, Lcom/changdu/component/deeplink/google/util/a;

    .line 4
    .line 5
    invoke-direct {v7, p0}, Lcom/changdu/component/deeplink/google/util/a;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-nez p8, :cond_0

    .line 9
    .line 10
    new-instance p0, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    .line 11
    .line 12
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    .line 13
    .line 14
    .line 15
    move-object v8, p0

    .line 16
    :goto_0
    move v1, p1

    .line 17
    move v2, p2

    .line 18
    move-wide v3, p3

    .line 19
    move-object v5, p5

    .line 20
    move-object/from16 v6, p7

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    move-object/from16 v8, p8

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :goto_1
    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p6}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 30
    .line 31
    .line 32
    return-object v0
.end method
