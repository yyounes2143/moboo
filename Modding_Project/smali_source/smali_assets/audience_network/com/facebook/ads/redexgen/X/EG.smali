.class public final Lcom/facebook/ads/redexgen/X/EG;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/dR;


# instance fields
.field public A00:Ljava/lang/Boolean;

.field public final A01:Lcom/facebook/ads/redexgen/X/dL;

.field public final A02:Lcom/facebook/ads/redexgen/X/US;

.field public final A03:Lcom/facebook/ads/redexgen/X/dO;

.field public final A04:Lcom/facebook/ads/redexgen/X/E1;

.field public final A05:Lcom/facebook/ads/redexgen/X/DX;

.field public final A06:Lcom/facebook/ads/redexgen/X/DR;

.field public final A07:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/US;Lcom/facebook/ads/redexgen/X/E1;Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/Dc;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/dL;",
            "Lcom/facebook/ads/redexgen/X/US;",
            "Lcom/facebook/ads/redexgen/X/E1;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/facebook/ads/redexgen/X/Dc;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 34633
    .local p7, "extraParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34634
    new-instance v0, Lcom/facebook/ads/redexgen/X/3m;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/3m;-><init>(Lcom/facebook/ads/redexgen/X/EG;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/EG;->A06:Lcom/facebook/ads/redexgen/X/DR;

    .line 34635
    new-instance v0, Lcom/facebook/ads/redexgen/X/3l;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/3l;-><init>(Lcom/facebook/ads/redexgen/X/EG;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/EG;->A05:Lcom/facebook/ads/redexgen/X/DX;

    .line 34636
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/EG;->A00:Ljava/lang/Boolean;

    .line 34637
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/EG;->A01:Lcom/facebook/ads/redexgen/X/dL;

    .line 34638
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/EG;->A02:Lcom/facebook/ads/redexgen/X/US;

    .line 34639
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/EG;->A07:Ljava/lang/String;

    .line 34640
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/EG;->A04:Lcom/facebook/ads/redexgen/X/E1;

    .line 34641
    new-instance v0, Lcom/facebook/ads/redexgen/X/dO;

    invoke-direct {v0, p3, p4, p5, p7}, Lcom/facebook/ads/redexgen/X/dO;-><init>(Lcom/facebook/ads/redexgen/X/E1;Ljava/lang/String;ZLjava/util/Map;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/EG;->A03:Lcom/facebook/ads/redexgen/X/dO;

    .line 34642
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EG;->A01:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A25(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34643
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EG;->A01:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->AID()V

    .line 34644
    invoke-virtual {p6, p0}, Lcom/facebook/ads/redexgen/X/Dc;->A0m(Lcom/facebook/ads/redexgen/X/dR;)V

    .line 34645
    :goto_0
    return-void

    .line 34646
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EG;->A01:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->AIE()V

    .line 34647
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EG;->A04:Lcom/facebook/ads/redexgen/X/E1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getEventBus()Lcom/facebook/ads/redexgen/X/Te;

    move-result-object v3

    const/4 v0, 0x2

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/Tf;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EG;->A06:Lcom/facebook/ads/redexgen/X/DR;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EG;->A05:Lcom/facebook/ads/redexgen/X/DX;

    aput-object v0, v2, v1

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/Te;->A03([Lcom/facebook/ads/redexgen/X/Tf;)V

    goto :goto_0
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/EG;)Lcom/facebook/ads/redexgen/X/dL;
    .locals 0

    .line 34648
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/EG;->A01:Lcom/facebook/ads/redexgen/X/dL;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/EG;)Lcom/facebook/ads/redexgen/X/dO;
    .locals 0

    .line 34649
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/EG;->A03:Lcom/facebook/ads/redexgen/X/dO;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/EG;)Lcom/facebook/ads/redexgen/X/E1;
    .locals 0

    .line 34650
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/EG;->A04:Lcom/facebook/ads/redexgen/X/E1;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/EG;)Lcom/facebook/ads/redexgen/X/DX;
    .locals 0

    .line 34651
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/EG;->A05:Lcom/facebook/ads/redexgen/X/DX;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/EG;)Lcom/facebook/ads/redexgen/X/DR;
    .locals 0

    .line 34652
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/EG;->A06:Lcom/facebook/ads/redexgen/X/DR;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/EG;)Ljava/lang/Boolean;
    .locals 0

    .line 34653
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/EG;->A00:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/EG;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 34654
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/EG;->A00:Ljava/lang/Boolean;

    return-object p1
.end method


# virtual methods
.method public final A07()V
    .locals 2

    .line 34655
    new-instance v1, Lcom/facebook/ads/redexgen/X/EI;

    invoke-direct {v1, p0}, Lcom/facebook/ads/redexgen/X/EI;-><init>(Lcom/facebook/ads/redexgen/X/EG;)V

    .line 34656
    .local v0, "unregisterRunnable":Lcom/facebook/ads/redexgen/X/Vt;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EG;->A04:Lcom/facebook/ads/redexgen/X/E1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->A0t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34657
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/XJ;->A00(Ljava/lang/Runnable;)V

    .line 34658
    :goto_0
    return-void

    .line 34659
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EG;->A04:Lcom/facebook/ads/redexgen/X/E1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/E1;->getStateHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final declared-synchronized A08()V
    .locals 3

    monitor-enter p0

    .line 34660
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EG;->A00:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 34661
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EG;->A03:Lcom/facebook/ads/redexgen/X/dO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dO;->A06()Ljava/util/Map;

    move-result-object v2

    .line 34662
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/EG;->A02:Lcom/facebook/ads/redexgen/X/US;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EG;->A07:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/US;->ABQ(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34663
    .end local v0    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/EG;
    :cond_0
    monitor-exit p0

    return-void

    .line 34664
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final AE5()V
    .locals 1

    .line 34665
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EG;->A01:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->AIH()V

    .line 34666
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/EG;->A08()V

    .line 34667
    return-void
.end method
