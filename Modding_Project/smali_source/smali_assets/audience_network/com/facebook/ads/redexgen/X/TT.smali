.class public final Lcom/facebook/ads/redexgen/X/TT;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:Ljava/lang/String;

.field public static A01:Lcom/facebook/ads/redexgen/X/Wi;

.field public static A02:[B

.field public static A03:[Ljava/lang/String;

.field public static final A04:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final A05:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1831
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "voSC7"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "XZAhka0CvCOYv4I2O5x3YaAw3CbuYBFN"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "p9gqIJ2nr"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "98tXqko6jTMLdbqfVFP5nvRcnbiOcAti"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "T2H4NPeAA8j3XC4jkS0zz8rIAu9TBODq"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "PgqQ"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "DWYdqAxgZwpx5TFll0r56voildH8EXHj"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "oGCSEutn0BLuvxJJ07JBH6t"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/TT;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/TT;->A05()V

    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/ads/redexgen/X/TT;->A00:Ljava/lang/String;

    .line 1832
    const/4 v1, 0x0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/TT;->A05:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1833
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/TT;->A04:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 65983
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized A00(Lcom/facebook/ads/redexgen/X/SQ;)Lcom/facebook/ads/redexgen/X/Wi;
    .locals 2

    const-class v1, Lcom/facebook/ads/redexgen/X/TT;

    monitor-enter v1

    .line 65984
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/TT;->A01:Lcom/facebook/ads/redexgen/X/Wi;

    if-nez v0, :cond_0

    .line 65985
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Wj;->A00(Lcom/facebook/ads/redexgen/X/SQ;)Lcom/facebook/ads/redexgen/X/Wi;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/TT;->A01:Lcom/facebook/ads/redexgen/X/Wi;

    .line 65986
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/TT;->A01:Lcom/facebook/ads/redexgen/X/Wi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 65987
    .end local p0    # null:Lcom/facebook/ads/redexgen/X/SQ;
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static A01(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    .line 65988
    sget-object v1, Lcom/facebook/ads/redexgen/X/TT;->A04:Ljava/util/Map;

    monitor-enter v1

    .line 65989
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/TT;->A04:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 65990
    .local v1, "state":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 65991
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 65992
    :cond_0
    monitor-exit v1

    return-object v0

    .line 65993
    .end local v1    # "state":Ljava/lang/Integer;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/TT;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/TT;->A03:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/TT;->A03:[Ljava/lang/String;

    const-string v1, "U3LMWoXZ5NcjJWeamIlVlKUbevsxyVyN"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_1

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x5b

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A03()Ljava/util/Map;
    .locals 1

    .line 65994
    sget-object v0, Lcom/facebook/ads/redexgen/X/TT;->A04:Ljava/util/Map;

    return-object v0
.end method

.method public static synthetic A04()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 65995
    sget-object v0, Lcom/facebook/ads/redexgen/X/TT;->A05:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static A05()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/TT;->A02:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x73t
        0x6t
        0x1t
        0x17t
    .end array-data
.end method

.method public static A06(Lcom/facebook/ads/redexgen/X/SQ;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/SQ;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 65996
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/TT;->A0A(Lcom/facebook/ads/redexgen/X/SQ;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65997
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/W4;->A03(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 65998
    .local v0, "fingerprint":Ljava/lang/String;
    .restart local v0    # "fingerprint":Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_0

    .line 65999
    const/4 p0, 0x1

    const/4 v1, 0x3

    const/16 v0, 0x1c

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/TT;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66000
    :cond_0
    return-void

    .line 66001
    .end local v0    # "fingerprint":Ljava/lang/String;
    :cond_1
    sget-object p1, Lcom/facebook/ads/redexgen/X/TT;->A00:Ljava/lang/String;

    goto :goto_0
.end method

.method public static A07(Lcom/facebook/ads/redexgen/X/SQ;Z)V
    .locals 7

    .line 66002
    sget-object v1, Lcom/facebook/ads/redexgen/X/TT;->A05:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66003
    return-void

    .line 66004
    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/TT;->A00(Lcom/facebook/ads/redexgen/X/SQ;)Lcom/facebook/ads/redexgen/X/Wi;

    .line 66005
    :try_start_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Ve;->A00(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 66006
    .local v0, "sp":Landroid/content/SharedPreferences;
    new-instance v4, Lcom/facebook/ads/redexgen/X/T6;

    invoke-direct {v4, p0}, Lcom/facebook/ads/redexgen/X/T6;-><init>(Lcom/facebook/ads/redexgen/X/SQ;)V

    .line 66007
    .local v1, "deviceTrackingParams":Lcom/facebook/ads/redexgen/X/T6;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TT;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 66008
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/T6;->A06()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 66009
    .local v3, "fingerprintSharedPrefKey":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-interface {v5, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/TT;->A00:Ljava/lang/String;

    .line 66010
    new-instance v1, Lcom/facebook/ads/redexgen/X/TS;

    invoke-direct {v1, p0, v4, v5, v2}, Lcom/facebook/ads/redexgen/X/TS;-><init>(Lcom/facebook/ads/redexgen/X/SQ;Lcom/facebook/ads/redexgen/X/T6;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 66011
    .local v4, "initializer":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Boolean;>;"
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 66012
    if-eqz p1, :cond_1

    .line 66013
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66014
    .local v0, "e":Ljava/lang/Exception;
    :catch_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/TT;->A05:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 66015
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public static A08(Lcom/facebook/ads/redexgen/X/SQ;ZLjava/lang/String;)V
    .locals 1

    .line 66016
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/TT;->A0A(Lcom/facebook/ads/redexgen/X/SQ;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66017
    invoke-static {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/TT;->A09(Lcom/facebook/ads/redexgen/X/SQ;ZLjava/lang/String;)V

    .line 66018
    :goto_0
    return-void

    .line 66019
    :cond_0
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/TT;->A07(Lcom/facebook/ads/redexgen/X/SQ;Z)V

    goto :goto_0
.end method

.method public static A09(Lcom/facebook/ads/redexgen/X/SQ;ZLjava/lang/String;)V
    .locals 1

    .line 66020
    if-eqz p2, :cond_0

    .line 66021
    .local v0, "bundle":Ljava/lang/String;
    :goto_0
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/TT;->A0B(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66022
    return-void

    .line 66023
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SQ;->getPackageName()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 66024
    :cond_1
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/TT;->A00(Lcom/facebook/ads/redexgen/X/SQ;)Lcom/facebook/ads/redexgen/X/Wi;

    .line 66025
    new-instance v0, Lcom/facebook/ads/redexgen/X/W4;

    invoke-direct {v0, p0, p2}, Lcom/facebook/ads/redexgen/X/W4;-><init>(Lcom/facebook/ads/redexgen/X/SQ;Ljava/lang/String;)V

    .line 66026
    .local p0, "fingerprintUtils":Lcom/facebook/ads/redexgen/X/W4;
    :try_start_0
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/W4;->A06()V

    .line 66027
    new-instance p0, Lcom/facebook/ads/redexgen/X/TR;

    invoke-direct {p0, v0, p2}, Lcom/facebook/ads/redexgen/X/TR;-><init>(Lcom/facebook/ads/redexgen/X/W4;Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 66028
    .local p1, "initializer":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Boolean;>;"
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 66029
    if-eqz p1, :cond_2

    .line 66030
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    goto :goto_1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66031
    .local p1, "e":Ljava/lang/Exception;
    :catch_0
    sget-object p1, Lcom/facebook/ads/redexgen/X/TT;->A04:Ljava/util/Map;

    monitor-enter p1

    .line 66032
    :try_start_1
    sget-object p0, Lcom/facebook/ads/redexgen/X/TT;->A04:Ljava/util/Map;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66033
    monitor-exit p1

    .line 66034
    .end local p1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-void

    .line 66035
    .restart local p1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static A0A(Lcom/facebook/ads/redexgen/X/SQ;)Z
    .locals 3

    .line 66036
    invoke-static {}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->isRemoteRenderingProcess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66037
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/U7;->A2l(Landroid/content/Context;)Z

    move-result p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/TT;->A03:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x45

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/TT;->A03:[Ljava/lang/String;

    const-string v1, "Hubg"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "jm3dJ"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 66038
    :goto_0
    return v0

    .line 66039
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0B(Ljava/lang/String;)Z
    .locals 3

    .line 66040
    sget-object v2, Lcom/facebook/ads/redexgen/X/TT;->A04:Ljava/util/Map;

    monitor-enter v2

    .line 66041
    :try_start_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/TT;->A01(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 66042
    .local v1, "status":I
    const/4 v0, 0x1

    if-eqz v1, :cond_0

    .line 66043
    monitor-exit v2

    return v0

    .line 66044
    :cond_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/TT;->A04:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66045
    .end local v1    # "status":I
    monitor-exit v2

    .line 66046
    const/4 v0, 0x0

    return v0

    .line 66047
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
