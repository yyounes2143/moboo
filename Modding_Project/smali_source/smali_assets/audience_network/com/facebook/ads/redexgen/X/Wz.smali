.class public final Lcom/facebook/ads/redexgen/X/Wz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Wy;
    }
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Wy;

.field public A01:Z

.field public final A02:Lcom/facebook/ads/redexgen/X/Wx;

.field public final A03:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(JLjava/lang/Runnable;)V
    .locals 1

    .line 71851
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71852
    new-instance v0, Lcom/facebook/ads/redexgen/X/Wx;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Wx;-><init>(J)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wz;->A02:Lcom/facebook/ads/redexgen/X/Wx;

    .line 71853
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wz;->A02:Lcom/facebook/ads/redexgen/X/Wx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wx;->A02()V

    .line 71854
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Wz;->A03:Ljava/lang/Runnable;

    .line 71855
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Wz;->A01:Z

    .line 71856
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Wz;)Lcom/facebook/ads/redexgen/X/Wx;
    .locals 0

    .line 71857
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Wz;->A02:Lcom/facebook/ads/redexgen/X/Wx;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Wz;Lcom/facebook/ads/redexgen/X/Wy;)Lcom/facebook/ads/redexgen/X/Wy;
    .locals 0

    .line 71858
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Wz;->A00:Lcom/facebook/ads/redexgen/X/Wy;

    return-object p1
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Wz;)Ljava/lang/Runnable;
    .locals 0

    .line 71859
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Wz;->A03:Ljava/lang/Runnable;

    return-object p0
.end method

.method private final declared-synchronized A03()V
    .locals 1

    monitor-enter p0

    .line 71860
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wz;->A00:Lcom/facebook/ads/redexgen/X/Wy;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Wz;->A01:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 71861
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Wy;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Wy;-><init>(Lcom/facebook/ads/redexgen/X/Wz;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wz;->A00:Lcom/facebook/ads/redexgen/X/Wy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71862
    monitor-exit p0

    return-void

    .line 71863
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Wz;
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 71864
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final A04()Lcom/facebook/ads/redexgen/X/Wx;
    .locals 1

    .line 71865
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wz;->A02:Lcom/facebook/ads/redexgen/X/Wx;

    return-object v0
.end method

.method public final declared-synchronized A05()V
    .locals 1

    monitor-enter p0

    .line 71866
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Wz;->A01:Z

    if-eqz v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71867
    monitor-exit p0

    return-void

    .line 71868
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wz;->A00:Lcom/facebook/ads/redexgen/X/Wy;

    if-nez v0, :cond_1

    .line 71869
    new-instance v0, Lcom/facebook/ads/redexgen/X/Wy;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Wy;-><init>(Lcom/facebook/ads/redexgen/X/Wz;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wz;->A00:Lcom/facebook/ads/redexgen/X/Wy;

    .line 71870
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Wz;
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wz;->A00:Lcom/facebook/ads/redexgen/X/Wy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wy;->A00()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71871
    monitor-exit p0

    return-void

    .line 71872
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A06()V
    .locals 1

    monitor-enter p0

    .line 71873
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wz;->A02:Lcom/facebook/ads/redexgen/X/Wx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wx;->A05()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Wz;->A01:Z

    if-nez v0, :cond_0

    .line 71874
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wz;->A03()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71875
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Wz;
    :cond_0
    monitor-exit p0

    return-void

    .line 71876
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71877
    monitor-enter p0

    .line 71878
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Wz;->A01:Z

    .line 71879
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wz;->A00:Lcom/facebook/ads/redexgen/X/Wy;

    .line 71880
    .local v0, "executing":Lcom/facebook/ads/redexgen/X/Wy;
    monitor-exit p0

    .line 71881
    if-eqz v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71882
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wy;->close()V

    .line 71883
    :cond_0
    return-void

    .line 71884
    .end local v0    # "executing":Lcom/facebook/ads/redexgen/X/Wy;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
