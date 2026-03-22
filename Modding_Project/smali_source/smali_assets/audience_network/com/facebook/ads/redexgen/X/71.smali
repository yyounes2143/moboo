.class public final Lcom/facebook/ads/redexgen/X/71;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/6z;,
        Lcom/facebook/ads/redexgen/X/70;
    }
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:Landroid/os/Looper;

.field public A04:Ljava/lang/Object;

.field public A05:Z

.field public A06:Z

.field public A07:Z

.field public A08:Z

.field public A09:Z

.field public final A0A:Lcom/facebook/ads/androidx/media3/common/Timeline;

.field public final A0B:Lcom/facebook/ads/redexgen/X/3T;

.field public final A0C:Lcom/facebook/ads/redexgen/X/6z;

.field public final A0D:Lcom/facebook/ads/redexgen/X/70;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/6z;Lcom/facebook/ads/redexgen/X/70;Lcom/facebook/ads/androidx/media3/common/Timeline;ILcom/facebook/ads/redexgen/X/3T;Landroid/os/Looper;)V
    .locals 2

    .line 20801
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20802
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/71;->A0C:Lcom/facebook/ads/redexgen/X/6z;

    .line 20803
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/71;->A0D:Lcom/facebook/ads/redexgen/X/70;

    .line 20804
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/71;->A0A:Lcom/facebook/ads/androidx/media3/common/Timeline;

    .line 20805
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/71;->A03:Landroid/os/Looper;

    .line 20806
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/71;->A0B:Lcom/facebook/ads/redexgen/X/3T;

    .line 20807
    iput p4, p0, Lcom/facebook/ads/redexgen/X/71;->A00:I

    .line 20808
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/71;->A02:J

    .line 20809
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/71;->A05:Z

    .line 20810
    return-void
.end method


# virtual methods
.method public final A00()I
    .locals 1

    .line 20811
    iget v0, p0, Lcom/facebook/ads/redexgen/X/71;->A00:I

    return v0
.end method

.method public final A01()I
    .locals 1

    .line 20812
    iget v0, p0, Lcom/facebook/ads/redexgen/X/71;->A01:I

    return v0
.end method

.method public final A02()J
    .locals 2

    .line 20813
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/71;->A02:J

    return-wide v0
.end method

.method public final A03()Landroid/os/Looper;
    .locals 1

    .line 20814
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/71;->A03:Landroid/os/Looper;

    return-object v0
.end method

.method public final A04()Lcom/facebook/ads/androidx/media3/common/Timeline;
    .locals 1

    .line 20815
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/71;->A0A:Lcom/facebook/ads/androidx/media3/common/Timeline;

    return-object v0
.end method

.method public final A05()Lcom/facebook/ads/redexgen/X/70;
    .locals 1

    .line 20816
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/71;->A0D:Lcom/facebook/ads/redexgen/X/70;

    return-object v0
.end method

.method public final A06()Lcom/facebook/ads/redexgen/X/71;
    .locals 6

    .line 20817
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/71;->A09:Z

    const/4 v5, 0x1

    xor-int/2addr v0, v5

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 20818
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/71;->A02:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 20819
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/71;->A05:Z

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A07(Z)V

    .line 20820
    :cond_0
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/71;->A09:Z

    .line 20821
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/71;->A0C:Lcom/facebook/ads/redexgen/X/6z;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/6z;->AIS(Lcom/facebook/ads/redexgen/X/71;)V

    .line 20822
    return-object p0
.end method

.method public final A07(I)Lcom/facebook/ads/redexgen/X/71;
    .locals 1

    .line 20823
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/71;->A09:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 20824
    iput p1, p0, Lcom/facebook/ads/redexgen/X/71;->A01:I

    .line 20825
    return-object p0
.end method

.method public final A08(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/71;
    .locals 1

    .line 20826
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/71;->A09:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 20827
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/71;->A04:Ljava/lang/Object;

    .line 20828
    return-object p0
.end method

.method public final A09()Ljava/lang/Object;
    .locals 1

    .line 20829
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/71;->A04:Ljava/lang/Object;

    return-object v0
.end method

.method public final declared-synchronized A0A(Z)V
    .locals 1

    monitor-enter p0

    .line 20830
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/71;->A07:Z

    or-int/2addr v0, p1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/71;->A07:Z

    .line 20831
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/71;->A08:Z

    .line 20832
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20833
    monitor-exit p0

    return-void

    .line 20834
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/71;
    .end local p1    # null:Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A0B()Z
    .locals 1

    .line 20835
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/71;->A05:Z

    return v0
.end method

.method public final declared-synchronized A0C()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 20836
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/71;->A09:Z

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 20837
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/71;->A03:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 20838
    :goto_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/71;->A08:Z

    if-nez v0, :cond_1

    .line 20839
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 20840
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/71;
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/71;->A07:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 20841
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A0D()Z
    .locals 1

    monitor-enter p0

    .line 20842
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/71;->A06:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/71;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
