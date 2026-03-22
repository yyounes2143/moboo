.class public final Lcom/facebook/ads/redexgen/X/SF;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/SD;,
        Lcom/facebook/ads/redexgen/X/SE;,
        Lcom/facebook/ads/redexgen/X/SA;,
        Lcom/facebook/ads/redexgen/X/SB;,
        Lcom/facebook/ads/redexgen/X/SC;,
        Lcom/facebook/ads/redexgen/X/S8;,
        Lcom/facebook/ads/internal/cache/AdCacheManager$CacheFileExtension;
    }
.end annotation


# static fields
.field public static A0A:Lcom/facebook/ads/redexgen/X/Kp;

.field public static A0B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static A0C:[B

.field public static A0D:[Ljava/lang/String;

.field public static final A0E:Ljava/lang/String;

.field public static final A0F:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Kv;",
            ">;"
        }
    .end annotation
.end field

.field public static final A0G:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/SH;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/redexgen/X/Ua;

.field public final A02:Landroid/os/Handler;

.field public final A03:Lcom/facebook/ads/redexgen/X/SG;

.field public final A04:Lcom/facebook/ads/redexgen/X/SQ;

.field public final A05:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field public final A06:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field public final A07:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public final A08:Z

.field public final A09:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1587
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "9sbbD15"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Lu4K49mlxrSXSmjNh7fbv8QTyeXNNeG"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "dxmg93Ac1Ci0DpKcQcYnCSB5QhHSt8Hl"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "k6rgF4fsXLHTj2vl"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "7FEQyJVT"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "NWpMXisSbHx8hQWP"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "4pbn9SiXGJE3zFdxdKEeQNSdsbhvbmq3"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "cv"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/SF;->A0D:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/SF;->A0F()V

    const-class v0, Lcom/facebook/ads/redexgen/X/SF;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/SF;->A0E:Ljava/lang/String;

    .line 1588
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1589
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/SF;->A0F:Ljava/util/Map;

    .line 1590
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1591
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/SF;->A0G:Ljava/util/Map;

    .line 1592
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/SQ;)V
    .locals 2

    .line 63648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63649
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 63650
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A07:Ljava/util/Map;

    .line 63651
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SF;->A04:Lcom/facebook/ads/redexgen/X/SQ;

    .line 63652
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A02:Landroid/os/Handler;

    .line 63653
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/SQ;->A02()Lcom/facebook/ads/redexgen/X/cu;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SG;->A06(Lcom/facebook/ads/redexgen/X/cu;)Lcom/facebook/ads/redexgen/X/SG;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A03:Lcom/facebook/ads/redexgen/X/SG;

    .line 63654
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A05:Ljava/util/List;

    .line 63655
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A06:Ljava/util/List;

    .line 63656
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/U7;->A2i(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A08:Z

    .line 63657
    invoke-static {}, Lcom/facebook/ads/redexgen/X/eF;->A03()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/U7;->A2r(Landroid/content/Context;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A09:Z

    .line 63658
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/SF;)J
    .locals 1

    .line 63659
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:J

    return-wide v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/SF;)Landroid/os/Handler;
    .locals 0

    .line 63660
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/SF;->A02:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/cu;)Lcom/facebook/ads/redexgen/X/Kp;
    .locals 0

    .line 63661
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/SF;->A03(Lcom/facebook/ads/redexgen/X/cu;)Lcom/facebook/ads/redexgen/X/Kp;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized A03(Lcom/facebook/ads/redexgen/X/cu;)Lcom/facebook/ads/redexgen/X/Kp;
    .locals 3

    const-class v2, Lcom/facebook/ads/redexgen/X/SF;

    monitor-enter v2

    .line 63662
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/SF;->A0A:Lcom/facebook/ads/redexgen/X/Kp;

    if-nez v0, :cond_0

    .line 63663
    new-instance v1, Lcom/facebook/ads/redexgen/X/Kw;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/Kw;-><init>()V

    .line 63664
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/U7;->A06(Landroid/content/Context;)I

    move-result v0

    .line 63665
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Kw;->A00(I)Lcom/facebook/ads/redexgen/X/Kw;

    move-result-object v1

    .line 63666
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SQ;->A05()Lcom/facebook/ads/redexgen/X/SV;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/SV;->AAF()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Kw;->A02(Z)Lcom/facebook/ads/redexgen/X/Kw;

    move-result-object v1

    .line 63667
    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Kw;->A01(I)Lcom/facebook/ads/redexgen/X/Kw;

    move-result-object v1

    .line 63668
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/U7;->A0p(Landroid/content/Context;)Z

    move-result v0

    .line 63669
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Kw;->A03(Z)Lcom/facebook/ads/redexgen/X/Kw;

    move-result-object v1

    .line 63670
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/U7;->A2q(Landroid/content/Context;)Z

    move-result v0

    .line 63671
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Kw;->A04(Z)Lcom/facebook/ads/redexgen/X/Kw;

    move-result-object v0

    .line 63672
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Kw;->A05()Lcom/facebook/ads/redexgen/X/Kx;

    move-result-object v1

    .line 63673
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/SF;->A05(Lcom/facebook/ads/redexgen/X/cu;)Lcom/facebook/ads/redexgen/X/dl;

    move-result-object v0

    .line 63674
    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Kq;->A00(Lcom/facebook/ads/redexgen/X/SQ;Lcom/facebook/ads/redexgen/X/Kx;Lcom/facebook/ads/redexgen/X/LA;)Lcom/facebook/ads/redexgen/X/jO;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/SF;->A0A:Lcom/facebook/ads/redexgen/X/Kp;

    .line 63675
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/SF;->A0A:Lcom/facebook/ads/redexgen/X/Kp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v0

    .line 63676
    .end local p0    # null:Lcom/facebook/ads/redexgen/X/cu;
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/SQ;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Kv;
    .locals 2

    .line 63677
    sget-object v0, Lcom/facebook/ads/redexgen/X/SF;->A0F:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Kv;

    .line 63678
    .local v0, "storedCacheData":Lcom/facebook/ads/redexgen/X/Kv;
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/SI;->A06(Lcom/facebook/ads/redexgen/X/SQ;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 63679
    new-instance v0, Lcom/facebook/ads/redexgen/X/Kv;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Kv;-><init>(Lcom/facebook/ads/redexgen/X/Kv;)V

    .line 63680
    :goto_0
    return-object v0

    .line 63681
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Kv;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/Kv;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/cu;)Lcom/facebook/ads/redexgen/X/dl;
    .locals 1

    .line 63682
    new-instance v0, Lcom/facebook/ads/redexgen/X/dl;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/dl;-><init>(Lcom/facebook/ads/redexgen/X/cu;)V

    return-object v0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/SF;)Lcom/facebook/ads/redexgen/X/SG;
    .locals 0

    .line 63683
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/SF;->A03:Lcom/facebook/ads/redexgen/X/SG;

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/SF;)Lcom/facebook/ads/redexgen/X/SQ;
    .locals 0

    .line 63684
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/SF;->A04:Lcom/facebook/ads/redexgen/X/SQ;

    return-object p0
