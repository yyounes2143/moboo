.class public final Lcom/facebook/ads/redexgen/X/AV;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/AU;,
        Lcom/facebook/ads/redexgen/X/AS;
    }
.end annotation


# static fields
.field public static A06:[B

.field public static A07:[Ljava/lang/String;

.field public static final A08:Lcom/facebook/ads/redexgen/X/AV;


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/hr;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public A02:Ljava/lang/Boolean;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final A03:Lcom/facebook/ads/redexgen/X/AU;

.field public volatile A04:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/facebook/ads/redexgen/X/AO;",
            ">;>;"
        }
    .end annotation
.end field

.field public volatile A05:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 597
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "eoBlep8s1FBIN6Rt"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "z5PVad8lFvymSbVcRUVN6mCVOAyUTpZZ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "CSzRbjHFCczJ9I"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "vibjkM4Umklha9WpeyLj2yq757BqeZSZ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "UWrS"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "nE8lp"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "HlO2gnmnWOpwEq19Q9DE2Hcik4TJ8nc9"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/AV;->A07:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/AV;->A08()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/AV;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/AV;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/AV;->A08:Lcom/facebook/ads/redexgen/X/AV;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 29581
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29582
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AV;->A04:Ljava/util/Map;

    .line 29583
    new-instance v0, Lcom/facebook/ads/redexgen/X/AU;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/AU;-><init>(Lcom/facebook/ads/redexgen/X/AV;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AV;->A03:Lcom/facebook/ads/redexgen/X/AU;

    .line 29584
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/AV;->A00:I

    .line 29585
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/AV;->A05:J

    .line 29586
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/AV;J)J
    .locals 0

    .line 29587
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/AV;->A05:J

    return-wide p1
.end method

.method private A01(ZLcom/facebook/ads/redexgen/X/hv;Lcom/facebook/ads/redexgen/X/hq;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/AO;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/hn;
        }
    .end annotation

    .line 29588
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/AV;->A0I(ZLcom/facebook/ads/redexgen/X/hv;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29589
    invoke-static {p4, p2}, Lcom/facebook/ads/redexgen/X/AV;->A0G(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/hv;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29590
    monitor-enter p0

    .line 29591
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AV;->A04:Ljava/util/Map;

    invoke-interface {v0, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 29592
    .local v0, "codecSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/facebook/ads/androidx/media3/exoplayer/mediacodec/MediaCodecAdapter;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 29593
    iget v0, p0, Lcom/facebook/ads/redexgen/X/AV;->A00:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/AV;->A00:I

    .line 29594
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 29595
    .local v1, "codecIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/facebook/ads/androidx/media3/exoplayer/mediacodec/MediaCodecAdapter;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/AO;

    .line 29596
    .local v2, "ret":Lcom/facebook/ads/redexgen/X/AO;
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 29597
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/AV;->A03()Lcom/facebook/ads/redexgen/X/hr;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v1, p1, p4, p3, v0}, Lcom/facebook/ads/redexgen/X/hr;->A0A(ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/hq;I)V

    .line 29598
    monitor-exit p0

    return-object v2

    .line 29599
    .end local v0    # "codecSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/facebook/ads/androidx/media3/exoplayer/mediacodec/MediaCodecAdapter;>;"
    .end local v1    # "codecIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/facebook/ads/androidx/media3/exoplayer/mediacodec/MediaCodecAdapter;>;"
    .end local v2    # "ret":Lcom/facebook/ads/redexgen/X/AO;
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 29600
    :cond_1
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/AV;->A03()Lcom/facebook/ads/redexgen/X/hr;

    move-result-object v0

    invoke-virtual {v0, p1, p4, p3}, Lcom/facebook/ads/redexgen/X/hr;->A05(ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/hq;)Lcom/facebook/ads/redexgen/X/ho;

    move-result-object v3

    .line 29601
    .local v0, "creatingEvent":Lcom/facebook/ads/redexgen/X/ho;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AV;->A03:Lcom/facebook/ads/redexgen/X/AU;

    invoke-static {v0, p1, p4}, Lcom/facebook/ads/redexgen/X/AU;->A01(Lcom/facebook/ads/redexgen/X/AU;ZLjava/lang/String;)Lcom/facebook/ads/redexgen/X/AO;

    move-result-object v2

    .line 29602
    .local v1, "mediaCodec":Lcom/facebook/ads/redexgen/X/AO;
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/AV;->A03()Lcom/facebook/ads/redexgen/X/hr;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v1, v3, v0}, Lcom/facebook/ads/redexgen/X/hr;->A06(Lcom/facebook/ads/redexgen/X/ho;I)V

    .line 29603
    return-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 29604
    .end local v0    # "creatingEvent":Lcom/facebook/ads/redexgen/X/ho;
    .end local v1    # "mediaCodec":Lcom/facebook/ads/redexgen/X/AO;
    :catch_0
    move-exception v1

    .line 29605
    .local v0, "e":Ljava/lang/Exception;
    new-instance v0, Lcom/facebook/ads/redexgen/X/hn;

    invoke-direct {v0, p4, v1}, Lcom/facebook/ads/redexgen/X/hn;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static A02()Lcom/facebook/ads/redexgen/X/AV;
    .locals 4

    .line 29606
    sget-object v3, Lcom/facebook/ads/redexgen/X/AV;->A08:Lcom/facebook/ads/redexgen/X/AV;

    sget-object v2, Lcom/facebook/ads/redexgen/X/AV;->A07:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/AV;->A07:[Ljava/lang/String;

    const-string v1, "gdX1n"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "uqN6"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return-object v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A03()Lcom/facebook/ads/redexgen/X/hr;
    .locals 1

    .line 29607
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AV;->A01:Lcom/facebook/ads/redexgen/X/hr;

    if-eqz v0, :cond_0

    .line 29608
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AV;->A01:Lcom/facebook/ads/redexgen/X/hr;

    .line 29609
    :goto_0
    return-object v0

    .line 29610
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ba;->A02:Lcom/facebook/ads/redexgen/X/Ba;

    goto :goto_0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/AV;)Lcom/facebook/ads/redexgen/X/hr;
    .locals 0

    .line 29611
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/AV;->A03()Lcom/facebook/ads/redexgen/X/hr;

    move-result-object p0

    return-object p0
.end method

.method public static A05(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/AV;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x4a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A06()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/facebook/ads/redexgen/X/AO;",
            ">;"
        }
    .end annotation

    .line 29612
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AV;->A02:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AV;->A02:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29613
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    return-object v0

    .line 29614
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/AV;)Ljava/util/Set;
    .locals 0

    .line 29615
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/AV;->A06()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static A08()V
    .locals 1

    const/16 v0, 0x16

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/AV;->A06:[B

    return-void

    :array_0
    .array-data 1
        -0x3ft
        -0x47t
        -0x38t
        -0x4bt
        -0x7et
        -0x48t
        -0x4bt
        -0x36t
        -0x7bt
        -0x48t
        -0x7et
        -0x4bt
        -0x36t
        -0x7bt
        -0x7et
        -0x48t
        -0x47t
        -0x49t
        -0x3dt
        -0x48t
        -0x47t
        -0x3at
    .end array-data
.end method

.method private A09(Lcom/facebook/ads/redexgen/X/hr;)V
    .locals 1

    .line 29616
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AV;->A01:Lcom/facebook/ads/redexgen/X/hr;

    if-nez v0, :cond_0

    .line 29617
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AV;->A01:Lcom/facebook/ads/redexgen/X/hr;

    .line 29618
    :cond_0
    return-void
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/hv;)V
    .locals 1

    .line 29619
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AV;->A02:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 29620
    monitor-enter p0

    .line 29621
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AV;->A02:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 29622
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/hv;->A0R:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AV;->A02:Ljava/lang/Boolean;

    .line 29623
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AV;->A02:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29624
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/AV;->A04:Ljava/util/Map;

    .line 29625
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 29626
    :cond_1
    :goto_0
    return-void
.end method

.method private A0B(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/AO;)V
    .locals 4

    .line 29627
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AV;->A04:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 29628
    .local v0, "codecSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/facebook/ads/androidx/media3/exoplayer/mediacodec/MediaCodecAdapter;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29629
    iget v3, p0, Lcom/facebook/ads/redexgen/X/AV;->A00:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/AV;->A07:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/AV;->A07:[Ljava/lang/String;

    const-string v1, "FxBrmOrzGAHEl951IE67fieu752sH0JZ"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "QwM4isUBZzXVsf3PyxWpFGvjBfZOcOMZ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    add-int/lit8 v0, v3, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/AV;->A00:I

    .line 29630
    :cond_1
    return-void
.end method

.method private A0C(ZLcom/facebook/ads/redexgen/X/hv;Lcom/facebook/ads/redexgen/X/hq;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/AO;)V
    .locals 4

    .line 29631
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/AV;->A0I(ZLcom/facebook/ads/redexgen/X/hv;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 29632
    invoke-static {p4, p2}, Lcom/facebook/ads/redexgen/X/AV;->A0G(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/hv;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 29633
    const/4 v3, 0x1

    .line 29634
    .local v0, "release":Z
    monitor-enter p0

    .line 29635
    :try_start_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/AV;->A00:I

    iget v0, p2, Lcom/facebook/ads/redexgen/X/hv;->A05:I

    if-ge v1, v0, :cond_4

    .line 29636
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AV;->A04:Ljava/util/Map;

    invoke-interface {v0, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 29637
    .local v1, "codecSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/facebook/ads/androidx/media3/exoplayer/mediacodec/MediaCodecAdapter;>;"
    if-nez v2, :cond_0

    .line 29638
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/AV;->A06()Ljava/util/Set;

    move-result-object v2

    .line 29639
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AV;->A04:Ljava/util/Map;

    invoke-interface {v0, p4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29640
    :cond_0
    invoke-interface {v2, p5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29641
    const/4 v3, 0x0

    goto :goto_0

    .line 29642
    :cond_1
    if-eqz p1, :cond_2

    iget-boolean v0, p2, Lcom/facebook/ads/redexgen/X/hv;->A0M:Z

    if-nez v0, :cond_3

    :cond_2
    if-nez p1, :cond_4

    iget-boolean v0, p2, Lcom/facebook/ads/redexgen/X/hv;->A0L:Z

    if-eqz v0, :cond_4

    .line 29643
    :cond_3
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v1

    iget v0, p2, Lcom/facebook/ads/redexgen/X/hv;->A04:I

    if-ge v1, v0, :cond_4

    .line 29644
    invoke-interface {v2, p5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 29645
    iget v0, p0, Lcom/facebook/ads/redexgen/X/AV;->A00:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/AV;->A00:I

    .line 29646
    const/4 v3, 0x0

    .line 29647
    .end local v1    # "codecSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/facebook/ads/androidx/media3/exoplayer/mediacodec/MediaCodecAdapter;>;"
    :cond_4
    :goto_0
    if-nez v3, :cond_5

    .line 29648
    const-wide/16 v0, -0x1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/AV;->A05:J

    .line 29649
    invoke-interface {p5}, Lcom/facebook/ads/redexgen/X/AO;->reset()V

    .line 29650
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/AV;->A03()Lcom/facebook/ads/redexgen/X/hr;

    move-result-object v3

    invoke-virtual {p5}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v3, p3, v2}, Lcom/facebook/ads/redexgen/X/hr;->A09(Lcom/facebook/ads/redexgen/X/hq;I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29651
    :try_start_2
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/AV;->A05:J

    monitor-exit p0

    .line 29652
    return-void
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 29653
    .local v3, "e":Ljava/lang/IllegalStateException;
    :catch_0
    :try_start_3
    invoke-direct {p0, p4, p5}, Lcom/facebook/ads/redexgen/X/AV;->A0B(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/AO;)V

    goto :goto_1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 29654
    :catchall_0
    move-exception v2

    :try_start_4
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/AV;->A05:J

    .line 29655
    .end local v0    # "release":Z
    .end local p2    # null:Lcom/facebook/ads/redexgen/X/hv;
    .end local p3    # null:Lcom/facebook/ads/redexgen/X/hq;
    .end local p4    # null:Ljava/lang/String;
    .end local p5    # null:Lcom/facebook/ads/redexgen/X/AO;
    .end local p6
    throw v2

    .line 29656
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :goto_1
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/AV;->A05:J

    .line 29657
    .restart local v0    # "release":Z
    .restart local p2    # null:Lcom/facebook/ads/redexgen/X/hv;
    .restart local p3    # null:Lcom/facebook/ads/redexgen/X/hq;
    .restart local p4    # null:Ljava/lang/String;
    .restart local p5    # null:Lcom/facebook/ads/redexgen/X/AO;
    .restart local p6
    :cond_5
    monitor-exit p0

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 29658
    .end local v0    # "release":Z
    :cond_6
    :goto_2
    :try_start_5
    iget-boolean v0, p2, Lcom/facebook/ads/redexgen/X/hv;->A0Q:Z

    if-eqz v0, :cond_7

    if-nez p1, :cond_8

    iget-boolean v0, p2, Lcom/facebook/ads/redexgen/X/hv;->A0P:Z

    if-nez v0, :cond_8

    .line 29659
    :cond_7
    invoke-interface {p5}, Lcom/facebook/ads/redexgen/X/AO;->stop()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 29660
    :cond_8
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/AV;->A03()Lcom/facebook/ads/redexgen/X/hr;

    move-result-object v1

    invoke-virtual {p5}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v1, p3, v0}, Lcom/facebook/ads/redexgen/X/hr;->A08(Lcom/facebook/ads/redexgen/X/hq;I)V

    .line 29661
    invoke-interface {p5}, Lcom/facebook/ads/redexgen/X/AO;->AGr()V

    .line 29662
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/AV;->A03()Lcom/facebook/ads/redexgen/X/hr;

    move-result-object v1

    invoke-virtual {p5}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v1, p3, v0}, Lcom/facebook/ads/redexgen/X/hr;->A07(Lcom/facebook/ads/redexgen/X/hq;I)V

    .line 29663
    return-void

    .line 29664
    :catchall_2
    move-exception v2

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/AV;->A03()Lcom/facebook/ads/redexgen/X/hr;

    move-result-object v1

    invoke-virtual {p5}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v1, p3, v0}, Lcom/facebook/ads/redexgen/X/hr;->A08(Lcom/facebook/ads/redexgen/X/hq;I)V

    .line 29665
    invoke-interface {p5}, Lcom/facebook/ads/redexgen/X/AO;->AGr()V

    .line 29666
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/AV;->A03()Lcom/facebook/ads/redexgen/X/hr;

    move-result-object v1

    invoke-virtual {p5}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v1, p3, v0}, Lcom/facebook/ads/redexgen/X/hr;->A07(Lcom/facebook/ads/redexgen/X/hq;I)V

    .line 29667
    throw v2
.end method

.method public static synthetic A0D(Lcom/facebook/ads/redexgen/X/AV;ZLcom/facebook/ads/redexgen/X/hv;)Z
    .locals 0

    .line 29668
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/AV;->A0I(ZLcom/facebook/ads/redexgen/X/hv;)Z

    move-result p0

    return p0
.end method

.method public static A0E(Ljava/lang/String;)Z
    .locals 3

    .line 29669
    const/4 v2, 0x0

    const/16 v1, 0x16

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AV;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static synthetic A0F(Ljava/lang/String;)Z
    .locals 0

    .line 29670
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/AV;->A0E(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static A0G(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/hv;)Z
    .locals 0

    .line 29671
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/AV;->A0E(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-boolean p0, p1, Lcom/facebook/ads/redexgen/X/hv;->A0A:Z

    if-eqz p0, :cond_0

    .line 29672
    const/4 p0, 0x0

    return p0

    .line 29673
    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic A0H(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/hv;)Z
    .locals 0

    .line 29674
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/AV;->A0G(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/hv;)Z

    move-result p0

    return p0
.end method

.method private A0I(ZLcom/facebook/ads/redexgen/X/hv;)Z
    .locals 5

    .line 29675
    iget-boolean v0, p2, Lcom/facebook/ads/redexgen/X/hv;->A0C:Z

    if-eqz v0, :cond_0

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/AV;->A05:J

    const-wide/16 v1, -0x1

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    .line 29676
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/AV;->A05:J

    sub-long/2addr v3, v0

    const-wide/16 v1, 0x1388

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    .line 29677
    const/4 v0, 0x0

    return v0

    .line 29678
    :cond_0
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/AV;->A0J(ZLcom/facebook/ads/redexgen/X/hv;)Z

    move-result v0

    return v0
.end method

.method public static A0J(ZLcom/facebook/ads/redexgen/X/hv;)Z
    .locals 1

    .line 29679
    if-eqz p0, :cond_0

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/hv;->A0M:Z

    if-nez v0, :cond_1

    :cond_0
    if-nez p0, :cond_2

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/hv;->A0L:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A0K(ZLcom/facebook/ads/redexgen/X/hv;Lcom/facebook/ads/redexgen/X/hr;Lcom/facebook/ads/redexgen/X/hq;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/AO;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/hn;
        }
    .end annotation

    .line 29680
    invoke-direct {p0, p3}, Lcom/facebook/ads/redexgen/X/AV;->A09(Lcom/facebook/ads/redexgen/X/hr;)V

    .line 29681
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/AV;->A0A(Lcom/facebook/ads/redexgen/X/hv;)V

    .line 29682
    iget-boolean v0, p2, Lcom/facebook/ads/redexgen/X/hv;->A0J:Z

    if-eqz v0, :cond_1

    .line 29683
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AV;->A03:Lcom/facebook/ads/redexgen/X/AU;

    invoke-static {v0, p1, p2, p4, p5}, Lcom/facebook/ads/redexgen/X/AU;->A00(Lcom/facebook/ads/redexgen/X/AU;ZLcom/facebook/ads/redexgen/X/hv;Lcom/facebook/ads/redexgen/X/hq;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/AO;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/AV;->A07:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/AV;->A07:[Ljava/lang/String;

    const-string v1, "ttyEUrXfsAwEm9Eniby4AXTGkmRMb34Z"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "BAFCEyHtTeugEvQpUcdazZ0OUcRhptwZ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 29684
    :cond_1
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/facebook/ads/redexgen/X/AV;->A01(ZLcom/facebook/ads/redexgen/X/hv;Lcom/facebook/ads/redexgen/X/hq;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/AO;

    move-result-object v0

    return-object v0
.end method

.method public final A0L(ZLcom/facebook/ads/redexgen/X/hv;Lcom/facebook/ads/redexgen/X/hr;Lcom/facebook/ads/redexgen/X/hq;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/AO;)V
    .locals 6

    .line 29685
    invoke-direct {p0, p3}, Lcom/facebook/ads/redexgen/X/AV;->A09(Lcom/facebook/ads/redexgen/X/hr;)V

    .line 29686
    move-object v2, p2

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/hv;->A0J:Z

    move-object v4, p5

    move-object v3, p4

    move-object v5, p6

    move v1, p1

    if-eqz v0, :cond_0

    .line 29687
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AV;->A03:Lcom/facebook/ads/redexgen/X/AU;

    invoke-static/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/AU;->A06(Lcom/facebook/ads/redexgen/X/AU;ZLcom/facebook/ads/redexgen/X/hv;Lcom/facebook/ads/redexgen/X/hq;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/AO;)V

    .line 29688
    :goto_0
    return-void

    .line 29689
    :cond_0
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/AV;->A0C(ZLcom/facebook/ads/redexgen/X/hv;Lcom/facebook/ads/redexgen/X/hq;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/AO;)V

    goto :goto_0
.end method
