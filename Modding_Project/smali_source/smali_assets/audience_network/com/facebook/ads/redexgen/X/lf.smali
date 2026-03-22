.class public final Lcom/facebook/ads/redexgen/X/lf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/EU;
.implements Lcom/facebook/ads/redexgen/X/5H;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/androidx/media3/exoplayer/upstream/DefaultBandwidthMeter$Builder;
    }
.end annotation


# static fields
.field public static final A0G:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final A0H:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final A0I:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final A0J:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final A0K:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final A0L:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Needed for Meta Custom getAvailableSamples"
    .end annotation
.end field

.field public A03:I

.field public A04:J

.field public A05:J

.field public A06:J

.field public A07:J

.field public A08:J

.field public A09:J

.field public A0A:Z

.field public final A0B:Lcom/facebook/ads/redexgen/X/3T;

.field public final A0C:Lcom/facebook/ads/redexgen/X/ES;

.field public final A0D:Lcom/facebook/ads/redexgen/X/Eu;

.field public final A0E:Ljava/util/Map;
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Upstream uses Map. Oculus doesn\'t play well with these collections"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final A0F:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    .line 3117
    const-wide/32 v0, 0x432380

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-wide/32 v0, 0x30d400

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-wide/32 v0, 0x231860

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-wide/32 v0, 0x186a00

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/32 v0, 0xc5c10

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v5, 0x5

    new-array v0, v5, [Ljava/lang/Long;

    const/4 v13, 0x0

    aput-object v4, v0, v13

    const/4 v12, 0x1

    aput-object v3, v0, v12

    const/4 v11, 0x2

    aput-object v14, v0, v11

    const/4 v10, 0x3

    aput-object v2, v0, v10

    const/4 v9, 0x4

    aput-object v1, v0, v9

    .line 3118
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/i1;->A03([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/lf;->A0L:Ljava/util/List;

    .line 3119
    const-wide/32 v0, 0x155cc0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-wide/32 v0, 0xf1b30

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-wide/32 v0, 0xb2390

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-wide/32 v0, 0x7c830

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/32 v0, 0x38270

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-array v0, v5, [Ljava/lang/Long;

    aput-object v8, v0, v13

    aput-object v7, v0, v12

    aput-object v3, v0, v11

    aput-object v2, v0, v10

    aput-object v1, v0, v9

    .line 3120
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/i1;->A03([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/lf;->A0G:Ljava/util/List;

    .line 3121
    const-wide/32 v0, 0x200b20

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-wide/32 v0, 0xf4240

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-wide/32 v0, 0xd9490

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/32 v0, 0x9c400

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-array v0, v5, [Ljava/lang/Long;

    aput-object v3, v0, v13

    aput-object v8, v0, v12

    aput-object v6, v0, v11

    aput-object v2, v0, v10

    aput-object v1, v0, v9

    .line 3122
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/i1;->A03([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/lf;->A0H:Ljava/util/List;

    .line 3123
    const-wide/32 v0, 0x27ac40

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-wide/32 v0, 0x19f0a0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-wide/32 v0, 0x13d620

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/32 v0, 0xaae60

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-array v0, v5, [Ljava/lang/Long;

    aput-object v4, v0, v13

    aput-object v3, v0, v12

    aput-object v2, v0, v11

    aput-object v6, v0, v10

    aput-object v1, v0, v9

    .line 3124
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/i1;->A03([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/lf;->A0I:Ljava/util/List;

    .line 3125
    const-wide/32 v0, 0x56f9a0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/32 v0, 0x387520

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-array v0, v5, [Ljava/lang/Long;

    aput-object v2, v0, v13

    aput-object v1, v0, v12

    aput-object v14, v0, v11

    aput-object v3, v0, v10

    aput-object v7, v0, v9

    .line 3126
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/i1;->A03([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/lf;->A0J:Ljava/util/List;

    .line 3127
    const-wide/32 v0, 0x2ab980

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-wide/32 v0, 0x1b7740

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-wide/32 v0, 0x10c8e0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/32 v0, 0xd4670

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-array v0, v5, [Ljava/lang/Long;

    aput-object v4, v0, v13

    aput-object v3, v0, v12

    aput-object v8, v0, v11

    aput-object v2, v0, v10

    aput-object v1, v0, v9

    .line 3128
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/i1;->A03([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/lf;->A0K:Ljava/util/List;

    .line 3129
    return-void
.end method

.method public constructor <init>()V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 96839
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    sget-object v4, Lcom/facebook/ads/redexgen/X/3T;->A00:Lcom/facebook/ads/redexgen/X/3T;

    .line 96840
    const/4 v1, 0x0

    const/16 v3, 0x7d0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/lf;-><init>(Landroid/content/Context;Ljava/util/Map;ILcom/facebook/ads/redexgen/X/3T;Z)V

    .line 96841
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;ILcom/facebook/ads/redexgen/X/3T;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;I",
            "Lcom/facebook/ads/redexgen/X/3T;",
            "Z)V"
        }
    .end annotation

    .line 96842
    .local p2, "initialBitrateEstimates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96843
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/i1;->A04(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lf;->A0E:Ljava/util/Map;

    .line 96844
    new-instance v0, Lcom/facebook/ads/redexgen/X/ES;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/ES;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lf;->A0C:Lcom/facebook/ads/redexgen/X/ES;

    .line 96845
    new-instance v0, Lcom/facebook/ads/redexgen/X/Eu;

    invoke-direct {v0, p3}, Lcom/facebook/ads/redexgen/X/Eu;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/lf;->A0D:Lcom/facebook/ads/redexgen/X/Eu;

    .line 96846
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/lf;->A0B:Lcom/facebook/ads/redexgen/X/3T;

    .line 96847
    iput-boolean p5, p0, Lcom/facebook/ads/redexgen/X/lf;->A0F:Z

    .line 96848
    if-eqz p1, :cond_0

    .line 96849
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/4D;->A03(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/4D;

    move-result-object v2

    .line 96850
    .local v0, "networkTypeObserver":Lcom/facebook/ads/redexgen/X/4D;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4D;->A09()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lf;->A00:I

    .line 96851
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lf;->A00:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/lf;->A00(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/lf;->A04:J

    .line 96852
    new-instance v0, Lcom/facebook/ads/redexgen/X/lg;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/lg;-><init>(Lcom/facebook/ads/redexgen/X/lf;)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/4D;->A0A(Lcom/facebook/ads/redexgen/X/4B;)V

    .line 96853
    .end local v0    # "networkTypeObserver":Lcom/facebook/ads/redexgen/X/4D;
    :goto_0
    return-void

    .line 96854
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lf;->A00:I

    .line 96855
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/lf;->A00(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/lf;->A04:J

    goto :goto_0
.end method

.method private A00(I)J
    .locals 2

    .line 96856
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lf;->A0E:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 96857
    .local v0, "initialBitrateEstimate":Ljava/lang/Long;
    if-nez v0, :cond_0

    .line 96858
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lf;->A0E:Ljava/util/Map;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 96859
    :cond_0
    if-nez v0, :cond_1

    .line 96860
    const-wide/32 v0, 0xf4240

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 96861
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private declared-synchronized A01(I)V
    .locals 10

    monitor-enter p0

    .line 96862
    :try_start_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lf;->A00:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lf;->A0F:Z

    if-nez v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96863
    monitor-exit p0

    return-void

    .line 96864
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/lf;
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/lf;->A0A:Z

    if-eqz v0, :cond_1

    .line 96865
    iget p1, p0, Lcom/facebook/ads/redexgen/X/lf;->A01:I

    .line 96866
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lf;->A00:I

    if-ne v0, p1, :cond_2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96867
    monitor-exit p0

    return-void

    .line 96868
    :cond_2
    :try_start_2
    iput p1, p0, Lcom/facebook/ads/redexgen/X/lf;->A00:I

    .line 96869
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    if-eqz p1, :cond_3

    const/16 v0, 0x8

    if-ne p1, v0, :cond_4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96870
    .end local v0
    .end local v5
    :cond_3
    monitor-exit p0

    return-void

    .line 96871
    :cond_4
    :try_start_3
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/lf;->A00(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/lf;->A04:J

    .line 96872
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lf;->A0B:Lcom/facebook/ads/redexgen/X/3T;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/3T;->A6B()J

    move-result-wide v2

    .line 96873
    .local v0, "nowMs":J
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lf;->A03:I

    if-lez v0, :cond_5

    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/lf;->A07:J

    sub-long v0, v2, v4

    long-to-int v5, v0

    .line 96874
    .local v5, "sampleElapsedTimeMs":I
    :goto_0
    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/lf;->A06:J

    iget-wide v8, p0, Lcom/facebook/ads/redexgen/X/lf;->A04:J

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/lf;->A02(IJJ)V

    .line 96875
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/lf;->A07:J

    .line 96876
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/lf;->A06:J

    .line 96877
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/lf;->A08:J

    .line 96878
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/lf;->A09:J

    .line 96879
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lf;->A0D:Lcom/facebook/ads/redexgen/X/Eu;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eu;->A06()V

    goto :goto_1

    .line 96880
    :cond_5
    const/4 v5, 0x0

    goto :goto_0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 96881
    :goto_1
    monitor-exit p0

    return-void

    .line 96882
    .end local p1    # null:I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private A02(IJJ)V
    .locals 8

    .line 96883
    move-wide v6, p4

    move-wide v4, p2

    move v3, p1

    if-nez v3, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v0, v4, v1

    if-nez v0, :cond_0

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/lf;->A05:J

    cmp-long v0, v6, v1

    if-nez v0, :cond_0

    .line 96884
    return-void

    .line 96885
    :cond_0
    iput-wide v6, p0, Lcom/facebook/ads/redexgen/X/lf;->A05:J

    .line 96886
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/lf;->A0C:Lcom/facebook/ads/redexgen/X/ES;

    invoke-virtual/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/ES;->A00(IJJ)V

    .line 96887
    return-void
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/lf;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/lf;->A01(I)V

    return-void
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/56;Z)Z
    .locals 1

    .line 96888
    if-eqz p1, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/56;->A06(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized ACg(Lcom/facebook/ads/redexgen/X/nl;Lcom/facebook/ads/redexgen/X/56;ZI)V
    .locals 4

    monitor-enter p0

    .line 96889
    :try_start_0
    invoke-static {p2, p3}, Lcom/facebook/ads/redexgen/X/lf;->A04(Lcom/facebook/ads/redexgen/X/56;Z)Z

    move-result v0

    if-nez v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96890
    monitor-exit p0

    return-void

    .line 96891
    :cond_0
    :try_start_1
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/lf;->A06:J

    int-to-long v0, p4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/lf;->A06:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96892
    monitor-exit p0

    return-void

    .line 96893
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/lf;
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/nl;
    .end local p2    # null:Lcom/facebook/ads/redexgen/X/56;
    .end local p3    # null:Z
    .end local p4    # null:I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized AFW(Lcom/facebook/ads/redexgen/X/nl;Lcom/facebook/ads/redexgen/X/56;Z)V
    .locals 16

    move-object/from16 v4, p0

    monitor-enter v4

    .line 96894
    :try_start_0
    move/from16 v0, p3

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/lf;->A04(Lcom/facebook/ads/redexgen/X/56;Z)Z

    move-result v0

    if-nez v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96895
    monitor-exit v4

    return-void

    .line 96896
    :cond_0
    :try_start_1
    iget v0, v4, Lcom/facebook/ads/redexgen/X/lf;->A03:I

    const/4 v9, 0x1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 96897
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/lf;->A0B:Lcom/facebook/ads/redexgen/X/3T;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/3T;->A6B()J

    move-result-wide v2

    .line 96898
    .local v2, "nowMs":J
    iget-wide v5, v4, Lcom/facebook/ads/redexgen/X/lf;->A07:J

    sub-long v0, v2, v5

    long-to-int v11, v0

    .line 96899
    .local v0, "sampleElapsedTimeMs":I
    iget-wide v5, v4, Lcom/facebook/ads/redexgen/X/lf;->A09:J

    int-to-long v0, v11

    add-long/2addr v5, v0

    iput-wide v5, v4, Lcom/facebook/ads/redexgen/X/lf;->A09:J

    .line 96900
    iget-wide v5, v4, Lcom/facebook/ads/redexgen/X/lf;->A08:J

    iget-wide v0, v4, Lcom/facebook/ads/redexgen/X/lf;->A06:J

    add-long/2addr v5, v0

    iput-wide v5, v4, Lcom/facebook/ads/redexgen/X/lf;->A08:J

    .line 96901
    if-lez v11, :cond_4

    .line 96902
    iget-wide v0, v4, Lcom/facebook/ads/redexgen/X/lf;->A06:J

    long-to-float v8, v0

    const/high16 v0, 0x45fa0000    # 8000.0f

    mul-float/2addr v8, v0

    int-to-float v0, v11

    div-float/2addr v8, v0

    .line 96903
    .local v4, "bitsPerSecond":F
    iget-object v7, v4, Lcom/facebook/ads/redexgen/X/lf;->A0D:Lcom/facebook/ads/redexgen/X/Eu;

    iget-wide v5, v4, Lcom/facebook/ads/redexgen/X/lf;->A06:J

    long-to-double v0, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-int v0, v5

    invoke-virtual {v7, v0, v8}, Lcom/facebook/ads/redexgen/X/Eu;->A07(IF)V

    .line 96904
    iget-wide v7, v4, Lcom/facebook/ads/redexgen/X/lf;->A09:J

    const-wide/16 v5, 0x7d0

    cmp-long v0, v7, v5

    if-gez v0, :cond_2

    iget-wide v7, v4, Lcom/facebook/ads/redexgen/X/lf;->A08:J

    const-wide/32 v5, 0x80000

    cmp-long v0, v7, v5

    if-ltz v0, :cond_3

    .line 96905
    .end local v12
    :cond_2
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/lf;->A0D:Lcom/facebook/ads/redexgen/X/Eu;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Eu;->A05(F)F

    move-result v0

    float-to-long v0, v0

    iput-wide v0, v4, Lcom/facebook/ads/redexgen/X/lf;->A04:J

    .line 96906
    :cond_3
    iget v0, v4, Lcom/facebook/ads/redexgen/X/lf;->A02:I

    add-int/2addr v0, v9

    iput v0, v4, Lcom/facebook/ads/redexgen/X/lf;->A02:I

    .line 96907
    iget-wide v12, v4, Lcom/facebook/ads/redexgen/X/lf;->A06:J

    iget-wide v14, v4, Lcom/facebook/ads/redexgen/X/lf;->A04:J

    move-object v10, v4

    invoke-direct/range {v10 .. v15}, Lcom/facebook/ads/redexgen/X/lf;->A02(IJJ)V

    .line 96908
    iput-wide v2, v4, Lcom/facebook/ads/redexgen/X/lf;->A07:J

    .line 96909
    const-wide/16 v0, 0x0

    iput-wide v0, v4, Lcom/facebook/ads/redexgen/X/lf;->A06:J

    .line 96910
    .end local v4    # "bitsPerSecond":F
    :cond_4
    iget v0, v4, Lcom/facebook/ads/redexgen/X/lf;->A03:I

    sub-int/2addr v0, v9

    iput v0, v4, Lcom/facebook/ads/redexgen/X/lf;->A03:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96911
    monitor-exit v4

    return-void

    .line 96912
    .end local v0    # "sampleElapsedTimeMs":I
    .end local v2    # "nowMs":J
    .end local v13
    .end local v14
    .end local v15
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public final declared-synchronized AFX(Lcom/facebook/ads/redexgen/X/nl;Lcom/facebook/ads/redexgen/X/56;ZZ)V
    .locals 2
    .param p1    # Lcom/facebook/ads/redexgen/X/nl;
        .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        .end annotation
    .end param

    monitor-enter p0

    .line 96913
    :try_start_0
    invoke-static {p2, p3}, Lcom/facebook/ads/redexgen/X/lf;->A04(Lcom/facebook/ads/redexgen/X/56;Z)Z

    move-result v0

    if-nez v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96914
    monitor-exit p0

    return-void

    .line 96915
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lf;->A03:I

    if-nez v0, :cond_1

    .line 96916
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lf;->A0B:Lcom/facebook/ads/redexgen/X/3T;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/3T;->A6B()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/lf;->A07:J

    .line 96917
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/lf;
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/lf;->A03:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/lf;->A03:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96918
    monitor-exit p0

    return-void

    .line 96919
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/nl;
    .end local p2    # null:Lcom/facebook/ads/redexgen/X/56;
    .end local p3    # null:Z
    .end local p4    # null:Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
