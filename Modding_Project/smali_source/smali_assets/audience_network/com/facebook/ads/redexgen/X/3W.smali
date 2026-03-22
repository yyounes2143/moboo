.class public final Lcom/facebook/ads/redexgen/X/3W;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public A00:Z

.field public final A01:Lcom/facebook/ads/redexgen/X/3T;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11075
    sget-object v0, Lcom/facebook/ads/redexgen/X/3T;->A00:Lcom/facebook/ads/redexgen/X/3T;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/3W;-><init>(Lcom/facebook/ads/redexgen/X/3T;)V

    .line 11076
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/3T;)V
    .locals 0

    .line 11077
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11078
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3W;->A01:Lcom/facebook/ads/redexgen/X/3T;

    .line 11079
    return-void
.end method


# virtual methods
.method public final declared-synchronized A00()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 11080
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3W;->A00:Z

    if-nez v0, :cond_0

    .line 11081
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11082
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/3W;
    :cond_0
    monitor-exit p0

    return-void

    .line 11083
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A01()V
    .locals 2

    monitor-enter p0

    .line 11084
    const/4 v1, 0x0

    .line 11085
    .local v0, "wasInterrupted":Z
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3W;->A00:Z

    if-nez v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11086
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11087
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/3W;
    .local v1, "e":Ljava/lang/InterruptedException;
    :catch_0
    const/4 v1, 0x1

    .line 11088
    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 11089
    :cond_0
    if-eqz v1, :cond_1

    .line 11090
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11091
    :cond_1
    monitor-exit p0

    return-void

    .line 11092
    .end local v0    # "wasInterrupted":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A02()Z
    .locals 2

    monitor-enter p0

    .line 11093
    :try_start_0
    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/3W;->A00:Z

    .line 11094
    .local v0, "wasOpen":Z
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3W;->A00:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11095
    monitor-exit p0

    return v1

    .line 11096
    .end local v0    # "wasOpen":Z
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/3W;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A03()Z
    .locals 1

    monitor-enter p0

    .line 11097
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3W;->A00:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/3W;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A04()Z
    .locals 1

    monitor-enter p0

    .line 11098
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3W;->A00:Z

    if-eqz v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11099
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 11100
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3W;->A00:Z

    .line 11101
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11102
    monitor-exit p0

    return v0

    .line 11103
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/3W;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A05(J)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 11104
    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-gtz v0, :cond_0

    .line 11105
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3W;->A00:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 11106
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/3W;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3W;->A01:Lcom/facebook/ads/redexgen/X/3T;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/3T;->A6B()J

    move-result-wide v0

    .line 11107
    .local v0, "nowMs":J
    add-long v4, v0, p1

    .line 11108
    .local v2, "endMs":J
    cmp-long v2, v4, v0

    if-gez v2, :cond_2

    .line 11109
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3W;->A00()V

    .line 11110
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3W;->A00:Z

    goto :goto_1

    .line 11111
    :cond_2
    :goto_0
    iget-boolean v2, p0, Lcom/facebook/ads/redexgen/X/3W;->A00:Z

    if-nez v2, :cond_1

    cmp-long v2, v0, v4

    if-gez v2, :cond_1

    .line 11112
    sub-long v2, v4, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 11113
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3W;->A01:Lcom/facebook/ads/redexgen/X/3T;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/3T;->A6B()J

    move-result-wide v0

    goto :goto_0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11114
    :goto_1
    monitor-exit p0

    return v0

    .line 11115
    .end local v0    # "nowMs":J
    .end local v2    # "endMs":J
    .end local p1    # null:J
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
