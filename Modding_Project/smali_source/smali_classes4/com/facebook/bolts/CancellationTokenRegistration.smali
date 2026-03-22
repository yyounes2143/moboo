.class public final Lcom/facebook/bolts/CancellationTokenRegistration;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004R\u0018\u0010\u0008\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0007R\u0016\u0010\u000c\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000bR\u0018\u0010\u0010\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/facebook/bolts/CancellationTokenRegistration;",
        "Ljava/io/Closeable;",
        "",
        "close",
        "()V",
        "Ljava/lang/Runnable;",
        "Wwwwwwwwwwwwwwwwwwwwwwwww",
        "Ljava/lang/Runnable;",
        "action",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwww",
        "Z",
        "closed",
        "Lcom/facebook/bolts/CancellationTokenSource;",
        "Wwwwwwwwwwwwwwwwwwwwwww",
        "Lcom/facebook/bolts/CancellationTokenSource;",
        "tokenSource",
        "facebook-bolts_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/bolts/CancellationTokenSource;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# virtual methods
.method public close()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/bolts/CancellationTokenRegistration;->Wwwwwwwwwwwwwwwwwwwwwwww:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    :try_start_1
    iput-boolean v0, p0, Lcom/facebook/bolts/CancellationTokenRegistration;->Wwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 10
    .line 11
    iget-object v0, p0, Lcom/facebook/bolts/CancellationTokenRegistration;->Wwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/bolts/CancellationTokenSource;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {v0, p0}, Lcom/facebook/bolts/CancellationTokenSource;->Kkkkkkkkkkkkkkkkkkkkkkk(Lcom/facebook/bolts/CancellationTokenRegistration;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/facebook/bolts/CancellationTokenRegistration;->Wwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/bolts/CancellationTokenSource;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/facebook/bolts/CancellationTokenRegistration;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Runnable;

    .line 23
    .line 24
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    .line 26
    monitor-exit p0

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    monitor-exit p0

    .line 30
    throw v0
.end method