.end method

.method public static A08(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/SF;->A0C:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x5c

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static declared-synchronized A09(Lcom/facebook/ads/redexgen/X/SQ;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/SQ;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v1, Lcom/facebook/ads/redexgen/X/SF;

    monitor-enter v1

    .line 63685
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/SF;->A0B:Ljava/util/List;

    if-nez v0, :cond_0

    .line 63686
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/SF;->A0B:Ljava/util/List;

    .line 63687
    sget-object v0, Lcom/facebook/ads/redexgen/X/SF;->A0B:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/facebook/ads/redexgen/X/SF;->A0J(Ljava/util/List;Lcom/facebook/ads/redexgen/X/SQ;)V

    .line 63688
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/SF;->A0B:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 63689
    .end local p0    # null:Lcom/facebook/ads/redexgen/X/SQ;
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static synthetic A0A()Ljava/util/Map;
    .locals 4

    .line 63690
    sget-object v3, Lcom/facebook/ads/redexgen/X/SF;->A0G:Ljava/util/Map;

    sget-object v1, Lcom/facebook/ads/redexgen/X/SF;->A0D:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x10

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/SF;->A0D:[Ljava/lang/String;

    const-string v1, "WjQPXn0MHZbTNsTxKlY7B5aUAaJR9kiv"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return-object v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A0B()Ljava/util/Map;
    .locals 1

    .line 63691
    sget-object v0, Lcom/facebook/ads/redexgen/X/SF;->A0F:Ljava/util/Map;

    return-object v0
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/SF;)Ljava/util/Map;
    .locals 0

    .line 63692
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/SF;->A07:Ljava/util/Map;

    return-object p0
.end method

.method public static A0D(Ljava/util/ArrayList;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Boolean;",
            ">;>;)",
            "Ljava/util/concurrent/atomic/AtomicBoolean;"
        }
    .end annotation

    .line 63693
    .local p2, "downloaders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 63694
    .local v0, "futures":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Callable;

    .line 63695
    .local v2, "downloader":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;"
    invoke-static {}, Lcom/facebook/ads/redexgen/X/XU;->A02()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63696
    .end local v2    # "downloader":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;"
    goto :goto_0

    .line 63697
    :cond_0
    const/4 v0, 0x1

    new-instance p0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 63698
    .local v1, "result":Ljava/util/concurrent/atomic/AtomicBoolean;
    const/4 v5, 0x0

    :try_start_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 63699
    .local v5, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;"
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 63700
    .local p0, "partialResult":Ljava/lang/Boolean;
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63701
    :catch_0
    move-exception v4

    goto :goto_3

    :catch_1
    move-exception v4

    .line 63702
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    sget-object v3, Lcom/facebook/ads/redexgen/X/SF;->A0E:Ljava/lang/String;

    const/16 v2, 0x56

    const/16 v1, 0x2a

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SF;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63703
    invoke-virtual {p0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 63704
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    return-object p0
.end method

.method public static synthetic A0E(Ljava/util/ArrayList;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 63705
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/SF;->A0D(Ljava/util/ArrayList;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    return-object p0
.end method

.method public static A0F()V
    .locals 1

    const/16 v0, 0xbe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/SF;->A0C:[B

    return-void

    :array_0
    .array-data 1
        0x79t
        0x7at
        0x2dt
        0x2at
        0x7et
        0x7et
        0x29t
        0x7et
        0x5bt
        0x5bt
        0x58t
        0x57t
        0x56t
        0xat
        0x5bt
        0x58t
        0x22t
        0x21t
        0x2et
        0x72t
        0x26t
        0x75t
        0x71t
        0x24t
        0xbt
        0x29t
        0x2bt
        0x20t
        0x2dt
        0x68t
        0x3bt
        0x3ct
        0x29t
        0x3at
        0x3ct
        0x2dt
        0x2ct
        0x66t
        0x64t
        0x46t
        0x44t
        0x4ft
        0x4et
        0x49t
        0x40t
        0x7t
        0x44t
        0x48t
        0x4at
        0x57t
        0x4bt
        0x42t
        0x53t
        0x42t
        0x3ft
        0x1dt
        0x1ft
        0x14t
        0x15t
        0x12t
        0x1bt
        0x5ct
        0x1at
        0x1dt
        0x15t
        0x10t
        0x19t
        0x18t
        0x45t
        0x67t
        0x65t
        0x6et
        0x6ft
        0x68t
        0x61t
        0x26t
        0x75t
        0x72t
        0x67t
        0x74t
        0x72t
        0x63t
        0x62t
        0x28t
        0x28t
        0x28t
        0x67t
        0x5at
        0x41t
        0x47t
        0x52t
        0x56t
        0x4bt
        0x4dt
        0x4ct
        0x2t
        0x55t
        0x4at
        0x4bt
        0x4et
        0x47t
        0x2t
        0x47t
        0x5at
        0x47t
        0x41t
        0x57t
        0x56t
        0x4bt
        0x4ct
        0x45t
        0x2t
        0x41t
        0x43t
        0x41t
        0x4at
        0x47t
        0x2t
        0x46t
        0x4dt
        0x55t
        0x4ct
        0x4et
        0x4dt
        0x43t
        0x46t
        0x51t
        0xct
        0x42t
        0x40t
        0x42t
        0x49t
        0x44t
        0x62t
        0x4et
        0x4ct
        0x51t
        0x4dt
        0x44t
        0x55t
        0x48t
        0x4et
        0x4ft
        0x69t
        0x4et
        0x4et
        0x4at
        0x6ft
        0x6dt
        0x6ft
        0x64t
        0x69t
        0x4at
        0x6dt
        0x65t
        0x60t
        0x79t
        0x7et
        0x69t
        0x44t
        0x63t
        0x63t
        0x67t
        0x68t
        0x75t
        0x68t
        0x6et
        0x78t
        0x79t
        0x68t
        0x65t
        0x66t
        0x68t
        0x6dt
        0x77t
        0x74t
        0x7at
        0x7ft
        0x44t
        0x6ft
        0x72t
        0x76t
        0x7et
        0x44t
        0x76t
        0x68t
        0x59t
        0x42t
        0x45t
        0x5dt
    .end array-data
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/SF;Lcom/facebook/ads/redexgen/X/UZ;)V
    .locals 0

    .line 63706
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/SF;->A0I(Lcom/facebook/ads/redexgen/X/UZ;)V

    return-void
.end method

.method public static A0H(Lcom/facebook/ads/redexgen/X/SQ;Ljava/lang/String;)V
    .locals 4

    .line 63707
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/SI;->A06(Lcom/facebook/ads/redexgen/X/SQ;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 63708
    sget-object v0, Lcom/facebook/ads/redexgen/X/SF;->A0G:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/SH;

    sget-object v1, Lcom/facebook/ads/redexgen/X/SF;->A0D:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x10

    if-eq v1, v0, :cond_2

    .line 63709
    .local v0, "logData":Lcom/facebook/ads/redexgen/X/SH;
    sget-object v2, Lcom/facebook/ads/redexgen/X/SF;->A0D:[Ljava/lang/String;

    const-string v1, "a10tGuQmEwUEP0sxRmqxEmZkNnUikCvX"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    .line 63710
    const/16 v2, 0xba

    const/4 v1, 0x4

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SF;->A08(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/SH;->A00:Ljava/lang/String;

    .line 63711
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SQ;->A02()Lcom/facebook/ads/redexgen/X/cu;

    move-result-object v2

    .line 63712
    .local v1, "sdkContext":Lcom/facebook/ads/redexgen/X/cu;
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/eJ;->A06(Lcom/facebook/ads/redexgen/X/cu;)Lcom/facebook/ads/redexgen/X/eJ;

    move-result-object v1

    .line 63713
    .local v2, "cacheManager":Lcom/facebook/ads/redexgen/X/eJ;
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/WQ;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 63714
    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/eJ;->A09(Lcom/facebook/ads/redexgen/X/cu;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 63715
    .local v3, "cacheKey":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 63716
    move-object v0, p1

    .line 63717
    :cond_0
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/eJ;->A0J(Ljava/lang/String;)Z

    move-result v0

    invoke-static {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/SI;->A04(Lcom/facebook/ads/redexgen/X/SQ;Lcom/facebook/ads/redexgen/X/SH;Z)V

    .line 63718
    .end local v0    # "logData":Lcom/facebook/ads/redexgen/X/SH;
    .end local v1    # "sdkContext":Lcom/facebook/ads/redexgen/X/cu;
    .end local v2    # "cacheManager":Lcom/facebook/ads/redexgen/X/eJ;
    .end local v3    # "cacheKey":Ljava/lang/String;
    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0I(Lcom/facebook/ads/redexgen/X/UZ;)V
    .locals 5

    .line 63719
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A01:Lcom/facebook/ads/redexgen/X/Ua;

    if-nez v0, :cond_0

    .line 63720
    return-void

    .line 63721
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 63722
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:J

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/XG;->A05(J)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xae

    const/16 v1, 0xc

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SF;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63723
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A01:Lcom/facebook/ads/redexgen/X/Ua;

    invoke-virtual {v0, p1, v4}, Lcom/facebook/ads/redexgen/X/Ua;->A04(Lcom/facebook/ads/redexgen/X/UZ;Ljava/util/Map;)V

    .line 63724
    return-void
.end method

.method public static A0J(Ljava/util/List;Lcom/facebook/ads/redexgen/X/SQ;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/SQ;",
            ")V"
        }
    .end annotation

    .line 63725
    .local p0, "cacheDirs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/jO;->A01(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/SF;->A0K(Ljava/util/List;Ljava/io/File;)V

    .line 63726
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/SG;->A07(Lcom/facebook/ads/redexgen/X/SQ;)Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/SF;->A0K(Ljava/util/List;Ljava/io/File;)V

    .line 63727
    return-void
.end method

.method public static A0K(Ljava/util/List;Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 63728
    .local v2, "cacheDirs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 63729
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 63730
    .local v0, "path":Ljava/lang/String;
    if-eqz v4, :cond_0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SF;->A08(III)Ljava/lang/String;

    move-result-object v0

    if-eq v4, v0, :cond_0

    .line 63731
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/SF;->A0D:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/SF;->A0D:[Ljava/lang/String;

    const-string v1, "BAOa9xP"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63732
    .end local v0    # "path":Ljava/lang/String;
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A0L(Lcom/facebook/ads/redexgen/X/SF;)Z
    .locals 0

    .line 63733
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/SF;->A08:Z

    return p0
.end method


# virtual methods
.method public final A0M(Ljava/lang/String;)F
    .locals 1

    .line 63734
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A03:Lcom/facebook/ads/redexgen/X/SG;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/SG;->A0E(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public final A0N(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 63735
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A07:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final A0O(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 9

    .line 63736
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A08:Z

    move v7, p3

    move v6, p2

    move-object v5, p1

    if-eqz v0, :cond_0

    .line 63737
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A04:Lcom/facebook/ads/redexgen/X/SQ;

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/SF;->A04(Lcom/facebook/ads/redexgen/X/SQ;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Kv;

    move-result-object v3

    .line 63738
    .local v0, "cacheFileData":Lcom/facebook/ads/redexgen/X/Kv;
    const/16 v2, 0xba

    const/4 v1, 0x4

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SF;->A08(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/Kv;->A03:Ljava/lang/String;

    .line 63739
    iput v7, v3, Lcom/facebook/ads/redexgen/X/Kv;->A01:I

    .line 63740
    iput v6, v3, Lcom/facebook/ads/redexgen/X/Kv;->A00:I

    .line 63741
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A04:Lcom/facebook/ads/redexgen/X/SQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A02()Lcom/facebook/ads/redexgen/X/cu;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SF;->A03(Lcom/facebook/ads/redexgen/X/cu;)Lcom/facebook/ads/redexgen/X/Kp;

    move-result-object v1

    .line 63742
    const/4 v0, 0x1

    invoke-interface {v1, v3, v0}, Lcom/facebook/ads/redexgen/X/Kp;->AHu(Lcom/facebook/ads/redexgen/X/Kv;Z)Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v0

    .line 63743
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Kr;->A00()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 63744
    return-object v0

    .line 63745
    .end local v0    # "cacheFileData":Lcom/facebook/ads/redexgen/X/Kv;
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/SF;->A03:Lcom/facebook/ads/redexgen/X/SG;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/SF;->A04:Lcom/facebook/ads/redexgen/X/SQ;

    const/16 v2, 0xaa

    const/4 v1, 0x4

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SF;->A08(III)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/SG;->A0G(Lcom/facebook/ads/redexgen/X/SQ;Ljava/lang/String;IILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final A0P(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .line 63746
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A04:Lcom/facebook/ads/redexgen/X/SQ;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/SF;->A04(Lcom/facebook/ads/redexgen/X/SQ;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Kv;

    move-result-object v3

    .line 63747
    .local v0, "storedCacheFileData":Lcom/facebook/ads/redexgen/X/Kv;
    const/16 v2, 0xba

    const/4 v1, 0x4

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SF;->A08(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/Kv;->A03:Ljava/lang/String;

    .line 63748
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A04:Lcom/facebook/ads/redexgen/X/SQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A02()Lcom/facebook/ads/redexgen/X/cu;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SF;->A03(Lcom/facebook/ads/redexgen/X/cu;)Lcom/facebook/ads/redexgen/X/Kp;

    move-result-object v0

    .line 63749
    invoke-interface {v0, v3}, Lcom/facebook/ads/redexgen/X/Kp;->AHv(Lcom/facebook/ads/redexgen/X/Kv;)Ljava/io/File;

    move-result-object v0

    .line 63750
    return-object v0
.end method

.method public final A0Q(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 63751
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A08:Z

    if-eqz v0, :cond_0

    .line 63752
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/SF;->A0P(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 63753
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A03:Lcom/facebook/ads/redexgen/X/SG;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/SG;->A0H(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public final A0R(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 63754
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A08:Z

    if-eqz v0, :cond_0

    .line 63755
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/SF;->A0S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 63756
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A03:Lcom/facebook/ads/redexgen/X/SG;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/SG;->A0I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A0S(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 63757
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A04:Lcom/facebook/ads/redexgen/X/SQ;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/SF;->A04(Lcom/facebook/ads/redexgen/X/SQ;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Kv;

    move-result-object v3

    .line 63758
    .local v0, "storedCacheFileData":Lcom/facebook/ads/redexgen/X/Kv;
    const/16 v2, 0xba

    const/4 v1, 0x4

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SF;->A08(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/Kv;->A03:Ljava/lang/String;

    .line 63759
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A04:Lcom/facebook/ads/redexgen/X/SQ;

    .line 63760
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A02()Lcom/facebook/ads/redexgen/X/cu;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SF;->A03(Lcom/facebook/ads/redexgen/X/cu;)Lcom/facebook/ads/redexgen/X/Kp;

    move-result-object v0

    .line 63761
    invoke-interface {v0, v3}, Lcom/facebook/ads/redexgen/X/Kp;->AHx(Lcom/facebook/ads/redexgen/X/Kv;)Ljava/lang/String;

    move-result-object v0

    .line 63762
    .local v1, "cachedUrl":Ljava/lang/String;
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method public final A0T(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 63763
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A09:Z

    if-eqz v0, :cond_0

    .line 63764
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A04:Lcom/facebook/ads/redexgen/X/SQ;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/SF;->A0H(Lcom/facebook/ads/redexgen/X/SQ;Ljava/lang/String;)V

    .line 63765
    return-object p1

    .line 63766
    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/SF;->A0S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A0U()V
    .locals 5

    const/16 v2, 0x26

    const/16 v1, 0x10

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SF;->A08(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x8

    const/16 v1, 0x8

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SF;->A08(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x80

    const/16 v1, 0x13

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SF;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v3}, Lcom/facebook/ads/redexgen/X/VF;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63767
    return-void
.end method

.method public final A0V()V
    .locals 5

    const/16 v2, 0x36

    const/16 v1, 0xe

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SF;->A08(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x10

    const/16 v1, 0x8

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SF;->A08(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x93

    const/16 v1, 0x10

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SF;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v3}, Lcom/facebook/ads/redexgen/X/VF;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63768
    return-void
.end method

.method public final A0W()V
    .locals 1

    .line 63769
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A07:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 63770
    return-void
.end method

.method public final A0X(Lcom/facebook/ads/redexgen/X/S7;Lcom/facebook/ads/redexgen/X/S8;)V
    .locals 9

    const/16 v2, 0x44

    const/16 v1, 0x12

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SF;->A08(III)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SF;->A08(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xa3

    const/4 v1, 0x7

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SF;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v3}, Lcom/facebook/ads/redexgen/X/VF;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63771
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A00:J

    .line 63772
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/SF;->A04:Lcom/facebook/ads/redexgen/X/SQ;

    sget v5, Lcom/facebook/ads/redexgen/X/SI;->A07:I

    const/16 v2, 0x18

    const/16 v1, 0xe

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SF;->A08(III)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, -0x1

    move-object v4, p2

    move-object v4, v4

    invoke-static/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/SI;->A02(Lcom/facebook/ads/redexgen/X/SQ;Lcom/facebook/ads/redexgen/X/S8;ILjava/lang/String;J)V

    .line 63773
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A05:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 63774
    .local v2, "mandatoryDownloadersCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A06:Ljava/util/List;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 63775
    .local v5, "optionalDownloadersCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;>;"
    invoke-static {}, Lcom/facebook/ads/redexgen/X/XU;->A03()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/dm;

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/dm;-><init>(Lcom/facebook/ads/redexgen/X/SF;Ljava/util/ArrayList;Lcom/facebook/ads/redexgen/X/S8;Lcom/facebook/ads/redexgen/X/S7;Ljava/util/ArrayList;)V

    .line 63776
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 63777
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A05:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 63778
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A06:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 63779
    return-void
.end method

.method public final A0Y(Lcom/facebook/ads/redexgen/X/SB;)V
    .locals 2

    .line 63780
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SF;->A05:Ljava/util/List;

    new-instance v0, Lcom/facebook/ads/redexgen/X/SC;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/SC;-><init>(Lcom/facebook/ads/redexgen/X/SF;Lcom/facebook/ads/redexgen/X/SB;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63781
    return-void
.end method

.method public final A0Z(Lcom/facebook/ads/redexgen/X/SB;)V
    .locals 2

    .line 63782
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/facebook/ads/redexgen/X/SB;->A05:Z

    .line 63783
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SF;->A06:Ljava/util/List;

    new-instance v0, Lcom/facebook/ads/redexgen/X/SC;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/SC;-><init>(Lcom/facebook/ads/redexgen/X/SF;Lcom/facebook/ads/redexgen/X/SB;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63784
    return-void
.end method

.method public final A0a(Lcom/facebook/ads/redexgen/X/SB;)V
    .locals 2

    .line 63785
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/facebook/ads/redexgen/X/SB;->A05:Z

    .line 63786
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A09:Z

    if-eqz v0, :cond_0

    .line 63787
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SF;->A06:Ljava/util/List;

    new-instance v0, Lcom/facebook/ads/redexgen/X/SA;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/SA;-><init>(Lcom/facebook/ads/redexgen/X/SF;Lcom/facebook/ads/redexgen/X/SB;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63788
    :goto_0
    return-void

    .line 63789
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SF;->A06:Ljava/util/List;

    new-instance v0, Lcom/facebook/ads/redexgen/X/SC;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/SC;-><init>(Lcom/facebook/ads/redexgen/X/SF;Lcom/facebook/ads/redexgen/X/SB;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final A0b(Lcom/facebook/ads/redexgen/X/SB;)V
    .locals 2

    .line 63790
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A09:Z

    if-eqz v0, :cond_0

    .line 63791
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SF;->A05:Ljava/util/List;

    new-instance v0, Lcom/facebook/ads/redexgen/X/SA;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/SA;-><init>(Lcom/facebook/ads/redexgen/X/SF;Lcom/facebook/ads/redexgen/X/SB;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63792
    :goto_0
    return-void

    .line 63793
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SF;->A05:Ljava/util/List;

    new-instance v0, Lcom/facebook/ads/redexgen/X/SC;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/SC;-><init>(Lcom/facebook/ads/redexgen/X/SF;Lcom/facebook/ads/redexgen/X/SB;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final A0c(Lcom/facebook/ads/redexgen/X/SD;)V
    .locals 2

    .line 63794
    new-instance v1, Lcom/facebook/ads/redexgen/X/SE;

    invoke-direct {v1, p0, p1}, Lcom/facebook/ads/redexgen/X/SE;-><init>(Lcom/facebook/ads/redexgen/X/SF;Lcom/facebook/ads/redexgen/X/SD;)V

    .line 63795
    .local v0, "imageDownloaderCallable":Lcom/facebook/ads/redexgen/X/SE;
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/SD;->A03:Z

    if-nez v0, :cond_0

    .line 63796
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A05:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63797
    :goto_0
    return-void

    .line 63798
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SF;->A06:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final A0d(Lcom/facebook/ads/redexgen/X/SD;)V
    .locals 1

    .line 63799
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/facebook/ads/redexgen/X/SD;->A03:Z

    .line 63800
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/SF;->A0c(Lcom/facebook/ads/redexgen/X/SD;)V

    .line 63801
    return-void
.end method

.method public final A0e(Lcom/facebook/ads/redexgen/X/Ua;)V
    .locals 0

    .line 63802
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SF;->A01:Lcom/facebook/ads/redexgen/X/Ua;

    .line 63803
    return-void
.end method
