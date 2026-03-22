.class public final Lcom/changdu/component/core/googleadid/i;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field public final a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 5
    .line 6
    new-instance v1, Lcom/changdu/component/core/googleadid/k;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/changdu/component/core/googleadid/k;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lcom/changdu/component/core/googleadid/g;

    .line 12
    .line 13
    invoke-direct {v2}, Lcom/changdu/component/core/googleadid/g;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/changdu/component/core/googleadid/i;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 21
    .line 22
    return-void
.end method
