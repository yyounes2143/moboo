.class public final Lcom/facebook/ads/redexgen/X/WH;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/WG;
    }
.end annotation


# static fields
.field public static final A04:Lcom/facebook/ads/redexgen/X/WH;


# instance fields
.field public A00:J

.field public A01:Z

.field public final A02:Lcom/facebook/ads/redexgen/X/WG;

.field public final A03:Lcom/facebook/ads/redexgen/X/XF;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2175
    new-instance v2, Lcom/facebook/ads/redexgen/X/PN;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/PN;-><init>()V

    new-instance v1, Lcom/facebook/ads/redexgen/X/PB;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/PB;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/WH;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/WH;-><init>(Lcom/facebook/ads/redexgen/X/XF;Lcom/facebook/ads/redexgen/X/WG;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/WH;->A04:Lcom/facebook/ads/redexgen/X/WH;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XF;Lcom/facebook/ads/redexgen/X/WG;)V
    .locals 2

    .line 70530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70531
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/WH;->A03:Lcom/facebook/ads/redexgen/X/XF;

    .line 70532
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/WH;->A02:Lcom/facebook/ads/redexgen/X/WG;

    .line 70533
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/WH;->A01:Z

    .line 70534
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/WH;->A00:J

    .line 70535
    return-void
.end method

.method public static A00()Lcom/facebook/ads/redexgen/X/WH;
    .locals 1

    .line 70536
    sget-object v0, Lcom/facebook/ads/redexgen/X/WH;->A04:Lcom/facebook/ads/redexgen/X/WH;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized A01()V
    .locals 2

    monitor-enter p0

    .line 70537
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/WH;->A01:Z

    .line 70538
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WH;->A03:Lcom/facebook/ads/redexgen/X/XF;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/XF;->A5f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/WH;->A00:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70539
    monitor-exit p0

    return-void

    .line 70540
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/WH;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A02()V
    .locals 2

    monitor-enter p0

    .line 70541
    const-wide/16 v0, -0x1

    :try_start_0
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/WH;->A00:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70542
    monitor-exit p0

    return-void

    .line 70543
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/WH;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A03()Z
    .locals 7

    .line 70544
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WH;->A02:Lcom/facebook/ads/redexgen/X/WG;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/WG;->A8E()Landroid/app/Activity;

    move-result-object v0

    .line 70545
    .local v0, "lastResumedActivity":Landroid/app/Activity;
    const/4 v6, 0x1

    if-eqz v0, :cond_0

    .line 70546
    return v6

    .line 70547
    :cond_0
    const-class v5, Lcom/facebook/ads/redexgen/X/WH;

    monitor-enter v5

    .line 70548
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/WH;->A01:Z

    if-eqz v0, :cond_1

    .line 70549
    monitor-exit v5

    return v6

    .line 70550
    :cond_1
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/WH;->A00:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WH;->A03:Lcom/facebook/ads/redexgen/X/XF;

    .line 70551
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/XF;->A5f()J

    move-result-wide v3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/WH;->A00:J

    sub-long/2addr v3, v0

    const-wide/16 v1, 0x3e8

    cmp-long v0, v3, v1

    if-gez v0, :cond_3

    :cond_2
    :goto_0
    monitor-exit v5

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 70552
    :goto_1
    return v6

    .line 70553
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
